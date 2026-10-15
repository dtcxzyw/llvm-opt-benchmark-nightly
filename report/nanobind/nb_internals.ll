Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_internals?download=true
inline.NumInlined: 455
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 30
begin_hunk_0_@PyList_New

declare ptr @PyModule_NewObject(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare hidden noundef ptr @_ZN8nanobind6detail24nb_type_create_metaclassEPNS0_12nb_internalsEP11_typeobject(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail5raiseEPKcz(ptr noundef %0, ...) local_unnamed_addr #9 comdat {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8nanobind6detail7raise_vENS_14exception_typeEPKcP13__va_list_tag(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %1)
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #22

declare void @_ZN8nanobind6detail7raise_vENS_14exception_typeEPKcP13__va_list_tag(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not2.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i, label %bb.c, label %_ZL10Py_XDECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZL10Py_XDECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.a)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %bb.e

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable
}

declare ptr @PyType_FromSpec(ptr noundef) local_unnamed_addr #4

declare hidden noundef ptr @_ZN8nanobind6detail16nb_func_getattroEP7_objectS2_(ptr noundef, ptr noundef) #4

declare hidden noundef i32 @_ZN8nanobind6detail16nb_func_traverseEP7_objectPFiS2_PvES3_(ptr noundef, ptr noundef, ptr noundef) #4

declare hidden noundef i32 @_ZN8nanobind6detail13nb_func_clearEP7_object(ptr noundef) #4

declare hidden void @_ZN8nanobind6detail15nb_func_deallocEP7_object(ptr noundef) #4

declare ptr @PyType_GenericNew(ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @PyVectorcall_Call(ptr noundef, ptr noundef, ptr noundef) #4

declare hidden noundef ptr @_ZN8nanobind6detail15nb_func_get_docEP7_objectPv(ptr noundef, ptr noundef) #4

declare hidden noundef ptr @_ZN8nanobind6detail24nb_func_get_nb_signatureEP7_objectPv(ptr noundef, ptr noundef) #4

declare hidden noundef ptr @_ZN8nanobind6detail19nb_method_descr_getEP7_objectS2_S2_(ptr noundef, ptr noundef, ptr noundef) #4

declare hidden noundef ptr @_ZN8nanobind6detail24nb_bound_method_getattroEP7_objectS2_(ptr noundef, ptr noundef) #4

declare hidden noundef i32 @_ZN8nanobind6detail24nb_bound_method_traverseEP7_objectPFiS2_PvES3_(ptr noundef, ptr noundef, ptr noundef) #4

declare hidden noundef i32 @_ZN8nanobind6detail21nb_bound_method_clearEP7_object(ptr noundef) #4

declare hidden void @_ZN8nanobind6detail23nb_bound_method_deallocEP7_object(ptr noundef) #4

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #4

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail12nb_internalsD2Ev(ptr noundef nonnull align 64 dead_on_return(131904) dereferenceable(131904) %0) unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 64             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit

_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.i = load ptr, ptr %i.h, align 64             ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load ptr, ptr %i.o, align 16             ; 3 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i3, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = load ptr, ptr %i.q, align 64
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32
  br label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load ptr, ptr %i.v, align 32             ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i4, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5: ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load ptr, ptr %i.ac, align 16           ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load ptr, ptr %i.ae, align 32
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #32
  br label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i: ; preds = %bb.f, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 64           ; 3 uses
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i1.i, label %_ZN8nanobind6detail8nb_shardD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 16
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #32
  br label %_ZN8nanobind6detail8nb_shardD2Ev.exit

_ZN8nanobind6detail8nb_shardD2Ev.exit:            ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN8nanobind6detailL21internals_cleanup_oneEPNS0_12nb_internalsE(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %.not.i.i, label %.preheader157, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.04.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i, i64 %.04.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, -1
  br i1 %i.i, label %bb.b, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i.i, label %.preheader157, label %.lr.ph.i.i, !llvm.loop !29

_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i, i64 %i.e
  %.not151170 = icmp samesign eq i64 %.04.i.i, %i.e
  br i1 %.not151170, label %.preheader157, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i, i64 %.04.i.i
  br label %.lr.ph

.preheader157:                                    ; preds = %bb.b, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit, %bb.a, %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %.not209 = icmp eq i64 %i.n, 0
  br i1 %.not209, label %.thread, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader157
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.n, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph175.new

.lr.ph175.new:                                    ; preds = %.lr.ph175
  %unroll_iter = and i64 %i.n, -4
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit
  %.sroa.0149.0171 = phi ptr [ %i.aa, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0149.0171, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 8192
  %.not97 = icmp eq i32 %i.u, 0
  br i1 %.not97, label %.preheader437, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  tail call void @_ZN8nanobind6detail13nb_pool_drainEPNS0_12nb_inst_poolEb(ptr noundef nonnull %i.v, i1 noundef zeroext false) #29
  br label %.preheader437

.preheader437:                                    ; preds = %bb.c, %.lr.ph
  br label %bb.d

bb.d:                                             ; preds = %.preheader437, %bb.e
  %i.w = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0149.0171, %.preheader437 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.y = load i8, ptr %i.x, align 2, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br i1 %i.z, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ac = load i16, ptr %i.ab, align 4
  %i.ad = icmp eq i16 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit: ; preds = %bb.e, %bb.d
  %.not151 = icmp eq ptr %i.aa, %i.k
  br i1 %.not151, label %.preheader157, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph175
  %.088174.epil.init = phi i64 [ 0, %.lr.ph175 ], [ %i.bq, %._crit_edge.unr-lcssa ]
  %.089173.epil.init = phi i64 [ 0, %.lr.ph175 ], [ %i.bp, %._crit_edge.unr-lcssa ]
  %.090172.epil.init = phi i64 [ 0, %.lr.ph175 ], [ %i.bm, %._crit_edge.unr-lcssa ]
  %lcmp.mod443 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod443)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.088174.epil = phi i64 [ %.088174.epil.init, %.epil.preheader ], [ %i.al, %bb.f ] ; 2 uses
  %.089173.epil = phi i64 [ %.089173.epil.init, %.epil.preheader ], [ %i.ak, %bb.f ]
  %.090172.epil = phi i64 [ %.090172.epil.init, %.epil.preheader ], [ %i.ah, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ae = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174.epil ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, %.090172.epil            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %.089173.epil            ; 2 uses
  %i.al = add nuw i64 %.088174.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.unr-lcssa
  %.lcssa436 = phi i64 [ %i.bm, %._crit_edge.unr-lcssa ], [ %i.ah, %bb.f ] ; 2 uses
  %.lcssa435 = phi i64 [ %i.bp, %._crit_edge.unr-lcssa ], [ %i.ak, %bb.f ] ; 2 uses
  %i.am = icmp ne i64 %.lcssa436, 0               ; 3 uses
  %i.an = icmp ne i64 %.lcssa435, 0               ; 3 uses
  %or.cond = select i1 %i.c, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge194.thread

bb.g:                                             ; preds = %bb.g, %.lr.ph175.new
  %.088174 = phi i64 [ 0, %.lr.ph175.new ], [ %i.bq, %bb.g ] ; 5 uses
  %.089173 = phi i64 [ 0, %.lr.ph175.new ], [ %i.bp, %bb.g ]
  %.090172 = phi i64 [ 0, %.lr.ph175.new ], [ %i.bm, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph175.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, %.090172
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, %.089173
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 288
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, %i.au
  %i.bc = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 368
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 448
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bb
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 528
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, %i.bf                    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 608
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = add i64 %i.bo, %i.bi                    ; 3 uses
  %i.bq = add nuw i64 %.088174, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !32

bb.h:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr @stderr, align 8
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.49, i64 noundef %.lcssa436) #35 ; 0 uses
  %i.bt = load i64, ptr %i.m, align 8             ; 2 uses
  %.not210 = icmp eq i64 %i.bt, 0
  br i1 %.not210, label %._crit_edge194.thread, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

._crit_edge194:                                   ; preds = %._crit_edge186
  %i.bv = icmp sgt i32 %.4, 19
  br i1 %i.bv, label %bb.n, label %._crit_edge194.thread

bb.i:                                             ; preds = %.lr.ph193, %._crit_edge186
  %i.bw = phi i64 [ %i.bt, %.lr.ph193 ], [ %1, %._crit_edge186 ] ; 3 uses
  %.082191 = phi i64 [ 0, %.lr.ph193 ], [ %i.dl, %._crit_edge186 ] ; 2 uses
  %.083190 = phi i32 [ 0, %.lr.ph193 ], [ %.4, %._crit_edge186 ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [160 x i8], ptr %i.bu, i64 %.082191 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i64, ptr %i.by, align 8            ; 4 uses
  %.not.i.i105 = icmp eq i64 %i.bz, 0
  %.phi.trans.insert.i.i106 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.pre.i.i107 = load ptr, ptr %.phi.trans.insert.i.i106, align 8 ; 3 uses
  br i1 %.not.i.i105, label %._crit_edge186, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %bb.i, %bb.j
  %.04.i.i109 = phi i64 [ %i.ce, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i107, i64 %.04.i.i109
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i16, ptr %i.cb, align 4
  %i.cd = icmp eq i16 %i.cc, -1
  br i1 %i.cd, label %bb.j, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit

bb.j:                                             ; preds = %.lr.ph.i.i108
  %i.ce = add nuw i64 %.04.i.i109, 1              ; 2 uses
  %exitcond.not.i.i111 = icmp eq i64 %i.ce, %i.bz
  br i1 %exitcond.not.i.i111, label %._crit_edge186, label %.lr.ph.i.i108, !llvm.loop !33

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit: ; preds = %.lr.ph.i.i108
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i107, i64 %i.bz
  %.not155182 = icmp samesign eq i64 %.04.i.i109, %i.bz
  br i1 %.not155182, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i107, i64 %.04.i.i109
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit
  %.184184 = phi i32 [ %.3, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit ], [ %.083190, %.lr.ph185.preheader ] ; 3 uses
  %.sroa.0145.0183 = phi ptr [ %i.dh, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit ], [ %i.cg, %.lr.ph185.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0145.0183, i64 8
  %.sroa.0139.0.copyload = load ptr, ptr %i.ch, align 8 ; 2 uses
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0145.0183, i64 16
  %.sroa.5141.0.copyload = load ptr, ptr %.sroa.5141.0..sroa_idx, align 8 ; 2 uses
  %i.ci = ptrtoint ptr %.sroa.5141.0.copyload to i64 ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.k, label %bb.l, !prof !4

bb.k:                                             ; preds = %.lr.ph185
  %i.ck = and i64 %i.ci, -2                       ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %.loopexit156, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %bb.k
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.lr.ph180
  %.080178 = phi ptr [ %i.ct, %.lr.ph180 ], [ %i.cl, %.lr.ph180.preheader ] ; 2 uses
  %.285177 = phi i32 [ %i.cr, %.lr.ph180 ], [ %.184184, %.lr.ph180.preheader ] ; 2 uses
  %i.cm = load ptr, ptr %.080178, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %.val104 = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %.val104, i64 944
  %.val104.val = load ptr, ptr %i.co, align 8
  %i.cp = load ptr, ptr @stderr, align 8
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.57, ptr noundef %.sroa.0139.0.copyload, ptr noundef %.val104.val) #35 ; 0 uses
  %i.cr = add nsw i32 %.285177, 1                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.080178, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp ne ptr %i.ct, null
  %i.cv = icmp slt i32 %.285177, 19
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.lr.ph180, label %.loopexit156, !llvm.loop !34

bb.l:                                             ; preds = %.lr.ph185
  %i.cx = getelementptr i8, ptr %.sroa.5141.0.copyload, i64 8
  %.val = load ptr, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %.val, i64 944
  %.val.val = load ptr, ptr %i.cy, align 8
  %i.cz = load ptr, ptr @stderr, align 8
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.57, ptr noundef %.sroa.0139.0.copyload, ptr noundef %.val.val) #35 ; 0 uses
  %i.db = add nsw i32 %.184184, 1
  br label %.loopexit156

.loopexit156:                                     ; preds = %.lr.ph180, %bb.k, %bb.l
  %.3 = phi i32 [ %i.db, %bb.l ], [ %.184184, %bb.k ], [ %i.cr, %.lr.ph180 ] ; 3 uses
  %i.dc = icmp slt i32 %.3, 20
  br i1 %i.dc, label %.preheader, label %._crit_edge186.loopexit

.preheader:                                       ; preds = %.loopexit156, %bb.m
  %i.dd = phi ptr [ %i.dh, %bb.m ], [ %.sroa.0145.0183, %.loopexit156 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.df = load i8, ptr %i.de, align 2, !range !10, !noundef !11
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 3 uses
  br i1 %i.dg, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.dj = load i16, ptr %i.di, align 4
  %i.dk = icmp eq i16 %i.dj, -1
  br i1 %i.dk, label %.preheader, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit: ; preds = %bb.m, %.preheader
  %.not155 = icmp eq ptr %i.dh, %i.cf
  br i1 %.not155, label %._crit_edge186.loopexit, label %.lr.ph185

._crit_edge186.loopexit:                          ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit, %.loopexit156
  %.pre = load i64, ptr %i.m, align 8
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.j, %bb.i, %._crit_edge186.loopexit, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %1 = phi i64 [ %i.bw, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit ], [ %.pre, %._crit_edge186.loopexit ], [ %i.bw, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.4 = phi i32 [ %.083190, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit ], [ %.3, %._crit_edge186.loopexit ], [ %.083190, %bb.i ], [ %.083190, %bb.j ] ; 3 uses
  %i.dl = add nuw i64 %.082191, 1                 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %1
  %i.dn = icmp slt i32 %.4, 20
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %bb.i, label %._crit_edge194, !llvm.loop !36

bb.n:                                             ; preds = %._crit_edge194
  %i.dp = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.50, i64 25, i64 1, ptr %i.dp) #34 ; 0 uses
  br label %._crit_edge194.thread

._crit_edge194.thread:                            ; preds = %bb.h, %._crit_edge194, %bb.n, %._crit_edge
  %or.cond5 = select i1 %i.c, i1 %i.an, i1 false
  br i1 %or.cond5, label %bb.o, label %.thread

bb.o:                                             ; preds = %._crit_edge194.thread
  %i.dq = load ptr, ptr @stderr, align 8
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.51, i64 noundef %.lcssa435) #35 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.preheader157, %bb.o, %._crit_edge194.thread
  %i.ds = phi i1 [ %i.am, %._crit_edge194.thread ], [ %i.am, %bb.o ], [ false, %.preheader157 ]
  %i.dt = phi i1 [ %i.an, %._crit_edge194.thread ], [ %i.an, %bb.o ], [ false, %.preheader157 ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dv = load i64, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp ne i64 %i.dv, 0                    ; 2 uses
  %brmerge.not = and i1 %i.dw, %i.c
  %i.dx = select i1 %i.dw, i1 true, i1 %i.ds
  %.mux = select i1 %i.dx, i1 true, i1 %i.dt
  br i1 %brmerge.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread
  %i.dy = load ptr, ptr @stderr, align 8
  %i.dz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.52, i64 noundef %i.dv) #35 ; 0 uses
  %i.ea = load i64, ptr %i.d, align 8             ; 4 uses
  %.not.i.i113 = icmp eq i64 %i.ea, 0
  %.pre.i.i115 = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %.not.i.i113, label %.loopexit.thread, label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %bb.p, %bb.q
  %.04.i.i117 = phi i64 [ %i.ef, %bb.q ], [ 0, %bb.p ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i115, i64 %.04.i.i117
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i16, ptr %i.ec, align 4
  %i.ee = icmp eq i16 %i.ed, -1
  br i1 %i.ee, label %bb.q, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120

bb.q:                                             ; preds = %.lr.ph.i.i116
  %i.ef = add nuw i64 %.04.i.i117, 1              ; 2 uses
  %exitcond.not.i.i119 = icmp eq i64 %i.ef, %i.ea
  br i1 %exitcond.not.i.i119, label %.loopexit, label %.lr.ph.i.i116, !llvm.loop !29

_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120: ; preds = %.lr.ph.i.i116
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i115, i64 %i.ea ; 9 uses
  %.not153196 = icmp samesign eq i64 %.04.i.i117, %i.ea
  br i1 %.not153196, label %.loopexit, label %.lr.ph199.preheader

.lr.ph199.preheader:                              ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i115, i64 %.04.i.i117 ; 2 uses
  %i.ei = load ptr, ptr @stderr, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.53, ptr noundef %i.em) #35 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8
  %i.eo = load ptr, ptr @stderr, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str.53, ptr noundef %i.es) #35 ; 0 uses
  %i.eu = load ptr, ptr @stderr, align 8
  %fwrite92 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 25, i64 1, ptr %i.eu) #34 ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph199.preheader, %bb.s
  %i.ev = phi ptr [ %i.ez, %bb.s ], [ %i.eh, %.lr.ph199.preheader ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  %i.ex = load i8, ptr %i.ew, align 2, !range !10, !noundef !11
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 3 uses
  br i1 %i.ey, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.fb = load i16, ptr %i.fa, align 4
  %i.fc = icmp eq i16 %i.fb, -1
  br i1 %i.fc, label %.critedge, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122: ; preds = %bb.s, %.critedge
  %.not153 = icmp eq ptr %i.ez, %i.eg
  br i1 %.not153, label %.loopexit, label %.lr.ph199.1

.lr.ph199.1:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122
  %i.fd = load ptr, ptr @stderr, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.53, ptr noundef %i.fh) #35 ; 0 uses
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.t, %.lr.ph199.1
  %i.fj = phi ptr [ %i.fn, %bb.t ], [ %i.ez, %.lr.ph199.1 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 6
  %i.fl = load i8, ptr %i.fk, align 2, !range !10, !noundef !11
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 3 uses
  br i1 %i.fm, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1, label %bb.t

bb.t:                                             ; preds = %.critedge.1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  %i.fp = load i16, ptr %i.fo, align 4
  %i.fq = icmp eq i16 %i.fp, -1
  br i1 %i.fq, label %.critedge.1, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1: ; preds = %bb.t, %.critedge.1
  %.not153.1 = icmp eq ptr %i.fn, %i.eg
  br i1 %.not153.1, label %.loopexit, label %.lr.ph199.2

.lr.ph199.2:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1
  %i.fr = load ptr, ptr @stderr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.53, ptr noundef %i.fv) #35 ; 0 uses
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.u, %.lr.ph199.2
  %i.fx = phi ptr [ %i.gb, %bb.u ], [ %i.fn, %.lr.ph199.2 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 6
  %i.fz = load i8, ptr %i.fy, align 2, !range !10, !noundef !11
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 3 uses
  br i1 %i.ga, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2, label %bb.u

bb.u:                                             ; preds = %.critedge.2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  %i.gd = load i16, ptr %i.gc, align 4
  %i.ge = icmp eq i16 %i.gd, -1
  br i1 %i.ge, label %.critedge.2, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2: ; preds = %bb.u, %.critedge.2
  %.not153.2 = icmp eq ptr %i.gb, %i.eg
  br i1 %.not153.2, label %.loopexit, label %.lr.ph199.3

.lr.ph199.3:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2
  %i.gf = load ptr, ptr @stderr, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.53, ptr noundef %i.gj) #35 ; 0 uses
  br label %.critedge.3

.critedge.3:                                      ; preds = %bb.v, %.lr.ph199.3
  %i.gl = phi ptr [ %i.gp, %bb.v ], [ %i.gb, %.lr.ph199.3 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  %i.gn = load i8, ptr %i.gm, align 2, !range !10, !noundef !11
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 3 uses
  br i1 %i.go, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3, label %bb.v

bb.v:                                             ; preds = %.critedge.3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.gr = load i16, ptr %i.gq, align 4
  %i.gs = icmp eq i16 %i.gr, -1
  br i1 %i.gs, label %.critedge.3, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3: ; preds = %bb.v, %.critedge.3
  %.not153.3 = icmp eq ptr %i.gp, %i.eg
  br i1 %.not153.3, label %.loopexit, label %.lr.ph199.4

.lr.ph199.4:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3
  %i.gt = load ptr, ptr @stderr, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.53, ptr noundef %i.gx) #35 ; 0 uses
  br label %.critedge.4

.critedge.4:                                      ; preds = %bb.w, %.lr.ph199.4
  %i.gz = phi ptr [ %i.hd, %bb.w ], [ %i.gp, %.lr.ph199.4 ] ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6
  %i.hb = load i8, ptr %i.ha, align 2, !range !10, !noundef !11
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 3 uses
  br i1 %i.hc, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4, label %bb.w

bb.w:                                             ; preds = %.critedge.4
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 28
  %i.hf = load i16, ptr %i.he, align 4
  %i.hg = icmp eq i16 %i.hf, -1
  br i1 %i.hg, label %.critedge.4, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4: ; preds = %bb.w, %.critedge.4
  %.not153.4 = icmp eq ptr %i.hd, %i.eg
  br i1 %.not153.4, label %.loopexit, label %.lr.ph199.5

.lr.ph199.5:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4
  %i.hh = load ptr, ptr @stderr, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.53, ptr noundef %i.hl) #35 ; 0 uses
  br label %.critedge.5

.critedge.5:                                      ; preds = %bb.x, %.lr.ph199.5
  %i.hn = phi ptr [ %i.hr, %bb.x ], [ %i.hd, %.lr.ph199.5 ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  %i.hp = load i8, ptr %i.ho, align 2, !range !10, !noundef !11
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 3 uses
  br i1 %i.hq, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5, label %bb.x

bb.x:                                             ; preds = %.critedge.5
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 28
  %i.ht = load i16, ptr %i.hs, align 4
  %i.hu = icmp eq i16 %i.ht, -1
  br i1 %i.hu, label %.critedge.5, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5: ; preds = %bb.x, %.critedge.5
  %.not153.5 = icmp eq ptr %i.hr, %i.eg
  br i1 %.not153.5, label %.loopexit, label %.lr.ph199.6

.lr.ph199.6:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5
  %i.hv = load ptr, ptr @stderr, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hv, ptr noundef nonnull @.str.53, ptr noundef %i.hz) #35 ; 0 uses
  br label %.critedge.6

.critedge.6:                                      ; preds = %bb.y, %.lr.ph199.6
  %i.ib = phi ptr [ %i.if, %bb.y ], [ %i.hr, %.lr.ph199.6 ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 6
  %i.id = load i8, ptr %i.ic, align 2, !range !10, !noundef !11
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 3 uses
  br i1 %i.ie, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.6, label %bb.y

bb.y:                                             ; preds = %.critedge.6
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.ih = load i16, ptr %i.ig, align 4
  %i.ii = icmp eq i16 %i.ih, -1
  br i1 %i.ii, label %.critedge.6, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.6, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.6: ; preds = %bb.y, %.critedge.6
  %.not153.6 = icmp eq ptr %i.if, %i.eg
  br i1 %.not153.6, label %.loopexit, label %.lr.ph199.7

.lr.ph199.7:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.6
  %i.ij = load ptr, ptr @stderr, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ij, ptr noundef nonnull @.str.53, ptr noundef %i.in) #35 ; 0 uses
  br label %.critedge.7

.critedge.7:                                      ; preds = %bb.z, %.lr.ph199.7
  %i.ip = phi ptr [ %i.it, %bb.z ], [ %i.if, %.lr.ph199.7 ] ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 6
  %i.ir = load i8, ptr %i.iq, align 2, !range !10, !noundef !11
  %i.is = trunc nuw i8 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 3 uses
  br i1 %i.is, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.7, label %bb.z

bb.z:                                             ; preds = %.critedge.7
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 28
  %i.iv = load i16, ptr %i.iu, align 4
  %i.iw = icmp eq i16 %i.iv, -1
  br i1 %i.iw, label %.critedge.7, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.7, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.7: ; preds = %bb.z, %.critedge.7
  %.not153.7 = icmp eq ptr %i.it, %i.eg
  br i1 %.not153.7, label %.loopexit, label %.lr.ph199.8

.lr.ph199.8:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.7
  %i.ix = load ptr, ptr @stderr, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.53, ptr noundef %i.jb) #35 ; 0 uses
  br label %.critedge.8

.critedge.8:                                      ; preds = %bb.aa, %.lr.ph199.8
  %i.jd = phi ptr [ %i.jh, %bb.aa ], [ %i.it, %.lr.ph199.8 ] ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 6
  %i.jf = load i8, ptr %i.je, align 2, !range !10, !noundef !11
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 24 ; 2 uses
  br i1 %i.jg, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8, label %bb.aa

bb.aa:                                            ; preds = %.critedge.8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  %i.jj = load i16, ptr %i.ji, align 4
  %i.jk = icmp eq i16 %i.jj, -1
  br i1 %i.jk, label %.critedge.8, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8: ; preds = %bb.aa, %.critedge.8
  %.not153.8 = icmp eq ptr %i.jh, %i.eg
  br i1 %.not153.8, label %.loopexit, label %bb.r

.loopexit:                                        ; preds = %bb.q, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.6, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.7, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8, %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120, %bb.r, %.thread
  %.086 = phi i1 [ %.mux, %.thread ], [ true, %bb.r ], [ true, %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.7 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.6 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2 ], [ true, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1 ], [ true, %bb.q ]
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jm = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %bb.ao, label %bb.ab

.loopexit.thread:                                 ; preds = %bb.p
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 488
  %3 = load i64, ptr %2, align 8                  ; 2 uses
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.aq, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  br i1 %i.c, label %bb.ac, label %.critedge102

bb.ac:                                            ; preds = %.loopexit.thread, %bb.ab
  %5 = phi i64 [ %i.jm, %bb.ab ], [ %3, %.loopexit.thread ]
  %i.jo = load ptr, ptr @stderr, align 8
  %i.jp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jo, ptr noundef nonnull @.str.54, i64 noundef %5) #35 ; 0 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.jr = load i64, ptr %i.jq, align 8            ; 4 uses
  %.not.i.i123 = icmp eq i64 %i.jr, 0
  %.phi.trans.insert.i.i124 = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.pre.i.i125 = load ptr, ptr %.phi.trans.insert.i.i124, align 8 ; 3 uses
  br i1 %.not.i.i123, label %bb.aq, label %.lr.ph.i.i126

.lr.ph.i.i126:                                    ; preds = %bb.ac, %bb.ad
  %.04.i.i127 = phi i64 [ %i.jw, %bb.ad ], [ 0, %bb.ac ] ; 4 uses
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i125, i64 %.04.i.i127
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = load i16, ptr %i.jt, align 4
  %i.jv = icmp eq i16 %i.ju, -1
  br i1 %i.jv, label %bb.ad, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit130

bb.ad:                                            ; preds = %.lr.ph.i.i126
  %i.jw = add nuw i64 %.04.i.i127, 1              ; 2 uses
  %exitcond.not.i.i129 = icmp eq i64 %i.jw, %i.jr
  br i1 %exitcond.not.i.i129, label %.critedge101, label %.lr.ph.i.i126, !llvm.loop !33

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit130: ; preds = %.lr.ph.i.i126
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i125, i64 %i.jr ; 9 uses
  %.not154200 = icmp samesign eq i64 %.04.i.i127, %i.jr
  br i1 %.not154200, label %.critedge101, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit130
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i125, i64 %.04.i.i127 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.jz, align 8
  %i.ka = load ptr, ptr @stderr, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 128
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.55, ptr noundef %i.kc) #35 ; 0 uses
  br label %.critedge99

bb.ae:                                            ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %.sroa.0.0.copyload.9 = load ptr, ptr %i.ke, align 8
  %i.kf = load ptr, ptr @stderr, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.9, i64 128
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.55, ptr noundef %i.kh) #35 ; 0 uses
  %i.kj = load ptr, ptr @stderr, align 8
  %fwrite93 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 25, i64 1, ptr %i.kj) #34 ; 0 uses
  br label %.critedge101

.critedge99:                                      ; preds = %.lr.ph203.preheader, %bb.af
  %i.kk = phi ptr [ %i.ko, %bb.af ], [ %i.jy, %.lr.ph203.preheader ] ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 6
  %i.km = load i8, ptr %i.kl, align 2, !range !10, !noundef !11
  %i.kn = trunc nuw i8 %i.km to i1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 3 uses
  br i1 %i.kn, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132, label %bb.af

bb.af:                                            ; preds = %.critedge99
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 28
  %i.kq = load i16, ptr %i.kp, align 4
  %i.kr = icmp eq i16 %i.kq, -1
  br i1 %i.kr, label %.critedge99, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132: ; preds = %bb.af, %.critedge99
  %.not154 = icmp eq ptr %i.ko, %i.jx
  br i1 %.not154, label %.critedge101, label %.lr.ph203.1

.lr.ph203.1:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %.sroa.0.0.copyload.1 = load ptr, ptr %i.ks, align 8
  %i.kt = load ptr, ptr @stderr, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.1, i64 128
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kt, ptr noundef nonnull @.str.55, ptr noundef %i.kv) #35 ; 0 uses
  br label %.critedge99.1

.critedge99.1:                                    ; preds = %bb.ag, %.lr.ph203.1
  %i.kx = phi ptr [ %i.lb, %bb.ag ], [ %i.ko, %.lr.ph203.1 ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 6
  %i.kz = load i8, ptr %i.ky, align 2, !range !10, !noundef !11
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 3 uses
  br i1 %i.la, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.1, label %bb.ag

bb.ag:                                            ; preds = %.critedge99.1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 28
  %i.ld = load i16, ptr %i.lc, align 4
  %i.le = icmp eq i16 %i.ld, -1
  br i1 %i.le, label %.critedge99.1, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.1, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.1: ; preds = %bb.ag, %.critedge99.1
  %.not154.1 = icmp eq ptr %i.lb, %i.jx
  br i1 %.not154.1, label %.critedge101, label %.lr.ph203.2

.lr.ph203.2:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.1
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %.sroa.0.0.copyload.2 = load ptr, ptr %i.lf, align 8
  %i.lg = load ptr, ptr @stderr, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.2, i64 128
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lg, ptr noundef nonnull @.str.55, ptr noundef %i.li) #35 ; 0 uses
  br label %.critedge99.2

.critedge99.2:                                    ; preds = %bb.ah, %.lr.ph203.2
  %i.lk = phi ptr [ %i.lo, %bb.ah ], [ %i.lb, %.lr.ph203.2 ] ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 6
  %i.lm = load i8, ptr %i.ll, align 2, !range !10, !noundef !11
  %i.ln = trunc nuw i8 %i.lm to i1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 3 uses
  br i1 %i.ln, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.2, label %bb.ah

bb.ah:                                            ; preds = %.critedge99.2
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 28
  %i.lq = load i16, ptr %i.lp, align 4
  %i.lr = icmp eq i16 %i.lq, -1
  br i1 %i.lr, label %.critedge99.2, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.2, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.2: ; preds = %bb.ah, %.critedge99.2
  %.not154.2 = icmp eq ptr %i.lo, %i.jx
  br i1 %.not154.2, label %.critedge101, label %.lr.ph203.3

.lr.ph203.3:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.2
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %.sroa.0.0.copyload.3 = load ptr, ptr %i.ls, align 8
  %i.lt = load ptr, ptr @stderr, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.3, i64 128
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lt, ptr noundef nonnull @.str.55, ptr noundef %i.lv) #35 ; 0 uses
  br label %.critedge99.3

.critedge99.3:                                    ; preds = %bb.ai, %.lr.ph203.3
  %i.lx = phi ptr [ %i.mb, %bb.ai ], [ %i.lo, %.lr.ph203.3 ] ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 6
  %i.lz = load i8, ptr %i.ly, align 2, !range !10, !noundef !11
  %i.ma = trunc nuw i8 %i.lz to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 24 ; 3 uses
  br i1 %i.ma, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.3, label %bb.ai

bb.ai:                                            ; preds = %.critedge99.3
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 28
  %i.md = load i16, ptr %i.mc, align 4
  %i.me = icmp eq i16 %i.md, -1
  br i1 %i.me, label %.critedge99.3, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.3, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.3: ; preds = %bb.ai, %.critedge99.3
  %.not154.3 = icmp eq ptr %i.mb, %i.jx
  br i1 %.not154.3, label %.critedge101, label %.lr.ph203.4

.lr.ph203.4:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.3
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %.sroa.0.0.copyload.4 = load ptr, ptr %i.mf, align 8
  %i.mg = load ptr, ptr @stderr, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.4, i64 128
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mg, ptr noundef nonnull @.str.55, ptr noundef %i.mi) #35 ; 0 uses
  br label %.critedge99.4

.critedge99.4:                                    ; preds = %bb.aj, %.lr.ph203.4
  %i.mk = phi ptr [ %i.mo, %bb.aj ], [ %i.mb, %.lr.ph203.4 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 6
  %i.mm = load i8, ptr %i.ml, align 2, !range !10, !noundef !11
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 24 ; 3 uses
  br i1 %i.mn, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.4, label %bb.aj

bb.aj:                                            ; preds = %.critedge99.4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 28
  %i.mq = load i16, ptr %i.mp, align 4
  %i.mr = icmp eq i16 %i.mq, -1
  br i1 %i.mr, label %.critedge99.4, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.4, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.4: ; preds = %bb.aj, %.critedge99.4
  %.not154.4 = icmp eq ptr %i.mo, %i.jx
  br i1 %.not154.4, label %.critedge101, label %.lr.ph203.5

.lr.ph203.5:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %.sroa.0.0.copyload.5 = load ptr, ptr %i.ms, align 8
  %i.mt = load ptr, ptr @stderr, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.5, i64 128
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mt, ptr noundef nonnull @.str.55, ptr noundef %i.mv) #35 ; 0 uses
  br label %.critedge99.5

.critedge99.5:                                    ; preds = %bb.ak, %.lr.ph203.5
  %i.mx = phi ptr [ %i.nb, %bb.ak ], [ %i.mo, %.lr.ph203.5 ] ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 6
  %i.mz = load i8, ptr %i.my, align 2, !range !10, !noundef !11
  %i.na = trunc nuw i8 %i.mz to i1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 24 ; 3 uses
  br i1 %i.na, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.5, label %bb.ak

bb.ak:                                            ; preds = %.critedge99.5
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 28
  %i.nd = load i16, ptr %i.nc, align 4
  %i.ne = icmp eq i16 %i.nd, -1
  br i1 %i.ne, label %.critedge99.5, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.5, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.5: ; preds = %bb.ak, %.critedge99.5
  %.not154.5 = icmp eq ptr %i.nb, %i.jx
  br i1 %.not154.5, label %.critedge101, label %.lr.ph203.6

.lr.ph203.6:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.5
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %.sroa.0.0.copyload.6 = load ptr, ptr %i.nf, align 8
  %i.ng = load ptr, ptr @stderr, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.6, i64 128
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ng, ptr noundef nonnull @.str.55, ptr noundef %i.ni) #35 ; 0 uses
  br label %.critedge99.6

.critedge99.6:                                    ; preds = %bb.al, %.lr.ph203.6
  %i.nk = phi ptr [ %i.no, %bb.al ], [ %i.nb, %.lr.ph203.6 ] ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 6
  %i.nm = load i8, ptr %i.nl, align 2, !range !10, !noundef !11
  %i.nn = trunc nuw i8 %i.nm to i1
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 24 ; 3 uses
  br i1 %i.nn, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.6, label %bb.al

bb.al:                                            ; preds = %.critedge99.6
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 28
  %i.nq = load i16, ptr %i.np, align 4
  %i.nr = icmp eq i16 %i.nq, -1
  br i1 %i.nr, label %.critedge99.6, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.6, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.6: ; preds = %bb.al, %.critedge99.6
  %.not154.6 = icmp eq ptr %i.no, %i.jx
  br i1 %.not154.6, label %.critedge101, label %.lr.ph203.7

.lr.ph203.7:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.6
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %.sroa.0.0.copyload.7 = load ptr, ptr %i.ns, align 8
  %i.nt = load ptr, ptr @stderr, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.7, i64 128
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nt, ptr noundef nonnull @.str.55, ptr noundef %i.nv) #35 ; 0 uses
  br label %.critedge99.7

.critedge99.7:                                    ; preds = %bb.am, %.lr.ph203.7
  %i.nx = phi ptr [ %i.ob, %bb.am ], [ %i.no, %.lr.ph203.7 ] ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 6
  %i.nz = load i8, ptr %i.ny, align 2, !range !10, !noundef !11
  %i.oa = trunc nuw i8 %i.nz to i1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 24 ; 3 uses
  br i1 %i.oa, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.7, label %bb.am

bb.am:                                            ; preds = %.critedge99.7
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 28
  %i.od = load i16, ptr %i.oc, align 4
  %i.oe = icmp eq i16 %i.od, -1
  br i1 %i.oe, label %.critedge99.7, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.7, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.7: ; preds = %bb.am, %.critedge99.7
  %.not154.7 = icmp eq ptr %i.ob, %i.jx
  br i1 %.not154.7, label %.critedge101, label %.lr.ph203.8

.lr.ph203.8:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.7
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %.sroa.0.0.copyload.8 = load ptr, ptr %i.of, align 8
  %i.og = load ptr, ptr @stderr, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.8, i64 128
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.og, ptr noundef nonnull @.str.55, ptr noundef %i.oi) #35 ; 0 uses
  br label %.critedge99.8

.critedge99.8:                                    ; preds = %bb.an, %.lr.ph203.8
  %i.ok = phi ptr [ %i.oo, %bb.an ], [ %i.ob, %.lr.ph203.8 ] ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 6
  %i.om = load i8, ptr %i.ol, align 2, !range !10, !noundef !11
  %i.on = trunc nuw i8 %i.om to i1
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 24 ; 2 uses
  br i1 %i.on, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.8, label %bb.an

bb.an:                                            ; preds = %.critedge99.8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 28
  %i.oq = load i16, ptr %i.op, align 4
  %i.or = icmp eq i16 %i.oq, -1
  br i1 %i.or, label %.critedge99.8, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.8, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.8: ; preds = %bb.an, %.critedge99.8
  %.not154.8 = icmp eq ptr %i.oo, %i.jx
  br i1 %.not154.8, label %.critedge101, label %bb.ae

bb.ao:                                            ; preds = %.loopexit
  br i1 %.086, label %.critedge101, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  %.not95204 = icmp eq ptr %i.ot, null
  br i1 %.not95204, label %.loopexit257, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.ap, %.lr.ph207
  %.0205 = phi ptr [ %i.ov, %.lr.ph207 ], [ %i.ot, %bb.ap ] ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0205, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.0205, i64 noundef 24) #32
  %.not95 = icmp eq ptr %i.ov, null
  br i1 %.not95, label %.loopexit257, label %.lr.ph207, !llvm.loop !37

.loopexit257:                                     ; preds = %.lr.ph207, %bb.ap
  tail call void @_ZN8nanobind6detail12nb_internalsD2Ev(ptr noundef nonnull align 64 dead_on_return(131904) dereferenceable(131904) %0) #29
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 131904, i64 noundef 64) #32
  ret void

.critedge101:                                     ; preds = %bb.ad, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.1, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.2, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.3, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.4, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.5, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.6, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.7, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit132.8, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit130, %bb.ae, %bb.ao
  br i1 %i.c, label %bb.aq, label %.critedge102

bb.aq:                                            ; preds = %.loopexit.thread, %bb.ac, %.critedge101
  %i.ow = load ptr, ptr @stderr, align 8
  %fwrite96 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 142, i64 1, ptr %i.ow) #34 ; 0 uses
  br label %.critedge102

.critedge102:                                     ; preds = %bb.ab, %bb.aq, %.critedge101
  tail call void @abort() #31
  unreachable
}

; Function Attrs: nounwind
declare hidden void @_ZN8nanobind6detail13nb_pool_drainEPNS0_12nb_inst_poolEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_nb_internals.cpp() #25 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8nanobind6detailL17internals_createdE, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EED2Ev, ptr nonnull @_ZN8nanobind6detailL17internals_createdE, ptr nonnull @__dso_handle) #29 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #34 = { cold }
attributes #35 = { cold nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", i32 2146410443, i32 1073205}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{null}
!24 = !{!"branch_weights", !"expected", i32 2144621767, i32 2861881}
!25 = !{ptr @_ZN8nanobind4abi112python_errorD2Ev}
!26 = !{!"branch_weights", i32 4000000, i32 4001}
!27 = distinct !{!27, !7, !8}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
end_hunk_0
