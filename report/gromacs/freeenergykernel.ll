Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/freeenergykernel?download=true
inline.NumInlined: 37607
inline.NumDeleted: 520
loop-unroll.NumCompletelyUnrolled: 1222
loop-unroll.NumUnrolled: 1222
begin_hunk_0_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE1ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
.thread707:                                       ; preds = %.split.us, %bb.y, %bb.x
  %.0431.lcssa682710 = phi i1 [ %i.dm, %bb.x ], [ %i.dm, %bb.y ], [ false, %.split.us ]
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !112 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !125
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 -4
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !83
  %i.pv = sext i32 %i.pu to i64
  %.not.i.i478 = icmp eq ptr %i.pq, null
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pv
  %spec.select.i.i479 = select i1 %.not.i.i478, ptr null, ptr %i.pw
  %i.px = ptrtoint ptr %spec.select.i.i479 to i64
  %i.py = ptrtoint ptr %i.pq to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = lshr exact i64 %i.pz, 3
  %i.qb = mul i64 %i.qa, 150
  %i.qc = add i64 %i.qb, %i.f
  %i.qd = trunc i64 %i.qc to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.qd)
  %or.cond539 = select i1 %i.bf, i1 %.0431.lcssa682710, i1 false
  br i1 %or.cond539, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %.thread707
  %i.qe = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.aa unwind label %.thread530

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.ab unwind label %.thread535

bb.ab:                                            ; preds = %bb.aa
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !74
  %i.qf = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE1ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.qf, align 8, !tbaa !129
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !129
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !83
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.qe, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr %i.qe, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #22
          to label %bb.ah unwind label %bb.ad

.thread530:                                       ; preds = %bb.z
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread535:                                       ; preds = %bb.aa
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ]
  %i.qi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #23
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0, label %bb.ae, label %bb.af

.sink.split:                                      ; preds = %.thread530, %.thread535
  %.pn.pn534.ph = phi { ptr, i32 } [ %i.qh, %.thread535 ], [ %i.qg, %.thread530 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %.pn.pn534 = phi { ptr, i32 } [ %i.qi, %bb.ad ], [ %.pn.pn534.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.qe) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.pn533 = phi { ptr, i32 } [ %.pn.pn534, %bb.ae ], [ %i.qi, %bb.ad ]
  resume { ptr, i32 } %.pn.pn533

bb.ag:                                            ; preds = %.thread707
  ret void

bb.ah:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE2ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.01174 = alloca float, align 4            ; 6 uses
  %.sroa.61175 = alloca float, align 4            ; 6 uses
  %.sroa.01171 = alloca float, align 4            ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 6 uses
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 7 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %.sroa.01167 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41168 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01163 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41164 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01159 = alloca <16 x float>, align 64    ; 5 uses
  %.sroa.51160 = alloca <16 x float>, align 64    ; 5 uses
  %.sroa.01155 = alloca <16 x float>, align 64    ; 5 uses
  %.sroa.5 = alloca <16 x float>, align 64        ; 5 uses
  %.sroa.01151 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41152 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01147 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41148 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01143 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41144 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.0 = alloca <16 x float>, align 64        ; 4 uses
  %.sroa.4 = alloca <16 x float>, align 64        ; 4 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = load i64, ptr %14, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !306  ; 2 uses
  %i.w = sitofp i32 %i.v to float                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !44
  %i.z = load float, ptr %i.t, align 4, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !307 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !308 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !98, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !99, !range !42, !noundef !43
  %i.aj = trunc nuw i8 %i.ai to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.ak = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ]
  %i.al = phi i1 [ %i.aj, %bb.b ], [ true, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ao = load float, ptr %i.an, align 4, !tbaa !100 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !104 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.as = load float, ptr %i.ar, align 8, !tbaa !185 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.au = load float, ptr %i.at, align 4, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 8, !tbaa !105 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ba = load float, ptr %i.az, align 4, !tbaa !108
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !148 ; 2 uses
  %i.bd = fsub float %i.aw, %i.bc                 ; 5 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fmul float %i.bd, %i.be                 ; 2 uses
  %i.bg = fmul float %i.bd, %i.bf                 ; 3 uses
  %i.bh = fmul float %i.bd, %i.bg                 ; 2 uses
  %i.bi = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bg, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bh, i64 2
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bm = fdiv <4 x float> <float -1.000000e+01, float 1.500000e+01, float -6.000000e+00, float -3.000000e+01>, %i.bl ; 4 uses
  %i.bn = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bh, i64 1
  %i.bp = fdiv <2 x float> <float 6.000000e+01, float -3.000000e+01>, %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.am, align 8, !tbaa !183 ; 2 uses
  %i.br = icmp ult i32 %i.bq, 17
  %switch.cast = trunc i32 %i.bq to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bs = select i1 %i.br, i1 %switch.masked, i1 false ; 2 uses
  %i.bt = fcmp olt float %i.aq, %i.aw
  %.val = load float, ptr %i.av, align 8
  %.val1139 = load float, ptr %i.ap, align 8
  %24 = select i1 %i.bt, float %.val, float %.val1139 ; 2 uses
  %i.bu = fmul float %24, %24
  %i.bv = fsub <2 x float> splat (float 1.000000e+00), %i.r ; 7 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1 ; 5 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01174)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61175)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01171)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.by = icmp eq i32 %i.v, 2
  %i.bz = fsub float 1.000000e+00, %i.bx          ; 4 uses
  br i1 %i.by, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %.thread
  store float %i.bz, ptr %.sroa.01174, align 4, !tbaa !48
  %i.ca = fsub float 1.000000e+00, %i.bw
  store float %i.ca, ptr %.sroa.01171, align 4, !tbaa !48
  store float %i.bx, ptr %.sroa.61175, align 4, !tbaa !48
  %i.cb = insertelement <4 x float> poison, float %i.w, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fdiv <4 x float> %i.cc, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  store float %i.bw, ptr %.sroa.6, align 4, !tbaa !48
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %.thread
  %i.ce = fmul float %i.bz, %i.bz
  store float %i.ce, ptr %.sroa.01174, align 4, !tbaa !48
  %i.cf = insertelement <2 x float> poison, float %i.w, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fdiv nnan <4 x float> %i.cg, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  %i.ci = fsub float 1.000000e+00, %i.bw          ; 3 uses
  %i.cj = fmul float %i.ci, %i.ci
  store float %i.cj, ptr %.sroa.01171, align 4, !tbaa !48
  %foldExtExtBinop = fmul <2 x float> %i.bv, %i.bv
  %i.ck = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ck, ptr %.sroa.61175, align 4, !tbaa !48
  %i.cl = fmul float %i.bw, %i.bw
  store float %i.cl, ptr %.sroa.6, align 4, !tbaa !48
  %i.cm = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.ci, i64 1
  %i.co = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cq = fmul <4 x float> %i.ch, %i.cp
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %i.cr = phi <4 x float> [ %i.cq, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.cd, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !101   ; 4 uses
  %i.ct = load ptr, ptr %16, align 8, !tbaa !103  ; 32 uses
  %i.cu = icmp sgt i64 %i.n, 0
  br i1 %i.cu, label %.lr.ph1054, label %._crit_edge1055

.lr.ph1054:                                       ; preds = %.split.us
  %i.cv = udiv exact i64 %i.n, 12
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dc = insertelement <16 x float> poison, float %i.bu, i64 0
  %i.dd = shufflevector <16 x float> %i.dc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.de = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.df = shufflevector <16 x float> %i.de, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dg = insertelement <16 x float> poison, float %i.as, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.di = insertelement <16 x float> poison, float %i.au, i64 0
  %i.dj = shufflevector <16 x float> %i.di, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = fmul float %i.as, 2.000000e+00
  %i.dl = insertelement <16 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <16 x float> %i.dl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dn = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.do = shufflevector <16 x float> %i.dn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dp = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.dq = shufflevector <16 x float> %i.dp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dr = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.ds = shufflevector <16 x float> %i.dr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dt = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.du = shufflevector <16 x float> %i.dt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dv = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dw = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dx = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.dy = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.dz = shufflevector <2 x float> %i.bp, <2 x float> poison, <16 x i32> zeroinitializer
  %i.ea = shufflevector <2 x float> %i.bp, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.eb = fmul float %i.aq, %i.aq
  %i.ec = insertelement <16 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <16 x float> %i.ec, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ee = fmul float %i.as, -2.000000e+00
  %i.ef = insertelement <16 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <16 x float> %i.ef, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.eh = shufflevector <2 x float> %i.bv, <2 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ei = shufflevector <2 x float> %i.bv, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.ej = shufflevector <4 x float> %i.cr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ek = shufflevector <4 x float> %i.cr, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.el = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.em = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.en = shufflevector <4 x float> %i.cr, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.eo = shufflevector <4 x float> %i.cr, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %.sroa.5.0..sroa_idx1156 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.51160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %bb.c

._crit_edge1055.loopexit:                         ; preds = %._crit_edge.thread
  %i.ep = icmp ne i16 %.sroa.0953.1.lcssa1134, 0
  br label %._crit_edge1055

._crit_edge1055:                                  ; preds = %._crit_edge1055.loopexit, %.split.us
  %.sroa.0953.0.lcssa = phi i1 [ false, %.split.us ], [ %i.ep, %._crit_edge1055.loopexit ]
  %.sroa.0959.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0959.1.lcssa1135, %._crit_edge1055.loopexit ] ; 3 uses
  %.sroa.0962.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0962.1.lcssa1136, %._crit_edge1055.loopexit ] ; 3 uses
  %i.eq = fcmp one <16 x float> %.sroa.0962.0.lcssa, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16
  %.not = icmp eq i16 %i.er, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.c:                                             ; preds = %.lr.ph1054, %._crit_edge.thread
  %.07161052 = phi i64 [ 0, %.lr.ph1054 ], [ %i.aiq, %._crit_edge.thread ] ; 3 uses
  %.sroa.0962.01051 = phi <16 x float> [ zeroinitializer, %.lr.ph1054 ], [ %.sroa.0962.1.lcssa1136, %._crit_edge.thread ] ; 2 uses
  %.sroa.0959.01050 = phi <16 x float> [ zeroinitializer, %.lr.ph1054 ], [ %.sroa.0959.1.lcssa1135, %._crit_edge.thread ] ; 2 uses
  %.sroa.0953.01049 = phi i16 [ 0, %.lr.ph1054 ], [ %.sroa.0953.1.lcssa1134, %._crit_edge.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.07161052 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !110 ; 2 uses
  %i.ev = load ptr, ptr %i.cw, align 8, !tbaa !112 ; 2 uses
  %i.ew = load ptr, ptr %i.cx, align 8, !tbaa !115
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %.07161052 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !83 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ex, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !83
  %i.fb = load i32, ptr %i.es, align 4, !tbaa !117 ; 3 uses
  %i.fc = sext i32 %i.fb to i64                   ; 4 uses
  %i.fd = load i64, ptr %8, align 8
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fc
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !48
  %i.fh = load i64, ptr %9, align 8
  %i.fi = inttoptr i64 %i.fh to ptr               ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fc
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !48
  %i.fl = load i64, ptr %10, align 8
  %i.fm = inttoptr i64 %i.fl to ptr               ; 3 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fc
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !83
  %i.fp = load i64, ptr %11, align 8
  %i.fq = inttoptr i64 %i.fp to ptr               ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !83
  %.sroa.01087.0.vec.insert = insertelement <16 x i32> poison, i32 %i.fb, i64 0
  %.sroa.0.0.vec.insert = insertelement <16 x i32> poison, i32 %i.eu, i64 0
  %.sroa.01087.60.vec.insert = shufflevector <16 x i32> %.sroa.01087.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ft = sext i32 %i.ey to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.ft ; 4 uses
  %i.fv = sub nsw i32 %i.fa, %i.ey
  %i.fw = sext i32 %i.fv to i64
  %.not.i.i = icmp eq ptr %i.ev, null
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fw
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fx
  %i.fy = fmul float %i.ao, %i.fg
  %i.fz = fmul float %i.ao, %i.fk
  %i.ga = mul nsw i32 %i.fo, %2                   ; 2 uses
  %i.gb = mul nsw i32 %i.fs, %2                   ; 2 uses
  %i.gc = ptrtoint ptr %spec.select.i.i to i64
  %i.gd = ptrtoint ptr %i.fu to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 3                 ; 3 uses
  %i.gg = icmp sgt i64 %i.gf, 0
  br i1 %i.gg, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.gh = sext i32 %i.eu to i64
  %i.gi = getelementptr inbounds [12 x i8], ptr %4, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !48
  %i.gl = mul nsw i32 %i.fb, 3
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !48
  %i.gq = fadd float %i.gk, %i.gp
  %i.gr = load <2 x float>, ptr %i.gi, align 4, !tbaa !48
  %i.gs = load <2 x float>, ptr %i.gn, align 4, !tbaa !48
  %i.gt = fadd <2 x float> %i.gr, %i.gs           ; 2 uses
  %i.gu = load i64, ptr %6, align 8
  %i.gv = inttoptr i64 %i.gu to ptr               ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gt, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gx = shufflevector <2 x float> %i.gt, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gy = insertelement <16 x float> poison, float %i.gq, i64 0
  %i.gz = shufflevector <16 x float> %i.gy, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %bb.aa
  br i1 %.1718, label %bb.ab, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.aa
  %.07171040 = phi i1 [ false, %.lr.ph ], [ %.1718, %bb.aa ]
  %.07211039 = phi i64 [ 0, %.lr.ph ], [ %i.zx, %bb.aa ] ; 3 uses
  %.sroa.0962.11038 = phi <16 x float> [ %.sroa.0962.01051, %.lr.ph ], [ %.sroa.0962.7, %bb.aa ] ; 3 uses
  %.sroa.0959.11037 = phi <16 x float> [ %.sroa.0959.01050, %.lr.ph ], [ %.sroa.0959.5, %bb.aa ] ; 3 uses
  %.sroa.0953.11036 = phi i16 [ %.sroa.0953.01049, %.lr.ph ], [ %.sroa.0953.3, %bb.aa ] ; 3 uses
  %.sroa.0946.01035 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0946.6, %bb.aa ] ; 3 uses
  %.sroa.0944.01034 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0944.4, %bb.aa ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE2ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %i.rb = fadd float %i.qv, %i.ra
  store float %i.rb, ptr %i.qz, align 4, !tbaa !48
  br label %.thread820

.thread820:                                       ; preds = %.split.us, %bb.ac, %bb.ab
  %.0512.lcssa777823 = phi i1 [ %i.dr, %bb.ab ], [ %i.dr, %bb.ac ], [ false, %.split.us ]
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !112 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !125
  %i.rg = getelementptr inbounds i8, ptr %i.rf, i64 -4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !83
  %i.ri = sext i32 %i.rh to i64
  %.not.i.i564 = icmp eq ptr %i.rd, null
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.ri
  %spec.select.i.i565 = select i1 %.not.i.i564, ptr null, ptr %i.rj
  %i.rk = ptrtoint ptr %spec.select.i.i565 to i64
  %i.rl = ptrtoint ptr %i.rd to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = lshr exact i64 %i.rm, 3
  %i.ro = mul i64 %i.rn, 150
  %i.rp = add i64 %i.f, %i.ro
  %i.rq = trunc i64 %i.rp to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.rq)
  %or.cond624 = select i1 %i.bg, i1 %.0512.lcssa777823, i1 false
  br i1 %or.cond624, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %.thread820
  %i.rr = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.ae unwind label %.thread615

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.af unwind label %.thread620

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !74
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE2ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.rs, align 8, !tbaa !129
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !129
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !83
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.rr, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr %i.rr, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #22
          to label %bb.al unwind label %bb.ah

.thread615:                                       ; preds = %bb.ad
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread620:                                       ; preds = %bb.ae
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i1 [ false, %bb.ag ], [ true, %bb.af ]
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #23
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0, label %bb.ai, label %bb.aj

.sink.split:                                      ; preds = %.thread615, %.thread620
  %.pn.pn619.ph = phi { ptr, i32 } [ %i.ru, %.thread620 ], [ %i.rt, %.thread615 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ah
  %.pn.pn619 = phi { ptr, i32 } [ %i.rv, %bb.ah ], [ %.pn.pn619.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.rr) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.pn618 = phi { ptr, i32 } [ %.pn.pn619, %bb.ai ], [ %i.rv, %bb.ah ]
  resume { ptr, i32 } %.pn.pn618

bb.ak:                                            ; preds = %.thread820
  ret void

bb.al:                                            ; preds = %bb.ag
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE2ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.01046 = alloca float, align 4            ; 6 uses
  %.sroa.61047 = alloca float, align 4            ; 6 uses
  %.sroa.01043 = alloca float, align 4            ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 6 uses
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 7 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %.sroa.01039 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41040 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01035 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41036 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01031 = alloca <16 x float>, align 64    ; 5 uses
  %.sroa.51032 = alloca <16 x float>, align 64    ; 5 uses
  %.sroa.01027 = alloca <16 x float>, align 64    ; 5 uses
  %.sroa.5 = alloca <16 x float>, align 64        ; 5 uses
  %.sroa.01023 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41024 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01019 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41020 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.01015 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.41016 = alloca <16 x float>, align 64    ; 4 uses
  %.sroa.0 = alloca <16 x float>, align 64        ; 4 uses
  %.sroa.4 = alloca <16 x float>, align 64        ; 4 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = load i64, ptr %14, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !306  ; 2 uses
  %i.w = sitofp i32 %i.v to float                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !44
  %i.z = load float, ptr %i.t, align 4, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !307 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !308 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !99, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ true, %bb.a ], [ %i.ag, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !100 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !104 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = load float, ptr %i.an, align 8, !tbaa !185 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !184
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load float, ptr %i.ar, align 8, !tbaa !105 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = load float, ptr %i.at, align 8, !tbaa !109
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !108
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !148 ; 2 uses
  %i.az = fsub float %i.as, %i.ay                 ; 5 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fmul float %i.az, %i.ba                 ; 2 uses
  %i.bc = fmul float %i.az, %i.bb                 ; 3 uses
  %i.bd = fmul float %i.az, %i.bc                 ; 2 uses
  %i.be = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bc, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bd, i64 2
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bi = fdiv <4 x float> <float -1.000000e+01, float 1.500000e+01, float -6.000000e+00, float -3.000000e+01>, %i.bh ; 4 uses
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bd, i64 1
  %i.bl = fdiv <2 x float> <float 6.000000e+01, float -3.000000e+01>, %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 17
  %switch.cast = trunc i32 %i.bm to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bo = select i1 %i.bn, i1 %switch.masked, i1 false ; 2 uses
  %i.bp = fcmp olt float %i.am, %i.as
  %.val = load float, ptr %i.ar, align 8
  %.val1011 = load float, ptr %i.al, align 8
  %24 = select i1 %i.bp, float %.val, float %.val1011 ; 2 uses
  %i.bq = fmul float %24, %24
  %i.br = fsub <2 x float> splat (float 1.000000e+00), %i.r ; 7 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 5 uses
  %i.bt = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01046)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61047)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01043)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.bu = icmp eq i32 %i.v, 2
  %i.bv = fsub float 1.000000e+00, %i.bt          ; 4 uses
  br i1 %i.bu, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  store float %i.bv, ptr %.sroa.01046, align 4, !tbaa !48
  %i.bw = fsub float 1.000000e+00, %i.bs
  store float %i.bw, ptr %.sroa.01043, align 4, !tbaa !48
  store float %i.bt, ptr %.sroa.61047, align 4, !tbaa !48
  %i.bx = insertelement <4 x float> poison, float %i.w, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = fdiv <4 x float> %i.by, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  store float %i.bs, ptr %.sroa.6, align 4, !tbaa !48
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.ca = fmul float %i.bv, %i.bv
  store float %i.ca, ptr %.sroa.01046, align 4, !tbaa !48
  %i.cb = insertelement <2 x float> poison, float %i.w, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fdiv nnan <4 x float> %i.cc, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  %i.ce = fsub float 1.000000e+00, %i.bs          ; 3 uses
  %i.cf = fmul float %i.ce, %i.ce
  store float %i.cf, ptr %.sroa.01043, align 4, !tbaa !48
  %foldExtExtBinop = fmul <2 x float> %i.br, %i.br
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.cg, ptr %.sroa.61047, align 4, !tbaa !48
  %i.ch = fmul float %i.bs, %i.bs
  store float %i.ch, ptr %.sroa.6, align 4, !tbaa !48
  %i.ci = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.ce, i64 1
  %i.ck = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cm = fmul <4 x float> %i.cd, %i.cl
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %i.cn = phi <4 x float> [ %i.cm, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bz, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !101   ; 4 uses
  %i.cp = icmp sgt i64 %i.n, 0
  br i1 %i.cp, label %.lr.ph934, label %._crit_edge935

.lr.ph934:                                        ; preds = %.split.us
  %i.cq = udiv exact i64 %i.n, 12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !112 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !115
  %.not.i.i = icmp eq ptr %i.cs, null
  %i.cv = load i64, ptr %8, align 8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = load i64, ptr %9, align 8
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load i64, ptr %10, align 8
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  %i.db = load i64, ptr %11, align 8
  %i.dc = inttoptr i64 %i.db to ptr               ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.df = load i64, ptr %6, align 8
  %i.dg = inttoptr i64 %i.df to ptr               ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dj = insertelement <16 x float> poison, float %i.bq, i64 0
  %i.dk = shufflevector <16 x float> %i.dj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dm = insertelement <16 x float> poison, float %i.am, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.do = insertelement <16 x float> poison, float %i.ao, i64 0
  %i.dp = shufflevector <16 x float> %i.do, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul float %i.ao, 2.000000e+00
  %i.dt = insertelement <16 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <16 x float> %i.dt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dv = insertelement <16 x float> poison, float %i.as, i64 0
  %i.dw = shufflevector <16 x float> %i.dv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dx = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.dy = shufflevector <16 x float> %i.dx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dz = insertelement <16 x float> poison, float %i.au, i64 0
  %i.ea = shufflevector <16 x float> %i.dz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eb = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.ec = shufflevector <16 x float> %i.eb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ed = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ee = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ef = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.eg = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.eh = shufflevector <2 x float> %i.bl, <2 x float> poison, <16 x i32> zeroinitializer
  %i.ei = shufflevector <2 x float> %i.bl, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ej = fmul float %i.am, %i.am
  %i.ek = insertelement <16 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <16 x float> %i.ek, <16 x float> poison, <16 x i32> zeroinitializer
  %i.em = load i64, ptr %18, align 8
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load i64, ptr %19, align 8
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = shufflevector <2 x float> %i.br, <2 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.er = shufflevector <2 x float> %i.br, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.es = shufflevector <4 x float> %i.cn, <4 x float> poison, <16 x i32> zeroinitializer
  %i.et = shufflevector <4 x float> %i.cn, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.eu = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ev = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ew = shufflevector <4 x float> %i.cn, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ex = shufflevector <4 x float> %i.cn, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %.sroa.5.0..sroa_idx1028 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.51032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %bb.c

._crit_edge935.loopexit:                          ; preds = %._crit_edge.thread
  %i.ey = icmp ne i16 %.sroa.0847.1.lcssa1006, 0
  br label %._crit_edge935

._crit_edge935:                                   ; preds = %._crit_edge935.loopexit, %.split.us
  %.sroa.0847.0.lcssa = phi i1 [ false, %.split.us ], [ %i.ey, %._crit_edge935.loopexit ]
  %.sroa.0851.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0851.1.lcssa1007, %._crit_edge935.loopexit ] ; 3 uses
  %.sroa.0854.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0854.1.lcssa1008, %._crit_edge935.loopexit ] ; 3 uses
  %i.ez = fcmp one <16 x float> %.sroa.0854.0.lcssa, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16
  %.not = icmp eq i16 %i.fa, 0
  br i1 %.not, label %bb.ab, label %bb.aa

bb.c:                                             ; preds = %.lr.ph934, %._crit_edge.thread
  %.0663932 = phi i64 [ 0, %.lr.ph934 ], [ %i.vg, %._crit_edge.thread ] ; 3 uses
  %.sroa.0854.0931 = phi <16 x float> [ zeroinitializer, %.lr.ph934 ], [ %.sroa.0854.1.lcssa1008, %._crit_edge.thread ] ; 2 uses
  %.sroa.0851.0930 = phi <16 x float> [ zeroinitializer, %.lr.ph934 ], [ %.sroa.0851.1.lcssa1007, %._crit_edge.thread ] ; 2 uses
  %.sroa.0847.0929 = phi i16 [ 0, %.lr.ph934 ], [ %.sroa.0847.1.lcssa1006, %._crit_edge.thread ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.0663932 ; 3 uses
  %i.fc = getelementptr [4 x i8], ptr %i.cu, i64 %.0663932 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !83 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fc, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !83
  %i.fg = load i32, ptr %i.fb, align 4, !tbaa !117 ; 3 uses
  %i.fh = sext i32 %i.fg to i64                   ; 4 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !48
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.fh
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !48
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fh
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !83
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.fh
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83
  %.sroa.0.0.vec.insert = insertelement <16 x i32> poison, i32 %i.fg, i64 0
  %.sroa.0.60.vec.insert = shufflevector <16 x i32> %.sroa.0.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fq = sext i32 %i.fd to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.fq ; 4 uses
  %i.fs = sub nsw i32 %i.ff, %i.fd
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ft
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fu
  %i.fv = fmul float %i.ak, %i.fj
  %i.fw = fmul float %i.ak, %i.fl
  %i.fx = mul nsw i32 %i.fn, %2                   ; 2 uses
  %i.fy = mul nsw i32 %i.fp, %2                   ; 2 uses
  %i.fz = ptrtoint ptr %spec.select.i.i to i64
  %i.ga = ptrtoint ptr %i.fr to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 3                 ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, 0
  br i1 %i.gd, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !110
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [12 x i8], ptr %4, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !48
  %i.gk = mul nsw i32 %i.fg, 3
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gl ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !48
  %i.gp = fadd float %i.gj, %i.go
  %i.gq = load <2 x float>, ptr %i.gh, align 4, !tbaa !48
  %i.gr = load <2 x float>, ptr %i.gm, align 4, !tbaa !48
  %i.gs = fadd <2 x float> %i.gq, %i.gr           ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gu = shufflevector <2 x float> %i.gs, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gv = insertelement <16 x float> poison, float %i.gp, i64 0
  %i.gw = shufflevector <16 x float> %i.gv, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %bb.y
  %i.gx = select i1 %.1665, i1 %i.ah, i1 false
  br i1 %i.gx, label %bb.z, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.y
  %.0664923 = phi i1 [ false, %.lr.ph ], [ %.1665, %bb.y ]
  %.0667922 = phi i64 [ 0, %.lr.ph ], [ %i.uf, %bb.y ] ; 3 uses
  %.sroa.0854.1921 = phi <16 x float> [ %.sroa.0854.0931, %.lr.ph ], [ %.sroa.0854.7, %bb.y ] ; 3 uses
  %.sroa.0851.1920 = phi <16 x float> [ %.sroa.0851.0930, %.lr.ph ], [ %.sroa.0851.5, %bb.y ] ; 3 uses
  %.sroa.0847.1919 = phi i16 [ %.sroa.0847.0929, %.lr.ph ], [ %.sroa.0847.3, %bb.y ] ; 3 uses
  %.sroa.0840.0918 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0840.6, %bb.y ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE1ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %i.ne = inttoptr i64 %i.nd to ptr
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !48
  %i.nh = fadd float %.1440.lcssa680, %i.ng
  store float %i.nh, ptr %i.nf, align 4, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge573
  %i.ni = fcmp une float %.1434.lcssa681, 0.000000e+00
  br i1 %i.ni, label %bb.y, label %.thread698

bb.y:                                             ; preds = %bb.x
  %i.nj = load i64, ptr %20, align 8
  %i.nk = inttoptr i64 %i.nj to ptr
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 12 ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !48
  %i.nn = fadd float %.1434.lcssa681, %i.nm
  store float %i.nn, ptr %i.nl, align 4, !tbaa !48
  br label %.thread698

.thread698:                                       ; preds = %.split.us, %bb.y, %bb.x
  %.0428.lcssa673701 = phi i1 [ %i.cy, %bb.x ], [ %i.cy, %bb.y ], [ false, %.split.us ]
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !112 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !125
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !83
  %i.nu = sext i32 %i.nt to i64
  %.not.i.i475 = icmp eq ptr %i.np, null
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nu
  %spec.select.i.i476 = select i1 %.not.i.i475, ptr null, ptr %i.nv
  %i.nw = ptrtoint ptr %spec.select.i.i476 to i64
  %i.nx = ptrtoint ptr %i.np to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = lshr exact i64 %i.ny, 3
  %i.oa = mul i64 %i.nz, 150
  %i.ob = add i64 %i.oa, %i.f
  %i.oc = trunc i64 %i.ob to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.oc)
  %or.cond534 = select i1 %i.bh, i1 %.0428.lcssa673701, i1 false
  br i1 %or.cond534, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %.thread698
  %i.od = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.aa unwind label %.thread525

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.ab unwind label %.thread530

bb.ab:                                            ; preds = %bb.aa
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !74
  %i.oe = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE1ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.oe, align 8, !tbaa !129
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !129
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !83
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.od, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr %i.od, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #22
          to label %bb.ah unwind label %bb.ad

.thread525:                                       ; preds = %bb.z
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread530:                                       ; preds = %bb.aa
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ]
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #23
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0, label %bb.ae, label %bb.af

.sink.split:                                      ; preds = %.thread525, %.thread530
  %.pn.pn529.ph = phi { ptr, i32 } [ %i.og, %.thread530 ], [ %i.of, %.thread525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %.pn.pn529 = phi { ptr, i32 } [ %i.oh, %bb.ad ], [ %.pn.pn529.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.od) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.pn528 = phi { ptr, i32 } [ %.pn.pn529, %bb.ae ], [ %i.oh, %bb.ad ]
  resume { ptr, i32 } %.pn.pn528

bb.ag:                                            ; preds = %.thread698
  ret void

bb.ah:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE2ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 7 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = load i64, ptr %14, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !306  ; 2 uses
  %i.w = sitofp i32 %i.v to float                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !44
  %i.z = load float, ptr %i.t, align 4, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !307 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !308 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !98, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !99, !range !42, !noundef !43
  %i.aj = trunc nuw i8 %i.ai to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.ak = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ]
  %i.al = phi i1 [ %i.aj, %bb.b ], [ true, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ao = load float, ptr %i.an, align 4, !tbaa !100 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !104 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.as = load float, ptr %i.ar, align 8, !tbaa !185 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.au = load float, ptr %i.at, align 4, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 8, !tbaa !105 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ba = load float, ptr %i.az, align 4, !tbaa !108
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !148 ; 2 uses
  %i.bd = fsub float %i.aw, %i.bc                 ; 5 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fmul float %i.bd, %i.be                 ; 2 uses
  %i.bg = fmul float %i.bd, %i.bf                 ; 3 uses
  %i.bh = fmul float %i.bd, %i.bg                 ; 2 uses
  %i.bi = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bg, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bh, i64 2
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bm = fdiv <4 x float> <float -1.000000e+01, float 1.500000e+01, float -6.000000e+00, float -3.000000e+01>, %i.bl ; 4 uses
  %i.bn = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bh, i64 1
  %i.bp = fdiv <2 x float> <float 6.000000e+01, float -3.000000e+01>, %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.am, align 8, !tbaa !183 ; 2 uses
  %i.br = icmp ult i32 %i.bq, 17
  %switch.cast = trunc i32 %i.bq to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bs = select i1 %i.br, i1 %switch.masked, i1 false ; 2 uses
  %i.bt = fcmp olt float %i.aq, %i.aw
  %.val = load float, ptr %i.av, align 8
  %.val1127 = load float, ptr %i.ap, align 8
  %24 = select i1 %i.bt, float %.val, float %.val1127 ; 2 uses
  %i.bu = fmul float %24, %24
  %i.bv = fsub <2 x float> splat (float 1.000000e+00), %i.r ; 7 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.bx = icmp eq i32 %i.v, 2
  %i.by = fsub float 1.000000e+00, %i.bw          ; 4 uses
  br i1 %i.bx, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %.thread
  %i.bz = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fdiv <4 x float> %i.ca, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %.thread
  %i.cc = fmul float %i.by, %i.by
  %i.cd = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fdiv nnan <4 x float> %i.ce, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  %i.cg = extractelement <2 x float> %i.bv, i64 1
  %i.ch = fsub float 1.000000e+00, %i.cg
  %foldExtExtBinop = fmul <2 x float> %i.bv, %i.bv
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cj = insertelement <4 x float> poison, float %i.by, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.ch, i64 1
  %i.cl = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = fmul <4 x float> %i.cf, %i.cm
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.6.0 = phi float [ %i.ci, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bw, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.01145.0 = phi float [ %i.cc, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.by, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.co = phi <4 x float> [ %i.cn, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.cb, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !101   ; 4 uses
  %i.cq = load ptr, ptr %16, align 8, !tbaa !103  ; 32 uses
  %i.cr = icmp sgt i64 %i.n, 0
  br i1 %i.cr, label %.lr.ph1043, label %._crit_edge1044

.lr.ph1043:                                       ; preds = %.split.us
  %i.cs = udiv exact i64 %i.n, 12
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cz = insertelement <16 x float> poison, float %i.bu, i64 0
  %i.da = shufflevector <16 x float> %i.cz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.db = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.dc = shufflevector <16 x float> %i.db, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = insertelement <16 x float> poison, float %i.as, i64 0
  %i.de = shufflevector <16 x float> %i.dd, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.df = insertelement <16 x float> poison, float %i.au, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dh = fmul float %i.as, 2.000000e+00
  %i.di = insertelement <16 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <16 x float> %i.di, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.dl = shufflevector <16 x float> %i.dk, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.dp = shufflevector <16 x float> %i.do, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dt = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.du = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.dw = shufflevector <2 x float> %i.bp, <2 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dx = shufflevector <2 x float> %i.bp, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dy = fmul float %i.aq, %i.aq
  %i.dz = insertelement <16 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <16 x float> %i.dz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eb = fmul float %i.as, -2.000000e+00
  %i.ec = insertelement <16 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <16 x float> %i.ec, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ee = shufflevector <2 x float> %i.bv, <2 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ef = shufflevector <2 x float> %i.bv, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.eg = shufflevector <4 x float> %i.co, <4 x float> poison, <16 x i32> zeroinitializer
  %i.eh = shufflevector <4 x float> %i.co, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ei = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ej = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.ek = shufflevector <4 x float> %i.co, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.el = shufflevector <4 x float> %i.co, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %.sroa.51136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.51140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.em = insertelement <16 x float> poison, float %.sroa.01145.0, i64 0
  %i.en = shufflevector <16 x float> %i.em, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eo = insertelement <16 x float> poison, float %.sroa.6.0, i64 0
  %i.ep = shufflevector <16 x float> %i.eo, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

._crit_edge1044.loopexit:                         ; preds = %._crit_edge.thread
  %i.eq = icmp ne i16 %.sroa.0942.1.lcssa1122, 0
  br label %._crit_edge1044

._crit_edge1044:                                  ; preds = %._crit_edge1044.loopexit, %.split.us
  %.sroa.0942.0.lcssa = phi i1 [ false, %.split.us ], [ %i.eq, %._crit_edge1044.loopexit ]
  %.sroa.0948.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0948.1.lcssa1123, %._crit_edge1044.loopexit ] ; 3 uses
  %.sroa.0951.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0951.1.lcssa1124, %._crit_edge1044.loopexit ] ; 3 uses
  %i.er = fcmp one <16 x float> %.sroa.0951.0.lcssa, zeroinitializer
  %i.es = bitcast <16 x i1> %i.er to i16
  %.not = icmp eq i16 %i.es, 0
  br i1 %.not, label %bb.aj, label %bb.ai

bb.c:                                             ; preds = %.lr.ph1043, %._crit_edge.thread
  %.07051041 = phi i64 [ 0, %.lr.ph1043 ], [ %i.alb, %._crit_edge.thread ] ; 3 uses
  %.sroa.0951.01040 = phi <16 x float> [ zeroinitializer, %.lr.ph1043 ], [ %.sroa.0951.1.lcssa1124, %._crit_edge.thread ] ; 2 uses
  %.sroa.0948.01039 = phi <16 x float> [ zeroinitializer, %.lr.ph1043 ], [ %.sroa.0948.1.lcssa1123, %._crit_edge.thread ] ; 2 uses
  %.sroa.0942.01038 = phi i16 [ 0, %.lr.ph1043 ], [ %.sroa.0942.1.lcssa1122, %._crit_edge.thread ] ; 2 uses
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.07051041 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !110 ; 2 uses
  %i.ew = load ptr, ptr %i.ct, align 8, !tbaa !112 ; 2 uses
  %i.ex = load ptr, ptr %i.cu, align 8, !tbaa !115
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %.07051041 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !83 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ey, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !83
  %i.fc = load i32, ptr %i.et, align 4, !tbaa !117 ; 3 uses
  %i.fd = sext i32 %i.fc to i64                   ; 4 uses
  %i.fe = load i64, ptr %8, align 8
  %i.ff = inttoptr i64 %i.fe to ptr               ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fd
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !48
  %i.fi = load i64, ptr %9, align 8
  %i.fj = inttoptr i64 %i.fi to ptr               ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fd
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !48
  %i.fm = load i64, ptr %10, align 8
  %i.fn = inttoptr i64 %i.fm to ptr               ; 3 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fd
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83
  %i.fq = load i64, ptr %11, align 8
  %i.fr = inttoptr i64 %i.fq to ptr               ; 3 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fd
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !83
  %.sroa.01076.0.vec.insert = insertelement <16 x i32> poison, i32 %i.fc, i64 0
  %.sroa.0.0.vec.insert = insertelement <16 x i32> poison, i32 %i.ev, i64 0
  %.sroa.01076.60.vec.insert = shufflevector <16 x i32> %.sroa.01076.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.fu = sext i32 %i.ez to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fu ; 4 uses
  %i.fw = sub nsw i32 %i.fb, %i.ez
  %i.fx = sext i32 %i.fw to i64
  %.not.i.i = icmp eq ptr %i.ew, null
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fx
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fy
  %i.fz = fmul float %i.ao, %i.fh
  %i.ga = fmul float %i.ao, %i.fl
  %i.gb = mul nsw i32 %i.fp, %2                   ; 2 uses
  %i.gc = mul nsw i32 %i.ft, %2                   ; 2 uses
  %i.gd = ptrtoint ptr %spec.select.i.i to i64
  %i.ge = ptrtoint ptr %i.fv to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3                 ; 3 uses
  %i.gh = icmp sgt i64 %i.gg, 0
  br i1 %i.gh, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.gi = sext i32 %i.ev to i64
  %i.gj = getelementptr inbounds [12 x i8], ptr %4, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !48
  %i.gm = mul nsw i32 %i.fc, 3
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.gn ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !48
  %i.gr = fadd float %i.gl, %i.gq
  %i.gs = load <2 x float>, ptr %i.gj, align 4, !tbaa !48
  %i.gt = load <2 x float>, ptr %i.go, align 4, !tbaa !48
  %i.gu = fadd <2 x float> %i.gs, %i.gt           ; 2 uses
  %i.gv = load i64, ptr %6, align 8
  %i.gw = inttoptr i64 %i.gv to ptr               ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gu, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gy = shufflevector <2 x float> %i.gu, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gz = insertelement <16 x float> poison, float %i.gr, i64 0
  %i.ha = shufflevector <16 x float> %i.gz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hb = load ptr, ptr %6, align 8               ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ad
  br i1 %.1707, label %bb.ae, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.ad
  %.07061029 = phi i1 [ false, %.lr.ph ], [ %.1707, %bb.ad ]
  %.07101028 = phi i64 [ 0, %.lr.ph ], [ %i.aci, %bb.ad ] ; 3 uses
  %.sroa.0951.11027 = phi <16 x float> [ %.sroa.0951.01040, %.lr.ph ], [ %.sroa.0951.7, %bb.ad ] ; 3 uses
  %.sroa.0948.11026 = phi <16 x float> [ %.sroa.0948.01039, %.lr.ph ], [ %.sroa.0948.5, %bb.ad ] ; 3 uses
  %.sroa.0942.11025 = phi i16 [ %.sroa.0942.01038, %.lr.ph ], [ %.sroa.0942.3, %bb.ad ] ; 3 uses
  %.sroa.0935.01024 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0935.6, %bb.ad ] ; 3 uses
  %.sroa.0933.01023 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0933.4, %bb.ad ] ; 3 uses
  %.sroa.0930.01022 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0930.2, %bb.ad ] ; 3 uses
  %.sroa.0927.01021 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0927.2, %bb.ad ] ; 3 uses
  %.sroa.0924.01020 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0924.2, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
end_hunk_2
begin_hunk_3_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE2ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  br i1 %exitcond686.not, label %._crit_edge667, label %.preheader621, !llvm.loop !466

bb.aa:                                            ; preds = %._crit_edge667
  %i.ot = load i64, ptr %20, align 8
  %i.ou = inttoptr i64 %i.ot to ptr
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !48
  %i.ox = fadd float %.1523.lcssa780, %i.ow
  store float %i.ox, ptr %i.ov, align 4, !tbaa !48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge667
  %i.oy = fcmp une float %.1517.lcssa781, 0.000000e+00
  br i1 %i.oy, label %bb.ac, label %.thread813

bb.ac:                                            ; preds = %bb.ab
  %i.oz = load i64, ptr %20, align 8
  %i.pa = inttoptr i64 %i.oz to ptr
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 12 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !48
  %i.pd = fadd float %.1517.lcssa781, %i.pc
  store float %i.pd, ptr %i.pb, align 4, !tbaa !48
  br label %.thread813

.thread813:                                       ; preds = %.split.us, %bb.ac, %bb.ab
  %.0511.lcssa770816 = phi i1 [ %i.dc, %bb.ab ], [ %i.dc, %bb.ac ], [ false, %.split.us ]
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !112 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !125
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 -4
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !83
  %i.pk = sext i32 %i.pj to i64
  %.not.i.i563 = icmp eq ptr %i.pf, null
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pk
  %spec.select.i.i564 = select i1 %.not.i.i563, ptr null, ptr %i.pl
  %i.pm = ptrtoint ptr %spec.select.i.i564 to i64
  %i.pn = ptrtoint ptr %i.pf to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = lshr exact i64 %i.po, 3
  %i.pq = mul i64 %i.pp, 150
  %i.pr = add i64 %i.f, %i.pq
  %i.ps = trunc i64 %i.pr to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.ps)
  %or.cond620 = select i1 %i.bk, i1 %.0511.lcssa770816, i1 false
  br i1 %or.cond620, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %.thread813
  %i.pt = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.ae unwind label %.thread611

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.af unwind label %.thread616

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !74
  %i.pu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE2ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.pu, align 8, !tbaa !129
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !129
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !83
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.pt, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr %i.pt, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #22
          to label %bb.al unwind label %bb.ah

.thread611:                                       ; preds = %bb.ad
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread616:                                       ; preds = %bb.ae
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i1 [ false, %bb.ag ], [ true, %bb.af ]
  %i.px = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #23
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0, label %bb.ai, label %bb.aj

.sink.split:                                      ; preds = %.thread611, %.thread616
  %.pn.pn615.ph = phi { ptr, i32 } [ %i.pw, %.thread616 ], [ %i.pv, %.thread611 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ah
  %.pn.pn615 = phi { ptr, i32 } [ %i.px, %bb.ah ], [ %.pn.pn615.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.pt) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.pn614 = phi { ptr, i32 } [ %.pn.pn615, %bb.ai ], [ %i.px, %bb.ah ]
  resume { ptr, i32 } %.pn.pn614

bb.ak:                                            ; preds = %.thread813
  ret void

bb.al:                                            ; preds = %bb.ag
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE2ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 7 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = load i64, ptr %14, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !306  ; 2 uses
  %i.w = sitofp i32 %i.v to float                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !44
  %i.z = load float, ptr %i.t, align 4, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !307 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !308 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !99, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ true, %bb.a ], [ %i.ag, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !100 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !104 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = load float, ptr %i.an, align 8, !tbaa !185 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !184
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load float, ptr %i.ar, align 8, !tbaa !105 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = load float, ptr %i.at, align 8, !tbaa !109
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !108
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !148 ; 2 uses
  %i.az = fsub float %i.as, %i.ay                 ; 5 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fmul float %i.az, %i.ba                 ; 2 uses
  %i.bc = fmul float %i.az, %i.bb                 ; 3 uses
  %i.bd = fmul float %i.az, %i.bc                 ; 2 uses
  %i.be = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bc, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bd, i64 2
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bi = fdiv <4 x float> <float -1.000000e+01, float 1.500000e+01, float -6.000000e+00, float -3.000000e+01>, %i.bh ; 4 uses
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bd, i64 1
  %i.bl = fdiv <2 x float> <float 6.000000e+01, float -3.000000e+01>, %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 17
  %switch.cast = trunc i32 %i.bm to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bo = select i1 %i.bn, i1 %switch.masked, i1 false ; 2 uses
  %i.bp = fcmp olt float %i.am, %i.as
  %.val = load float, ptr %i.ar, align 8
  %.val999 = load float, ptr %i.al, align 8
  %24 = select i1 %i.bp, float %.val, float %.val999 ; 2 uses
  %i.bq = fmul float %24, %24
  %i.br = fsub <2 x float> splat (float 1.000000e+00), %i.r ; 7 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  %i.bt = icmp eq i32 %i.v, 2
  %i.bu = fsub float 1.000000e+00, %i.bs          ; 4 uses
  br i1 %i.bt, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bv = insertelement <4 x float> poison, float %i.w, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fdiv <4 x float> %i.bw, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.by = fmul float %i.bu, %i.bu
  %i.bz = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fdiv nnan <4 x float> %i.ca, <float -6.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00>
  %i.cc = extractelement <2 x float> %i.br, i64 1
  %i.cd = fsub float 1.000000e+00, %i.cc
  %foldExtExtBinop = fmul <2 x float> %i.br, %i.br
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cf = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cd, i64 1
  %i.ch = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cj = fmul <4 x float> %i.cb, %i.ci
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.6.0 = phi float [ %i.ce, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bs, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.01017.0 = phi float [ %i.by, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bu, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.ck = phi <4 x float> [ %i.cj, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bx, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !101   ; 4 uses
  %i.cm = icmp sgt i64 %i.n, 0
  br i1 %i.cm, label %.lr.ph923, label %._crit_edge924

.lr.ph923:                                        ; preds = %.split.us
  %i.cn = udiv exact i64 %i.n, 12
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !115
  %.not.i.i = icmp eq ptr %i.cp, null
  %i.cs = load i64, ptr %8, align 8
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = load i64, ptr %9, align 8
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = load i64, ptr %10, align 8
  %i.cx = inttoptr i64 %i.cw to ptr               ; 3 uses
  %i.cy = load i64, ptr %11, align 8
  %i.cz = inttoptr i64 %i.cy to ptr               ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.dc = load i64, ptr %6, align 8
  %i.dd = inttoptr i64 %i.dc to ptr               ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dg = insertelement <16 x float> poison, float %i.bq, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.dj = insertelement <16 x float> poison, float %i.am, i64 0
  %i.dk = shufflevector <16 x float> %i.dj, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = insertelement <16 x float> poison, float %i.ao, i64 0
  %i.dm = shufflevector <16 x float> %i.dl, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dn = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.do = shufflevector <16 x float> %i.dn, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dp = fmul float %i.ao, 2.000000e+00
  %i.dq = insertelement <16 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = insertelement <16 x float> poison, float %i.as, i64 0
  %i.dt = shufflevector <16 x float> %i.ds, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.du = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.dv = shufflevector <16 x float> %i.du, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dw = insertelement <16 x float> poison, float %i.au, i64 0
  %i.dx = shufflevector <16 x float> %i.dw, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dy = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.dz = shufflevector <16 x float> %i.dy, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ea = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.eb = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ee = shufflevector <2 x float> %i.bl, <2 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ef = shufflevector <2 x float> %i.bl, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.eg = fmul float %i.am, %i.am
  %i.eh = insertelement <16 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <16 x float> %i.eh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ej = load i64, ptr %18, align 8
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i64, ptr %19, align 8
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = shufflevector <2 x float> %i.br, <2 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eo = shufflevector <2 x float> %i.br, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ep = shufflevector <4 x float> %i.ck, <4 x float> poison, <16 x i32> zeroinitializer
  %i.eq = shufflevector <4 x float> %i.ck, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.er = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.es = shufflevector <2 x float> %i.r, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.et = shufflevector <4 x float> %i.ck, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.eu = shufflevector <4 x float> %i.ck, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %.sroa.51008.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.51012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ev = insertelement <16 x float> poison, float %.sroa.01017.0, i64 0
  %i.ew = shufflevector <16 x float> %i.ev, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ex = insertelement <16 x float> poison, float %.sroa.6.0, i64 0
  %i.ey = shufflevector <16 x float> %i.ex, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

._crit_edge924.loopexit:                          ; preds = %._crit_edge.thread
  %i.ez = icmp ne i16 %.sroa.0836.1.lcssa994, 0
  br label %._crit_edge924

._crit_edge924:                                   ; preds = %._crit_edge924.loopexit, %.split.us
  %.sroa.0836.0.lcssa = phi i1 [ false, %.split.us ], [ %i.ez, %._crit_edge924.loopexit ]
  %.sroa.0840.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0840.1.lcssa995, %._crit_edge924.loopexit ] ; 3 uses
  %.sroa.0843.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0843.1.lcssa996, %._crit_edge924.loopexit ] ; 3 uses
  %i.fa = fcmp one <16 x float> %.sroa.0843.0.lcssa, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %.not = icmp eq i16 %i.fb, 0
  br i1 %.not, label %bb.ae, label %bb.ad

bb.c:                                             ; preds = %.lr.ph923, %._crit_edge.thread
  %.0652921 = phi i64 [ 0, %.lr.ph923 ], [ %i.xr, %._crit_edge.thread ] ; 3 uses
  %.sroa.0843.0920 = phi <16 x float> [ zeroinitializer, %.lr.ph923 ], [ %.sroa.0843.1.lcssa996, %._crit_edge.thread ] ; 2 uses
  %.sroa.0840.0919 = phi <16 x float> [ zeroinitializer, %.lr.ph923 ], [ %.sroa.0840.1.lcssa995, %._crit_edge.thread ] ; 2 uses
  %.sroa.0836.0918 = phi i16 [ 0, %.lr.ph923 ], [ %.sroa.0836.1.lcssa994, %._crit_edge.thread ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.0652921 ; 3 uses
  %i.fd = getelementptr [4 x i8], ptr %i.cr, i64 %.0652921 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !83 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fd, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !83
  %i.fh = load i32, ptr %i.fc, align 4, !tbaa !117 ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 4 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !48
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.fi
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !48
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.fi
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !83
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.fi
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !83
  %.sroa.0.0.vec.insert = insertelement <16 x i32> poison, i32 %i.fh, i64 0
  %.sroa.0.60.vec.insert = shufflevector <16 x i32> %.sroa.0.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fr = sext i32 %i.fe to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.fr ; 4 uses
  %i.ft = sub nsw i32 %i.fg, %i.fe
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fu
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fv
  %i.fw = fmul float %i.ak, %i.fk
  %i.fx = fmul float %i.ak, %i.fm
  %i.fy = mul nsw i32 %i.fo, %2                   ; 2 uses
  %i.fz = mul nsw i32 %i.fq, %2                   ; 2 uses
  %i.ga = ptrtoint ptr %spec.select.i.i to i64
  %i.gb = ptrtoint ptr %i.fs to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3                 ; 3 uses
  %i.ge = icmp sgt i64 %i.gd, 0
  br i1 %i.ge, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !110
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [12 x i8], ptr %4, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !48
  %i.gl = mul nsw i32 %i.fh, 3
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !48
  %i.gq = fadd float %i.gk, %i.gp
  %i.gr = load <2 x float>, ptr %i.gi, align 4, !tbaa !48
  %i.gs = load <2 x float>, ptr %i.gn, align 4, !tbaa !48
  %i.gt = fadd <2 x float> %i.gr, %i.gs           ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gv = shufflevector <2 x float> %i.gt, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gw = insertelement <16 x float> poison, float %i.gq, i64 0
  %i.gx = shufflevector <16 x float> %i.gw, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit878
  %i.gy = select i1 %.1654, i1 %i.ah, i1 false
  br i1 %i.gy, label %bb.ac, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %.loopexit878
  %.0653912 = phi i1 [ false, %.lr.ph ], [ %.1654, %.loopexit878 ]
  %.0656911 = phi i64 [ 0, %.lr.ph ], [ %i.wq, %.loopexit878 ] ; 3 uses
  %.sroa.0843.1910 = phi <16 x float> [ %.sroa.0843.0920, %.lr.ph ], [ %.sroa.0843.7, %.loopexit878 ] ; 3 uses
  %.sroa.0840.1909 = phi <16 x float> [ %.sroa.0840.0919, %.lr.ph ], [ %.sroa.0840.5, %.loopexit878 ] ; 3 uses
  %.sroa.0836.1908 = phi i16 [ %.sroa.0836.0918, %.lr.ph ], [ %.sroa.0836.3, %.loopexit878 ] ; 3 uses
  %.sroa.0829.0907 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0829.6, %.loopexit878 ] ; 3 uses
  %.sroa.0827.0906 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0827.4, %.loopexit878 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
end_hunk_3
