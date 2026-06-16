inline.NumInlined: 3819
inline.NumDeleted: 1555
begin_hunk_0_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_:bb.a
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40: ; preds = %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i42 = phi i64 [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bb, %bb.q ]
  %i.bf = trunc nuw nsw i64 %.0.i42 to i32
  ret i32 %i.bf
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEclEPS1_.exit.i

_ZNKSt14default_deleteISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 5000) #30
  br label %_ZNSt10unique_ptrISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionD2Ev.exit, label %_ZNKSt14default_deleteISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEclEPS1_.exit.i.i

_ZNKSt14default_deleteISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEclEPS1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 5000) #30, !inline_history !381
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionD2Ev.exit

_ZN8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunctionD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %7 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %8 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %9 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %14 = alloca %class.anon.272, align 8           ; 9 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %class.anon.267, align 1           ; 3 uses
  %18 = alloca %class.anon.170, align 8           ; 13 uses
  %19 = alloca %"class.std::optional.47", align 4 ; 5 uses
  %20 = alloca %"class.std::optional.47", align 4 ; 5 uses
  %21 = alloca %"class.std::optional.47", align 4 ; 5 uses
  %22 = alloca %"struct.fmt::v11::detail::format_arg_store.107", align 16 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.facebook::velox::exec::DecodedArgs", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %25 = alloca %"class.std::shared_ptr.44", align 16 ; 7 uses
  %26 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %27 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %28 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.std::shared_ptr.44", align 8 ; 7 uses
  %30 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %31 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %32 = alloca %"class.std::shared_ptr.44", align 16 ; 4 uses
  %33 = alloca %"class.std::shared_ptr.171", align 8 ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.std::shared_ptr.44", align 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382
  %i.l = load ptr, ptr %2, align 8, !tbaa !385
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %bb.b, label %bb.e, !prof !50

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28, !noalias !386
  store i64 0, ptr %22, align 16, !tbaa !32, !noalias !386
  %i.m = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 1, ptr %i.m, align 16, !tbaa !32, !alias.scope !389, !noalias !386
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.6, i64 11, i64 20, ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28, !noalias !386
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr nonnull @.str.6) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %23, align 8, !tbaa !51    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !32
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.gi

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.t = load ptr, ptr %24, align 8, !tbaa !392
  %i.u = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.fp ; 2 uses

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %bb.e
  store ptr %i.u, ptr %i.a, align 8, !tbaa !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !397
  %i.x = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.w, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #28 ; 3 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.y, align 8, !tbaa !42
  store <2 x ptr> %i.ac, ptr %25, align 16, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit, %bb.g, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !414, !range !58, !noundef !59
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.i

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %.0.in.pre.i.i.i.i = load i8, ptr %i.ai, align 4, !tbaa !7, !range !58
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !415
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !417 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !418
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %1, align 8, !tbaa !419   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.av = and i32 %i.aq, 2147483584               ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64
  %.not37.i.i.not.i.i.i.i415.not = icmp eq i32 %i.av, 0
  br i1 %.not37.i.i.not.i.i.i.i415.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i.i.i.i417, 64 ; 2 uses
  %.not37.i.i.i.i.i.i = icmp samesign ugt i64 %indvars.iv.next.i.i.i.i, %i.aw
  br i1 %.not37.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %.lr.ph, !llvm.loop !420

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %indvars.iv.next.i.i.i.i417 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.m ], [ 64, %bb.l ] ; 2 uses
  %indvars.iv.i.i.i.i416 = phi i64 [ %indvars.iv.next.i.i.i.i417, %bb.m ], [ 0, %bb.l ]
  %i.ax = lshr exact i64 %indvars.iv.i.i.i.i416, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !9
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !420

.critedge.i.i.i.i.i.i:                            ; preds = %bb.m, %bb.l
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.aq, %i.av
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.bb = lshr i32 %i.aq, 6
  %i.bc = and i32 %i.aq, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.bd
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !9
  %.demorgan.i.i.i.i = or i64 %i.bg, %notmask.i40.i.i.i.i.i.i
  %i.bh = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.bi = zext i1 %i.bh to i16
  %i.bj = or disjoint i16 %i.bi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph, %bb.n, %.critedge.i.i.i.i.i.i, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.j ], [ 256, %bb.i ], [ 257, %bb.k ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.bj, %bb.n ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.ai, align 4
  %i.bk = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.bk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !417 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !415 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bm
  br i1 %i.bp, label %.lr.ph.i.i.i, label %.loopexit190

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !395 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 58
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !421, !range !58, !noundef !59
  %i.bu = trunc nuw i8 %i.bt to i1                ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 59 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !422 ; 3 uses
  %i.ca = sext i32 %i.bo to i64                   ; 4 uses
  %wide.trip.count.i.i.i = sext i32 %i.bm to i64  ; 2 uses
  %i.cb = sub nsw i64 %wide.trip.count.i.i.i, %i.ca ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.cb, -2
  br label %bb.p

bb.p:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1, %.lr.ph.i.i.i.new
  %.4 = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %i.cz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1 ]
  %indvars.iv.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1 ]
  %i.ce = trunc nsw i64 %indvars.iv.i.i.i to i32
  br i1 %i.bu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load i8, ptr %i.bv, align 1, !tbaa !424, !range !58, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = load i32, ptr %i.bx, align 8, !tbaa !425
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ck, %bb.s ], [ %i.ch, %bb.r ], [ %i.ce, %bb.p ]
  %i.cl = sext i32 %.0.i.i.i.i.i to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nsw i32 %i.cn, %.4
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cp = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br i1 %i.bu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1, label %bb.t

bb.t:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i
  %i.cq = load i8, ptr %i.bv, align 1, !tbaa !424, !range !58, !noundef !59
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1

bb.v:                                             ; preds = %bb.t
  %i.cv = load i32, ptr %i.bx, align 8, !tbaa !425
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1: ; preds = %bb.v, %bb.u, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i
  %.0.i.i.i.i.i.1 = phi i32 [ %i.cu, %bb.u ], [ %i.cv, %bb.v ], [ %i.cp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i ]
  %i.cw = sext i32 %.0.i.i.i.i.i.1 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = add nsw i32 %i.cy, %i.co                ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit190.loopexit.unr-lcssa, label %bb.p, !llvm.loop !427

bb.w:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.da = load ptr, ptr %1, align 8, !tbaa !419   ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !415 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !417 ; 7 uses
  %.not.i.i.i.i.i.i = icmp slt i32 %i.dc, %i.de
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %.loopexit190

bb.x:                                             ; preds = %bb.w
  %i.df = add i32 %i.dc, 63                       ; 2 uses
  %i.dg = srem i32 %i.df, 64
  %i.dh = sub nsw i32 %i.df, %i.dg                ; 6 uses
  %i.di = and i32 %i.de, -64                      ; 8 uses
  %i.dj = icmp slt i32 %i.di, %i.dh
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = ashr i32 %i.de, 6
  %i.dl = and i32 %i.de, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.do = sub nsw i32 %i.dh, %i.dc                ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dp
  %i.dq = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.dr = sub nsw i32 64, %i.do
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %i.dq, %i.ds
  %i.du = and i64 %i.dt, %i.dn
  %i.dv = sext i32 %i.dk to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.dy = and i64 %i.du, %i.dx                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit190, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.y
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !395 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 58
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !421, !range !58, !noundef !59
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !422 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  br i1 %i.ed, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i
  %.017.us.i.i.i.i.i.i.i = phi i64 [ %i.er, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %i.dy, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ei = phi i32 [ %i.ep, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i ]
  %i.ej = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.us.i.i.i.i.i.i.i, i1 true)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = or disjoint i32 %i.di, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = add nsw i32 %i.eo, %i.ei                ; 2 uses
  %i.eq = add nsw i64 %.017.us.i.i.i.i.i.i.i, -1
  %i.er = and i64 %i.eq, %.017.us.i.i.i.i.i.i.i   ; 2 uses
  %.not10.us.i.i.i.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not10.us.i.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 59
  %i.et = load i8, ptr %i.es, align 1, !tbaa !424, !range !58, !noundef !59
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader, label %.preheader.split.split.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader: ; preds = %.preheader.split.i.i.i.i.i.i.i
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !425
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.acx = trunc nuw nsw i64 %i.acw to i32
  %i.acy = or disjoint i32 %i.di, %i.acx
  %i.acz = sext i32 %i.acy to i64
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.acz
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !3
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !3
  %i.adf = add nsw i32 %i.ade, %i.acv             ; 2 uses
  %i.adg = add nsw i64 %.017.i62.i.i.i.i.i.i, -1
  %i.adh = and i64 %i.adg, %.017.i62.i.i.i.i.i.i  ; 2 uses
  %.not10.i63.i.i.i.i.i.i = icmp eq i64 %i.adh, 0
  br i1 %.not10.i63.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i, !llvm.loop !428

.loopexit190.loopexit.unr-lcssa:                  ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit190, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit190.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %.4.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.cz, %.loopexit190.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.loopexit190.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod656 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod656)
  %i.adi = trunc nsw i64 %indvars.iv.i.i.i.epil.init to i32
  br i1 %i.bu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil, label %bb.ad

bb.ad:                                            ; preds = %.epil.preheader
  %i.adj = load i8, ptr %i.bv, align 1, !tbaa !424, !range !58, !noundef !59
  %i.adk = trunc nuw i8 %i.adj to i1
  br i1 %i.adk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.adl = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.adl, i64 %indvars.iv.i.i.i.epil.init
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil

bb.af:                                            ; preds = %bb.ad
  %i.ado = load i32, ptr %i.bx, align 8, !tbaa !425
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil: ; preds = %bb.af, %bb.ae, %.epil.preheader
  %.0.i.i.i.i.i.epil = phi i32 [ %i.adn, %bb.ae ], [ %i.ado, %bb.af ], [ %i.adi, %.epil.preheader ]
  %i.adp = sext i32 %.0.i.i.i.i.i.epil to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !3
  %i.ads = add nsw i32 %i.adr, %.4.epil.init
  br label %.loopexit190

.loopexit190:                                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil, %.loopexit190.loopexit.unr-lcssa, %bb.o, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i, %bb.ac
  %.5 = phi i32 [ 0, %bb.w ], [ 0, %bb.o ], [ 0, %bb.y ], [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i ], [ %i.acg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i ], [ %i.acr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i ], [ %.3, %._crit_edge.i.i.i.i.i.i ], [ %.3, %bb.ac ], [ %i.ads, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil ], [ %i.ep, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %i.fa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i ], [ %i.cz, %.loopexit190.loopexit.unr-lcssa ], [ %i.adf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.adt = load ptr, ptr %4, align 8, !tbaa !437
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !452
  %i.adv = sext i32 %.5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !473
  store i32 0, ptr %21, align 4, !tbaa !32, !noalias !473
  %i.adw = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i8 1, ptr %i.adw, align 4, !tbaa !476, !noalias !473
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %26, i64 noundef %i.adv, ptr noundef %i.adu, ptr noundef nonnull align 4 dereferenceable(8) %21, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.fq

bb.ag:                                            ; preds = %.loopexit190
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !417
  %i.adz = load ptr, ptr %4, align 8, !tbaa !437
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !452
  %i.aeb = sext i32 %i.ady to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28, !noalias !477
  store i32 0, ptr %20, align 4, !tbaa !32, !noalias !477
  %i.aec = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i8 1, ptr %i.aec, align 4, !tbaa !476, !noalias !477
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %27, i64 noundef %i.aeb, ptr noundef %i.aea, ptr noundef nonnull align 4 dereferenceable(8) %20, i1 noundef zeroext false)
          to label %bb.ah unwind label %bb.fr

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.aed = load i32, ptr %i.adx, align 8, !tbaa !417
  %i.aee = load ptr, ptr %4, align 8, !tbaa !437
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !452
  %i.aeg = sext i32 %i.aed to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28, !noalias !480
  store i32 0, ptr %19, align 4, !tbaa !32, !noalias !480
  %i.aeh = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i8 1, ptr %i.aeh, align 4, !tbaa !476, !noalias !480
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %28, i64 noundef %i.aeg, ptr noundef %i.aef, ptr noundef nonnull align 4 dereferenceable(8) %19, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.fs

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.aei = load ptr, ptr %26, align 8, !tbaa !483 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 44
  %i.aek = load i8, ptr %i.aej, align 4, !tbaa !484
  %i.ael = and i8 %i.aek, 2
  %.not.i = icmp eq i8 %i.ael, 0
  br i1 %.not.i, label %bb.ak, label %bb.aj, !prof !54

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc unwind label %bb.ft

.noexc:                                           ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !489
  store ptr %i.aen, ptr %i.c, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.aeo = load ptr, ptr %27, align 8, !tbaa !483 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 44
  %i.aeq = load i8, ptr %i.aep, align 4, !tbaa !484
  %i.aer = and i8 %i.aeq, 2
  %.not.i49 = icmp eq i8 %i.aer, 0
  br i1 %.not.i49, label %bb.am, label %bb.al, !prof !54

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc50 unwind label %bb.fu

.noexc50:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !489
  store ptr %i.aet, ptr %i.d, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.aeu = load ptr, ptr %28, align 8, !tbaa !483 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 44
  %i.aew = load i8, ptr %i.aev, align 4, !tbaa !484
  %i.aex = and i8 %i.aew, 2
  %.not.i52 = icmp eq i8 %i.aex, 0
  br i1 %.not.i52, label %bb.ao, label %bb.an, !prof !54

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc53 unwind label %bb.fv

.noexc53:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !489
  store ptr %i.aez, ptr %i.e, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i32 0, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %i.a, ptr %18, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store ptr %i.b, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.c, ptr %.sroa.5167.0..sroa_idx, align 8
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 7 uses
  store ptr %i.f, ptr %.sroa.6168.0..sroa_idx, align 8
  %.sroa.7169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  store ptr %0, ptr %.sroa.7169.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  store ptr %i.e, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 4 uses
  store ptr %i.d, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.afa = load i8, ptr %i.aj, align 1, !tbaa !414, !range !58, !noundef !59
  %i.afb = trunc nuw i8 %i.afa to i1
  br i1 %i.afb, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i87, label %bb.ap

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i87: ; preds = %bb.ao
  %.0.in.pre.i.i.i.i88 = load i8, ptr %i.ai, align 4, !tbaa !7, !range !58
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i57

bb.ap:                                            ; preds = %bb.ao
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !415
  %i.afe = icmp eq i32 %i.afd, 0
  br i1 %i.afe, label %bb.aq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

bb.aq:                                            ; preds = %bb.ap
  %i.aff = load i32, ptr %i.adx, align 8, !tbaa !417 ; 6 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !418
  %i.afi = icmp eq i32 %i.aff, %i.afh
  br i1 %i.afi, label %bb.ar, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

bb.ar:                                            ; preds = %bb.aq
  %i.afj = load ptr, ptr %1, align 8, !tbaa !419  ; 2 uses
  %.not.i.i.i.i.i79 = icmp sgt i32 %i.aff, 0
  br i1 %.not.i.i.i.i.i79, label %bb.as, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

bb.as:                                            ; preds = %bb.ar
  %i.afk = and i32 %i.aff, 2147483584             ; 3 uses
  %i.afl = zext nneg i32 %i.afk to i64
  %.not37.i.i.not.i.i.i.i81417.not = icmp eq i32 %i.afk, 0
  br i1 %.not37.i.i.not.i.i.i.i81417.not, label %.critedge.i.i.i.i.i.i82, label %.lr.ph419

bb.at:                                            ; preds = %.lr.ph419
  %indvars.iv.next.i.i.i.i86 = add nuw nsw i64 %indvars.iv.next.i.i.i.i81420, 64 ; 2 uses
  %.not37.i.i.i.i.i.i82 = icmp samesign ugt i64 %indvars.iv.next.i.i.i.i86, %i.afl
  br i1 %.not37.i.i.i.i.i.i82, label %.critedge.i.i.i.i.i.i82, label %.lr.ph419, !llvm.loop !420

.lr.ph419:                                        ; preds = %bb.as, %bb.at
  %indvars.iv.next.i.i.i.i81420 = phi i64 [ %indvars.iv.next.i.i.i.i86, %bb.at ], [ 64, %bb.as ] ; 2 uses
  %indvars.iv.i.i.i.i80418 = phi i64 [ %indvars.iv.next.i.i.i.i81420, %bb.at ], [ 0, %bb.as ]
  %i.afm = lshr exact i64 %indvars.iv.i.i.i.i80418, 3
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afm
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !9
  %i.afp = icmp eq i64 %i.afo, -1
  br i1 %i.afp, label %bb.at, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55, !llvm.loop !420

.critedge.i.i.i.i.i.i82:                          ; preds = %bb.at, %bb.as
  %.not38.i.i.i.i.i.i83 = icmp eq i32 %i.aff, %i.afk
  br i1 %.not38.i.i.i.i.i.i83, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55, label %bb.au

bb.au:                                            ; preds = %.critedge.i.i.i.i.i.i82
  %i.afq = lshr i32 %i.aff, 6
  %i.afr = and i32 %i.aff, 63
  %i.afs = zext nneg i32 %i.afr to i64
  %notmask.i40.i.i.i.i.i.i84 = shl nsw i64 -1, %i.afs
  %i.aft = zext nneg i32 %i.afq to i64
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.aft
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !9
  %.demorgan.i.i.i.i85 = or i64 %i.afv, %notmask.i40.i.i.i.i.i.i84
  %i.afw = icmp eq i64 %.demorgan.i.i.i.i85, -1
  %i.afx = zext i1 %i.afw to i16
  %i.afy = or disjoint i16 %i.afx, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55: ; preds = %.lr.ph419, %bb.au, %.critedge.i.i.i.i.i.i82, %bb.ar, %bb.aq, %bb.ap
  %.sroa.0.0.insert.ext.i.i.i.i56 = phi i16 [ 256, %bb.aq ], [ 256, %bb.ap ], [ 257, %bb.ar ], [ 257, %.critedge.i.i.i.i.i.i82 ], [ %i.afy, %bb.au ], [ 256, %.lr.ph419 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i56, ptr %i.ai, align 4
  %i.afz = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i56 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i57

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i57: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i87
  %.0.in.i.i.i.i58 = phi i8 [ %.0.in.pre.i.i.i.i88, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i87 ], [ %i.afz, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55 ]
  %.0.i.i.i.i59 = trunc nuw i8 %.0.in.i.i.i.i58 to i1
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !415 ; 8 uses
  br i1 %.0.i.i.i.i59, label %bb.av, label %bb.bq

bb.av:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i57
  %i.agc = load i32, ptr %i.adx, align 8, !tbaa !417 ; 2 uses
  %i.agd = icmp slt i32 %i.agb, %i.agc
  br i1 %i.agd, label %.lr.ph.i.i.i73, label %.loopexit181

.lr.ph.i.i.i73:                                   ; preds = %bb.av
  %i.age = sext i32 %i.agb to i64
  br label %bb.aw

bb.aw:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E0_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i, %.lr.ph.i.i.i73
  %indvars.iv.i.i.i74 = phi i64 [ %i.age, %.lr.ph.i.i.i73 ], [ %indvars.iv.next.i.i.i77, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E0_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i ] ; 5 uses
  %i.agf = load ptr, ptr %.sroa.7169.0..sroa_idx, align 8, !tbaa !491
  %i.agg = load ptr, ptr %18, align 8, !tbaa !496, !nonnull !59, !align !245
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !395 ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 58
  %i.agj = load i8, ptr %i.agi, align 2, !tbaa !421, !range !58, !noundef !59
  %i.agk = trunc nuw i8 %i.agj to i1
  %i.agl = trunc nsw i64 %indvars.iv.i.i.i74 to i32 ; 3 uses
  br i1 %i.agk, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agh, i64 59
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !424, !range !58, !noundef !59
  %i.ago = trunc nuw i8 %i.agn to i1
  br i1 %i.ago, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agh, i64 64
  %i.agq = load i32, ptr %i.agp, align 8, !tbaa !425
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !426
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %indvars.iv.i.i.i74
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.aw
  %.0.i.i.i.i.i75 = phi i32 [ %i.agu, %bb.az ], [ %i.agq, %bb.ay ], [ %i.agl, %bb.aw ]
  %i.agv = load ptr, ptr %.sroa.4166.0..sroa_idx, align 8, !tbaa !497, !nonnull !59, !align !245
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !412 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 120
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !422
  %i.agz = sext i32 %.0.i.i.i.i.i75 to i64        ; 2 uses
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !3 ; 4 uses
  %i.ahc = load ptr, ptr %.sroa.5167.0..sroa_idx, align 8, !tbaa !498, !nonnull !59, !align !245
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !490 ; 2 uses
  %i.ahe = load ptr, ptr %.sroa.6168.0..sroa_idx, align 8, !tbaa !499, !nonnull !59, !align !286 ; 2 uses
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !3
  %i.ahg = sext i32 %i.ahf to i64                 ; 2 uses
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.ahd, i64 %i.ahg ; 6 uses
  %i.ahi = sext i32 %i.ahb to i64                 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %i.ahi, 2           ; 2 uses
  %i.ahj = getelementptr inbounds i8, ptr %i.ahh, i64 %.idx.i.i.i.i
  %.not6.i.i.i.i.i = icmp eq i32 %i.ahb, 0
  br i1 %.not6.i.i.i.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i, label %iter.check580

iter.check580:                                    ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agw, i64 104
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !500
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.ahl, i64 %i.agz
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !3 ; 5 uses
  %i.aho = add nsw i64 %.idx.i.i.i.i, -4          ; 3 uses
  %i.ahp = lshr exact i64 %i.aho, 2
  %i.ahq = add nuw nsw i64 %i.ahp, 1              ; 5 uses
  %min.iters.check557 = icmp ult i64 %i.aho, 28
  br i1 %min.iters.check557, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check558

vector.main.loop.iter.check558:                   ; preds = %iter.check580
  %min.iters.check559 = icmp ult i64 %i.aho, 124
  br i1 %min.iters.check559, label %vec.epilog.ph584, label %vector.ph560

vector.ph560:                                     ; preds = %vector.main.loop.iter.check558
  %n.mod.vf561 = and i64 %i.ahq, 24
  %n.vec562 = and i64 %i.ahq, 9223372036854775776 ; 5 uses
  %i.ahr = trunc i64 %n.vec562 to i32
  %i.ahs = add i32 %i.ahn, %i.ahr                 ; 2 uses
  %i.aht = shl i64 %n.vec562, 2
  %i.ahu = getelementptr i8, ptr %i.ahh, i64 %i.aht
  %broadcast.splatinsert563 = insertelement <8 x i32> poison, i32 %i.ahn, i64 0
  %broadcast.splat564 = shufflevector <8 x i32> %broadcast.splatinsert563, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction565 = add nsw <8 x i32> %broadcast.splat564, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph560
  %index567 = phi i64 [ 0, %vector.ph560 ], [ %index.next573, %vector.body566 ] ; 2 uses
  %vec.ind568 = phi <8 x i32> [ %induction565, %vector.ph560 ], [ %vec.ind.next574, %vector.body566 ] ; 5 uses
  %step.add569 = add nsw <8 x i32> %vec.ind568, splat (i32 8)
  %step.add.2570 = add nsw <8 x i32> %vec.ind568, splat (i32 16)
  %step.add.3571 = add nsw <8 x i32> %vec.ind568, splat (i32 24)
  %i.ahv = shl i64 %index567, 2
  %next.gep572 = getelementptr i8, ptr %i.ahh, i64 %i.ahv ; 4 uses
  %i.ahw = getelementptr i8, ptr %next.gep572, i64 32
  %i.ahx = getelementptr i8, ptr %next.gep572, i64 64
  %i.ahy = getelementptr i8, ptr %next.gep572, i64 96
  store <8 x i32> %vec.ind568, ptr %next.gep572, align 4, !tbaa !3
  store <8 x i32> %step.add569, ptr %i.ahw, align 4, !tbaa !3
  store <8 x i32> %step.add.2570, ptr %i.ahx, align 4, !tbaa !3
  store <8 x i32> %step.add.3571, ptr %i.ahy, align 4, !tbaa !3
  %index.next573 = add nuw i64 %index567, 32      ; 2 uses
  %vec.ind.next574 = add nsw <8 x i32> %vec.ind568, splat (i32 32)
  %i.ahz = icmp eq i64 %index.next573, %n.vec562
  br i1 %i.ahz, label %middle.block575, label %vector.body566, !llvm.loop !501

middle.block575:                                  ; preds = %vector.body566
  %cmp.n576 = icmp eq i64 %i.ahq, %n.vec562
  br i1 %cmp.n576, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block575
  %min.epilog.iters.check583 = icmp eq i64 %n.mod.vf561, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph584, !prof !502

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check558, %vec.epilog.iter.check582
  %vec.epilog.resume.val577 = phi i64 [ %n.vec562, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check558 ]
  %bc.resume.val578 = phi i32 [ %i.ahs, %vec.epilog.iter.check582 ], [ %i.ahn, %vector.main.loop.iter.check558 ]
  %n.vec586 = and i64 %i.ahq, 9223372036854775800 ; 4 uses
  %i.aia = trunc i64 %n.vec586 to i32
  %i.aib = add i32 %i.ahn, %i.aia
  %i.aic = shl i64 %n.vec586, 2
  %i.aid = getelementptr i8, ptr %i.ahh, i64 %i.aic
  %broadcast.splatinsert587 = insertelement <8 x i32> poison, i32 %bc.resume.val578, i64 0
  %broadcast.splat588 = shufflevector <8 x i32> %broadcast.splatinsert587, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction589 = add nsw <8 x i32> %broadcast.splat588, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body590

vec.epilog.vector.body590:                        ; preds = %vec.epilog.vector.body590, %vec.epilog.ph584
  %index591 = phi i64 [ %vec.epilog.resume.val577, %vec.epilog.ph584 ], [ %index.next594, %vec.epilog.vector.body590 ] ; 2 uses
  %vec.ind592 = phi <8 x i32> [ %induction589, %vec.epilog.ph584 ], [ %vec.ind.next595, %vec.epilog.vector.body590 ] ; 2 uses
  %i.aie = shl i64 %index591, 2
  %next.gep593 = getelementptr i8, ptr %i.ahh, i64 %i.aie
  store <8 x i32> %vec.ind592, ptr %next.gep593, align 4, !tbaa !3
  %index.next594 = add nuw i64 %index591, 8       ; 2 uses
  %vec.ind.next595 = add nsw <8 x i32> %vec.ind592, splat (i32 8)
  %i.aif = icmp eq i64 %index.next594, %n.vec586
  br i1 %i.aif, label %vec.epilog.middle.block596, label %vec.epilog.vector.body590, !llvm.loop !503

vec.epilog.middle.block596:                       ; preds = %vec.epilog.vector.body590
  %cmp.n597 = icmp eq i64 %i.ahq, %n.vec586
  br i1 %cmp.n597, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check580, %vec.epilog.iter.check582, %vec.epilog.middle.block596
  %.08.i.i.i.i.i.ph = phi i32 [ %i.ahn, %iter.check580 ], [ %i.ahs, %vec.epilog.iter.check582 ], [ %i.aib, %vec.epilog.middle.block596 ]
  %.057.i.i.i.i.i.ph = phi ptr [ %i.ahh, %iter.check580 ], [ %i.ahu, %vec.epilog.iter.check582 ], [ %i.aid, %vec.epilog.middle.block596 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.aig, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i = phi ptr [ %i.aih, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %.08.i.i.i.i.i, ptr %.057.i.i.i.i.i, align 4, !tbaa !3
  %i.aig = add nsw i32 %.08.i.i.i.i.i, 1
  %i.aih = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.aih, %i.ahj
  br i1 %.not.i.i4.i.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !504

_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block596, %middle.block575
  %.pre.i.i.i.i = load i32, ptr %i.ahe, align 4, !tbaa !3
  %.pre10.i.i.i.i = sext i32 %.pre.i.i.i.i to i64
  br label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i

_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i:             ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre10.i.i.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i ], [ %i.ahg, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZNK3fmt3v119formatterIN8facebook5velox6Buffer4TypeEcvE6formatES5_RNS0_7contextE:bb.a
.noexc4:                                          ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.l, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %.noexc4, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = invoke noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %.noexc5, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !271
  %i.r = invoke ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.a, i64 %i.c, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %.noexc6, %bb.b
  %.sroa.015.0.i = phi ptr [ %i.r, %.noexc6 ], [ %i.f, %bb.b ]
  %i.s = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret ptr %.sroa.015.0.i

bb.f:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, %bb.e, %bb.d, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.x
}

declare void @_ZN8facebook5velox6Buffer10typeStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt7shuffleIPiRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_S4_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(5000) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %6 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = udiv i64 4294967295, %i.e
  %.not = icmp ult i64 %i.f, %i.e
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = and i64 %i.d, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 0, ptr %4, align 8, !tbaa !520
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !522
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.g, align 4, !tbaa !3
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  store i32 %i.o, ptr %i.g, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.not3637 = icmp eq ptr %.031, %1
  br i1 %.not3637, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.138 = phi ptr [ %.031, %.lr.ph ], [ %i.ae, %bb.f ] ; 5 uses
  %i.q = ptrtoint ptr %.138 to i64
  %i.r = sub i64 %i.q, %i.c
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = add nsw i64 %i.s, 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.v = mul i64 %i.u, %i.t
  %i.w = add i64 %i.v, -1
  store i64 0, ptr %3, align 8, !tbaa !520
  store i64 %i.w, ptr %i.p, align 8, !tbaa !522
  %i.x = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.y = udiv i64 %i.x, %i.u
  %i.z = urem i64 %i.x, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = load i32, ptr %.138, align 4, !tbaa !3
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  store i32 %i.ad, ptr %.138, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !3
  %.not36 = icmp eq ptr %i.ae, %1
  br i1 %.not36, label %.loopexit, label %bb.f, !llvm.loop !523

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 0, ptr %5, align 8, !tbaa !520
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %i.ai, align 8, !tbaa !522
  %.039 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not3540 = icmp eq ptr %.039, %1
  br i1 %.not3540, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph42, %bb.h
  %.041 = phi ptr [ %.039, %.lr.ph42 ], [ %.0, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ak = ptrtoint ptr %.041 to i64
  %i.al = sub i64 %i.ak, %i.c
  %i.am = ashr exact i64 %i.al, 2
  store i64 0, ptr %6, align 8, !tbaa !520
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !522
  %i.an = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %.041, align 4, !tbaa !3
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  store i32 %i.aq, ptr %.041, align 4, !tbaa !3
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.0 = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 2 uses
  %.not35 = icmp eq ptr %.0, %1
  br i1 %.not35, label %._crit_edge, label %bb.h, !llvm.loop !524

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !522
  %i.c = load i64, ptr %2, align 8, !tbaa !520
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ult i64 %i.d, 4294967295
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i32                ; 2 uses
  %i.g = add nuw i32 %i.f, 1                      ; 3 uses
  %i.h = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.i = zext i32 %i.g to i64                     ; 2 uses
  %i.j = mul i64 %i.h, %i.i                       ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %4 = icmp ugt i32 %i.g, %i.k
  br i1 %4, label %bb.c, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = xor i32 %i.f, -1
  %i.m = urem i32 %i.l, %i.g                      ; 2 uses
  %i.n = icmp ugt i32 %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.o = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.p = mul i64 %i.o, %i.i                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.m, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !672

_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i ]
  %i.s = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = lshr i64 %i.d, 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !tbaa !520
  store i64 %i.t, ptr %i.u, align 8, !tbaa !522
  %i.v = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.w = shl i64 %i.v, 32                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.x = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.y = add i64 %i.x, %i.w                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.d
  %i.aa = icmp ult i64 %i.y, %i.w
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !673

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.s, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ]
  %i.ad = load i64, ptr %2, align 8, !tbaa !520
  %i.ae = add i64 %i.ad, %.0
  ret i64 %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !9
  %vector.recur.init = insertelement <4 x i64> poison, i64 %.pre.i, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load11, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 8 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %wide.load = load <4 x i64>, ptr %i.f, align 8, !tbaa !9 ; 4 uses
  %wide.load9 = load <4 x i64>, ptr %i.g, align 8, !tbaa !9 ; 4 uses
  %wide.load10 = load <4 x i64>, ptr %i.h, align 8, !tbaa !9 ; 4 uses
  %wide.load11 = load <4 x i64>, ptr %i.i, align 8, !tbaa !9 ; 5 uses
  %i.j = shufflevector <4 x i64> %vector.recur, <4 x i64> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.k = shufflevector <4 x i64> %wide.load, <4 x i64> %wide.load9, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.l = shufflevector <4 x i64> %wide.load9, <4 x i64> %wide.load10, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.m = shufflevector <4 x i64> %wide.load10, <4 x i64> %wide.load11, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.n = and <4 x i64> %i.j, splat (i64 -2147483648)
  %i.o = and <4 x i64> %i.k, splat (i64 -2147483648)
  %i.p = and <4 x i64> %i.l, splat (i64 -2147483648)
  %i.q = and <4 x i64> %i.m, splat (i64 -2147483648)
  %i.r = and <4 x i64> %wide.load, splat (i64 2147483646)
  %i.s = and <4 x i64> %wide.load9, splat (i64 2147483646)
  %i.t = and <4 x i64> %wide.load10, splat (i64 2147483646)
  %i.u = and <4 x i64> %wide.load11, splat (i64 2147483646)
  %i.v = or disjoint <4 x i64> %i.r, %i.n
  %i.w = or disjoint <4 x i64> %i.s, %i.o
  %i.x = or disjoint <4 x i64> %i.t, %i.p
  %i.y = or disjoint <4 x i64> %i.u, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 3208
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 3240
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 3272
  %wide.load12 = load <4 x i64>, ptr %i.z, align 8, !tbaa !9
  %wide.load13 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !9
  %wide.load14 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !9
  %wide.load15 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !9
  %i.ad = lshr exact <4 x i64> %i.v, splat (i64 1)
  %i.ae = lshr exact <4 x i64> %i.w, splat (i64 1)
  %i.af = lshr exact <4 x i64> %i.x, splat (i64 1)
  %i.ag = lshr exact <4 x i64> %i.y, splat (i64 1)
  %i.ah = xor <4 x i64> %i.ad, %wide.load12
  %i.ai = xor <4 x i64> %i.ae, %wide.load13
  %i.aj = xor <4 x i64> %i.af, %wide.load14
  %i.ak = xor <4 x i64> %i.ag, %wide.load15
  %i.al = and <4 x i64> %wide.load, splat (i64 1)
  %i.am = and <4 x i64> %wide.load9, splat (i64 1)
  %i.an = and <4 x i64> %wide.load10, splat (i64 1)
  %i.ao = and <4 x i64> %wide.load11, splat (i64 1)
  %i.ap = icmp eq <4 x i64> %i.al, zeroinitializer
  %i.aq = icmp eq <4 x i64> %i.am, zeroinitializer
  %i.ar = icmp eq <4 x i64> %i.an, zeroinitializer
  %i.as = icmp eq <4 x i64> %i.ao, zeroinitializer
  %i.at = select <4 x i1> %i.ap, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.au = select <4 x i1> %i.aq, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.av = select <4 x i1> %i.ar, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.aw = select <4 x i1> %i.as, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.ax = xor <4 x i64> %i.ah, %i.at
  %i.ay = xor <4 x i64> %i.ai, %i.au
  %i.az = xor <4 x i64> %i.aj, %i.av
  %i.ba = xor <4 x i64> %i.ak, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x i64> %i.ax, ptr %i.d, align 8, !tbaa !9
  store <4 x i64> %i.ay, ptr %i.bb, align 8, !tbaa !9
  store <4 x i64> %i.az, ptr %i.bc, align 8, !tbaa !9
  store <4 x i64> %i.ba, ptr %i.bd, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, 224
  br i1 %i.be, label %vector.ph17, label %vector.body, !llvm.loop !674

vector.ph17:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %wide.load11, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bg = and i64 %vector.recur.extract, -2147483648
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !9  ; 3 uses
  %i.bj = and i64 %i.bi, 2147483646
  %i.bk = or disjoint i64 %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4968
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !9
  %i.bn = lshr exact i64 %i.bk, 1
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bi, 1
  %.not20.i = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not20.i, i64 0, i64 2567483615
  %i.br = xor i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bf, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.bt = and i64 %i.bi, -2147483648
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9  ; 3 uses
  %i.bw = and i64 %i.bv, 2147483646
  %i.bx = or disjoint i64 %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9
  %i.ca = lshr exact i64 %i.bx, 1
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = and i64 %i.bv, 1
  %.not20.i.1 = icmp eq i64 %i.cc, 0
  %i.cd = select i1 %.not20.i.1, i64 0, i64 2567483615
  %i.ce = xor i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.bs, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.cg = and i64 %i.bv, -2147483648
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !9  ; 2 uses
  %i.cj = and i64 %i.ci, 2147483646
  %i.ck = or disjoint i64 %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !9
  %i.cn = lshr exact i64 %i.ck, 1
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = and i64 %i.ci, 1
  %.not20.i.2 = icmp eq i64 %i.cp, 0
  %i.cq = select i1 %.not20.i.2, i64 0, i64 2567483615
  %i.cr = xor i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.cf, align 8, !tbaa !9
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !9
  %vector.recur.init20 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph17
  %index19 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body18 ] ; 3 uses
  %vector.recur21 = phi <2 x i64> [ %vector.recur.init20, %vector.ph17 ], [ %wide.load22, %vector.body18 ]
  %i.cs = getelementptr [8 x i8], ptr %0, i64 %index19 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 1816
  %i.cu = getelementptr [8 x i8], ptr %0, i64 %index19
  %i.cv = getelementptr i8, ptr %i.cu, i64 1824
  %wide.load22 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !9 ; 4 uses
  %i.cw = shufflevector <2 x i64> %vector.recur21, <2 x i64> %wide.load22, <2 x i32> <i32 1, i32 2>
  %i.cx = and <2 x i64> %i.cw, splat (i64 -2147483648)
end_hunk_2
