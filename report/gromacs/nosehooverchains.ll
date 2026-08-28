Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nosehooverchains?download=true
inline.NumInlined: 2272
inline.NumDeleted: 1299
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !547  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #28
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !106
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN3gmx15NoseHooverGroupESt6vectorIS3_SaIS3_EEEENS0_5__ops12_Iter_negateIZNKS2_20NoseHooverChainsData24isAtFullCouplingTimeStepEvEUlRKT_E_EEESD_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 112
  %i.e = ashr i64 %i.d, 2                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.045 = phi i64 [ %i.bp, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.025.044 = phi ptr [ %i.bo, %bb.e ], [ %0, %bb.a ] ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 104 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 16 ; 2 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !76
  %i.k = fdiv float %i.h, %i.j
  %i.l = tail call noundef i64 @lroundf(float noundef %i.k) #28
  %i.m = sitofp i64 %i.l to float
  %i.n = load float, ptr %i.i, align 8, !tbaa !76
  %i.o = fmul float %i.n, %i.m
  %i.p = fpext float %i.o to double
  %i.q = load float, ptr %i.g, align 8, !tbaa !43
  %i.r = fpext float %i.q to double
  %i.s = fsub double %i.p, %i.r                   ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fcmp uge double %i.t, f0x3D71979980000000
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 216 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 128 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !76
  %i.z = fdiv float %i.w, %i.y
  %i.aa = tail call noundef i64 @lroundf(float noundef %i.z) #28
  %i.ab = sitofp i64 %i.aa to float
  %i.ac = load float, ptr %i.x, align 8, !tbaa !76
  %i.ad = fmul float %i.ac, %i.ab
  %i.ae = fpext float %i.ad to double
  %i.af = load float, ptr %i.v, align 8, !tbaa !43
  %i.ag = fpext float %i.af to double
  %i.ah = fsub double %i.ae, %i.ag                ; 2 uses
  %i.ai = fmul double %i.ah, %i.ah
  %i.aj = fcmp uge double %i.ai, f0x3D71979980000000
  br i1 %i.aj, label %.loopexit.split.loop.exit35, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 328 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 240 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !76
  %i.ao = fdiv float %i.al, %i.an
  %i.ap = tail call noundef i64 @lroundf(float noundef %i.ao) #28
  %i.aq = sitofp i64 %i.ap to float
  %i.ar = load float, ptr %i.am, align 8, !tbaa !76
  %i.as = fmul float %i.ar, %i.aq
  %i.at = fpext float %i.as to double
  %i.au = load float, ptr %i.ak, align 8, !tbaa !43
  %i.av = fpext float %i.au to double
  %i.aw = fsub double %i.at, %i.av                ; 2 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fcmp uge double %i.ax, f0x3D71979980000000
  br i1 %i.ay, label %.loopexit.split.loop.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 440 ; 2 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 352 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !76
  %i.bd = fdiv float %i.ba, %i.bc
  %i.be = tail call noundef i64 @lroundf(float noundef %i.bd) #28
  %i.bf = sitofp i64 %i.be to float
  %i.bg = load float, ptr %i.bb, align 8, !tbaa !76
  %i.bh = fmul float %i.bg, %i.bf
  %i.bi = fpext float %i.bh to double
  %i.bj = load float, ptr %i.az, align 8, !tbaa !43
  %i.bk = fpext float %i.bj to double
  %i.bl = fsub double %i.bi, %i.bk                ; 2 uses
  %i.bm = fmul double %i.bl, %i.bl
  %i.bn = fcmp uge double %i.bm, f0x3D71979980000000
  br i1 %i.bn, label %.loopexit.split.loop.exit39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 448 ; 3 uses
  %i.bp = add nsw i64 %.045, -1
  %i.bq = icmp sgt i64 %.045, 1
  br i1 %i.bq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !549

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
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 16 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !76
  %i.bw = fdiv float %i.bt, %i.bv
  %i.bx = tail call noundef i64 @lroundf(float noundef %i.bw) #28
  %i.by = sitofp i64 %i.bx to float
  %i.bz = load float, ptr %i.bu, align 8, !tbaa !76
  %i.ca = fmul float %i.bz, %i.by
  %i.cb = fpext float %i.ca to double
  %i.cc = load float, ptr %i.bs, align 8, !tbaa !43
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
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 16 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !76
  %i.cm = fdiv float %i.cj, %i.cl
  %i.cn = tail call noundef i64 @lroundf(float noundef %i.cm) #28
  %i.co = sitofp i64 %i.cn to float
  %i.cp = load float, ptr %i.ck, align 8, !tbaa !76
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fpext float %i.cq to double
  %i.cs = load float, ptr %i.ci, align 8, !tbaa !43
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
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.025.2, i64 16 ; 2 uses
  %i.db = load float, ptr %i.da, align 8, !tbaa !76
  %i.dc = fdiv float %i.cz, %i.db
  %i.dd = tail call noundef i64 @lroundf(float noundef %i.dc) #28
  %i.de = sitofp i64 %i.dd to float
  %i.df = load float, ptr %i.da, align 8, !tbaa !76
  %i.dg = fmul float %i.df, %i.de
  %i.dh = fpext float %i.dg to double
  %i.di = load float, ptr %i.cy, align 8, !tbaa !43
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
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx23NoseHooverChainsElementE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 %1, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %2, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %5, ptr %i.d, align 8, !tbaa !537
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %3, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %4, ptr %i.f, align 4, !tbaa !543
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %6, ptr %i.g, align 8, !tbaa !550
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %7, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %8, ptr %i.i, align 8, !tbaa !535
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %9, ptr %i.j, align 8, !tbaa !536
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %10, ptr %i.k, align 8, !tbaa !541
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !551
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
  store ptr @"_ZTIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !341
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx23NoseHooverChainsElement12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !62
  store i64 %.val.i, ptr %0, align 8, !tbaa !62
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !136
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread10

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread, label %_ZNK3gmx13PropagatorTageqERKS0_.exit

_ZNK3gmx13PropagatorTageqERKS0_.exit:             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !tbaa !105
  %i.j = load ptr, ptr %1, align 8, !tbaa !105
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.k, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread, label %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread10

_ZNK3gmx13PropagatorTageqERKS0_.exit.thread:      ; preds = %bb.b, %_ZNK3gmx13PropagatorTageqERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  %.not.i.i.i = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i1.i = icmp ne ptr %i.o, null
  %or.cond.i = select i1 %.not.i.i.i, i1 %.not.i.i1.i, i1 false
  br i1 %or.cond.i, label %_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit, label %_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit.thread

_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit: ; preds = %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66
  %.not.i.i2.i.not = icmp eq ptr %i.q, null
  br i1 %.not.i.i2.i.not, label %_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit.thread, label %_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit

_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit.thread: ; preds = %_ZNK3gmx13PropagatorTageqERKS0_.exit.thread, %_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx23NoseHooverChainsElement21connectWithPropagatorERKNS_20PropagatorConnectionERKNS_13PropagatorTagEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 703) #30
  unreachable

_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit: ; preds = %_ZNK3gmx20PropagatorConnection23hasStartVelocityScalingEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !536
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.u, ptr %i.a, align 4, !tbaa !87
  store i32 0, ptr %i.b, align 4, !tbaa !553
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !555
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !66
  %.not.i.i7 = icmp eq ptr %i.y, null
  br i1 %.not.i.i7, label %bb.c, label %_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit

bb.c:                                             ; preds = %_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit:  ; preds = %_ZNKSt8functionIFviN3gmx15ScaleVelocitiesEEEclEiS1_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !558
  %i.ac = call { ptr, ptr } %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.z), !inline_history !560 ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !66, !noalias !561
  %.not.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8, label %bb.d, label %_ZNKSt8functionIFS_IFvlEEvEEclEv.exit

bb.d:                                             ; preds = %_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit
  call void @_ZSt25__throw_bad_function_callv() #30, !noalias !561
  unreachable

_ZNKSt8functionIFS_IFvlEEvEEclEv.exit:            ; preds = %_ZNKSt8functionIFN3gmx8ArrayRefIfEEvEEclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !564, !noalias !561
  call void %i.aj(ptr dead_on_unwind nonnull writable sret(%"class.std::function.447") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ah), !inline_history !566
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !341
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !66
  %.not.i.i.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvlEEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFS_IFvlEEvEEclEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvlEEC2EOS1_.exit.i

_ZNSt8functionIFvlEEC2EOS1_.exit.i:               ; preds = %bb.e, %_ZNKSt8functionIFS_IFvlEEvEEclEv.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !567
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !341
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !341 ; 2 uses
  store <2 x ptr> %i.aq, ptr %i.ao, align 16, !tbaa !341
  store <2 x ptr> %i.am, ptr %i.ap, align 8, !tbaa !341
  %.not.i.i9 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvlEEaSEOS1_.exit.thread, label %bb.f

_ZNSt8functionIFvlEEaSEOS1_.exit.thread:          ; preds = %_ZNSt8functionIFvlEEC2EOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.f:                                             ; preds = %_ZNSt8functionIFvlEEC2EOS1_.exit.i
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFvlEEaSEOS1_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
