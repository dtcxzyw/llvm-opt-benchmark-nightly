Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coupling?download=true
inline.NumInlined: 1490
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN3gmx18NormalDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE:bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.e)
  %i.k = tail call { i64, i64 } @_ZN3gmx19ThreeFry2x64GeneralILj20ELj64EE13generateBlockERKSt5arrayImLm2EES5_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.l, ptr %.phi.trans.insert.i.i.i.i, align 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !153
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit

_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d
  %i.n = phi i64 [ %i.l, %bb.d ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.o = phi i32 [ 1, %bb.d ], [ %i.j, %._crit_edge.i.i.i.i ] ; 2 uses
  store i32 %i.o, ptr %i.d, align 8, !tbaa !215
  %i.p = uitofp i64 %i.n to float
  %i.q = fmul nnan float %i.p, f0x1F800000        ; 2 uses
  %i.r = fcmp oeq float %i.q, 1.000000e+00
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float 2.000000e+00, float -1.000000e+00)
  %i.t = select i1 %i.r, float -1.000000e+00, float %i.s ; 3 uses
  %i.u = icmp samesign ugt i32 %i.o, 1
  br i1 %i.u, label %bb.e, label %._crit_edge.i.i.i.i19

._crit_edge.i.i.i.i19:                            ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit
  %.pre.i.i.i.i23 = load i64, ptr %.phi.trans.insert2.i.i.i.i22, align 8, !tbaa !150
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26

bb.e:                                             ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.e)
  %i.v = tail call { i64, i64 } @_ZN3gmx19ThreeFry2x64GeneralILj20ELj64EE13generateBlockERKSt5arrayImLm2EES5_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.v, 1
  store i64 %i.w, ptr %.phi.trans.insert.i.i.i.i, align 8
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !153
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26

_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26: ; preds = %._crit_edge.i.i.i.i19, %bb.e
  %i.y = phi i64 [ %i.w, %bb.e ], [ %.pre.i.i.i.i23, %._crit_edge.i.i.i.i19 ]
  %i.z = phi i32 [ 1, %bb.e ], [ 2, %._crit_edge.i.i.i.i19 ] ; 2 uses
  store i32 %i.z, ptr %i.d, align 8, !tbaa !215
  %i.aa = uitofp i64 %i.y to float
  %i.ab = fmul nnan float %i.aa, f0x1F800000      ; 2 uses
  %i.ac = fcmp oeq float %i.ab, 1.000000e+00
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ab, float 2.000000e+00, float -1.000000e+00)
  %i.ae = select i1 %i.ac, float -1.000000e+00, float %i.ad ; 3 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.af) ; 4 uses
  %i.ah = fcmp ogt float %i.ag, 1.000000e+00
  %i.ai = fcmp oeq float %i.ag, 0.000000e+00
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26
  %i.ak = fpext float %i.ag to double
  %i.al = tail call ninf float @llvm.log.f32(float %i.ag)
  %i.am = fpext ninf float %i.al to double
  %i.an = fmul double %i.am, -2.000000e+00
  %i.ao = fdiv double %i.an, %i.ak
  %i.ap = tail call double @sqrt(double noundef %i.ao) #22
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = fmul float %i.ae, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ar, ptr %i.as, align 4, !tbaa !212
  store i8 1, ptr %i.a, align 4, !tbaa !211
  %i.at = fmul float %i.t, %i.aq
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi float [ %i.g, %bb.b ], [ %i.at, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !372
  %i.aw = load float, ptr %2, align 4, !tbaa !373
  %i.ax = tail call float @llvm.fmuladd.f32(float %.0, float %i.av, float %i.aw)
  ret float %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !150
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !150
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.d unwind label %.thread24

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %1, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %3, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.f, align 8, !tbaa !161
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.20, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !161
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !162
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.e, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.j unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread24:                                        ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #22
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %.thread, %.thread24
  %.pn.pn23.ph = phi { ptr, i32 } [ %i.h, %.thread24 ], [ %i.g, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.pn.pn23 = phi { ptr, i32 } [ %i.i, %bb.f ], [ %.pn.pn23.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn22 = phi { ptr, i32 } [ %.pn.pn23, %bb.g ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn.pn22

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #11

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z38pressureCouplingScaleBoxAndCoordinatesIL16PressureCoupling1EEvRK23PressureCouplingOptionsPA3_KfPA3_KiRKN3gmx14BasicMatrix3x3IfEEPA3_fSG_iiNSA_8ArrayRefINSA_11BasicVectorIfEEEESK_NSH_IKtEEP6t_nrnbb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %7, ptr nofree nonnull readnone align 8 captures(none) %8, ptr nofree nonnull readnone align 8 captures(none) %9) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !162
  %i.f = load i32, ptr %3, align 4, !tbaa !162    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.h, ptr %i.b, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !162
  %i.i = load i32, ptr %0, align 4, !tbaa !162    ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !162
  %i.k = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !162
  %i.l = load i32, ptr %i.a, align 4, !tbaa !162  ; 2 uses
  %.not4243 = icmp ugt i32 %i.l, %i.k
  br i1 %.not4243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %5, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.03844 = phi i32 [ %i.l, %.lr.ph ], [ %10, %bb.k ] ; 3 uses
  %i.p = add i32 %.03844, %i.e                    ; 4 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8
  %i.q = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %.sroa.01.0.copyload.i, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !140
  %i.u = zext i16 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.u, %bb.d ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %.0 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !171  ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !126
  %i.z = sext i32 %i.p to i64
  %i.aa = load i64, ptr %6, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds [12 x i8], ptr %i.ab, i64 %i.z ; 4 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !126
  %i.ae = getelementptr i8, ptr %i.x, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !126
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = call float @llvm.fmuladd.f32(float %i.y, float %i.ad, float %i.ai)
  %i.ak = getelementptr i8, ptr %i.x, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !126
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !126
  %i.ao = call float @llvm.fmuladd.f32(float %i.al, float %i.an, float %i.aj)
  store float %i.ao, ptr %i.ac, align 4, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !162
  %.not40 = icmp eq i32 %i.aq, 0
  br i1 %.not40, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !171 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !126
  %i.au = sext i32 %i.p to i64
  %i.av = load i64, ptr %6, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds [12 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !126
  %i.ba = getelementptr i8, ptr %i.ar, i64 28
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !126
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = call float @llvm.fmuladd.f32(float %i.at, float %i.az, float %i.be)
  store float %i.bf, ptr %i.ay, align 4, !tbaa !126
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !162
  %.not41 = icmp eq i32 %i.bh, 0
  br i1 %.not41, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !171
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !126
  %i.bl = sext i32 %i.p to i64
  %i.bm = load i64, ptr %6, align 8
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.bn, i64 %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !126
  %i.br = fmul float %i.bk, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !126
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %10 = add i32 %.03844, 1
  %exitcond.not = icmp eq i32 %.03844, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.k, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare !callback !235 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #22

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z38pressureCouplingScaleBoxAndCoordinatesIL16PressureCoupling5EEvRK23PressureCouplingOptionsPA3_KfPA3_KiRKN3gmx14BasicMatrix3x3IfEEPA3_fSG_iiNSA_8ArrayRefINSA_11BasicVectorIfEEEESK_NSH_IKtEEP6t_nrnbb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %9) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !162
  %i.f = load i32, ptr %3, align 4, !tbaa !162    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.h, ptr %i.b, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !162
  %i.i = load i32, ptr %0, align 4, !tbaa !162    ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !162
  %i.k = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !162
  %i.l = load i32, ptr %i.a, align 4, !tbaa !162  ; 2 uses
  %.not5354 = icmp ugt i32 %i.l, %i.k
  br i1 %.not5354, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %5, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.04955 = phi i32 [ %i.l, %.lr.ph ], [ %10, %bb.k ] ; 3 uses
  %i.q = add i32 %.04955, %i.e                    ; 4 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8
  %i.r = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %.sroa.01.0.copyload.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !140
  %i.v = zext i16 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.v, %bb.d ]
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %.0 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !162
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !171  ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !126
  %i.aa = sext i32 %i.q to i64                    ; 2 uses
  %i.ab = load i64, ptr %6, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds [12 x i8], ptr %i.ac, i64 %i.aa ; 4 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !126
  %i.af = getelementptr i8, ptr %i.y, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !126
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !126
  %i.aj = fmul float %i.ag, %i.ai
  %i.ak = call float @llvm.fmuladd.f32(float %i.z, float %i.ae, float %i.aj)
  %i.al = getelementptr i8, ptr %i.y, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !126
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !126
  %i.ap = call float @llvm.fmuladd.f32(float %i.am, float %i.ao, float %i.ak)
  store float %i.ap, ptr %i.ad, align 4, !tbaa !126
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !171 ; 3 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !126
  %i.as = load i64, ptr %8, align 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds [12 x i8], ptr %i.at, i64 %i.aa ; 4 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !126
  %i.aw = getelementptr i8, ptr %i.aq, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !126
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !126
  %i.ba = fmul float %i.ax, %i.az
  %i.bb = call float @llvm.fmuladd.f32(float %i.ar, float %i.av, float %i.ba)
  %i.bc = getelementptr i8, ptr %i.aq, i64 24
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !126
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !126
  %i.bg = call float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bb)
  store float %i.bg, ptr %i.au, align 4, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !162
  %.not51 = icmp eq i32 %i.bi, 0
  br i1 %.not51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !171 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !126
  %i.bm = sext i32 %i.q to i64                    ; 2 uses
  %i.bn = load i64, ptr %6, align 8
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds [12 x i8], ptr %i.bo, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !126
  %i.bs = getelementptr i8, ptr %i.bj, i64 28
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !126
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !126
  %i.bw = fmul float %i.bt, %i.bv
  %i.bx = call float @llvm.fmuladd.f32(float %i.bl, float %i.br, float %i.bw)
  store float %i.bx, ptr %i.bq, align 4, !tbaa !126
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !171 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !126
  %i.cb = load i64, ptr %8, align 8
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %i.bm ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !126
  %i.cg = getelementptr i8, ptr %i.by, i64 28
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !126
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !126
  %i.ck = fmul float %i.ch, %i.cj
  %i.cl = call float @llvm.fmuladd.f32(float %i.ca, float %i.cf, float %i.ck)
  store float %i.cl, ptr %i.ce, align 4, !tbaa !126
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !162
  %.not52 = icmp eq i32 %i.cn, 0
  br i1 %.not52, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !171
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !126
  %i.cr = sext i32 %i.q to i64                    ; 2 uses
  %i.cs = load i64, ptr %6, align 8
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !126
  %i.cx = fmul float %i.cq, %i.cw
  store float %i.cx, ptr %i.cv, align 4, !tbaa !126
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !171
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %i.da = load float, ptr %i.cz, align 4, !tbaa !126
  %i.db = load i64, ptr %8, align 8
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.cr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !126
  %i.dg = fmul float %i.da, %i.df
  store float %i.dg, ptr %i.de, align 4, !tbaa !126
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %10 = add i32 %.04955, 1
  %exitcond.not = icmp eq i32 %.04955, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.k, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i.i:
  %1 = alloca %"class.std::unique_ptr.146", align 8 ; 7 uses
  %2 = alloca %"struct.std::type_index", align 8  ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 14 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 7 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 68, ptr %i.a, align 8, !tbaa !150
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZN3gmx20ExceptionInitializerD2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.d, ptr %4, align 8, !tbaa !152
  %i.e = load i64, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.d, ptr noundef nonnull align 1 dereferenceable(68) @.str.27, i64 68, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %3, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE, ptr %i.i, align 8, !tbaa !161
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.20, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !161
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 266, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !162
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22, !noalias !377
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %.noexc9 unwind label %bb.f    ; 3 uses

.noexc9:                                          ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.j, align 8, !tbaa !160, !noalias !377
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !216, !noalias !377
  store ptr %i.j, ptr %1, align 8, !tbaa !218, !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !377
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %2, align 8, !tbaa !221, !noalias !377
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c, !noalias !377

bb.b:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !377
  %i.l = load ptr, ptr %1, align 8, !tbaa !218, !noalias !377 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160, !noalias !377
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !377
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #22, !noalias !377, !inline_history !376
  br label %bb.d

bb.c:                                             ; preds = %.noexc9
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !377
  %i.q = load ptr, ptr %1, align 8, !tbaa !218, !noalias !377 ; 3 uses
  %.not.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !160, !noalias !377
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !377
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #22, !noalias !377, !inline_history !376
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !377
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !377
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !222, !noalias !377
  store ptr null, ptr %i.w, align 8, !tbaa !223, !noalias !377
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !222, !alias.scope !377
  store ptr null, ptr %i.v, align 8, !tbaa !226, !noalias !377
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %i.b, align 8, !tbaa !160, !alias.scope !377
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.l unwind label %bb.f

_ZN3gmx20ExceptionInitializerD2Ev.exit.thread:    ; preds = %.noexc.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.j

bb.e:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.a ]
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i, %bb.f
  %.0.lpad-body = phi i1 [ %.0, %bb.f ], [ true, %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.p, %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i ]
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.z, %bb.e ] ; 4 uses
  %.1 = phi i1 [ %.0.lpad-body, %.body ], [ true, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !229 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !230 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !232
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i.i) #22
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !229
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.g
  %i.ag = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !233
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.am = load ptr, ptr %4, align 8, !tbaa !152   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZN3gmx20ExceptionInitializerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !153
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.1, label %bb.j, label %bb.k

_ZN3gmx20ExceptionInitializerD2Ev.exit:           ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN3gmx20ExceptionInitializerD2Ev.exit.thread, %_ZN3gmx20ExceptionInitializerD2Ev.exit
end_hunk_0
