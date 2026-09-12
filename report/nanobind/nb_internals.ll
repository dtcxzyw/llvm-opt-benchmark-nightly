Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_internals?download=true
inline.NumInlined: 455
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN8nanobind6detail12nb_internalsC2Ev:.preheader47.preheader
bb.c:                                             ; preds = %bb.b, %bb.a, %.preheader47.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.h, align 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 0, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, i8 0, i64 32, i1 false)
  %i.m = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.f, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #29
  %.not.i10.i.i40 = icmp eq i32 %i.o, 0
  br i1 %.not.i10.i.i40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 0, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 433
  store i8 0, ptr %i.s, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.u, align 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.v, i8 0, i64 32, i1 false)
  %i.w = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %.preheader.preheader, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #29
  %.not.i10.i.i41 = icmp eq i32 %i.y, 0
  br i1 %.not.i10.i.i41, label %.preheader.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #29
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h, %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 0, ptr %i.ab, align 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 513
  store i8 0, ptr %i.ac, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 504
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 0, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 537
  store i8 1, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr null, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 0, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.al, i8 0, i64 216, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.idx35 = phi i64 [ 832, %.preheader.preheader ], [ %.add36.7, %.preheader ] ; 9 uses
  %.ptr37 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.am = getelementptr inbounds nuw i8, ptr %.ptr37, i64 24
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  store ptr null, ptr %i.ba, align 8
  %.add36.7 = add nuw nsw i64 %.idx35, 256        ; 2 uses
  %i.bb = icmp eq i64 %.add36.7, 131904
  br i1 %i.bb, label %bb.i, label %.preheader

bb.i:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8nanobind6detailL14init_internalsEPNS0_12nb_internalsE(ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.nanobind::str", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyList_New(i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.c, label %bb.d, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.d = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.17) ; 3 uses
  store ptr %i.d, ptr %1, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %_ZN8nanobind3strC2EPKc.exit

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZN8nanobind6detail5raiseEPKcz(ptr noundef nonnull @.str.18) #30
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.g ], [ %.pn, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29 ; 0 uses
  br label %common.resume

_ZN8nanobind3strC2EPKc.exit:                      ; preds = %bb.d
  %i.g = invoke ptr @PyModule_NewObject(ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.y       ; 5 uses

bb.h:                                             ; preds = %_ZN8nanobind3strC2EPKc.exit
  store ptr %i.g, ptr %0, align 64
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = invoke i32 @PyList_Append(ptr noundef %i.h, ptr noundef %i.g)
          to label %.noexc unwind label %bb.y     ; 0 uses

.noexc:                                           ; preds = %bb.h
  %i.j = load i64, ptr %i.g, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2147483648
  %.not.i30 = icmp eq i64 %i.k, 0
  br i1 %.not.i30, label %bb.i, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.i:                                             ; preds = %.noexc
  %i.l = add nsw i64 %i.j, -1                     ; 2 uses
  store i64 %i.l, ptr %i.g, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.j, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.g)
          to label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit unwind label %bb.y

_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit: ; preds = %bb.i, %.noexc, %bb.j
  store ptr @PyType_Type, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL13nb_meta_slotsE, i64 8), align 8
  %i.n = invoke ptr @PyType_FromSpec(ptr noundef nonnull @_ZN8nanobind6detailL12nb_meta_specE)
          to label %.noexc33 unwind label %bb.z   ; 6 uses

.noexc33:                                         ; preds = %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit
  %.not.i32 = icmp ne ptr %i.n, null              ; 2 uses
  br i1 %.not.i32, label %bb.k, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit

bb.k:                                             ; preds = %.noexc33
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = invoke i32 @PyList_Append(ptr noundef %i.o, ptr noundef nonnull %i.n)
          to label %.noexc34 unwind label %bb.z   ; 0 uses

.noexc34:                                         ; preds = %bb.k
  %i.q = load i64, ptr %i.n, align 8              ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %bb.l, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit

bb.l:                                             ; preds = %.noexc34
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.s, ptr %i.n, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.m, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.n)
          to label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit unwind label %bb.z

_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit: ; preds = %bb.l, %.noexc34, %.noexc33, %bb.m
  %i.u = invoke ptr @PyType_FromSpec(ptr noundef nonnull @_ZN8nanobind6detailL12nb_func_specE)
          to label %.noexc38 unwind label %bb.z   ; 6 uses

.noexc38:                                         ; preds = %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit
  %.not.i36 = icmp eq ptr %i.u, null
  br i1 %.not.i36, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41, label %bb.n

bb.n:                                             ; preds = %.noexc38
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = invoke i32 @PyList_Append(ptr noundef %i.v, ptr noundef nonnull %i.u)
          to label %.noexc39 unwind label %bb.z   ; 0 uses

.noexc39:                                         ; preds = %bb.n
  %i.x = load i64, ptr %i.u, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2147483648
  %.not.i.i37 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i37, label %bb.o, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41

bb.o:                                             ; preds = %.noexc39
  %i.z = add nsw i64 %i.x, -1                     ; 2 uses
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.p, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41

bb.p:                                             ; preds = %bb.o
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.u)
          to label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41 unwind label %bb.z

_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41: ; preds = %bb.o, %.noexc39, %.noexc38, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.ab, align 16
  %i.ac = invoke ptr @PyType_FromSpec(ptr noundef nonnull @_ZN8nanobind6detailL14nb_method_specE)
          to label %.noexc44 unwind label %bb.z   ; 6 uses

.noexc44:                                         ; preds = %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41
  %.not.i42 = icmp eq ptr %i.ac, null
  br i1 %.not.i42, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47, label %bb.q

bb.q:                                             ; preds = %.noexc44
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = invoke i32 @PyList_Append(ptr noundef %i.ad, ptr noundef nonnull %i.ac)
          to label %.noexc45 unwind label %bb.z   ; 0 uses

.noexc45:                                         ; preds = %bb.q
  %i.af = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 2147483648
  %.not.i.i43 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i43, label %bb.r, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47

bb.r:                                             ; preds = %.noexc45
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  store i64 %i.ah, ptr %i.ac, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47

bb.s:                                             ; preds = %bb.r
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ac)
          to label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47 unwind label %bb.z

_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47: ; preds = %bb.r, %.noexc45, %.noexc44, %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ac, ptr %i.aj, align 8
  %i.ak = invoke ptr @PyType_FromSpec(ptr noundef nonnull @_ZN8nanobind6detailL20nb_bound_method_specE)
          to label %.noexc50 unwind label %bb.z   ; 6 uses

.noexc50:                                         ; preds = %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47
  %.not.i48 = icmp eq ptr %i.ak, null             ; 2 uses
  br i1 %.not.i48, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53, label %bb.t

bb.t:                                             ; preds = %.noexc50
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = invoke i32 @PyList_Append(ptr noundef %i.al, ptr noundef nonnull %i.ak)
          to label %.noexc51 unwind label %bb.z   ; 0 uses

.noexc51:                                         ; preds = %bb.t
  %i.an = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.ao = and i64 %i.an, 2147483648
  %.not.i.i49 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i49, label %bb.u, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53

bb.u:                                             ; preds = %.noexc51
  %i.ap = add nsw i64 %i.an, -1                   ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.v, label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53

bb.v:                                             ; preds = %bb.u
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ak)
          to label %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53 unwind label %bb.z

_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53: ; preds = %bb.u, %.noexc51, %.noexc50, %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.ar, align 32
  %i.as = load ptr, ptr %0, align 64
  %i.at = icmp ne ptr %i.as, null
  %or.cond = and i1 %.not.i32, %i.at
  br i1 %or.cond, label %bb.w, label %.critedge, !prof !26

bb.w:                                             ; preds = %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53
  %i.au = load ptr, ptr %i.ab, align 16
  %.not27 = icmp eq ptr %i.au, null
  br i1 %.not27, label %.critedge, label %bb.x, !prof !4

bb.x:                                             ; preds = %bb.w
  %i.av = load ptr, ptr %i.aj, align 8
  %.not28 = icmp eq ptr %i.av, null
  %spec.select = or i1 %.not.i48, %.not28
  br i1 %spec.select, label %.critedge, label %bb.aa, !prof !4

.critedge:                                        ; preds = %bb.w, %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit53, %bb.x
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.y:                                             ; preds = %bb.j, %bb.h, %_ZN8nanobind3strC2EPKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.z:                                             ; preds = %bb.v, %bb.t, %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit47, %bb.s, %bb.q, %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit41, %bb.p, %bb.n, %_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec.exit, %bb.m, %bb.k, %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %bb.x
  %i.ay = tail call noundef ptr @_ZN8nanobind6detail24nb_type_create_metaclassEPNS0_12nb_internalsEP11_typeobject(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  %.not29 = icmp eq ptr %i.ay, null
  br i1 %.not29, label %bb.ab, label %bb.ac, !prof !4

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ba = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i54, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = and i64 %i.bb, 2147483648
  %.not2.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not2.i.i, label %bb.ae, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bd = add nsw i64 %i.bb, -1                   ; 2 uses
  store i64 %i.bd, ptr %i.ba, align 8
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.af, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ba)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZNKR8nanobind6handle7dec_refEv.exit
  ret void

bb.ai:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.z ], [ %i.aw, %bb.y ]
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8nanobind6detailL14init_pyobjectsEPNS0_12nb_internalsE(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %_ZL9Py_DECREFP7_object.exit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  br label %bb.q

bb.b:                                             ; preds = %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef %i.e) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.f, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call i32 @PyList_Append(ptr noundef %i.h, ptr noundef %i.f) ; 0 uses
  %i.j = load i64, ptr %i.f, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2147483648
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i64 %i.j, -1                     ; 2 uses
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f)
  br label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit

_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = tail call ptr @PyLong_FromLong(i64 noundef 1) ; 4 uses
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef 0) ; 4 uses
  %i.p = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %i.n, ptr noundef %i.o) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = tail call i32 @PyList_Append(ptr noundef %i.r, ptr noundef %i.p) ; 0 uses
  %i.t = load i64, ptr %i.p, align 8              ; 2 uses
  %i.u = and i64 %i.t, 2147483648
  %.not.i.i23 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i23, label %bb.e, label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit24

bb.e:                                             ; preds = %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit
  %i.v = add nsw i64 %i.t, -1                     ; 2 uses
  store i64 %i.v, ptr %i.p, align 8
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit24

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p)
  br label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit24

_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit24: ; preds = %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit, %bb.e, %bb.f
  %i.x = load i64, ptr %i.o, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2147483648
  %.not29 = icmp eq i64 %i.y, 0
  br i1 %.not29, label %bb.g, label %_ZL9Py_DECREFP7_object.exit22

bb.g:                                             ; preds = %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit24
  %i.z = add nsw i64 %i.x, -1                     ; 2 uses
  store i64 %i.z, ptr %i.o, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZL9Py_DECREFP7_object.exit22

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o)
  br label %_ZL9Py_DECREFP7_object.exit22

_ZL9Py_DECREFP7_object.exit22:                    ; preds = %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit24, %bb.g, %bb.h
  %i.ab = load i64, ptr %i.n, align 8             ; 2 uses
  %i.ac = and i64 %i.ab, 2147483648
  %.not30 = icmp eq i64 %i.ac, 0
  br i1 %.not30, label %bb.i, label %_ZL9Py_DECREFP7_object.exit20

bb.i:                                             ; preds = %_ZL9Py_DECREFP7_object.exit22
  %i.ad = add nsw i64 %i.ab, -1                   ; 2 uses
  store i64 %i.ad, ptr %i.n, align 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZL9Py_DECREFP7_object.exit20

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n)
  br label %_ZL9Py_DECREFP7_object.exit20

_ZL9Py_DECREFP7_object.exit20:                    ; preds = %_ZL9Py_DECREFP7_object.exit22, %bb.i, %bb.j
  %i.af = tail call ptr @PyLong_FromLong(i64 noundef 1) ; 4 uses
  %i.ag = tail call ptr @PyLong_FromLong(i64 noundef 1) ; 4 uses
  %i.ah = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %i.af, ptr noundef %i.ag) ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = tail call i32 @PyList_Append(ptr noundef %i.aj, ptr noundef %i.ah) ; 0 uses
  %i.al = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.am = and i64 %i.al, 2147483648
  %.not.i.i25 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i25, label %bb.k, label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit26

bb.k:                                             ; preds = %_ZL9Py_DECREFP7_object.exit20
  %i.an = add nsw i64 %i.al, -1                   ; 2 uses
  store i64 %i.an, ptr %i.ah, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit26

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah)
  br label %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit26

_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit26: ; preds = %_ZL9Py_DECREFP7_object.exit20, %bb.k, %bb.l
  %i.ap = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.aq = and i64 %i.ap, 2147483648
  %.not31 = icmp eq i64 %i.aq, 0
  br i1 %.not31, label %bb.m, label %_ZL9Py_DECREFP7_object.exit18

bb.m:                                             ; preds = %_ZN8nanobind6detailL12new_constantEPNS0_12nb_internalsEiP7_object.exit26
end_hunk_0
