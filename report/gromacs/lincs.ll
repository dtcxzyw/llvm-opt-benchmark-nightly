Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lincs?download=true
inline.NumInlined: 2108
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3gmxL13lincs_warningEP12gmx_domdec_tNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_P5t_pbciNS2_IKN12_GLOBAL__N_18AtomPairEEENS2_IKfEEfiPi:bb.a
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = inttoptr i64 %.0.val to ptr
  %.not = icmp eq ptr %3, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = inttoptr i64 %.0.val1 to ptr
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.o = load i32, ptr %7, align 4, !tbaa !25     ; 2 uses
  %i.p = icmp sgt i32 %i.o, %6
  br i1 %i.p, label %bb.l, label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !130  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.u = sext i32 %i.r to i64                     ; 3 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %1, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.t to i64                     ; 3 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %1, i64 %i.w ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef nonnull %i.v, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) ; 0 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %2, i64 %i.u
  %i.aa = getelementptr inbounds [12 x i8], ptr %2, i64 %i.w
  %i.ab = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.b) ; 0 uses
  %i.ac = load <2 x float>, ptr %i.a, align 8, !tbaa !127
  %.pre14 = load float, ptr %i.k, align 8, !tbaa !127
  %.pre15 = load float, ptr %i.b, align 8, !tbaa !127
  %.pre16 = load float, ptr %i.l, align 4, !tbaa !127
  %.pre17 = load float, ptr %i.m, align 8, !tbaa !127
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = load <2 x float>, ptr %i.v, align 4, !tbaa !127
  %i.ae = load <2 x float>, ptr %i.x, align 4, !tbaa !127
  %i.af = fsub <2 x float> %i.ad, %i.ae           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !127
  %i.ak = fsub float %i.ah, %i.aj                 ; 2 uses
  store <2 x float> %i.af, ptr %i.a, align 8, !tbaa !127
  store float %i.ak, ptr %i.k, align 8, !tbaa !127
  %i.al = getelementptr inbounds [12 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.am = getelementptr inbounds [12 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !127
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !127
  %i.ar = fsub float %i.ao, %i.aq                 ; 2 uses
  %i.as = load <2 x float>, ptr %i.al, align 4, !tbaa !127
  %i.at = load <2 x float>, ptr %i.am, align 4, !tbaa !127
  %i.au = fsub <2 x float> %i.as, %i.at           ; 3 uses
  store <2 x float> %i.au, ptr %i.b, align 8, !tbaa !127
  store float %i.ar, ptr %i.m, align 8, !tbaa !127
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ax = phi float [ %i.ar, %bb.d ], [ %.pre17, %bb.c ] ; 3 uses
  %i.ay = phi float [ %i.aw, %bb.d ], [ %.pre16, %bb.c ] ; 3 uses
  %i.az = phi float [ %i.av, %bb.d ], [ %.pre15, %bb.c ] ; 3 uses
  %i.ba = phi float [ %i.ak, %bb.d ], [ %.pre14, %bb.c ] ; 3 uses
  %i.bb = phi <2 x float> [ %i.af, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1 ; 3 uses
  %i.bd = fmul float %i.bc, %i.bc
  %i.be = extractelement <2 x float> %i.bb, i64 0 ; 3 uses
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bd)
  %i.bg = call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bf)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bg) ; 2 uses
  %i.bh = fmul float %i.ay, %i.ay
  %i.bi = call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bh)
  %i.bj = call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.bi)
  %sqrt.i.i40 = call noundef float @llvm.sqrt.f32(float %i.bj) ; 3 uses
  %i.bk = fmul float %i.bc, %i.ay
  %i.bl = call float @llvm.fmuladd.f32(float %i.be, float %i.az, float %i.bk)
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ax, float %i.bl)
  %i.bn = fmul float %sqrt.i.i, %sqrt.i.i40
  %i.bo = fdiv float %i.bm, %i.bn                 ; 2 uses
  %i.bp = fcmp olt float %i.bo, %i.f
  br i1 %i.bp, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.br = call noundef i32 @_Z8ddglatnrPK12gmx_domdec_ti(ptr noundef %0, i32 noundef %i.r)
  %i.bs = call noundef i32 @_Z8ddglatnrPK12gmx_domdec_ti(ptr noundef %0, i32 noundef %i.t)
  %i.bt = call noundef float @acosf(float noundef %i.bo) #19
  %i.bu = fpext float %i.bt to double
  %i.bv = fmul double %i.bu, f0x404CA5DC1A63C1F8
  %i.bw = fpext float %sqrt.i.i to double
  %i.bx = fpext float %sqrt.i.i40 to double
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !127
  %i.ca = fpext float %i.bz to double
  %i.cb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.37, i32 noundef %i.br, i32 noundef %i.bs, double noundef %i.bv, double noundef %i.bw, double noundef %i.bx, double noundef %i.ca) #41 ; 0 uses
  %i.cc = call float @llvm.fabs.f32(float %sqrt.i.i40)
  %i.cd = fcmp ueq float %i.cc, +inf
  br i1 %i.cd, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(60) @.str.18, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2368, ptr noundef nonnull @.str.38) #39
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.ce

bb.j:                                             ; preds = %bb.f
  %i.cf = load i32, ptr %7, align 4, !tbaa !25
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %7, align 4, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !476

bb.l:                                             ; preds = %._crit_edge
  call void @_ZN3gmx28too_many_constraint_warningsE19ConstraintAlgorithmi(i32 noundef 0, i32 noundef %i.o) #39
  unreachable

bb.m:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx15constrain_lincsEbRK10t_inputreclPNS_5LincsENS_8ArrayRefIKfEEP12gmx_domdec_tPK14gmx_multisim_tNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENSD_ISF_EENS5_ISF_EEPA3_S6_P5t_pbcbfPffSJ_bPA3_fNS_18ConstraintVariableEP6t_nrnbiPiP13gmx_wallcycle.omp_outlined.34(ptr noalias nofree readnone captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11) #27 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [144 x float], align 64           ; 12 uses
  %12 = alloca %"class.gmx::ArrayRef.345", align 8 ; 5 uses
  %i.b = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.b unwind label %bb.z       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !255, !noalias !501 ; 4 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !257    ; 4 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !261    ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !164
  %i.g = load ptr, ptr %6, align 8, !tbaa !95     ; 23 uses
  %i.h = load ptr, ptr %7, align 8, !tbaa !158    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !158
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %8, align 4, !tbaa !166    ; 2 uses
  %i.p = load i8, ptr %9, align 1, !tbaa !126, !range !16, !noundef !17
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %i.r = load i8, ptr %10, align 1, !tbaa !126, !range !16, !noundef !17
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = icmp eq i32 %i.b, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %11, align 8, !tbaa !162
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.w = sext i32 %i.b to i64                     ; 2 uses
  %.val = load ptr, ptr %i.v, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw [176 x i8], ptr %.val, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %i.y, %bb.d ], [ %i.u, %bb.c ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.aa = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 3 uses
  %.val100.i = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw [176 x i8], ptr %.val100.i, i64 %.pre-phi ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !120 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !121 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %.val101.i = load ptr, ptr %i.ag, align 8, !tbaa !125
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 3 uses
  %.not.i = icmp eq i32 %i.o, 4                   ; 6 uses
  %.sroa.038.0.in.v.i = select i1 %.not.i, i64 272, i64 248
  %.sroa.038.0.in.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.038.0.in.v.i
  %.sroa.039.0.in.v.i = select i1 %.not.i, i64 160, i64 136
  %.sroa.039.0.in.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.039.0.in.v.i
  %.sroa.039.0.i = load ptr, ptr %.sroa.039.0.in.i, align 8, !tbaa !110 ; 14 uses
  %.sroa.038.0.i = load ptr, ptr %.sroa.038.0.in.i, align 8, !tbaa !111 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !111 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !110 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !124
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110 ; 33 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !124
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  invoke void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef %i.f, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.bn = icmp slt i32 %i.ad, %i.af               ; 5 uses
  br i1 %i.bn, label %.lr.ph.i.i, label %_ZN3gmxL16calc_dr_x_f_simdEiiNS_8ArrayRefIKN12_GLOBAL__N_18AtomPairEEEPA3_KfS7_PS5_S8_PA3_fPfSB_.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ca = sext i32 %i.ad to i64
  %i.cb = sext i32 %i.af to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 6 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %.val101.i, i64 %indvars.iv.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = call <31 x i32> @llvm.masked.load.v31i32.p0(ptr align 4 %i.cc, <31 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <31 x i32> poison), !tbaa !129, !noalias !505
  %i.cf = shufflevector <31 x i32> %i.ce, <31 x i32> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cg = call <31 x i32> @llvm.masked.load.v31i32.p0(ptr nonnull align 4 %i.cd, <31 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <31 x i32> poison), !tbaa !130, !noalias !505
  %i.ch = shufflevector <31 x i32> %i.cg, <31 x i32> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ci = mul <16 x i32> %i.cf, splat (i32 3)     ; 6 uses
  %i.cj = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.c, <16 x i32> %i.ci, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.ck = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bo, <16 x i32> %i.ci, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.cl = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bp, <16 x i32> %i.ci, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.cm = mul <16 x i32> %i.ch, splat (i32 3)     ; 6 uses
  %i.cn = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.c, <16 x i32> %i.cm, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.co = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bo, <16 x i32> %i.cm, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.cp = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bp, <16 x i32> %i.cm, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.cq = fsub <16 x float> %i.cj, %i.cn
  %i.cr = fsub <16 x float> %i.ck, %i.co
  %i.cs = fsub <16 x float> %i.cl, %i.cp          ; 2 uses
  %.val72.i.i.i = load <16 x float>, ptr %i.a, align 64, !tbaa !105, !noalias !505
  %i.ct = fmul <16 x float> %i.cs, %.val72.i.i.i
  %i.cu = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ct, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %.val71.i.i.i = load <16 x float>, ptr %i.bq, align 64, !tbaa !105, !noalias !505
  %i.cv = fmul <16 x float> %i.cu, %.val71.i.i.i
  %i.cw = fsub <16 x float> %i.cq, %i.cv
  %.val70.i.i.i = load <16 x float>, ptr %i.br, align 64, !tbaa !105, !noalias !505
  %i.cx = fmul <16 x float> %i.cu, %.val70.i.i.i
  %i.cy = fsub <16 x float> %i.cr, %i.cx          ; 2 uses
  %.val69.i.i.i = load <16 x float>, ptr %i.bs, align 64, !tbaa !105, !noalias !505
  %i.cz = fmul <16 x float> %i.cu, %.val69.i.i.i
  %i.da = fsub <16 x float> %i.cs, %i.cz          ; 3 uses
  %.val68.i.i.i = load <16 x float>, ptr %i.bt, align 64, !tbaa !105, !noalias !505
  %i.db = fmul <16 x float> %i.cy, %.val68.i.i.i
  %i.dc = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.db, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %.val67.i.i.i = load <16 x float>, ptr %i.bu, align 64, !tbaa !105, !noalias !505
  %i.dd = fmul <16 x float> %i.dc, %.val67.i.i.i
  %i.de = fsub <16 x float> %i.cw, %i.dd          ; 2 uses
  %.val66.i.i.i = load <16 x float>, ptr %i.bv, align 64, !tbaa !105, !noalias !505
  %i.df = fmul <16 x float> %i.dc, %.val66.i.i.i
  %i.dg = fsub <16 x float> %i.cy, %i.df          ; 3 uses
  %.val65.i.i.i = load <16 x float>, ptr %i.bw, align 64, !tbaa !105, !noalias !505
  %i.dh = fmul <16 x float> %i.de, %.val65.i.i.i
  %i.di = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dh, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4)
  %.val.i.i.i = load <16 x float>, ptr %i.bx, align 64, !tbaa !105, !noalias !505
  %i.dj = fmul <16 x float> %i.di, %.val.i.i.i
  %i.dk = fsub <16 x float> %i.de, %i.dj          ; 3 uses
  %i.dl = fmul <16 x float> %i.dk, %i.dk
  %i.dm = fmul <16 x float> %i.dg, %i.dg
  %i.dn = fadd <16 x float> %i.dm, %i.dl
  %i.do = fmul <16 x float> %i.da, %i.da
  %i.dp = fadd <16 x float> %i.do, %i.dn          ; 2 uses
  %i.dq = call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.dp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.dr = fmul <16 x float> %i.dq, %i.dp
  %i.ds = fmul <16 x float> %i.dq, splat (float -5.000000e-01)
  %i.dt = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dr, <16 x float> %i.dq, <16 x float> splat (float -3.000000e+00))
  %i.du = fmul <16 x float> %i.ds, %i.dt          ; 3 uses
  %i.dv = fmul <16 x float> %i.dk, %i.du          ; 2 uses
  %i.dw = fmul <16 x float> %i.dg, %i.du          ; 2 uses
  %i.dx = fmul <16 x float> %i.da, %i.du          ; 2 uses
  %i.dy = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv.i.i ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.dy, <16 x i1> splat (i1 true), <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>, <16 x float> %i.dv, i32 4), !noalias !506
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.dz, <16 x i1> splat (i1 true), <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>, <16 x float> %i.dw, i32 4), !noalias !506
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.ea, <16 x i1> splat (i1 true), <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>, <16 x float> %i.dx, i32 4), !noalias !506
  %i.eb = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.d, <16 x i32> %i.ci, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.ec = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.by, <16 x i32> %i.ci, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.ed = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bz, <16 x i32> %i.ci, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.ee = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.d, <16 x i32> %i.cm, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.ef = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.by, <16 x i32> %i.cm, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.eg = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bz, <16 x i32> %i.cm, <16 x i1> splat (i1 true), i32 4), !noalias !506
  %i.eh = fsub <16 x float> %i.eb, %i.ee
  %i.ei = fsub <16 x float> %i.ec, %i.ef
  %i.ej = fsub <16 x float> %i.ed, %i.eg
  %i.ek = fmul <16 x float> %i.dv, %i.eh
  %i.el = fmul <16 x float> %i.dw, %i.ei
  %i.em = fadd <16 x float> %i.ek, %i.el
  %i.en = fmul <16 x float> %i.dx, %i.ej
  %i.eo = fadd <16 x float> %i.en, %i.em
  %i.ep = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.i.i
  %.val82.i.i = load <16 x float>, ptr %i.ep, align 64, !tbaa !105, !alias.scope !502, !noalias !507
  %i.eq = fmul <16 x float> %.val82.i.i, %i.eo    ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  store <16 x float> %i.eq, ptr %i.er, align 64, !tbaa !105, !alias.scope !503, !noalias !508
  %i.es = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  store <16 x float> %i.eq, ptr %i.es, align 64, !tbaa !105, !alias.scope !504, !noalias !509
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 16 ; 2 uses
  %i.et = icmp slt i64 %indvars.iv.next.i.i, %i.cb
  br i1 %i.et, label %bb.f, label %_ZN3gmxL16calc_dr_x_f_simdEiiNS_8ArrayRefIKN12_GLOBAL__N_18AtomPairEEEPA3_KfS7_PS5_S8_PA3_fPfSB_.exit.i, !llvm.loop !486

_ZN3gmxL16calc_dr_x_f_simdEiiNS_8ArrayRefIKN12_GLOBAL__N_18AtomPairEEEPA3_KfS7_PS5_S8_PA3_fPfSB_.exit.i: ; preds = %bb.f, %.noexc
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !93, !range !16, !noundef !17
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3gmxL16calc_dr_x_f_simdEiiNS_8ArrayRefIKN12_GLOBAL__N_18AtomPairEEEPA3_KfS7_PS5_S8_PA3_fPfSB_.exit.i
  call void @__kmpc_barrier(ptr nonnull @4, i32 %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3gmxL16calc_dr_x_f_simdEiiNS_8ArrayRefIKN12_GLOBAL__N_18AtomPairEEEPA3_KfS7_PS5_S8_PA3_fPfSB_.exit.i
  br i1 %i.bn, label %.lr.ph61.preheader.i, label %._crit_edge.i

.lr.ph61.preheader.i:                             ; preds = %bb.h
  %i.ex = sext i32 %i.ad to i64                   ; 2 uses
  %wide.trip.count81.i = sext i32 %i.af to i64
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ex
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !25
  br label %.lr.ph61.i

.loopexit58.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %.lr.ph61.i
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count81.i
  br i1 %exitcond82.not.i, label %._crit_edge.i, label %.lr.ph61.i, !llvm.loop !487

._crit_edge.i:                                    ; preds = %.loopexit58.i, %bb.h
  %.val98.i = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ey = getelementptr inbounds nuw [176 x i8], ptr %.val98.i, i64 %.pre-phi
  store ptr %i.ay, ptr %12, align 8, !tbaa !263
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.be, ptr %i.ez, align 8, !tbaa !263
  call fastcc void @_ZN3gmxL19lincs_matrix_expandERKNS_5LincsERKN12_GLOBAL__N_14TaskENS_8ArrayRefIKfEENS7_IfEESA_SA_(ptr noundef nonnull readonly align 8 dereferenceable(656) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %i.ey, ptr %i.ao, ptr %i.aq, ptr %i.aw, ptr noundef nonnull byval(%"class.gmx::ArrayRef.345") align 8 %12, i64 %i.bk)
  %i.fa = icmp eq i32 %i.o, 3
  %or.cond.i = and i1 %i.fa, %i.bn
  br i1 %or.cond.i, label %.lr.ph63.i, label %.loopexit57.i

.lr.ph63.i:                                       ; preds = %._crit_edge.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !110 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 5 uses
  %i.fe = sext i32 %i.ad to i64                   ; 4 uses
  %wide.trip.count86.i = sext i32 %i.af to i64    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx15constrain_lincsEbRK10t_inputreclPNS_5LincsENS_8ArrayRefIKfEEP12gmx_domdec_tPK14gmx_multisim_tNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENSD_ISF_EENS5_ISF_EEPA3_S6_P5t_pbcbfPffSJ_bPA3_fNS_18ConstraintVariableEP6t_nrnbiPiP13gmx_wallcycle.omp_outlined.34:bb.a

bb.j:                                             ; preds = %bb.i, %.prol.preheader54
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv83.i.prol
  store float 0.000000e+00, ptr %i.fn, align 4, !tbaa !127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next84.i.prol = add nsw i64 %indvars.iv83.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter56
  br i1 %prol.iter.cmp.not, label %.prol.loopexit55, label %.prol.preheader54, !llvm.loop !488

.prol.loopexit55:                                 ; preds = %bb.k, %.lr.ph63.i
  %indvars.iv83.i.unr = phi i64 [ %i.fe, %.lr.ph63.i ], [ %indvars.iv.next84.i.prol, %bb.k ]
  %i.fo = sub nsw i64 %i.fe, %wide.trip.count86.i
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %.loopexit57.i, label %.lr.ph63.i.new

.lr.ph61.i:                                       ; preds = %.loopexit58.i, %.lr.ph61.preheader.i
  %i.fq = phi i32 [ %.pre.i, %.lr.ph61.preheader.i ], [ %i.fs, %.loopexit58.i ] ; 2 uses
  %indvars.iv78.i = phi i64 [ %i.ex, %.lr.ph61.preheader.i ], [ %indvars.iv.next79.i, %.loopexit58.i ] ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv.next79.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !25 ; 3 uses
  %i.ft = icmp slt i32 %i.fq, %i.fs
  br i1 %i.ft, label %.lr.ph.i, label %.loopexit58.i

.lr.ph.i:                                         ; preds = %.lr.ph61.i
  %i.fu = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv78.i ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fx = sext i32 %i.fq to i64                   ; 7 uses
  %wide.trip.count.i = sext i32 %i.fs to i64      ; 3 uses
  %i.fy = sub nsw i64 %wide.trip.count.i, %i.fx
  %xtraiter = and i64 %i.fy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.fz = getelementptr inbounds [4 x i8], ptr %.sroa.038.0.i, i64 %i.fx
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !127
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fx
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !25
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.gd ; 3 uses
  %i.gf = load float, ptr %i.fu, align 4, !tbaa !127
  %i.gg = load float, ptr %i.ge, align 4, !tbaa !127
  %i.gh = load float, ptr %i.fv, align 4, !tbaa !127
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !127
  %i.gk = fmul float %i.gh, %i.gj
  %i.gl = call float @llvm.fmuladd.f32(float %i.gf, float %i.gg, float %i.gk)
  %i.gm = load float, ptr %i.fw, align 4, !tbaa !127
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !127
  %i.gp = call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.go, float %i.gl)
  %i.gq = fmul float %i.ga, %i.gp
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.fx
  store float %i.gq, ptr %i.gr, align 4, !tbaa !127
  %indvars.iv.next.i.prol = add nsw i64 %i.fx, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.fx, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.gs = add nsw i64 %wide.trip.count.i, -1
  %i.gt = icmp eq i64 %i.gs, %i.fx
  br i1 %i.gt, label %.loopexit58.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %.sroa.038.0.i, i64 %indvars.iv.i
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !127
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !25
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.gy ; 3 uses
  %i.ha = load float, ptr %i.fu, align 4, !tbaa !127
  %i.hb = load float, ptr %i.gz, align 4, !tbaa !127
  %i.hc = load float, ptr %i.fv, align 4, !tbaa !127
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !127
  %i.hf = fmul float %i.hc, %i.he
  %i.hg = call float @llvm.fmuladd.f32(float %i.ha, float %i.hb, float %i.hf)
  %i.hh = load float, ptr %i.fw, align 4, !tbaa !127
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !127
  %i.hk = call noundef float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.hg)
  %i.hl = fmul float %i.gv, %i.hk
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  store float %i.hl, ptr %i.hm, align 4, !tbaa !127
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %.sroa.038.0.i, i64 %indvars.iv.next.i
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !127
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv.next.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !25
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.hr ; 3 uses
  %i.ht = load float, ptr %i.fu, align 4, !tbaa !127
  %i.hu = load float, ptr %i.hs, align 4, !tbaa !127
  %i.hv = load float, ptr %i.fv, align 4, !tbaa !127
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !127
  %i.hy = fmul float %i.hv, %i.hx
  %i.hz = call float @llvm.fmuladd.f32(float %i.ht, float %i.hu, float %i.hy)
  %i.ia = load float, ptr %i.fw, align 4, !tbaa !127
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !127
  %i.id = call noundef float @llvm.fmuladd.f32(float %i.ia, float %i.ic, float %i.hz)
  %i.ie = fmul float %i.ho, %i.id
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !127
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit58.i, label %.lr.ph.i.new, !llvm.loop !489

.lr.ph63.i.new:                                   ; preds = %.prol.loopexit55, %bb.w
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.3, %bb.w ], [ %indvars.iv83.i.unr, %.prol.loopexit55 ] ; 7 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv83.i
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !127
  %i.ii = fcmp oeq float %i.ih, 0.000000e+00
  br i1 %i.ii, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph63.i.new
  %i.ij = load ptr, ptr %i.fd, align 8, !tbaa !110
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv83.i
  %i.il = load float, ptr %i.ik, align 4, !tbaa !127
  %i.im = fcmp oeq float %i.il, 0.000000e+00
  br i1 %i.im, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph63.i.new
  %i.in = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv83.i
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !127
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next84.i = add nsw i64 %indvars.iv83.i, 1 ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next84.i
  %i.ip = load float, ptr %i.io, align 4, !tbaa !127
  %i.iq = fcmp oeq float %i.ip, 0.000000e+00
  br i1 %i.iq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ir = load ptr, ptr %i.fd, align 8, !tbaa !110
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next84.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !127
  %i.iu = fcmp oeq float %i.it, 0.000000e+00
  br i1 %i.iu, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next84.i
  store float 0.000000e+00, ptr %i.iv, align 4, !tbaa !127
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next84.i.1 = add nsw i64 %indvars.iv83.i, 2 ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next84.i.1
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !127
  %i.iy = fcmp oeq float %i.ix, 0.000000e+00
  br i1 %i.iy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.iz = load ptr, ptr %i.fd, align 8, !tbaa !110
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.next84.i.1
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !127
  %i.jc = fcmp oeq float %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next84.i.1
  store float 0.000000e+00, ptr %i.jd, align 4, !tbaa !127
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next84.i.2 = add nsw i64 %indvars.iv83.i, 3 ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next84.i.2
  %i.jf = load float, ptr %i.je, align 4, !tbaa !127
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jh = load ptr, ptr %i.fd, align 8, !tbaa !110
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next84.i.2
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !127
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next84.i.2
  store float 0.000000e+00, ptr %i.jl, align 4, !tbaa !127
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next84.i.3 = add nsw i64 %indvars.iv83.i, 4 ; 2 uses
  %exitcond87.not.i.3 = icmp eq i64 %indvars.iv.next84.i.3, %wide.trip.count86.i
  br i1 %exitcond87.not.i.3, label %.loopexit57.i, label %.lr.ph63.i.new, !llvm.loop !490

.loopexit57.i:                                    ; preds = %.prol.loopexit55, %bb.w, %._crit_edge.i
  br i1 %i.bn, label %iter.check, label %._crit_edge67.i.thread

iter.check:                                       ; preds = %.loopexit57.i
  %i.jm = sext i32 %i.ad to i64                   ; 9 uses
  %wide.trip.count91.i = sext i32 %i.af to i64    ; 6 uses
  %i.jn = sub nsw i64 %wide.trip.count91.i, %i.jm ; 8 uses
  %min.iters.check = icmp ult i64 %i.jn, 8
  br i1 %min.iters.check, label %.lr.ph66.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jo = shl nsw i64 %i.jm, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.jo
  %i.jp = shl nsw i64 %wide.trip.count91.i, 2     ; 2 uses
  %scevgep36 = getelementptr i8, ptr %i.bg, i64 %i.jp
  %scevgep37 = getelementptr i8, ptr %.sroa.039.0.i, i64 %i.jo
  %scevgep38 = getelementptr i8, ptr %.sroa.039.0.i, i64 %i.jp
  %bound0 = icmp ult ptr %scevgep, %scevgep38
  %bound1 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph66.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check39 = icmp ult i64 %i.jn, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jq = and i64 %i.jn, 24
  %n.vec = and i64 %i.jn, -32                     ; 4 uses
  %i.jr = add nsw i64 %n.vec, %i.jm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.js = add i64 %index, %i.jm                   ; 2 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %i.js ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  %wide.load = load <8 x float>, ptr %i.jt, align 4, !tbaa !127, !alias.scope !510
  %wide.load40 = load <8 x float>, ptr %i.ju, align 4, !tbaa !127, !alias.scope !510
  %wide.load41 = load <8 x float>, ptr %i.jv, align 4, !tbaa !127, !alias.scope !510
  %wide.load42 = load <8 x float>, ptr %i.jw, align 4, !tbaa !127, !alias.scope !510
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.js ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 64 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 96 ; 2 uses
  %wide.load43 = load <8 x float>, ptr %i.jx, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %wide.load44 = load <8 x float>, ptr %i.jy, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %wide.load45 = load <8 x float>, ptr %i.jz, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %wide.load46 = load <8 x float>, ptr %i.ka, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %i.kb = fmul <8 x float> %wide.load, %wide.load43
  %i.kc = fmul <8 x float> %wide.load40, %wide.load44
  %i.kd = fmul <8 x float> %wide.load41, %wide.load45
  %i.ke = fmul <8 x float> %wide.load42, %wide.load46
  store <8 x float> %i.kb, ptr %i.jx, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  store <8 x float> %i.kc, ptr %i.jy, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  store <8 x float> %i.kd, ptr %i.jz, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  store <8 x float> %i.ke, ptr %i.ka, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jn, %n.vec
  br i1 %cmp.n, label %._crit_edge67.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.i.preheader, label %vec.epilog.ph, !prof !145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.jn, -8                    ; 3 uses
  %i.kg = add nsw i64 %n.vec47, %i.jm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.kh = add i64 %index48, %i.jm                 ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %i.kh
  %wide.load49 = load <8 x float>, ptr %i.ki, align 4, !tbaa !127, !alias.scope !510
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.kh ; 2 uses
  %wide.load50 = load <8 x float>, ptr %i.kj, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %i.kk = fmul <8 x float> %wide.load49, %wide.load50
  store <8 x float> %i.kk, ptr %i.kj, align 4, !tbaa !127, !alias.scope !511, !noalias !510
  %index.next51 = add nuw i64 %index48, 8         ; 2 uses
  %i.kl = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.kl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !495

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.jn, %n.vec47
  br i1 %cmp.n52, label %._crit_edge67.i, label %.lr.ph66.i.preheader

.lr.ph66.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv88.i.ph = phi i64 [ %i.jm, %iter.check ], [ %i.jm, %vector.memcheck ], [ %i.jr, %vec.epilog.iter.check ], [ %i.kg, %vec.epilog.middle.block ] ; 4 uses
  %i.km = sub nsw i64 %wide.trip.count91.i, %indvars.iv88.i.ph
  %xtraiter58 = and i64 %i.km, 7                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol

.lr.ph66.i.prol:                                  ; preds = %.lr.ph66.i.preheader, %.lr.ph66.i.prol
  %indvars.iv88.i.prol = phi i64 [ %indvars.iv.next89.i.prol, %.lr.ph66.i.prol ], [ %indvars.iv88.i.ph, %.lr.ph66.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph66.i.prol ], [ 0, %.lr.ph66.i.preheader ]
  %i.kn = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv88.i.prol
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !127
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv88.i.prol ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !127
  %i.kr = fmul float %i.ko, %i.kq
  store float %i.kr, ptr %i.kp, align 4, !tbaa !127
  %indvars.iv.next89.i.prol = add nsw i64 %indvars.iv88.i.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol, !llvm.loop !496

.lr.ph66.i.prol.loopexit:                         ; preds = %.lr.ph66.i.prol, %.lr.ph66.i.preheader
  %indvars.iv88.i.unr = phi i64 [ %indvars.iv88.i.ph, %.lr.ph66.i.preheader ], [ %indvars.iv.next89.i.prol, %.lr.ph66.i.prol ]
  %i.ks = sub nsw i64 %indvars.iv88.i.ph, %wide.trip.count91.i
  %i.kt = icmp ugt i64 %i.ks, -8
  br i1 %i.kt, label %._crit_edge67.i, label %.lr.ph66.i

._crit_edge67.i:                                  ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i, %vec.epilog.middle.block, %middle.block
  %.sroa.3.0.i = select i1 %.not.i, ptr null, ptr %i.n
  %.sroa.01.0.i = select i1 %.not.i, ptr null, ptr %i.h
  call fastcc void @_ZN3gmxL18lincs_update_atomsEPNS_5LincsEifNS_8ArrayRefIKfEENS2_IKNS_11BasicVectorIfEEEES4_PA3_f(ptr noundef nonnull readonly %i.g, i32 noundef %i.b, float noundef 1.000000e+00, ptr nonnull %i.bg, ptr nonnull %i.bm, ptr %i.ai, ptr %.sroa.01.0.i, ptr %.sroa.3.0.i, ptr noundef %i.e)
  br i1 %i.q, label %.lr.ph70.i, label %bb.x

._crit_edge67.i.thread:                           ; preds = %.loopexit57.i
  %.sroa.3.0.i25 = select i1 %.not.i, ptr null, ptr %i.n
  %.sroa.01.0.i26 = select i1 %.not.i, ptr null, ptr %i.h
  call fastcc void @_ZN3gmxL18lincs_update_atomsEPNS_5LincsEifNS_8ArrayRefIKfEENS2_IKNS_11BasicVectorIfEEEES4_PA3_f(ptr noundef nonnull readonly %i.g, i32 noundef %i.b, float noundef 1.000000e+00, ptr %i.bg, ptr %i.bm, ptr %i.ai, ptr %.sroa.01.0.i26, ptr %.sroa.3.0.i25, ptr noundef %i.e)
  br i1 %i.q, label %._crit_edge71.i, label %.thread

.lr.ph70.i:                                       ; preds = %._crit_edge67.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !110 ; 9 uses
  %13 = sext i32 %i.ad to i64                     ; 2 uses
  %wide.trip.count96.i = sext i32 %i.af to i64
  %xtraiter63 = and i64 %i.jn, 7                  ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.prol.loopexit62, label %.prol.preheader61

.prol.preheader61:                                ; preds = %.lr.ph70.i, %.prol.preheader61
  %indvars.iv93.i.prol = phi i64 [ %indvars.iv.next94.i.prol, %.prol.preheader61 ], [ %13, %.lr.ph70.i ] ; 3 uses
  %.09268.i.prol = phi float [ %i.lb, %.prol.preheader61 ], [ 0.000000e+00, %.lr.ph70.i ]
  %prol.iter65 = phi i64 [ %prol.iter65.next, %.prol.preheader61 ], [ 0, %.lr.ph70.i ]
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv93.i.prol
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !127
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv93.i.prol
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !127
  %i.la = fneg float %i.kx
  %i.lb = call float @llvm.fmuladd.f32(float %i.la, float %i.kz, float %.09268.i.prol) ; 3 uses
  %indvars.iv.next94.i.prol = add nsw i64 %indvars.iv93.i.prol, 1 ; 2 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.prol.loopexit62, label %.prol.preheader61, !llvm.loop !497

.prol.loopexit62:                                 ; preds = %.prol.preheader61, %.lr.ph70.i
  %.lcssa.unr = phi float [ poison, %.lr.ph70.i ], [ %i.lb, %.prol.preheader61 ]
  %indvars.iv93.i.unr = phi i64 [ %13, %.lr.ph70.i ], [ %indvars.iv.next94.i.prol, %.prol.preheader61 ]
  %.09268.i.unr = phi float [ 0.000000e+00, %.lr.ph70.i ], [ %i.lb, %.prol.preheader61 ]
  %i.lc = sub nsw i64 %i.jm, %wide.trip.count91.i
  %i.ld = icmp ugt i64 %i.lc, -8
  br i1 %i.ld, label %._crit_edge71.i, label %.lr.ph70.i.new

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i.7, %.lr.ph66.i ], [ %indvars.iv88.i.unr, %.lr.ph66.i.prol.loopexit ] ; 10 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv88.i
  %i.lf = load float, ptr %i.le, align 4, !tbaa !127
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv88.i ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !127
  %i.li = fmul float %i.lf, %i.lh
  store float %i.li, ptr %i.lg, align 4, !tbaa !127
  %indvars.iv.next89.i = add nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !127
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !127
  %i.ln = fmul float %i.lk, %i.lm
  store float %i.ln, ptr %i.ll, align 4, !tbaa !127
  %indvars.iv.next89.i.1 = add nsw i64 %indvars.iv88.i, 2 ; 2 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i.1
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !127
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i.1 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !127
  %i.ls = fmul float %i.lp, %i.lr
  store float %i.ls, ptr %i.lq, align 4, !tbaa !127
  %indvars.iv.next89.i.2 = add nsw i64 %indvars.iv88.i, 3 ; 2 uses
  %i.lt = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i.2
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !127
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i.2 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !127
  %i.lx = fmul float %i.lu, %i.lw
  store float %i.lx, ptr %i.lv, align 4, !tbaa !127
  %indvars.iv.next89.i.3 = add nsw i64 %indvars.iv88.i, 4 ; 2 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i.3
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !127
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i.3 ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !127
  %i.mc = fmul float %i.lz, %i.mb
  store float %i.mc, ptr %i.ma, align 4, !tbaa !127
  %indvars.iv.next89.i.4 = add nsw i64 %indvars.iv88.i, 5 ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i.4
  %i.me = load float, ptr %i.md, align 4, !tbaa !127
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i.4 ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !127
  %i.mh = fmul float %i.me, %i.mg
  store float %i.mh, ptr %i.mf, align 4, !tbaa !127
  %indvars.iv.next89.i.5 = add nsw i64 %indvars.iv88.i, 6 ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i.5
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !127
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i.5 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !127
  %i.mm = fmul float %i.mj, %i.ml
  store float %i.mm, ptr %i.mk, align 4, !tbaa !127
  %indvars.iv.next89.i.6 = add nsw i64 %indvars.iv88.i, 7 ; 2 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %.sroa.039.0.i, i64 %indvars.iv.next89.i.6
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !127
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next89.i.6 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !127
  %i.mr = fmul float %i.mo, %i.mq
  store float %i.mr, ptr %i.mp, align 4, !tbaa !127
  %indvars.iv.next89.i.7 = add nsw i64 %indvars.iv88.i, 8 ; 2 uses
  %exitcond92.not.i.7 = icmp eq i64 %indvars.iv.next89.i.7, %wide.trip.count91.i
  br i1 %exitcond92.not.i.7, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !498

._crit_edge71.i:                                  ; preds = %.prol.loopexit62, %.lr.ph70.i.new, %._crit_edge67.i.thread
  %.092.lcssa.i = phi float [ 0.000000e+00, %._crit_edge67.i.thread ], [ %.lcssa.unr, %.prol.loopexit62 ], [ %i.op, %.lr.ph70.i.new ]
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ms = getelementptr inbounds nuw [176 x i8], ptr %.val.i, i64 %.pre-phi
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 172
  store float %.092.lcssa.i, ptr %i.mt, align 4, !tbaa !259
  br label %bb.x

.lr.ph70.i.new:                                   ; preds = %.prol.loopexit62, %.lr.ph70.i.new
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i.7, %.lr.ph70.i.new ], [ %indvars.iv93.i.unr, %.prol.loopexit62 ] ; 10 uses
  %.09268.i = phi float [ %i.op, %.lr.ph70.i.new ], [ %.09268.i.unr, %.prol.loopexit62 ]
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv93.i
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !127
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv93.i
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !127
  %i.my = fneg float %i.mv
  %i.mz = call float @llvm.fmuladd.f32(float %i.my, float %i.mx, float %.09268.i)
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i
  %i.nb = load float, ptr %i.na, align 4, !tbaa !127
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !127
  %i.ne = fneg float %i.nb
  %i.nf = call float @llvm.fmuladd.f32(float %i.ne, float %i.nd, float %i.mz)
  %indvars.iv.next94.i.1 = add nsw i64 %indvars.iv93.i, 2 ; 2 uses
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i.1
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !127
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i.1
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !127
  %i.nk = fneg float %i.nh
  %i.nl = call float @llvm.fmuladd.f32(float %i.nk, float %i.nj, float %i.nf)
  %indvars.iv.next94.i.2 = add nsw i64 %indvars.iv93.i, 3 ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i.2
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !127
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i.2
  %i.np = load float, ptr %i.no, align 4, !tbaa !127
  %i.nq = fneg float %i.nn
  %i.nr = call float @llvm.fmuladd.f32(float %i.nq, float %i.np, float %i.nl)
  %indvars.iv.next94.i.3 = add nsw i64 %indvars.iv93.i, 4 ; 2 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i.3
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !127
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i.3
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !127
  %i.nw = fneg float %i.nt
  %i.nx = call float @llvm.fmuladd.f32(float %i.nw, float %i.nv, float %i.nr)
  %indvars.iv.next94.i.4 = add nsw i64 %indvars.iv93.i, 5 ; 2 uses
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i.4
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !127
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i.4
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !127
  %i.oc = fneg float %i.nz
  %i.od = call float @llvm.fmuladd.f32(float %i.oc, float %i.ob, float %i.nx)
  %indvars.iv.next94.i.5 = add nsw i64 %indvars.iv93.i, 6 ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i.5
  %i.of = load float, ptr %i.oe, align 4, !tbaa !127
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i.5
  %i.oh = load float, ptr %i.og, align 4, !tbaa !127
  %i.oi = fneg float %i.of
  %i.oj = call float @llvm.fmuladd.f32(float %i.oi, float %i.oh, float %i.od)
  %indvars.iv.next94.i.6 = add nsw i64 %indvars.iv93.i, 7 ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next94.i.6
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !127
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next94.i.6
  %i.on = load float, ptr %i.om, align 4, !tbaa !127
  %i.oo = fneg float %i.ol
  %i.op = call float @llvm.fmuladd.f32(float %i.oo, float %i.on, float %i.oj) ; 2 uses
  %indvars.iv.next94.i.7 = add nsw i64 %indvars.iv93.i, 8 ; 2 uses
  %exitcond97.not.i.7 = icmp eq i64 %indvars.iv.next94.i.7, %wide.trip.count96.i
  br i1 %exitcond97.not.i.7, label %._crit_edge71.i, label %.lr.ph70.i.new, !llvm.loop !499

bb.x:                                             ; preds = %._crit_edge71.i, %._crit_edge67.i
  %or.cond76.i = and i1 %i.bn, %i.s
  br i1 %or.cond76.i, label %.lr.ph75.i, label %.thread

.lr.ph75.i:                                       ; preds = %bb.x
  %i.oq = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !110
  %i.os = sext i32 %i.ad to i64
  %wide.trip.count109.i = sext i32 %i.af to i64
  %.pre111.i = load float, ptr %i.z, align 4, !tbaa !127
  %.phi.trans.insert112.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %.pre113.i = load float, ptr %.phi.trans.insert112.i, align 4, !tbaa !127
  %.phi.trans.insert114.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.pre115.i = load float, ptr %.phi.trans.insert114.i, align 4, !tbaa !127
  %.phi.trans.insert116.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %.pre117.i = load float, ptr %.phi.trans.insert116.i, align 4, !tbaa !127
  %.phi.trans.insert119.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.pre120.i = load float, ptr %.phi.trans.insert119.i, align 4, !tbaa !127
  %.phi.trans.insert122.i = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  %.pre123.i = load float, ptr %.phi.trans.insert122.i, align 4, !tbaa !127
  %.phi.trans.insert124.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.pre125.i = load float, ptr %.phi.trans.insert124.i, align 4, !tbaa !127
  %.phi.trans.insert127.i = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 2 uses
  %.pre128.i = load float, ptr %.phi.trans.insert127.i, align 4, !tbaa !127
  %.phi.trans.insert130.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %.pre131.i = load float, ptr %.phi.trans.insert130.i, align 4, !tbaa !127
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph75.i
  %i.ot = phi float [ %.pre131.i, %.lr.ph75.i ], [ %i.qg, %bb.y ]
  %i.ou = phi float [ %.pre128.i, %.lr.ph75.i ], [ %i.qe, %bb.y ]
  %i.ov = phi float [ %.pre125.i, %.lr.ph75.i ], [ %i.qc, %bb.y ]
  %i.ow = phi float [ %.pre123.i, %.lr.ph75.i ], [ %i.py, %bb.y ]
  %i.ox = phi float [ %.pre120.i, %.lr.ph75.i ], [ %i.pw, %bb.y ]
  %i.oy = phi float [ %.pre117.i, %.lr.ph75.i ], [ %i.pu, %bb.y ]
  %i.oz = phi float [ %.pre115.i, %.lr.ph75.i ], [ %i.pq, %bb.y ]
  %i.pa = phi float [ %.pre113.i, %.lr.ph75.i ], [ %i.pn, %bb.y ]
  %i.pb = phi float [ %.pre111.i, %.lr.ph75.i ], [ %i.pk, %bb.y ]
  %indvars.iv106.i = phi i64 [ %i.os, %.lr.ph75.i ], [ %indvars.iv.next107.i, %bb.y ] ; 4 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv106.i
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !127
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv106.i
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !127
  %i.pg = fmul float %i.pd, %i.pf                 ; 3 uses
  %i.ph = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv106.i ; 5 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !127 ; 2 uses
  %i.pj = fmul float %i.pg, %i.pi                 ; 3 uses
  %i.pk = call float @llvm.fmuladd.f32(float %i.pj, float %i.pi, float %i.pb) ; 2 uses
  store float %i.pk, ptr %i.z, align 4, !tbaa !127
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 4 uses
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !127
  %i.pn = call float @llvm.fmuladd.f32(float %i.pj, float %i.pm, float %i.pa) ; 2 uses
  store float %i.pn, ptr %.phi.trans.insert112.i, align 4, !tbaa !127
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 4 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !127
  %i.pq = call float @llvm.fmuladd.f32(float %i.pj, float %i.pp, float %i.oz) ; 2 uses
  store float %i.pq, ptr %.phi.trans.insert114.i, align 4, !tbaa !127
  %i.pr = load float, ptr %i.pl, align 4, !tbaa !127
  %i.ps = fmul float %i.pg, %i.pr                 ; 3 uses
  %i.pt = load float, ptr %i.ph, align 4, !tbaa !127
  %i.pu = call float @llvm.fmuladd.f32(float %i.ps, float %i.pt, float %i.oy) ; 2 uses
  store float %i.pu, ptr %.phi.trans.insert116.i, align 4, !tbaa !127
  %i.pv = load float, ptr %i.pl, align 4, !tbaa !127
  %i.pw = call float @llvm.fmuladd.f32(float %i.ps, float %i.pv, float %i.ox) ; 2 uses
  store float %i.pw, ptr %.phi.trans.insert119.i, align 4, !tbaa !127
  %i.px = load float, ptr %i.po, align 4, !tbaa !127
  %i.py = call float @llvm.fmuladd.f32(float %i.ps, float %i.px, float %i.ow) ; 2 uses
  store float %i.py, ptr %.phi.trans.insert122.i, align 4, !tbaa !127
  %i.pz = load float, ptr %i.po, align 4, !tbaa !127
  %i.qa = fmul float %i.pg, %i.pz                 ; 3 uses
  %i.qb = load float, ptr %i.ph, align 4, !tbaa !127
  %i.qc = call float @llvm.fmuladd.f32(float %i.qa, float %i.qb, float %i.ov) ; 2 uses
  store float %i.qc, ptr %.phi.trans.insert124.i, align 4, !tbaa !127
  %i.qd = load float, ptr %i.pl, align 4, !tbaa !127
  %i.qe = call float @llvm.fmuladd.f32(float %i.qa, float %i.qd, float %i.ou) ; 2 uses
  store float %i.qe, ptr %.phi.trans.insert127.i, align 4, !tbaa !127
  %i.qf = load float, ptr %i.po, align 4, !tbaa !127
  %i.qg = call float @llvm.fmuladd.f32(float %i.qa, float %i.qf, float %i.ot) ; 2 uses
  store float %i.qg, ptr %.phi.trans.insert130.i, align 4, !tbaa !127
  %indvars.iv.next107.i = add nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond110.not.i = icmp eq i64 %indvars.iv.next107.i, %wide.trip.count109.i
  br i1 %exitcond110.not.i, label %.thread, label %bb.y, !llvm.loop !500

.thread:                                          ; preds = %bb.y, %._crit_edge67.i.thread, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  ret void

bb.z:                                             ; preds = %bb.e, %bb.a
  %i.qh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0      ; 2 uses
  %i.qj = extractvalue { ptr, i32 } %i.qh, 1
  %i.qk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.ql = icmp eq i32 %i.qj, %i.qk
  br i1 %i.ql, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.qm = call ptr @__cxa_begin_catch(ptr %i.qi) #19
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.qm) #39
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.qn = landingpad { ptr, i32 }
          catch ptr null
  %i.qo = extractvalue { ptr, i32 } %i.qn, 0
  call void @__clang_call_terminate(ptr %i.qo) #38
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @__clang_call_terminate(ptr %i.qi) #38
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #26

declare void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #24

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZN3gmxL19lincs_matrix_expandERKNS_5LincsERKN12_GLOBAL__N_14TaskENS_8ArrayRefIKfEENS7_IfEESA_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1, ptr nofree readonly captures(none) %2, ptr %3, ptr %4, ptr nofree noundef byval(%"class.gmx::ArrayRef.345") align 8 captures(none) %5, i64 %.0.val) unnamed_addr #29 {
bb.a:
  %i.a = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  br i1 %i.h, label %.lr.ph38, label %bb.b

.lr.ph38:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !121  ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.m = icmp slt i32 %i.k, %i.j
  %i.n = inttoptr i64 %.0.val to ptr
  %.sroa.714.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.714.0..sroa_idx15.promoted = load ptr, ptr %.sroa.714.0..sroa_idx15, align 8
  %i.o = sext i32 %i.k to i64                     ; 2 uses
  %wide.trip.count62 = sext i32 %i.j to i64
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.o
  br label %bb.c

._crit_edge39:                                    ; preds = %._crit_edge33
  store ptr %.sroa.714.034, ptr %.sroa.714.0..sroa_idx15, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge39, %bb.a
  %.sroa.714.0.lcssa = phi ptr [ %.sroa.714.03442, %._crit_edge39 ], [ %4, %bb.a ]
  %.sroa.09.0.lcssa = phi ptr [ %.sroa.09.0.copyload11, %._crit_edge39 ], [ %3, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !139
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.s

bb.c:                                             ; preds = %.lr.ph38, %._crit_edge33
  %.sroa.714.03442 = phi ptr [ %.sroa.714.0..sroa_idx15.promoted, %.lr.ph38 ], [ %.sroa.714.034, %._crit_edge33 ] ; 2 uses
  %.06036 = phi i32 [ 0, %.lr.ph38 ], [ %i.w, %._crit_edge33 ]
  %.sroa.09.035 = phi ptr [ %3, %.lr.ph38 ], [ %.sroa.09.0.copyload11, %._crit_edge33 ] ; 10 uses
  %.sroa.714.034 = phi ptr [ %4, %.lr.ph38 ], [ %.sroa.714.03442, %._crit_edge33 ] ; 2 uses
  %i.s = load i8, ptr %i.l, align 8, !tbaa !93, !range !16, !noundef !17
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__kmpc_barrier(ptr nonnull @4, i32 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.m, label %.lr.ph32, label %.._crit_edge33_crit_edge

.._crit_edge33_crit_edge:                         ; preds = %bb.e
  %.sroa.09.0.copyload11.pre = load ptr, ptr %5, align 8
  br label %._crit_edge33

.lr.ph32:                                         ; preds = %bb.e
  %i.u = load i64, ptr %5, align 8
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !25
  br label %bb.f

._crit_edge33:                                    ; preds = %._crit_edge, %.._crit_edge33_crit_edge
  %.sroa.09.0.copyload11 = phi ptr [ %.sroa.09.0.copyload11.pre, %.._crit_edge33_crit_edge ], [ %i.v, %._crit_edge ] ; 2 uses
  store ptr %.sroa.09.035, ptr %5, align 8
  %i.w = add nuw nsw i32 %.06036, 1               ; 2 uses
  %exitcond64.not = icmp eq i32 %i.w, %i.g
  br i1 %exitcond64.not, label %._crit_edge39, label %bb.c, !llvm.loop !512

end_hunk_1
