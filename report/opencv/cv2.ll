Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cv2?download=true
inline.NumInlined: 99483
inline.NumDeleted: 14985
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_Z13pyopencv_fromIN2cv4cuda6StreamEEP7_objectRKT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %common.resume
}

declare void @_ZN2cv4cuda6StreamC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13pyopencv_fromIN2cv4cuda7HostMemEEP7_objectRKT_(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.cv::Ptr.95", align 16      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !1351
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !1352
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !1353
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store i32 1, ptr %i.e, align 8, !tbaa !1355
  store ptr %i.a, ptr %1, align 16, !tbaa !1349
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv4cuda7HostMemEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.a)
  %i.g = load ptr, ptr %1, align 16, !tbaa !1349
  %i.h = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN2cv4cuda7HostMemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(60) %i.g, ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.i = invoke ptr @_PyObject_New(ptr noundef nonnull @_ZL29pyopencv_cuda_HostMem_TypeXXX)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !737  ; 3 uses
  %i.l = load <2 x ptr>, ptr %1, align 16, !tbaa !734
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !734
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit, label %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit.thread

_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit.thread: ; preds = %bb.c
  %i.o = load i32, ptr %i.m, align 4, !tbaa !744
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !744
  br label %bb.d

_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit: ; preds = %bb.c
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.f, align 8, !tbaa !737 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit.thread, %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit
  %.pr6 = phi ptr [ %i.k, %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit.thread ], [ %.pr.pre, %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr6, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !739
  %i.v = getelementptr inbounds nuw i8, ptr %.pr6, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !740
  %i.w = load ptr, ptr %.pr6, align 8, !tbaa !742
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr6) #37, !inline_history !72
  %i.z = load ptr, ptr %.pr6, align 8, !tbaa !742
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr6) #37, !inline_history !72
  br label %_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !745

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr6) #37
  br label %_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_Z13pyopencv_fromIN2cv3PtrINS0_4cuda7HostMemEEEEP7_objectRKT_.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret ptr %i.i

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv4cuda7HostMemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z16fillDLPackTensorIN2cv3PtrINS0_4cuda6GpuMatEEEEbRKT_P15DLManagedTensorRK8DLDevice(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !1374
  switch i32 %i.a, label %bb.c [
    i32 -1, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1375
  %.not25 = icmp eq i32 %i.c, 0
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !1377
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.2)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !1322   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1378
  store ptr %i.g, ptr %1, align 8, !tbaa !1383
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !1384
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !1385
  %i.j = load i32, ptr %i.e, align 8, !tbaa !1326 ; 2 uses
  %i.k = shl i32 %i.j, 2
  %i.l = and i32 %i.k, 124
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 1275511473185297, %i.m
  %i.o = and i64 %i.n, 15
  %i.p = and i32 %i.j, 31
  %i.q = tail call fastcc i32 @_ZL13GetDLPackTypemi(i64 noundef %i.o, i32 noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.q, ptr %i.r, align 4
  %i.s = load ptr, ptr %0, align 8, !tbaa !1322   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1327
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1386 ; 3 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !781
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1328
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !781
  %i.ac = load i32, ptr %i.s, align 8, !tbaa !1326 ; 2 uses
  %i.ad = lshr i32 %i.ac, 5
  %i.ae = and i32 %i.ad, 127
  %i.af = add nuw nsw i32 %i.ae, 1
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !781
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1329
  %i.ak = shl i32 %i.ac, 2
  %i.al = and i32 %i.ak, 124
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 1275511473185297, %i.am
  %i.ao = and i64 %i.an, 15
  %i.ap = udiv i64 %i.aj, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1387 ; 3 uses
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !781
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ag, ptr %i.as, align 8, !tbaa !781
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 1, ptr %i.at, align 8, !tbaa !781
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.au, align 8, !tbaa !1388
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc range(i32 65536, 131072) i32 @_ZL13GetDLPackTypemi(i64 noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp ult i32 %1, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZL13GetDLPackTypemi, ptr noundef nonnull @.str.37, i32 noundef 168) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !779    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !743
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.b

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL13GetDLPackTypemi, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %.tr = trunc i64 %0 to i32
  %i.i = shl i32 %.tr, 11
  %.sroa.6.0.insert.ext = and i32 %i.i, 63488
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.ext, %switch.ext
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, 65536
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z16fillDLPackTensorIN2cv3PtrINS0_4cuda8GpuMatNDEEEEbRKT_P15DLManagedTensorRK8DLDevice(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !1374
  switch i32 %i.a, label %bb.c [
    i32 -1, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1375
  %.not29 = icmp eq i32 %i.c, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !1377
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.3)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !1335   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3678
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3679
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store ptr %i.j, ptr %1, align 8, !tbaa !1383
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.k, align 8, !tbaa !1384
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !1385
  %i.m = load i32, ptr %i.e, align 8, !tbaa !1366 ; 2 uses
  %i.n = shl i32 %i.m, 2
  %i.o = and i32 %i.n, 124
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 1275511473185297, %i.p
  %i.r = and i64 %i.q, 15
  %i.s = and i32 %i.m, 31
  %i.t = tail call fastcc i32 @_ZL13GetDLPackTypemi(i64 noundef %i.r, i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.t, ptr %i.u, align 4
  %i.v = load ptr, ptr %0, align 8, !tbaa !1335   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1367 ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1389
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1386 ; 2 uses
  %wide.trip.count = zext nneg i32 %narrow.i to i64 ; 2 uses
  %wide.trip.count38 = zext nneg i32 %i.x to i64  ; 6 uses
  %i.ae = add nsw i64 %wide.trip.count38, -1
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %wide.trip.count) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = and i64 %i.ag, 3                        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 4, i64 %i.ah
  %n.vec = sub nsw i64 %i.ag, %i.aj               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %wide.load = load <2 x i32>, ptr %i.ak, align 4, !tbaa !744
  %wide.load47 = load <2 x i32>, ptr %i.al, align 4, !tbaa !744
  %i.am = sext <2 x i32> %wide.load to <2 x i64>
  %i.an = sext <2 x i32> %wide.load47 to <2 x i64>
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %i.am, ptr %i.ao, align 8, !tbaa !781
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !781
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !3673

.lr.ph36:                                         ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1392 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1387 ; 7 uses
  %wide.trip.count43 = zext nneg i32 %i.x to i64
  %min.iters.check49 = icmp ult i32 %i.x, 8
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = ptrtoaddr ptr %i.as to i64
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = select i1 %min.iters.check49, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph48.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph36
  %n.vec51 = and i64 %wide.trip.count38, 2147483644 ; 3 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next56, %vector.body52 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index53 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load54 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !781
  %wide.load55 = load <2 x i64>, ptr %i.az, align 8, !tbaa !781
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index53 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load54, ptr %i.ba, align 8, !tbaa !781
  store <2 x i64> %wide.load55, ptr %i.bb, align 8, !tbaa !781
  %index.next56 = add nuw i64 %index53, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.bc, label %middle.block57, label %vector.body52, !llvm.loop !3674

middle.block57:                                   ; preds = %vector.body52
  %cmp.n = icmp eq i64 %n.vec51, %wide.trip.count38
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.lr.ph36, %middle.block57
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph36 ], [ %n.vec51, %middle.block57 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count38, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph48.prol.loopexit, label %scalar.ph48.prol

scalar.ph48.prol:                                 ; preds = %scalar.ph48.preheader, %scalar.ph48.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %scalar.ph48.prol ], [ %indvars.iv40.ph, %scalar.ph48.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph48.prol ], [ 0, %scalar.ph48.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv40.prol
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !781
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv40.prol
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !781
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph48.prol.loopexit, label %scalar.ph48.prol, !llvm.loop !3675

scalar.ph48.prol.loopexit:                        ; preds = %scalar.ph48.prol, %scalar.ph48.preheader
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %scalar.ph48.preheader ], [ %indvars.iv.next41.prol, %scalar.ph48.prol ]
  %i.bg = sub nsw i64 %indvars.iv40.ph, %wide.trip.count38
end_hunk_0
