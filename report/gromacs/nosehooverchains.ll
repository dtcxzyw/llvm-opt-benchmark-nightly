Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nosehooverchains?download=true
inline.NumInlined: 2272
inline.NumDeleted: 1299
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN3gmx15NoseHooverGroupESt6vectorIS3_SaIS3_EEEENS0_5__ops12_Iter_negateIZNKS2_20NoseHooverChainsData24isAtFullCouplingTimeStepEvEUlRKT_E_EEESD_SD_SD_T0_St26random_access_iterator_tag:bb.a

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 448 ; 3 uses
  %i.bp = add nsw i64 %.045, -1
  %i.bq = icmp sgt i64 %.045, 1
  br i1 %i.bq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !560

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %i.bo to i64
  %.pre50 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi51 = phi i64 [ %.pre50, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.025.0.lcssa = phi ptr [ %i.bo, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.br = sdiv exact i64 %.pre-phi51, 112
  switch i64 %i.br, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 104 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 16 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !76
  %i.bw = fdiv float %i.bt, %i.bv
  %i.bx = tail call noundef i64 @lroundf(float noundef %i.bw) #28
  %i.by = sitofp i64 %i.bx to float
  %i.bz = load float, ptr %i.bu, align 8, !tbaa !76
  %i.ca = fmul float %i.bz, %i.by
  %i.cb = fpext float %i.ca to double
  %i.cc = load float, ptr %i.bs, align 8, !tbaa !51
  %i.cd = fpext float %i.cc to double
  %i.ce = fsub double %i.cb, %i.cd                ; 2 uses
  %i.cf = fmul double %i.ce, %i.ce
  %i.cg = fcmp uge double %i.cf, f0x3D71979980000000
  br i1 %i.cg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.025.1 = phi ptr [ %i.ch, %bb.g ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 104 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 16 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !76
  %i.cm = fdiv float %i.cj, %i.cl
  %i.cn = tail call noundef i64 @lroundf(float noundef %i.cm) #28
  %i.co = sitofp i64 %i.cn to float
  %i.cp = load float, ptr %i.ck, align 8, !tbaa !76
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fpext float %i.cq to double
  %i.cs = load float, ptr %i.ci, align 8, !tbaa !51
  %i.ct = fpext float %i.cs to double
  %i.cu = fsub double %i.cr, %i.ct                ; 2 uses
  %i.cv = fmul double %i.cu, %i.cu
  %i.cw = fcmp uge double %i.cv, f0x3D71979980000000
  br i1 %i.cw, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 112
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.025.2 = phi ptr [ %i.cx, %bb.i ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.025.2, i64 104 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.025.2, i64 16 ; 2 uses
  %i.db = load float, ptr %i.da, align 8, !tbaa !76
  %i.dc = fdiv float %i.cz, %i.db
  %i.dd = tail call noundef i64 @lroundf(float noundef %i.dc) #28
  %i.de = sitofp i64 %i.dd to float
  %i.df = load float, ptr %i.da, align 8, !tbaa !76
  %i.dg = fmul float %i.df, %i.de
  %i.dh = fpext float %i.dg to double
  %i.di = load float, ptr %i.cy, align 8, !tbaa !51
  %i.dj = fpext float %i.di to double
  %i.dk = fsub double %i.dh, %i.dj                ; 2 uses
  %i.dl = fmul double %i.dk, %i.dk
  %i.dm = fcmp uge double %i.dl, f0x3D71979980000000
  %spec.select = select i1 %i.dm, ptr %.sroa.025.2, ptr %1
  br label %.loopexit

.loopexit.split.loop.exit35:                      ; preds = %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 112
  br label %.loopexit

.loopexit.split.loop.exit37:                      ; preds = %bb.c
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 224
  br label %.loopexit

.loopexit.split.loop.exit39:                      ; preds = %bb.d
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 336
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.split.loop.exit35, %.loopexit.split.loop.exit37, %.loopexit.split.loop.exit39, %bb.j, %._crit_edge, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.025.1, %bb.h ], [ %spec.select, %bb.j ], [ %1, %._crit_edge ], [ %.sroa.025.0.lcssa, %bb.f ], [ %i.do, %.loopexit.split.loop.exit37 ], [ %i.dn, %.loopexit.split.loop.exit35 ], [ %i.dp, %.loopexit.split.loop.exit39 ], [ %.sroa.025.044, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx23NoseHooverChainsElementC2EiiNS_8NhcUsageENS_13UseFullStepKEEdNS_18ScheduleOnInitStepElPNS_10EnergyDataEPNS_20NoseHooverChainsDataEPNS_8MttkDataE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((0, 84), (88, 120)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx23NoseHooverChainsElementE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 %1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %2, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %5, ptr %i.d, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %3, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %4, ptr %i.f, align 4, !tbaa !307
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %6, ptr %i.g, align 8, !tbaa !561
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %7, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %8, ptr %i.i, align 8, !tbaa !303
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %9, ptr %i.j, align 8, !tbaa !304
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %10, ptr %i.k, align 8, !tbaa !306
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !563
  tail call void @_ZN3gmx23NoseHooverChainsElement12propagateNhcEv(ptr noundef nonnull align 8 dereferenceable(120) %.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0", ptr %0, align 8, !tbaa !268
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !269
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !71
  store i64 %.val.i, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx23NoseHooverChainsElement21connectWithPropagatorERKNS_20PropagatorConnectionERKNS_13PropagatorTagE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.447", align 16 ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::function.447", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread10

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread, label %_ZNK3gmx13PropagatorTageqERKS0_.exit

_ZNK3gmx13PropagatorTageqERKS0_.exit:             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !tbaa !97
  %i.j = load ptr, ptr %1, align 8, !tbaa !97
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.k, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread10

_ZNK3gmx13PropagatorTageqERKS0_.exit.thread:      ; preds = %bb.b, %_ZNK3gmx13PropagatorTageqERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %.not.i.i.i = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %5 = load ptr, ptr %i.n, align 8
  %.not.i.i1.i = icmp ne ptr %5, null
  %or.cond.i = select i1 %.not.i.i.i, i1 %.not.i.i1.i, i1 false
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.o = load ptr, ptr %6, align 8
  %.not.i.i1.i.a = icmp ne ptr %i.o, null
  %or.cond.i.a = select i1 %or.cond.i, i1 %.not.i.i1.i.a, i1 false
  br i1 %or.cond.i.a, label %_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit, label %_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit.thread

_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit.thread: ; preds = %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx23NoseHooverChainsElement21connectWithPropagatorERKNS_20PropagatorConnectionERKNS_13PropagatorTagEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 703) #30
  unreachable

_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit: ; preds = %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.s, ptr %i.a, align 4, !tbaa !80
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !572
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = load ptr, ptr %6, align 8, !tbaa !72
  %.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i7, label %bb.c, label %_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit

bb.c:                                             ; preds = %_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit:  ; preds = %_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !574
  %i.aa = call { ptr, ptr } %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.x), !inline_history !565 ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !72, !noalias !575
  %.not.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8, label %bb.d, label %_ZNKSt8functionIFS_IFvlEEvEEclEv.exit

bb.d:                                             ; preds = %_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit
  call void @_ZSt25__throw_bad_function_callv() #30, !noalias !575
  unreachable

_ZNKSt8functionIFS_IFvlEEvEEclEv.exit:            ; preds = %_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !577, !noalias !575
  call void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::function.447") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.af), !inline_history !568
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !269
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !72
  %.not.i.i.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvlEEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFS_IFvlEEvEEclEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !578
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvlEEC2EOS1_.exit.i

_ZNSt8functionIFvlEEC2EOS1_.exit.i:               ; preds = %bb.e, %_ZNKSt8functionIFS_IFvlEEvEEclEv.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !578
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ai, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !269
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !269 ; 2 uses
  store <2 x ptr> %i.ao, ptr %i.am, align 16, !tbaa !269
  store <2 x ptr> %i.ak, ptr %i.an, align 8, !tbaa !269
  %.not.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvlEEaSEOS1_.exit.thread, label %bb.f

_ZNSt8functionIFvlEEaSEOS1_.exit.thread:          ; preds = %_ZNSt8functionIFvlEEC2EOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.f:                                             ; preds = %_ZNSt8functionIFvlEEC2EOS1_.exit.i
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFvlEEaSEOS1_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #31
  unreachable

_ZNSt8functionIFvlEEaSEOS1_.exit:                 ; preds = %bb.f
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFvlEEaSEOS1_.exit
  %i.at = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFvlEEaSEOS1_.exit.thread, %_ZNSt8functionIFvlEEaSEOS1_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread10

_ZNK3gmx13PropagatorTageqERKS0_.exit.thread10:    ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit, %_ZNK3gmx13PropagatorTageqERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3gmx23NoseHooverChainsElement21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_8NhcUsageENS_6OffsetENS_13UseFullStepKEENS_18ScheduleOnInitStepERKNS_31MttkPropagatorConnectionDetailsE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6, i32 noundef %7, i32 %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(212) %11) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.gmx::PropagatorTag", align 8 ; 9 uses
  %i.a = icmp eq i32 %7, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx23NoseHooverChainsElement21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_8NhcUsageENS_6OffsetENS_13UseFullStepKEENS_18ScheduleOnInitStepERKNS_31MttkPropagatorConnectionDetailsEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 727) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN3gmx8MttkData6dataIDB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12)
  %i.b = load ptr, ptr %1, align 8, !tbaa !244
  %i.c = invoke { ptr, i8 } @_ZN3gmx32ModularSimulatorAlgorithmBuilder14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(712) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  %i.d = extractvalue { ptr, i8 } %i.c, 1
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load ptr, ptr %12, align 8, !tbaa !97    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !98
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br i1 %i.e, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN3gmx8MttkData5buildEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataERKNS_31MttkPropagatorConnectionDetailsE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(212) %11)
  br label %._crit_edge.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %12, align 8, !tbaa !97    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !98
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.h

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.q, ptr %13, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !102
  store i8 0, ptr %i.q, align 8, !tbaa !98
  %i.s = invoke noundef ptr @_ZN3gmx23NoseHooverChainsElement21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_8NhcUsageENS_6OffsetENS_13UseFullStepKEENS_18ScheduleOnInitStepERKNS_13PropagatorTagE(ptr noundef %0, ptr noundef nonnull %1, ptr poison, ptr noundef %3, ptr poison, ptr poison, ptr poison, i32 noundef 1, i32 %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = load ptr, ptr %13, align 8, !tbaa !97    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZN3gmx13PropagatorTagD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.q, align 8, !tbaa !98
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %_ZN3gmx13PropagatorTagD2Ev.exit

_ZN3gmx13PropagatorTagD2Ev.exit:                  ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  ret ptr %i.s

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %13, align 8, !tbaa !97    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.q
  br i1 %i.z, label %_ZN3gmx13PropagatorTagD2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.g
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !98
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #29
  br label %_ZN3gmx13PropagatorTagD2Ev.exit26

_ZN3gmx13PropagatorTagD2Ev.exit26:                ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.h

end_hunk_0
