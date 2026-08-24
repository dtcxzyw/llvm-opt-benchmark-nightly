Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/context?download=true
inline.NumInlined: 979
inline.NumDeleted: 510
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6gmxapi11ContextImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6gmxapi11ContextImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6gmxapi11ContextImplD1Ev(ptr noundef nonnull align 8 dead_on_return(2328) dereferenceable(2328) %i.b) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 2328) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6gmxapi11ContextImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6gmxapi11ContextImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define void @_ZN6gmxapi11ContextImpl6launchERKNS_8WorkflowE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.52") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(2328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::shared_ptr.52", align 16 ; 12 uses
  %4 = alloca %"class.std::unique_ptr.55", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::unique_ptr.77", align 8 ; 7 uses
  %i.b = alloca [1 x ptr], align 8                ; 7 uses
  %9 = alloca %"class.gmx::SimulationContext", align 8 ; 9 uses
  %10 = alloca %"class.std::unique_ptr.96", align 8 ; 9 uses
  %11 = alloca %"class.std::tuple.104", align 8   ; 6 uses
  %12 = alloca %"class.gmx::MdrunnerBuilder", align 8 ; 22 uses
  %13 = alloca %"class.std::unique_ptr.77", align 8 ; 4 uses
  %14 = alloca %"class.gmx::SimulationInputHandle", align 8 ; 7 uses
  %15 = alloca %"class.gmx::SimulationInputHandle", align 8 ; 4 uses
  %16 = alloca %"class.std::shared_ptr.52", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %18 = alloca %"class.std::unique_ptr.96", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit

_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f monotonic, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %bb.dt

_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !20
  store i16 17485, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.k, align 2, !tbaa !26
  call void @_ZNK6gmxapi8Workflow7getNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.55") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %i.l = load ptr, ptr %5, align 8, !tbaa !27     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  %i.n = load i64, ptr %i.i, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt10__weak_ptrIN6gmxapi7SessionELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.p, align 8, !tbaa !26
  %i.r = load ptr, ptr %4, align 8, !tbaa !149    ; 3 uses
  %.not292 = icmp eq ptr %i.r, null
  br i1 %.not292, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.r) #20
  %i.v = load ptr, ptr %6, align 8, !tbaa !27     ; 6 uses
  %i.w = icmp eq ptr %i.v, %i.p
  %i.x = load ptr, ptr %7, align 8, !tbaa !27     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  switch i64 %i.ab, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !26
  store i8 %i.ad, ptr %i.v, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !23
  %i.af = load ptr, ptr %6, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 0, ptr %i.ag, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.x, ptr %6, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !26
  store <2 x i64> %i.ai, ptr %i.q, align 8, !tbaa !26
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !26
  store ptr %i.x, ptr %6, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !tbaa !26
  store <2 x i64> %i.al, ptr %i.q, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %7, align 8, !tbaa !27
  store i64 %i.aj, ptr %i.y, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.y, ptr %7, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.v, %bb.f ], [ %i.y, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !23
  store i8 0, ptr %i.am, align 1, !tbaa !26
  %i.ao = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 13 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !138 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 25 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !138 ; 8 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = ashr i64 %i.az, 7                       ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.bc = and i64 %i.az, -128
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.au, i64 %i.bc ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i", %.lr.ph.preheader.i.i.i.i.i
  %.062.i.i.i.i.i = phi i64 [ %i.cf, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i" ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.042.061.i.i.i.i.i = phi ptr [ %i.ce, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i" ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i ] ; 13 uses
  %i.bd = getelementptr i8, ptr %.sroa.042.061.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.be = icmp eq i64 %.val1.i.i.i.i.i.i, 2
  br i1 %i.be, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.042.061.i.i.i.i.i, align 8
  %i.bf = load i16, ptr %.val.i.i.i.i.i.i, align 1
  %i.bg = icmp ne i16 %i.bf, 29485
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit298, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr i8, ptr %.sroa.042.061.i.i.i.i.i, i64 40
  %.val1.i16.i.i.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bk = icmp eq i64 %.val1.i16.i.i.i.i.i, 2
  br i1 %i.bk, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 32
  %.val.i17.i.i.i.i.i = load ptr, ptr %i.bl, align 8
  %i.bm = load i16, ptr %.val.i17.i.i.i.i.i, align 1
  %i.bn = icmp ne i16 %i.bm, 29485
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit298.loopexit.split.loop.exit426, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %i.bq = getelementptr i8, ptr %.sroa.042.061.i.i.i.i.i, i64 72
  %.val1.i20.i.i.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.br = icmp eq i64 %.val1.i20.i.i.i.i.i, 2
  br i1 %i.br, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i.i"
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 64
  %.val.i21.i.i.i.i.i = load ptr, ptr %i.bs, align 8
  %i.bt = load i16, ptr %.val.i21.i.i.i.i.i, align 1
  %i.bu = icmp ne i16 %i.bt, 29485
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.loopexit298.loopexit.split.loop.exit424, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i.i"
  %i.bx = getelementptr i8, ptr %.sroa.042.061.i.i.i.i.i, i64 104
  %.val1.i24.i.i.i.i.i = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.by = icmp eq i64 %.val1.i24.i.i.i.i.i, 2
  br i1 %i.by, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i.i"
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 96
  %.val.i25.i.i.i.i.i = load ptr, ptr %i.bz, align 8
  %i.ca = load i16, ptr %.val.i25.i.i.i.i.i, align 1
  %i.cb = icmp ne i16 %i.ca, 29485
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit298.loopexit.split.loop.exit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 128
  %i.cf = add nsw i64 %.062.i.i.i.i.i, -1
  %i.cg = icmp sgt i64 %.062.i.i.i.i.i, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !151

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i.i"
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre67.i.i.i.i.i = sub i64 %i.ax, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.h
  %.pre-phi68.i.i.i.i.i = phi i64 [ %.pre67.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.az, %bb.h ]
  %.sroa.042.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.au, %bb.h ] ; 6 uses
  %i.ch = ashr exact i64 %.pre-phi68.i.i.i.i.i, 5
  switch i64 %i.ch, label %.thread [
    i64 3, label %bb.i
    i64 2, label %bb.j
    i64 1, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ci = getelementptr i8, ptr %.sroa.042.0.lcssa.i.i.i.i.i, i64 8
  %.val1.i28.i.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.cj = icmp eq i64 %.val1.i28.i.i.i.i.i, 2
  br i1 %i.cj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i.i": ; preds = %bb.i
  %.val.i29.i.i.i.i.i = load ptr, ptr %.sroa.042.0.lcssa.i.i.i.i.i, align 8
  %i.ck = load i16, ptr %.val.i29.i.i.i.i.i, align 1
  %i.cl = icmp ne i16 %i.ck, 29485
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.loopexit298, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i.i", %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.042.1.i.i.i.i.i = phi ptr [ %i.co, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %i.cp = getelementptr i8, ptr %.sroa.042.1.i.i.i.i.i, i64 8
  %.val1.i32.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !23
  %i.cq = icmp eq i64 %.val1.i32.i.i.i.i.i, 2
  br i1 %i.cq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i.i": ; preds = %bb.j
  %.val.i33.i.i.i.i.i = load ptr, ptr %.sroa.042.1.i.i.i.i.i, align 8
  %i.cr = load i16, ptr %.val.i33.i.i.i.i.i, align 1
  %i.cs = icmp ne i16 %i.cr, 29485
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.loopexit298, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i.i", %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i.i, i64 32
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.042.2.i.i.i.i.i = phi ptr [ %i.cv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.cw = getelementptr i8, ptr %.sroa.042.2.i.i.i.i.i, i64 8
  %.val1.i36.i.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !23
  %i.cx = icmp eq i64 %.val1.i36.i.i.i.i.i, 2
  br i1 %i.cx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i.i", label %.thread

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i.i": ; preds = %bb.k
  %.val.i37.i.i.i.i.i = load ptr, ptr %.sroa.042.2.i.i.i.i.i, align 8
  %i.cy = load i16, ptr %.val.i37.i.i.i.i.i, align 1
  %i.cz = icmp ne i16 %i.cy, 29485
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.loopexit298, label %.thread

.loopexit298.loopexit.split.loop.exit:            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i.i"
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 96
  br label %.loopexit298

.loopexit298.loopexit.split.loop.exit424:         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i.i"
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 64
  br label %.loopexit298

.loopexit298.loopexit.split.loop.exit426:         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i.i"
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i.i, i64 32
  br label %.loopexit298

.loopexit298:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i.i", %.loopexit298.loopexit.split.loop.exit, %.loopexit298.loopexit.split.loop.exit424, %.loopexit298.loopexit.split.loop.exit426, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.042.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i.i" ], [ %.sroa.042.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i.i" ], [ %i.de, %.loopexit298.loopexit.split.loop.exit426 ], [ %i.dc, %.loopexit298.loopexit.split.loop.exit ], [ %i.dd, %.loopexit298.loopexit.split.loop.exit424 ], [ %.sroa.042.061.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i.i" ]
  %.not293 = icmp eq ptr %i.aw, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %.not293, label %.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit298
  %i.df = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN6gmxapi10UsageErrorCI2NS_14BasicExceptionIS0_EEEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull @.str.179)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN6gmxapi10UsageErrorE, ptr nonnull @_ZN6gmxapi14BasicExceptionINS_10UsageErrorEED2Ev) #21
          to label %bb.eo unwind label %bb.n

bb.n:                                             ; preds = %bb.ai, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.t, %.noexc.i.i100, %bb.p, %bb.m
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit245

bb.o:                                             ; preds = %bb.l
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.df) #20
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit245

.thread:                                          ; preds = %bb.k, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_0EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i.i", %._crit_edge.i.i.i.i.i, %.loopexit298
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !38
  %.not.i94 = icmp eq ptr %i.aw, %i.dj
  br i1 %.not.i94, label %bb.p, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store ptr %i.dk, ptr %i.aw, align 8, !tbaa !20
  store i16 29485, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 2, ptr %i.dl, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store i8 0, ptr %i.dm, align 2, !tbaa !26
end_hunk_0
begin_hunk_1_@_ZN6gmxapi11ContextImpl6launchERKNS_8WorkflowE:bb.a
  br i1 %i.kk, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i184
  %.val.i.i.i.i.i200 = load ptr, ptr %.sroa.042.061.i.i.i.i186, align 8
  %i.kl = load i16, ptr %.val.i.i.i.i.i200, align 1
  %i.km = icmp ne i16 %i.kl, 28461
  %i.kn = zext i1 %i.km to i32
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %.loopexit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i", %.lr.ph.i.i.i.i184
  %i.kp = getelementptr i8, ptr %.sroa.042.061.i.i.i.i186, i64 40
  %.val1.i16.i.i.i.i188 = load i64, ptr %i.kp, align 8, !tbaa !23
  %i.kq = icmp eq i64 %.val1.i16.i.i.i.i188, 2
  br i1 %i.kq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i"
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 32
  %.val.i17.i.i.i.i198 = load ptr, ptr %i.kr, align 8
  %i.ks = load i16, ptr %.val.i17.i.i.i.i198, align 1
  %i.kt = icmp ne i16 %i.ks, 28461
  %i.ku = zext i1 %i.kt to i32
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %.loopexit.loopexit.split.loop.exit450, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.thread.i.i.i.i"
  %i.kw = getelementptr i8, ptr %.sroa.042.061.i.i.i.i186, i64 72
  %.val1.i20.i.i.i.i189 = load i64, ptr %i.kw, align 8, !tbaa !23
  %i.kx = icmp eq i64 %.val1.i20.i.i.i.i189, 2
  br i1 %i.kx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i"
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 64
  %.val.i21.i.i.i.i196 = load ptr, ptr %i.ky, align 8
  %i.kz = load i16, ptr %.val.i21.i.i.i.i196, align 1
  %i.la = icmp ne i16 %i.kz, 28461
  %i.lb = zext i1 %i.la to i32
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %.loopexit.loopexit.split.loop.exit448, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.thread.i.i.i.i"
  %i.ld = getelementptr i8, ptr %.sroa.042.061.i.i.i.i186, i64 104
  %.val1.i24.i.i.i.i190 = load i64, ptr %i.ld, align 8, !tbaa !23
  %i.le = icmp eq i64 %.val1.i24.i.i.i.i190, 2
  br i1 %i.le, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i"
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 96
  %.val.i25.i.i.i.i194 = load ptr, ptr %i.lf, align 8
  %i.lg = load i16, ptr %.val.i25.i.i.i.i194, align 1
  %i.lh = icmp ne i16 %i.lg, 28461
  %i.li = zext i1 %i.lh to i32
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %.loopexit.loopexit.split.loop.exit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.thread.i.i.i.i"
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 128
  %i.ll = add nsw i64 %.062.i.i.i.i185, -1
  %i.lm = icmp sgt i64 %.062.i.i.i.i185, 1
  br i1 %i.lm, label %.lr.ph.i.i.i.i184, label %._crit_edge.loopexit.i.i.i.i191, !llvm.loop !154

._crit_edge.loopexit.i.i.i.i191:                  ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.thread.i.i.i.i"
  %.pre.i.i.i.i192 = ptrtoint ptr %scevgep.i.i.i.i183 to i64
  %.pre67.i.i.i.i193 = sub i64 %i.kd, %.pre.i.i.i.i192
  br label %._crit_edge.i.i.i.i167

._crit_edge.i.i.i.i167:                           ; preds = %._crit_edge.loopexit.i.i.i.i191, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit166
  %.pre-phi68.i.i.i.i168 = phi i64 [ %.pre67.i.i.i.i193, %._crit_edge.loopexit.i.i.i.i191 ], [ %i.kf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit166 ]
  %.sroa.042.0.lcssa.i.i.i.i169 = phi ptr [ %scevgep.i.i.i.i183, %._crit_edge.loopexit.i.i.i.i191 ], [ %i.kc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit166 ] ; 6 uses
  %i.ln = ashr exact i64 %.pre-phi68.i.i.i.i168, 5
  switch i64 %i.ln, label %.thread289 [
    i64 3, label %bb.ae
    i64 2, label %bb.af
    i64 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i167
  %i.lo = getelementptr i8, ptr %.sroa.042.0.lcssa.i.i.i.i169, i64 8
  %.val1.i28.i.i.i.i179 = load i64, ptr %i.lo, align 8, !tbaa !23
  %i.lp = icmp eq i64 %.val1.i28.i.i.i.i179, 2
  br i1 %i.lp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i": ; preds = %bb.ae
  %.val.i29.i.i.i.i180 = load ptr, ptr %.sroa.042.0.lcssa.i.i.i.i169, align 8
  %i.lq = load i16, ptr %.val.i29.i.i.i.i180, align 1
  %i.lr = icmp ne i16 %i.lq, 28461
  %i.ls = zext i1 %i.lr to i32
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %.loopexit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i", %bb.ae
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i169, i64 32
  br label %bb.af

bb.af:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i", %._crit_edge.i.i.i.i167
  %.sroa.042.1.i.i.i.i175 = phi ptr [ %i.lu, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.thread.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i169, %._crit_edge.i.i.i.i167 ] ; 4 uses
  %i.lv = getelementptr i8, ptr %.sroa.042.1.i.i.i.i175, i64 8
  %.val1.i32.i.i.i.i176 = load i64, ptr %i.lv, align 8, !tbaa !23
  %i.lw = icmp eq i64 %.val1.i32.i.i.i.i176, 2
  br i1 %i.lw, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i": ; preds = %bb.af
  %.val.i33.i.i.i.i177 = load ptr, ptr %.sroa.042.1.i.i.i.i175, align 8
  %i.lx = load i16, ptr %.val.i33.i.i.i.i177, align 1
  %i.ly = icmp ne i16 %i.lx, 28461
  %i.lz = zext i1 %i.ly to i32
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %.loopexit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i", %bb.af
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i175, i64 32
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i", %._crit_edge.i.i.i.i167
  %.sroa.042.2.i.i.i.i170 = phi ptr [ %i.mb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.thread.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i169, %._crit_edge.i.i.i.i167 ] ; 3 uses
  %i.mc = getelementptr i8, ptr %.sroa.042.2.i.i.i.i170, i64 8
  %.val1.i36.i.i.i.i171 = load i64, ptr %i.mc, align 8, !tbaa !23
  %i.md = icmp eq i64 %.val1.i36.i.i.i.i171, 2
  br i1 %i.md, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i", label %.thread289

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i": ; preds = %bb.ag
  %.val.i37.i.i.i.i173 = load ptr, ptr %.sroa.042.2.i.i.i.i170, align 8
  %i.me = load i16, ptr %.val.i37.i.i.i.i173, align 1
  %i.mf = icmp ne i16 %i.me, 28461
  %i.mg = zext i1 %i.mf to i32
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %.loopexit, label %.thread289

.loopexit.loopexit.split.loop.exit:               ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit27.i.i.i.i"
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 96
  br label %.loopexit

.loopexit.loopexit.split.loop.exit448:            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit23.i.i.i.i"
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 64
  br label %.loopexit

.loopexit.loopexit.split.loop.exit450:            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit19.i.i.i.i"
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i186, i64 32
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i", %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit448, %.loopexit.loopexit.split.loop.exit450, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i172 = phi ptr [ %.sroa.042.1.i.i.i.i175, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit35.i.i.i.i" ], [ %.sroa.042.2.i.i.i.i170, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i169, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit31.i.i.i.i" ], [ %i.mk, %.loopexit.loopexit.split.loop.exit450 ], [ %i.mi, %.loopexit.loopexit.split.loop.exit ], [ %i.mj, %.loopexit.loopexit.split.loop.exit448 ], [ %.sroa.042.061.i.i.i.i186, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit.i.i.i.i" ]
  %i.ml = icmp eq ptr %i.kb, %.sroa.08.0.in.sroa.speculated.i.i.i.i172
  br i1 %i.ml, label %.thread289, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit

.thread289:                                       ; preds = %bb.ag, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6gmxapi11ContextImpl6launchERKNS2_8WorkflowEE3$_3EclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISG_SaISG_EEEEEEbT_.exit39.i.i.i.i", %._crit_edge.i.i.i.i167, %.loopexit
  %i.mm = load ptr, ptr %i.di, align 8, !tbaa !38
  %.not.i202 = icmp eq ptr %i.kb, %i.mm
  br i1 %.not.i202, label %bb.ah, label %._crit_edge.i.i.i203

._crit_edge.i.i.i203:                             ; preds = %.thread289
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  store ptr %i.mn, ptr %i.kb, align 8, !tbaa !20
  store i16 28461, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 2, ptr %i.mo, align 8, !tbaa !23
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kb, i64 18
  store i8 0, ptr %i.mp, align 2, !tbaa !26
  %i.mq = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32 ; 2 uses
  store ptr %i.mr, ptr %i.av, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209

bb.ah:                                            ; preds = %.thread289
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.kb, ptr noundef nonnull align 1 dereferenceable(3) @.str.3)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209_crit_edge: ; preds = %bb.ah
  %.pre357 = load ptr, ptr %i.av, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209_crit_edge, %._crit_edge.i.i.i203
  %i.ms = phi ptr [ %.pre357, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209_crit_edge ], [ %i.mr, %._crit_edge.i.i.i203 ] ; 6 uses
  %i.mt = load ptr, ptr %i.di, align 8, !tbaa !38
  %.not.i210 = icmp eq ptr %i.ms, %i.mt
  br i1 %.not.i210, label %bb.ai, label %._crit_edge.i.i.i211

._crit_edge.i.i.i211:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  store ptr %i.mu, ptr %i.ms, align 8, !tbaa !20
  store i64 8246781610370888308, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store i64 8, ptr %i.mv, align 8, !tbaa !23
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store i8 0, ptr %i.mw, align 8, !tbaa !26
  %i.mx = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32 ; 2 uses
  store ptr %i.my, ptr %i.av, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit209
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.ms, ptr noundef nonnull align 1 dereferenceable(9) @.str.182)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.ai
  %.pre358 = load ptr, ptr %i.av, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i211, %.loopexit
  %i.mz = phi ptr [ %.pre358, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.my, %._crit_edge.i.i.i211 ], [ %i.kb, %.loopexit ]
  %i.na = load ptr, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %i.ne = ashr exact i64 %i.nd, 5                 ; 3 uses
  %i.nf = add nsw i64 %i.ne, 1                    ; 5 uses
  %i.ng = icmp ugt i64 %i.nf, 1152921504606846975
  br i1 %i.ng, label %bb.aj, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.177) #21
          to label %.noexc216 unwind label %bb.an

.noexc216:                                        ; preds = %bb.aj
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit
  %.not.i.i.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPcSaIS0_EEC2EmRKS0_RKS1_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.nh = shl nuw nsw i64 %i.nf, 3                ; 3 uses
  %i.ni = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #22
          to label %.noexc217 unwind label %bb.an ; 4 uses

.noexc217:                                        ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ni, i8 0, i64 %i.nh, i1 false), !tbaa !155
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nf
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nh
  %i.nl = ptrtoint ptr %i.nj to i64
  br label %_ZNSt6vectorIPcSaIS0_EEC2EmRKS0_RKS1_.exit

_ZNSt6vectorIPcSaIS0_EEC2EmRKS0_RKS1_.exit:       ; preds = %.noexc217, %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %.sroa.16.0 = phi i64 [ 0, %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ], [ %i.nl, %.noexc217 ] ; 2 uses
  %.sroa.0271.0 = phi ptr [ null, %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ], [ %i.ni, %.noexc217 ] ; 10 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ], [ %i.nk, %.noexc217 ] ; 2 uses
  %i.nm = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #22
          to label %bb.al unwind label %bb.ao     ; 2 uses

bb.al:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EEC2EmRKS0_RKS1_.exit
  store ptr %i.nm, ptr %.sroa.0271.0, align 8, !tbaa !155
  store i8 0, ptr %i.nm, align 1, !tbaa !26
  %i.nn = icmp sgt i64 %i.ne, 0
  br i1 %i.nn, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.no = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %.noexc218 unwind label %bb.at ; 5 uses

.noexc218:                                        ; preds = %._crit_edge
  invoke void @_ZN3gmx9MDModulesC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.no)
          to label %bb.ar unwind label %bb.am, !noalias !156

bb.am:                                            ; preds = %.noexc218
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef 8) #23, !noalias !156
  br label %.body

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit245

bb.ao:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EEC2EmRKS0_RKS1_.exit
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

.lr.ph:                                           ; preds = %bb.al, %bb.ap
  %.052331 = phi i64 [ %i.ob, %bb.ap ], [ 1, %bb.al ] ; 4 uses
  %i.ns = getelementptr [32 x i8], ptr %i.na, i64 %.052331 ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 -24
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !23
  %i.nv = add i64 %i.nu, 1                        ; 2 uses
  %i.nw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nv) #22
          to label %bb.ap unwind label %bb.aq     ; 2 uses

bb.ap:                                            ; preds = %.lr.ph
  %i.nx = getelementptr i8, ptr %i.ns, i64 -32
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0271.0, i64 %.052331
  store ptr %i.nw, ptr %i.ny, align 8, !tbaa !155
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !27
  %i.oa = call ptr @strncpy(ptr noundef nonnull %i.nw, ptr noundef %i.nz, i64 noundef %i.nv) #20 ; 0 uses
  %i.ob = add nuw i64 %.052331, 1
  %exitcond.not = icmp eq i64 %.052331, %i.ne
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !159

bb.aq:                                            ; preds = %.lr.ph
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.ar:                                            ; preds = %.noexc218
  store ptr %i.no, ptr %8, align 8, !tbaa !160, !alias.scope !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 ptrtoint (ptr @.str.183 to i64), ptr %i.b, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.oe = trunc i64 %i.nf to i32
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.og = ptrtoint ptr %i.no to i64
  %i.oh = invoke noundef i32 @_ZN3gmx18LegacyMdrunOptions21updateFromCommandLineEiPPcNS_8ArrayRefIPKcEE(ptr noundef nonnull align 8 dereferenceable(2256) %i.od, i32 noundef %i.oe, ptr noundef nonnull %.sroa.0271.0, ptr nonnull %i.b, ptr nonnull %i.of)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not83 = icmp eq i32 %i.oh, 0                  ; 2 uses
  br i1 %.not83, label %.thread420, label %bb.av

.thread420:                                       ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZNKSt14default_deleteIN3gmx9MDModulesEEclEPS1_.exit.i237

bb.at:                                            ; preds = %._crit_edge
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.ar
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body221

bb.av:                                            ; preds = %bb.as
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !113
  %i.on = load ptr, ptr %i.ok, align 8, !tbaa !109 ; 2 uses
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = sdiv exact i64 %i.oq, 56
  %i.os = trunc i64 %i.or to i32
  %i.ot = invoke { ptr, ptr } @_Z18opt2fnsIfOptionSetB5cxx11PKciPK8t_filenm(ptr noundef nonnull @.str.46, i32 noundef %i.os, ptr noundef %i.on)
          to label %bb.aw unwind label %bb.cw     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 2312
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !15 ; 2 uses
  %.not.i219 = icmp eq ptr %i.ov, null
  br i1 %.not.i219, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ow = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN6gmxapi10UsageErrorCI2NS_14BasicExceptionIS0_EEEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ow, ptr noundef nonnull @.str.1)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.ow, ptr nonnull @_ZTIN6gmxapi10UsageErrorE, ptr nonnull @_ZN6gmxapi14BasicExceptionINS_10UsageErrorEED2Ev) #21
          to label %.noexc220 unwind label %bb.cx

.noexc220:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ow) #20
  br label %.body221

bb.ba:                                            ; preds = %bb.aw
  %i.oy = extractvalue { ptr, ptr } %i.ot, 1
  %i.oz = extractvalue { ptr, ptr } %i.ot, 0      ; 3 uses
  %i.pa = load ptr, ptr %i.ov, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.pb = ptrtoint ptr %i.oy to i64
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pd
  invoke void @_ZN3gmx17SimulationContextC1EP10tmpi_comm_NS_8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.pa, ptr %i.oz, ptr %i.pe)
          to label %bb.bb unwind label %bb.cy

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr null, ptr %10, align 8, !tbaa !162
  %i.pf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ph = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !167
  %i.pj = invoke noundef zeroext i1 @_Z24findIsSimulationMainRankPK14gmx_multisim_tP10tmpi_comm_(ptr noundef %i.pg, ptr noundef %i.pi)
          to label %bb.bc unwind label %bb.cz

bb.bc:                                            ; preds = %bb.bb
  %i.pk = load ptr, ptr %i.ph, align 8, !tbaa !167
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !175
  %i.pn = load ptr, ptr %i.ol, align 8, !tbaa !113
  %i.po = load ptr, ptr %i.ok, align 8, !tbaa !109 ; 2 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = sdiv exact i64 %i.pr, 56
  %i.pt = trunc i64 %i.ps to i32
  invoke void @_ZN3gmx13handleRestartEbP10tmpi_comm_PK14gmx_multisim_tNS_17AppendingBehaviorEiP8t_filenm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.104") align 8 %11, i1 noundef zeroext %i.pj, ptr noundef %i.pk, ptr noundef %i.pg, i32 noundef %i.pm, i32 noundef %i.pt, ptr noundef %i.po)
          to label %_ZNSt10_Head_baseILm1ESt10unique_ptrI8t_fileioN3gmx15functor_wrapperIS1_XadL_ZNS2_12closeLogFileEPS1_EEEEELb0EED2Ev.exit unwind label %bb.cz

_ZNSt10_Head_baseILm1ESt10unique_ptrI8t_fileioN3gmx15functor_wrapperIS1_XadL_ZNS2_12closeLogFileEPS1_EEEEELb0EED2Ev.exit: ; preds = %bb.bc
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !176
  %i.pw = load ptr, ptr %11, align 8, !tbaa !178  ; 2 uses
  store ptr %i.pw, ptr %10, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store i64 %i.og, ptr %13, align 8, !tbaa !160
  store ptr null, ptr %8, align 8, !tbaa !160
  invoke void @_ZN3gmx15MdrunnerBuilderC1ESt10unique_ptrINS_9MDModulesESt14default_deleteIS2_EENS_6compat8not_nullIPNS_17SimulationContextEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 %13, ptr nonnull %9)
          to label %bb.bd unwind label %bb.da

bb.bd:                                            ; preds = %_ZNSt10_Head_baseILm1ESt10unique_ptrI8t_fileioN3gmx15functor_wrapperIS1_XadL_ZNS2_12closeLogFileEPS1_EEEEELb0EED2Ev.exit
  %i.px = load ptr, ptr %13, align 8, !tbaa !160  ; 3 uses
  %.not.i224 = icmp eq ptr %i.px, null
  br i1 %.not.i224, label %_ZNSt10unique_ptrIN3gmx9MDModulesESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx9MDModulesEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx9MDModulesEEclEPS1_.exit.i: ; preds = %bb.bd
  call void @_ZN3gmx9MDModulesD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.px) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef 8) #23
  br label %_ZNSt10unique_ptrIN3gmx9MDModulesESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx9MDModulesESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bd, %_ZNKSt14default_deleteIN3gmx9MDModulesEEclEPS1_.exit.i
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !30
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder26addHardwareDetectionResultEPK13gmx_hw_info_t(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.pz)
          to label %bb.be unwind label %bb.db     ; 0 uses

bb.be:                                            ; preds = %_ZNSt10unique_ptrIN3gmx9MDModulesESt14default_deleteIS1_EED2Ev.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.qc = load float, ptr %i.qb, align 8, !tbaa !114
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder19addSimulationMethodERKNS_12MdrunOptionsEfNS_16StartingBehaviorE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(56) %i.od, float noundef %i.qc, i32 noundef %i.pv)
          to label %bb.bf unwind label %bb.db     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder22addDomainDecompositionERKNS_13DomdecOptionsE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(64) %i.qe)
          to label %bb.bg unwind label %bb.db     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !155
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder12addNonBondedEPKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.qh)
          to label %bb.bh unwind label %bb.db     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !155
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder28addNonBondedFETaskAssignmentEPKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.qk)
          to label %bb.bi unwind label %bb.db     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !155
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !155
  %i.qq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder17addElectrostaticsEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.qn, ptr noundef %i.qp)
          to label %bb.bj unwind label %bb.db     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !155
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder23addBondedTaskAssignmentEPKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.qs)
          to label %bb.bk unwind label %bb.db     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !155
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder23addUpdateTaskAssignmentEPKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.qv)
          to label %bb.bl unwind label %bb.db     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !179
  %i.qz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx15MdrunnerBuilder15addNeighborListEi(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.qy)
end_hunk_1
