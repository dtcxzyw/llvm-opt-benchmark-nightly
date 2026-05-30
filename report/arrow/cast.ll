inline.NumInlined: 2454
inline.NumDeleted: 1412
begin_hunk_0_@_ZN5arrow7compute14ScalarFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsEb:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %4, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.d, align 8, !tbaa !108
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !108
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.e, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = load <2 x ptr>, ptr %3, align 8, !tbaa !108
  store <2 x ptr> %i.m, ptr %6, align 16, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108
  store <2 x ptr> %i.w, ptr %i.t, align 16, !tbaa !108
  br label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 16, !tbaa !110 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 3)
          to label %.body.i.i unwind label %bb.k  ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #30
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i: ; preds = %bb.h, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !108
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !108
  %.not.i.i.i6.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i6.i.i, label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i7.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i7.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit

common.resume:                                    ; preds = %bb.o, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body.i.i ], [ %i.at, %bb.o ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.j, %bb.i
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  br label %common.resume

_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit:     ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, %bb.m, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i64 20, i1 false)
  invoke void @_ZN5arrow7compute14ScalarFunction9AddKernelENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(217) %1, ptr noundef nonnull %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit
  %i.ar = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !66
  store ptr null, ptr %5, align 8, !tbaa !66
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.p, label %bb.v

bb.o:                                             ; preds = %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113
  %.not.i12 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %2, ptr %i.aw, align 4, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !112
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !115 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.s, label %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i32 %2, ptr %i.bm, align 4, !tbaa !114
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.t, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.t, %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !115
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !112
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !113
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !116
  br label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 5 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !123 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108, !noalias !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !123 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !108, !noalias !123
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !123
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !123
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !123
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !123 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.p, ptr noundef nonnull align 8 dereferenceable(6) %i.o, i64 6, i1 false), !noalias !123
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEEE, i64 16), ptr %i.c, align 8, !tbaa !58, !noalias !123
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %i.q, align 8, !tbaa !58, !noalias !123
  store <2 x ptr> %i.e, ptr %i.r, align 8, !tbaa !108, !noalias !123
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x ptr> %i.i, ptr %i.s, align 8, !tbaa !108, !noalias !123
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.t, align 8, !tbaa !126
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(62) @.str.44)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.u = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %.not.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !70, !range !77, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow7compute14ScalarFunction9AddKernelENS0_12ScalarKernelE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !129
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !54
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute10OutputTypeD2Ev:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !57
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !167
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !167
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8internal12CastFunction13DispatchExactERKSt6vectorINS_10TypeHolderESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = load ptr, ptr %2, align 8, !tbaa !171
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  call void @_ZNK5arrow7compute8Function10CheckArityEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.g)
  %i.h = load ptr, ptr %5, align 8, !tbaa !66     ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.a, !prof !69

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %.pr = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %.not.i36 = icmp eq ptr %.pr, null
  br i1 %.not.i36, label %_ZN5arrow6StatusD2Ev.exit37.thread, label %bb.b, !prof !172

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !70, !range !77, !noundef !78
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit37.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit37.thread

_ZN5arrow6StatusD2Ev.exit37.thread:               ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173  ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit, %bb.d
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.d ], [ %.sroa.19.1, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.d ], [ %.sroa.13.1, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.062.0.lcssa = phi ptr [ null, %bb.d ], [ %.sroa.062.1, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 7 uses
  %i.r = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.s = ptrtoint ptr %.sroa.062.0.lcssa to i64   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  switch i64 %i.u, label %.preheader [
    i64 0, label %bb.m
    i64 1, label %.thread77.sink.split
  ]

.preheader:                                       ; preds = %._crit_edge
  %i.v = icmp eq ptr %.sroa.062.0.lcssa, %.sroa.13.0.lcssa
  br i1 %i.v, label %.thread77.sink.split, label %.critedge

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit
  %.sroa.062.096 = phi ptr [ %.sroa.062.1, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ], [ null, %bb.d ] ; 9 uses
  %.sroa.13.095 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ], [ null, %bb.d ] ; 7 uses
  %.sroa.19.094 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ], [ null, %bb.d ] ; 4 uses
  %.sroa.059.093 = phi ptr [ %i.ap, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ], [ %i.n, %bb.d ] ; 4 uses
  %i.w = load ptr, ptr %.sroa.059.093, align 8, !tbaa !156
  %i.x = invoke noundef zeroext i1 @_ZNK5arrow7compute15KernelSignature13MatchesInputsERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %.sroa.13.095, %.sroa.19.094
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.sroa.059.093, ptr %.sroa.13.095, align 8, !tbaa !173
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.13.095, i64 8
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %.sroa.13.095 to i64
  %i.aa = ptrtoint ptr %.sroa.062.096 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.i, label %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc38 unwind label %.loopexit ; 4 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store ptr %.sroa.059.093, ptr %i.ak, align 8, !tbaa !173
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc38
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %.sroa.062.096, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.j, %.noexc38
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.062.096, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.096, i64 noundef %i.ab) #29
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.e
  %.sroa.19.1 = phi ptr [ %.sroa.19.094, %bb.e ], [ %i.an, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.19.094, %bb.g ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.095, %bb.e ], [ %i.am, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.sroa.062.1 = phi ptr [ %.sroa.062.096, %bb.e ], [ %i.aj, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.062.096, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.059.093, i64 96 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.p
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ar = load ptr, ptr %2, align 8, !tbaa !171
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !83
  invoke void @_ZN5arrow8internal10ToTypeNameB5cxx11ENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !176
  invoke void @_ZN5arrow8internal12JoinToStringIJRA23_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA17_S2_RKSA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(23) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(17) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %.noexc39 unwind label %bb.v

.noexc39:                                         ; preds = %bb.o
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc39
  %i.az = load ptr, ptr %3, align 8, !tbaa !38, !noalias !176 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !40, !noalias !176
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.q:                                             ; preds = %.noexc39
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !38, !noalias !176 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.q
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !40, !noalias !176
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !176
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !176
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.bk = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %.not.i40 = icmp eq ptr %i.bk, null
  br i1 %.not.i40, label %_ZN5arrow6StatusD2Ev.exit41, label %bb.r, !prof !69

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !70, !range !77, !noundef !78
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit41, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZN5arrow6StatusD2Ev.exit41

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.r, %bb.s
  %i.bo = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit41
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !40
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bt = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !40
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.y

bb.t:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.u:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.v:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.cb = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.body
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !40
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.u ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cg = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !40
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
end_hunk_1
begin_hunk_2_@_ZNK5arrow6Status10WithDetailESt10shared_ptrINS_12StatusDetailEE:bb.a
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %i.s, align 8, !tbaa !65
  store <2 x ptr> %i.t, ptr %4, align 16, !tbaa !108
  store ptr null, ptr %2, align 8, !tbaa !447
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !57
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26, !inline_history !432
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26, !inline_history !432
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.al = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  %i.aq = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.n
  %i.as = load i64, ptr %i.f, align 8, !tbaa !40
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %i.ap
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !329
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !330
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(12) %4) #26
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #26
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.q = load ptr, ptr %6, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn18
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.f, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.e
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !329 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !330 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.k = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.l = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.e

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !37

.noexc9.i.i.i.i:                                  ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc9.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28
          to label %.noexc28 unwind label %bb.m   ; 2 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.h, align 8, !tbaa !38
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc28, %bb.c
  %i.q = phi ptr [ %i.p, %.noexc28 ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !40
  store i8 %i.r, ptr %i.q, align 1, !tbaa !40
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.copyload.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !40
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !448, !noalias !451
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !451, !noalias !448 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41, !alias.scope !451, !noalias !448 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !453
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !448, !noalias !451
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !40, !alias.scope !451, !noalias !448
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !40, !alias.scope !448, !noalias !451
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41, !alias.scope !451, !noalias !448
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.ad = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !41, !alias.scope !448, !noalias !451
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !451, !noalias !448
  store i64 0, ptr %i.ae, align 8, !tbaa !41, !alias.scope !451, !noalias !448
  store i8 0, ptr %i.w, align 8, !tbaa !40, !alias.scope !451, !noalias !448
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !454

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.h ], [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i31 = phi ptr [ %i.aw, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i32 = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16 ; 3 uses
  store ptr %i.aj, ptr %.012.i.i.i31, align 8, !tbaa !33, !alias.scope !455, !noalias !458
  %i.ak = load ptr, ptr %.0911.i.i.i32, align 8, !tbaa !38, !alias.scope !458, !noalias !455 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33

bb.j:                                             ; preds = %.lr.ph.i.i.i30
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41, !alias.scope !458, !noalias !455 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !460
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i30
  store ptr %i.ak, ptr %.012.i.i.i31, align 8, !tbaa !38, !alias.scope !455, !noalias !458
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !40, !alias.scope !458, !noalias !455
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !40, !alias.scope !455, !noalias !458
  %.phi.trans.insert.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %.pre.i.i.i.i35 = load i64, ptr %.phi.trans.insert.i.i.i.i34, align 8, !tbaa !41, !alias.scope !458, !noalias !455
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33, %bb.j
  %i.as = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !41, !alias.scope !455, !noalias !458
  store ptr %i.al, ptr %.0911.i.i.i32, align 8, !tbaa !38, !alias.scope !458, !noalias !455
  store i64 0, ptr %i.at, align 8, !tbaa !41, !alias.scope !458, !noalias !455
  store i8 0, ptr %i.al, align 8, !tbaa !40, !alias.scope !458, !noalias !455
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30, !llvm.loop !454

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, %bb.k
  store ptr %11, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !48
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc9.i.i.i.i, %.noexc.i.i.i.i, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #29
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bc

bb.o:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #30
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !461    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %i.r, align 8, !tbaa !65
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !108
  store ptr null, ptr %2, align 8, !tbaa !408
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !108, !alias.scope !465, !noalias !462
  store ptr null, ptr %i.t, align 8, !tbaa !65, !alias.scope !465, !noalias !462
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !108, !alias.scope !462, !noalias !465
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !408, !alias.scope !465, !noalias !462
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !467

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !108, !alias.scope !471, !noalias !468
  store ptr null, ptr %i.y, align 8, !tbaa !65, !alias.scope !471, !noalias !468
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !108, !alias.scope !468, !noalias !471
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !408, !alias.scope !471, !noalias !468
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !467

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !419
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !461
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !416
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow10MakeScalarIbNS_11CTypeTraitsIbEENS_13BooleanScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.101") align 8 %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.45", align 16 ; 8 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv(), !noalias !473 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65, !noalias !473 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !108, !noalias !473
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !108, !alias.scope !473
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !473
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !473
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3, !noalias !473
  br label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !473 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %.noexc unwind label %bb.o     ; 11 uses

.noexc:                                           ; preds = %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !54, !noalias !476
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  store i32 1, ptr %i.n, align 4, !tbaa !57, !noalias !476
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !58, !noalias !476
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load <2 x ptr>, ptr %2, align 16, !tbaa !108, !noalias !476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !476
  store i64 0, ptr %i.q, align 8, !noalias !476
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !108, !noalias !476
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i8 1, ptr %i.t, align 8, !tbaa !479, !noalias !476
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 %i.a, ptr %i.u, align 1, !tbaa !484, !noalias !476
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow13BooleanScalarE, i64 16), ptr %i.o, align 8, !tbaa !58, !noalias !476
  store ptr %i.o, ptr %i.p, align 8, !tbaa !487, !noalias !476
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !476
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %.noexc
  store i32 2, ptr %i.n, align 4, !tbaa !3, !noalias !476
  br label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.w = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !476 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !398, !noalias !476 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !476
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !476 ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !476
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4, !noalias !476
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !58, !noalias !476
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !476
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i) #26, !noalias !476, !inline_history !488
  br label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h
  store ptr %i.l, ptr %i.q, align 8, !tbaa !398, !noalias !476
  store ptr %i.o, ptr %0, align 8, !tbaa !408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !65
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !65  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !57
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !167
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !167
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l
end_hunk_2
