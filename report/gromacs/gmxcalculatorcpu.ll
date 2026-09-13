Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmxcalculatorcpu?download=true
inline.NumInlined: 998
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5nblib23GmxNBForceCalculatorCpu7CpuImplC2EN3gmx8ArrayRefIiEENS3_IfEES5_S4_S4_S4_RKNS_15NBKernelOptionsE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 3 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !16
  tail call void @_ZN5nblib17SystemDescriptionC2EN3gmx8ArrayRefIiEENS2_IfEES4_S3_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %i.d, ptr %3, ptr %i.h, ptr noundef nonnull byval(%"class.gmx::ArrayRef.0") align 8 %10, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %11)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.z = invoke noundef i32 @_ZN5nblib19findNumEnergyGroupsEN3gmx8ArrayRefIiEE(ptr %i.q, ptr %i.x)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  store ptr %i.ah, ptr %12, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !16
  invoke void @_ZN5nblib14GmxBackendDataC2ERKNS_15NBKernelOptionsEiN3gmx8ArrayRefIiEES6_(ptr noundef nonnull align 8 dereferenceable(2461) %i.y, ptr noundef nonnull align 4 dereferenceable(32) %9, i32 noundef %i.z, ptr %i.aa, ptr %i.ag, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %12)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !239
  %i.ar = invoke noundef i32 @_ZN5nblib19findNumEnergyGroupsEN3gmx8ArrayRefIiEE(ptr %i.q, ptr %i.x)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !184
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  invoke void @_ZN5nblib14createNbnxmCPUEmRKNS_15NBKernelOptionsEiN3gmx8ArrayRefIKfEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, i64 noundef %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %9, i32 noundef %i.ar, ptr %i.at, ptr %i.az)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bb = load ptr, ptr %13, align 8, !tbaa !185
  store ptr null, ptr %13, align 8, !tbaa !185
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !185 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !185
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.e
  call void @_ZN3gmx18nonbonded_verlet_tD1Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.bc) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 72) #19
  %.pr = load ptr, ptr %13, align 8, !tbaa !185   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx18nonbonded_verlet_tEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx18nonbonded_verlet_tEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEaSEOS4_.exit
  call void @_ZN3gmx18nonbonded_verlet_tD1Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %.pr) #18
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 72) #19
  br label %_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN3gmx18nonbonded_verlet_tEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN5nblib14GmxBackendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2461) dereferenceable(2461) %i.y) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.bd, %bb.f ]
  call void @_ZN5nblib17SystemDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5nblib17SystemDescriptionC2EN3gmx8ArrayRefIiEENS2_IfEES4_S3_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8 %5, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.150", align 1 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.150", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  invoke void @_ZN5nblib3BoxC1Ef(ptr noundef nonnull align 4 dereferenceable(36) %i.f, float noundef 0.000000e+00)
          to label %_ZSt5countIPmmENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit unwind label %bb.e

_ZSt5countIPmmENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit: ; preds = %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = ashr exact i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.i30 = load ptr, ptr %5, align 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i30 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i31 = load ptr, ptr %6, align 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.sroa.0.0.copyload.i31 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.o, %i.i
  %i.v = icmp eq i64 %i.t, %i.i
  %.not = and i1 %i.u, %i.v
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZSt5countIPmmENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5nblib14NbLibExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5nblib14InputExceptionE, i64 16), ptr %i.w, align 8, !tbaa !187
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN5nblib14InputExceptionE, ptr nonnull @_ZN5nblib14NbLibExceptionD2Ev) #20
          to label %bb.aa unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d
  %.019 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !191   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !192
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.019, label %bb.g, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.019, label %bb.g, label %.body

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26141 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.w) #18
  br label %.body

bb.h:                                             ; preds = %_ZSt5countIPmmENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit
  %i.af = ptrtoint ptr %4 to i64
  %i.ag = ptrtoint ptr %3 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = uitofp nneg i64 %i.aj to double
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ak)
  %i.al = tail call double @llvm.round.f64(double %sqrt.i)
  %i.am = fptosi double %i.al to i32              ; 3 uses
  %i.an = shl nsw i32 %i.am, 1
  %i.ao = mul nsw i32 %i.an, %i.am
  %i.ap = trunc i64 %i.ai to i32
  %.not23 = icmp eq i32 %i.ao, %i.ap
  br i1 %.not23, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5nblib14NbLibExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5nblib14InputExceptionE, i64 16), ptr %i.aq, align 8, !tbaa !187
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN5nblib14InputExceptionE, ptr nonnull @_ZN5nblib14NbLibExceptionD2Ev) #20
          to label %bb.aa unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread: ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  %.021 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !191   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !192
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %.021, label %bb.m, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %.021, label %bb.m, label %.body

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn144 = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  call void @__cxa_free_exception(ptr %i.aq) #18
  br label %.body

bb.n:                                             ; preds = %bb.h
  store i64 %i.j, ptr %0, align 8, !tbaa !240
  %11 = sext i32 %i.am to i64
  store i64 %11, ptr %i.a, align 8, !tbaa !241
  %i.ay = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.ay, label %bb.o, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr null, i64 %i.i
  br label %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.i   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %1, i64 %i.i, i1 false), !tbaa !193
  br label %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %bb.o, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i
  %.sroa.11131.0 = phi ptr [ %i.az, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i ], [ %i.bb, %.noexc5.i ]
  %.sroa.0127.0 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i ], [ %i.ba, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i ], [ %i.bb, %.noexc5.i ]
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !194 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !195
  store ptr %.sroa.0127.0, ptr %i.b, align 8, !tbaa !194
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.be, align 8, !tbaa !196
  store ptr %.sroa.11131.0, ptr %i.bf, align 8, !tbaa !195
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bj) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.p, %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit
  %i.bk = icmp ugt i64 %i.ah, 9223372036854775804
  br i1 %i.bk, label %bb.q, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
          to label %.noexc.i49 unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i

.noexc.i49:                                       ; preds = %bb.q
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i.i45 = icmp eq ptr %4, %3
  br i1 %.not.i.i.i45, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr null, i64 %i.ah
  br label %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #21
          to label %.noexc5.i47 unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ; 3 uses

.noexc5.i47:                                      ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.ah  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %3, i64 %i.ah, i1 false), !tbaa !197
  br label %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i:           ; preds = %bb.q, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit: ; preds = %.noexc5.i47, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i
  %.sroa.0119.0 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i ], [ %i.bm, %.noexc5.i47 ]
  %.sroa.11123.0 = phi ptr [ %i.bl, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i ], [ %i.bn, %.noexc5.i47 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i48 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i ], [ %i.bn, %.noexc5.i47 ]
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !183 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !198
  store ptr %.sroa.0119.0, ptr %i.c, align 8, !tbaa !183
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i48, ptr %i.bq, align 8, !tbaa !184
  store ptr %.sroa.11123.0, ptr %i.br, align 8, !tbaa !198
  %.not.i.i.i.i.i52 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i52, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bv) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.r, %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit
  %i.bw = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.bw, label %bb.s, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i57

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
          to label %.noexc.i65 unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i61

.noexc.i65:                                       ; preds = %bb.s
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i57: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.not.i.i.i58 = icmp eq ptr %i.l, %.sroa.0.0.copyload.i30
  br i1 %.not.i.i.i58, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i64, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i59

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i64: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i57
  %i.bx = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  br label %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit68

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i59: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i57
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
          to label %.noexc5.i62 unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i61 ; 3 uses

.noexc5.i62:                                      ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i59
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.o   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %.sroa.0.0.copyload.i30, i64 %i.o, i1 false), !tbaa !197
  br label %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit68

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i61:         ; preds = %bb.s, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i59
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit68: ; preds = %.noexc5.i62, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i64
  %.sroa.0111.0 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i64 ], [ %i.by, %.noexc5.i62 ]
  %.sroa.11115.0 = phi ptr [ %i.bx, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i64 ], [ %i.bz, %.noexc5.i62 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i63 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.thread.i.i64 ], [ %i.bz, %.noexc5.i62 ]
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !183 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !198
  store ptr %.sroa.0111.0, ptr %i.d, align 8, !tbaa !183
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i63, ptr %i.cc, align 8, !tbaa !184
  store ptr %.sroa.11115.0, ptr %i.cd, align 8, !tbaa !198
  %.not.i.i.i.i.i69 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i69, label %_ZNSt6vectorIfSaIfEED2Ev.exit73, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit68
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ch) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit73

_ZNSt6vectorIfSaIfEED2Ev.exit73:                  ; preds = %bb.t, %_ZNSt6vectorIfSaIfEEC2IN3gmx12ArrayRefIterIfEEvEET_S6_RKS0_.exit68
  %i.ci = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.ci, label %bb.u, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i76

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit73
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
          to label %.noexc.i84 unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i80

.noexc.i84:                                       ; preds = %bb.u
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i76: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit73
  %.not.i.i.i77 = icmp eq ptr %i.q, %.sroa.0.0.copyload.i31
  br i1 %.not.i.i.i77, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i83, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i78

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i83: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i76
  %i.cj = getelementptr inbounds nuw i8, ptr null, i64 %i.t
  br label %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit87

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i78: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i76
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #21
          to label %.noexc5.i81 unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i80 ; 3 uses

.noexc5.i81:                                      ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i78
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.t   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %.sroa.0.0.copyload.i31, i64 %i.t, i1 false), !tbaa !193
  br label %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit87

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i80:         ; preds = %bb.u, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i78
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIiEEvEET_S6_RKS0_.exit87: ; preds = %.noexc5.i81, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i83
  %.sroa.0105.0 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i83 ], [ %i.ck, %.noexc5.i81 ]
  %.sroa.11.0 = phi ptr [ %i.cj, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i83 ], [ %i.cl, %.noexc5.i81 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i82 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i83 ], [ %i.cl, %.noexc5.i81 ]
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !194 ; 3 uses
end_hunk_0
