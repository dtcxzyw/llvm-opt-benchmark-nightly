Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coupling?download=true
inline.NumInlined: 1490
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE:bb.a
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22, !inline_history !1
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !223
  store ptr null, ptr %i.o, align 8, !tbaa !224
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !223
  store ptr null, ptr %i.n, align 8, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %0, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN3gmx19ThreeFry2x64GeneralILj20ELj64EE13generateBlockERKSt5arrayImLm2EES5_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.024.0.copyload = load i64, ptr %2, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8, !tbaa !153
  %i.a = load i64, ptr %1, align 8, !tbaa !150    ; 5 uses
  %i.b = add i64 %i.a, %.sroa.024.0.copyload
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !150  ; 5 uses
  %i.e = xor i64 %i.a, %i.d
  %i.f = xor i64 %i.e, 2004413935125273122        ; 4 uses
  %i.g = add i64 %i.d, %.sroa.74.0.copyload       ; 3 uses
  %i.h = add i64 %i.b, %i.g                       ; 2 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 42)
  %i.m = xor i64 %i.l, %i.k                       ; 3 uses
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 12)
  %i.p = xor i64 %i.o, %i.n                       ; 3 uses
  %i.q = add i64 %i.p, %i.n                       ; 2 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 31)
  %i.s = xor i64 %i.r, %i.q
  %i.t = add i64 %i.q, %i.d
  %i.u = add i64 %i.f, 1
  %i.v = add i64 %i.u, %i.s                       ; 3 uses
  %i.w = add i64 %i.t, %i.v                       ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.y = xor i64 %i.x, %i.w                       ; 3 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.ab = xor i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 24)
  %i.ae = xor i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 21)
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = add i64 %i.af, %i.f
  %i.aj = add i64 %i.a, 2
  %i.ak = add i64 %i.aj, %i.ah                    ; 3 uses
  %i.al = add i64 %i.ai, %i.ak                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 16)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = add i64 %i.an, %i.al                    ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 42)
  %i.aq = xor i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 12)
  %i.at = xor i64 %i.as, %i.ar                    ; 3 uses
  %i.au = add i64 %i.at, %i.ar                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 31)
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = add i64 %i.au, %i.a
  %i.ay = add i64 %i.d, 3
  %i.az = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.az                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = add i64 %i.bc, %i.ba                    ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bd                    ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 24)
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 21)
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = add i64 %i.bj, %i.d
  %i.bn = add i64 %i.f, 4
  %i.bo = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.bp = add i64 %i.bm, %i.bo                    ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 16)
  %i.br = xor i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = add i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 42)
  %i.bu = xor i64 %i.bt, %i.bs                    ; 3 uses
  %i.bv = add i64 %i.bu, %i.bs                    ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 12)
  %i.bx = xor i64 %i.bw, %i.bv                    ; 3 uses
  %i.by = add i64 %i.bx, %i.bv                    ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31)
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = add i64 %i.by, %i.f
  %i.cc = add i64 %i.a, 5
  %i.cd = add i64 %i.cc, %i.ca
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.cb, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.cd, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN3gmx18NormalDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !212, !range !370, !noundef !371
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !216
  %.phi.trans.insert2.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !213
  br label %bb.g

bb.c:                                             ; preds = %.preheader, %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26
  %i.h = phi i32 [ %.pre, %.preheader ], [ %i.z, %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26 ] ; 3 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %.phi.trans.insert1.i.i.i.i = zext nneg i32 %i.h to i64
  %.phi.trans.insert2.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert.i.i.i.i, i64 %.phi.trans.insert1.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i.i, align 8, !tbaa !150
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
  store i32 %i.o, ptr %i.d, align 8, !tbaa !216
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
  store i32 %i.z, ptr %i.d, align 8, !tbaa !216
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
  store float %i.ar, ptr %i.as, align 4, !tbaa !213
  store i8 1, ptr %i.a, align 4, !tbaa !212
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
  %i.n = load ptr, ptr %5, align 8, !tbaa !209
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.03844 = phi i32 [ %i.l, %.lr.ph ], [ %i.bs, %bb.k ] ; 3 uses
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
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ee) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !237
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !268
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !269
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z10NPT_energyRK23PressureCouplingOptions19TemperatureCouplingN3gmx8ArrayRefIKfEERK14gmx_ekindata_tbPK7t_statePK9t_extmass(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(92) %0, i32 noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %4, i1 noundef zeroext %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 16       ; 9 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !157    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.g = load float, ptr %i.f, align 4, !tbaa !126 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.j = load float, ptr %i.i, align 4, !tbaa !126 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.l = load float, ptr %i.k, align 4, !tbaa !126 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.n = load float, ptr %i.m, align 4, !tbaa !126 ; 2 uses
  %i.o = fneg float %i.n
  %i.p = fmul float %i.l, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.g, float %i.j, float %i.p)
  %i.r = load float, ptr %i.e, align 4, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = load float, ptr %i.s, align 4, !tbaa !126 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.v = load float, ptr %i.u, align 4, !tbaa !126
  %i.w = fneg float %i.v                          ; 2 uses
  %i.x = fmul float %i.l, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.j, float %i.x)
  %i.z = fneg float %i.y
  %i.aa = fmul float %i.r, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.d, float %i.q, float %i.aa)
  %i.ac = load float, ptr %i.h, align 4, !tbaa !126
  %i.ad = fmul float %i.g, %i.w
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.n, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ae, float %i.ab) ; 2 uses
  switch i32 %i.b, label %bb.t [
    i32 2, label %.preheader
    i32 4, label %bb.m
    i32 1, label %bb.s
    i32 5, label %bb.s
  ]

.preheader:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call fastcc void @_ZL27calcParrinelloRahmanInvMassRK23PressureCouplingOptionsPA3_KfPA3_f(ptr noundef nonnull align 4 dereferenceable(92) %0, ptr noundef nonnull %i.c, ptr noundef %i.a)
  %i.ag = load float, ptr %i.a, align 16, !tbaa !126 ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.l, label %.preheader.1

bb.c:                                             ; preds = %.preheader.1
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !126 ; 2 uses
  %i.ak = fmul float %i.aj, %i.aj
  %i.al = fpext float %i.ak to double
  %i.am = fmul double %i.al, 5.000000e-01
  %i.an = fpext nnan float %i.dv to double
  %i.ao = fmul nnan double %i.an, f0x40309AFAE1F7C60E
  %i.ap = fdiv double %i.am, %i.ao
  %i.aq = fpext float %.2 to double
  %i.ar = fadd double %i.ap, %i.aq
  %i.as = fptrunc double %i.ar to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.1
  %.2.1 = phi float [ %i.as, %bb.c ], [ %.2, %.preheader.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load float, ptr %i.at, align 16, !tbaa !126 ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.e, label %.preheader.2

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 140
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !126 ; 2 uses
  %i.ay = fmul float %i.ax, %i.ax
  %i.az = fpext float %i.ay to double
  %i.ba = fmul double %i.az, 5.000000e-01
  %i.bb = fpext nnan float %i.au to double
  %i.bc = fmul nnan double %i.bb, f0x40309AFAE1F7C60E
  %i.bd = fdiv double %i.ba, %i.bc
  %i.be = fpext float %.2.1 to double
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fptrunc double %i.bf to float
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.e, %bb.d
  %.2.1.1 = phi float [ %i.bg, %bb.e ], [ %.2.1, %bb.d ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !126 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.2
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 148
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !126 ; 2 uses
  %i.bm = fmul float %i.bl, %i.bl
  %i.bn = fpext float %i.bm to double
  %i.bo = fmul double %i.bn, 5.000000e-01
  %i.bp = fpext nnan float %i.bi to double
  %i.bq = fmul nnan double %i.bp, f0x40309AFAE1F7C60E
  %i.br = fdiv double %i.bo, %i.bq
  %i.bs = fpext float %.2.1.1 to double
  %i.bt = fadd double %i.br, %i.bs
  %i.bu = fptrunc double %i.bt to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.2
  %.2.2 = phi float [ %i.bu, %bb.f ], [ %.2.1.1, %.preheader.2 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !126 ; 2 uses
  %i.bx = fcmp ogt float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.bz = load float, ptr %i.by, align 4, !tbaa !126 ; 2 uses
  %i.ca = fmul float %i.bz, %i.bz
  %i.cb = fpext float %i.ca to double
  %i.cc = fmul double %i.cb, 5.000000e-01
  %i.cd = fpext nnan float %i.bw to double
  %i.ce = fmul nnan double %i.cd, f0x40309AFAE1F7C60E
  %i.cf = fdiv double %i.cc, %i.ce
  %i.cg = fpext float %.2.2 to double
  %i.ch = fadd double %i.cf, %i.cg
  %i.ci = fptrunc double %i.ch to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.2.1 = phi float [ %i.ci, %bb.h ], [ %.2.2, %bb.g ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ck = load float, ptr %i.cj, align 16, !tbaa !126 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !126 ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fpext float %i.co to double
  %i.cq = fmul double %i.cp, 5.000000e-01
  %i.cr = fpext nnan float %i.ck to double
  %i.cs = fmul nnan double %i.cr, f0x40309AFAE1F7C60E
  %i.ct = fdiv double %i.cq, %i.cs
  %i.cu = fpext float %.2.2.1 to double
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = fptrunc double %i.cv to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.2.2 = phi float [ %i.cw, %bb.j ], [ %.2.2.1, %bb.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !126
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = load float, ptr %i.cz, align 4, !tbaa !126
  %i.db = fadd float %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !126
  %i.de = fadd float %i.db, %i.dd
  %i.df = fmul float %i.af, %i.de
  %i.dg = fpext float %i.df to double
  %i.dh = fdiv double %i.dg, f0x4048E87852F3A915
  %i.di = fpext float %.2.2.2 to double
  %i.dj = fadd double %i.dh, %i.di
  %i.dk = fptrunc double %i.dj to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.u

bb.l:                                             ; preds = %.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 124
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !126 ; 2 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = fpext float %i.dn to double
  %i.dp = fmul double %i.do, 5.000000e-01
  %i.dq = fpext nnan float %i.ag to double
  %i.dr = fmul nnan double %i.dq, f0x40309AFAE1F7C60E
  %i.ds = fdiv double %i.dp, %i.dr
  %i.dt = fptrunc double %i.ds to float
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.l
  %.2 = phi float [ %i.dt, %bb.l ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dv = load float, ptr %i.du, align 4, !tbaa !126 ; 2 uses
  %i.dw = fcmp ogt float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.c, label %bb.d

bb.m:                                             ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 400
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !206
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !241
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !126
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !126
  %i.ef = fadd float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !126
  %i.ei = fadd float %i.ef, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.af, i64 1 ; 2 uses
  %i.el = insertelement <2 x float> %i.ek, float %i.ei, i64 1
  %i.em = fmul <2 x float> %i.ek, %i.el
  %i.en = fpext <2 x float> %i.em to <2 x double>
  %i.eo = fmul <2 x double> %i.en, <double 5.000000e-01, double 1.000000e+00>
  %i.ep = insertelement <2 x double> <double poison, double f0x4048E87852F3A915>, double %i.ea, i64 0
  %i.eq = fdiv <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = fadd double %i.er, 0.000000e+00
  %i.et = fptrunc double %i.es to float
  %i.eu = fpext float %i.et to double
  %i.ev = extractelement <2 x double> %i.eq, i64 1
  %i.ew = fadd double %i.ev, %i.eu
  %i.ex = fptrunc double %i.ew to float
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !263 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !242
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph45.i, label %_ZL18energyPressureMTTKfPK7t_statePK9t_extmass.exit

.lr.ph45.i:                                       ; preds = %bb.m
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !262 ; 2 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ff, float 0.000000e+00, float %i.fe
  %i.fg = fpext float %.sroa.speculated.i to double
  %i.fh = fmul double %i.fg, f0x3F81072C483AF26D
  %i.fi = fptrunc double %i.fh to float
  %i.fj = icmp sgt i32 %i.ez, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 344 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 320 ; 2 uses
  %i.fn = fpext float %i.fi to double
  br i1 %i.fj, label %.lr.ph.us.preheader.i, label %_ZL18energyPressureMTTKfPK7t_statePK9t_extmass.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph45.i
  %i.fo = zext nneg i32 %i.ez to i64              ; 2 uses
  %.pre71.pre = load ptr, ptr %i.fk, align 8, !tbaa !119
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %.pre71 = phi ptr [ %.pre71.pre, %.lr.ph.us.preheader.i ], [ %.pre7172, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv50.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 3 uses
  %.03642.us.i = phi float [ 0.000000e+00, %.lr.ph.us.preheader.i ], [ %.2.us.i, %._crit_edge.us.i ]
  %i.fp = mul nuw nsw i64 %indvars.iv50.i, %i.fo
  %i.fq = trunc nuw nsw i64 %indvars.iv50.i to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.us.i
  %.pre7173 = phi ptr [ %.pre71, %.lr.ph.us.i ], [ %.pre7172, %bb.r ]
  %i.fr = phi ptr [ %.pre71, %.lr.ph.us.i ], [ %i.gu, %bb.r ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  %.140.us.i = phi float [ %.03642.us.i, %.lr.ph.us.i ], [ %.2.us.i, %bb.r ] ; 2 uses
  %i.fs = add nuw nsw i64 %indvars.iv.i, %i.fp    ; 5 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !127 ; 2 uses
  %i.fv = fcmp ogt double %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fw = load ptr, ptr %i.fl, align 8, !tbaa !119
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fs
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !127 ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = fmul double %i.fz, 5.000000e-01
  %i.gb = fdiv double %i.ga, %i.fu
  %i.gc = fpext float %.140.us.i to double
  %i.gd = fadd double %i.gb, %i.gc
  %i.ge = fptrunc double %i.gd to float
  %i.gf = load ptr, ptr %i.fm, align 8, !tbaa !119
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.fs
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !127
  %i.gi = fpext float %i.ge to double
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.fn, double %i.gi)
  %i.gk = fptrunc double %i.gj to float
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.us.i = phi float [ %i.gk, %bb.o ], [ %.140.us.i, %bb.n ] ; 3 uses
  %i.gl = load ptr, ptr @debug, align 8, !tbaa !145 ; 2 uses
  %.not.us.i = icmp eq ptr %i.gl, null
  br i1 %.not.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gm = load ptr, ptr %i.fl, align 8, !tbaa !119
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.fs
  %i.go = load double, ptr %i.gn, align 8, !tbaa !127
  %i.gp = load ptr, ptr %i.fm, align 8, !tbaa !119
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.fs
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !127
  %i.gs = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gl, ptr noundef nonnull @.str.34, i32 noundef %i.fq, i32 noundef %i.gs, double noundef %i.go, double noundef %i.gr) #22 ; 0 uses
  %.pre = load ptr, ptr %i.fk, align 8, !tbaa !119 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre7172 = phi ptr [ %.pre, %bb.q ], [ %.pre7173, %bb.p ] ; 2 uses
  %i.gu = phi ptr [ %.pre, %bb.q ], [ %i.fr, %bb.p ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.fo
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.n, !llvm.loop !447

._crit_edge.us.i:                                 ; preds = %bb.r
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.fa, align 4, !tbaa !242
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next51.i, %i.gw
  br i1 %i.gx, label %.lr.ph.us.i, label %_ZL18energyPressureMTTKfPK7t_statePK9t_extmass.exit, !llvm.loop !448

_ZL18energyPressureMTTKfPK7t_statePK9t_extmass.exit: ; preds = %._crit_edge.us.i, %bb.m, %.lr.ph45.i
  %.036.lcssa.i = phi float [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %.lr.ph45.i ], [ %.2.us.i, %._crit_edge.us.i ]
  %i.gy = fadd float %.036.lcssa.i, %i.ex
  br label %bb.u

bb.s:                                             ; preds = %bb.b, %bb.b
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 392
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !452
  %i.hb = fadd double %i.ha, 0.000000e+00
  %i.hc = fptrunc double %i.hb to float
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ10NPT_energyRK23PressureCouplingOptions19TemperatureCouplingN3gmx8ArrayRefIKfEERK14gmx_ekindata_tbPK7t_statePK9t_extmassENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 2090) #29
  unreachable

bb.u:                                             ; preds = %bb.k, %bb.s, %_ZL18energyPressureMTTKfPK7t_statePK9t_extmass.exit, %bb.a
  %.4 = phi float [ 0.000000e+00, %bb.a ], [ %i.hc, %bb.s ], [ %i.dk, %bb.k ], [ %i.gy, %_ZL18energyPressureMTTKfPK7t_statePK9t_extmass.exit ] ; 5 uses
  switch i32 %1, label %bb.af [
    i32 0, label %bb.ag
    i32 6, label %bb.v
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 4, label %bb.ag
    i32 5, label %bb.ag
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.hd = getelementptr i8, ptr %6, i64 368
  %.val = load ptr, ptr %i.hd, align 8, !tbaa !453 ; 2 uses
  %i.he = getelementptr i8, ptr %6, i64 376
  %.val47 = load ptr, ptr %i.he, align 8, !tbaa !453 ; 2 uses
  %.not5.i.i = icmp eq ptr %.val, %.val47
  br i1 %.not5.i.i, label %_ZL14energyVrescalePK7t_state.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %.07.i.i = phi double [ %i.hg, %.lr.ph.i.i ], [ 0.000000e+00, %bb.v ]
  %.sroa.02.06.i.i = phi ptr [ %i.hh, %.lr.ph.i.i ], [ %.val, %bb.v ] ; 2 uses
  %i.hf = load double, ptr %.sroa.02.06.i.i, align 8, !tbaa !127
  %i.hg = fadd double %.07.i.i, %i.hf             ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hh, %.val47
  br i1 %.not.i.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !449

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET0_T_S9_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %i.hi = fptrunc double %i.hg to float
  br label %_ZL14energyVrescalePK7t_state.exit

_ZL14energyVrescalePK7t_state.exit:               ; preds = %bb.v, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET0_T_S9_S8_.exit.loopexit.i
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.v ], [ %i.hi, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET0_T_S9_S8_.exit.loopexit.i ]
  %i.hj = fadd float %.4, %.0.lcssa.i.i
  br label %bb.ag

bb.w:                                             ; preds = %bb.u
  %.val48 = load ptr, ptr %4, align 8             ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !263
  %.fr8.i = freeze i32 %i.hl                      ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !454 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph5.i, label %_ZL16energyNoseHooverN3gmx8ArrayRefIKfEERK14gmx_ekindata_tbPK7t_statePK9t_extmass.exit

.lr.ph5.i:                                        ; preds = %bb.w
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !119 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 296
end_hunk_1
begin_hunk_2_@_ZN3gmx17GammaDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE:bb.a
  %i.dl = add i64 %i.dk, %i.di                    ; 2 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 12)
  %i.dn = xor i64 %i.dm, %i.dl                    ; 3 uses
  %i.do = add i64 %i.dn, %i.dl                    ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 31)
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = add i64 %i.do, %i.av                    ; 2 uses
  %i.ds = add i64 %i.ar, 5
  %i.dt = add i64 %i.ds, %i.dq
  store i64 %i.dr, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  store i64 %i.dt, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !153
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit.i

_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit.i: ; preds = %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit72, %._crit_edge.i.i.i.i.i
  %i.du = phi i64 [ %i.dr, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit72 ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.dv = phi i32 [ 1, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit72 ], [ %i.ai, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store i32 %i.dv, ptr %i.z, align 8, !tbaa !216
  %i.dw = uitofp i64 %i.du to float
  %i.dx = fmul nnan float %i.dw, f0x1F800000      ; 2 uses
  %i.dy = fcmp oeq float %i.dx, 1.000000e+00
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dx, float 2.000000e+00, float -1.000000e+00)
  %i.ea = select i1 %i.dy, float -1.000000e+00, float %i.dz ; 3 uses
  %i.eb = icmp samesign ugt i32 %i.dv, 1
  br i1 %i.eb, label %bb.o, label %._crit_edge.i.i.i.i19.i

._crit_edge.i.i.i.i19.i:                          ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit.i
  %.pre.i.i.i.i23.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !150
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26.i

bb.o:                                             ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ec = load i64, ptr %i.ab, align 8, !tbaa !150
  %i.ed = add i64 %i.ec, 1                        ; 3 uses
  store i64 %i.ed, ptr %i.ab, align 8, !tbaa !150
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.p, label %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.19)
          to label %bb.q unwind label %.thread.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.r unwind label %.thread24.i

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !160
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.eg, align 8, !tbaa !161
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.20, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !161
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !162
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.ef, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr %i.ef, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.u unwind label %bb.t

.thread.i:                                        ; preds = %bb.p
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread24.i:                                      ; preds = %bb.q
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #22
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i57 = phi i1 [ false, %bb.s ], [ true, %bb.r ]
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i57, label %common.resume.sink.split, label %common.resume

.sink.split.i:                                    ; preds = %.thread24.i, %.thread.i
  %.pn.pn23.ph.i = phi { ptr, i32 } [ %i.ei, %.thread24.i ], [ %i.eh, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume.sink.split

bb.u:                                             ; preds = %bb.s
  unreachable

_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.024.0.copyload.i = load i64, ptr %i.aa, align 8
  %i.ek = load i64, ptr %1, align 8, !tbaa !150   ; 5 uses
  %i.el = add i64 %i.ek, %.sroa.024.0.copyload.i
  %i.em = load i64, ptr %i.ac, align 8, !tbaa !150 ; 5 uses
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = xor i64 %i.en, 2004413935125273122      ; 4 uses
  %i.ep = add i64 %i.em, %i.ed                    ; 3 uses
  %i.eq = add i64 %i.el, %i.ep                    ; 2 uses
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 16)
  %i.es = xor i64 %i.er, %i.eq                    ; 3 uses
  %i.et = add i64 %i.es, %i.eq                    ; 2 uses
  %i.eu = tail call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 42)
  %i.ev = xor i64 %i.eu, %i.et                    ; 3 uses
  %i.ew = add i64 %i.ev, %i.et                    ; 2 uses
  %i.ex = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 12)
  %i.ey = xor i64 %i.ex, %i.ew                    ; 3 uses
  %i.ez = add i64 %i.ey, %i.ew                    ; 2 uses
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 31)
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = add i64 %i.ez, %i.em
  %i.fd = add i64 %i.eo, 1
  %i.fe = add i64 %i.fd, %i.fb                    ; 3 uses
  %i.ff = add i64 %i.fc, %i.fe                    ; 2 uses
  %i.fg = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 16)
  %i.fh = xor i64 %i.fg, %i.ff                    ; 3 uses
  %i.fi = add i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 32)
  %i.fk = xor i64 %i.fj, %i.fi                    ; 3 uses
  %i.fl = add i64 %i.fk, %i.fi                    ; 2 uses
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 24)
  %i.fn = xor i64 %i.fm, %i.fl                    ; 3 uses
  %i.fo = add i64 %i.fn, %i.fl                    ; 2 uses
  %i.fp = tail call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 21)
  %i.fq = xor i64 %i.fp, %i.fo
  %i.fr = add i64 %i.fo, %i.eo
  %i.fs = add i64 %i.ek, 2
  %i.ft = add i64 %i.fs, %i.fq                    ; 3 uses
  %i.fu = add i64 %i.fr, %i.ft                    ; 2 uses
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 16)
  %i.fw = xor i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = add i64 %i.fw, %i.fu                    ; 2 uses
  %i.fy = tail call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 42)
  %i.fz = xor i64 %i.fy, %i.fx                    ; 3 uses
  %i.ga = add i64 %i.fz, %i.fx                    ; 2 uses
  %i.gb = tail call i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 12)
  %i.gc = xor i64 %i.gb, %i.ga                    ; 3 uses
  %i.gd = add i64 %i.gc, %i.ga                    ; 2 uses
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 31)
  %i.gf = xor i64 %i.ge, %i.gd
  %i.gg = add i64 %i.gd, %i.ek
  %i.gh = add i64 %i.em, 3
  %i.gi = add i64 %i.gh, %i.gf                    ; 3 uses
  %i.gj = add i64 %i.gg, %i.gi                    ; 2 uses
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 16)
  %i.gl = xor i64 %i.gk, %i.gj                    ; 3 uses
  %i.gm = add i64 %i.gl, %i.gj                    ; 2 uses
  %i.gn = tail call i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 32)
  %i.go = xor i64 %i.gn, %i.gm                    ; 3 uses
  %i.gp = add i64 %i.go, %i.gm                    ; 2 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 24)
  %i.gr = xor i64 %i.gq, %i.gp                    ; 3 uses
  %i.gs = add i64 %i.gr, %i.gp                    ; 2 uses
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 21)
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = add i64 %i.gs, %i.em
  %i.gw = add i64 %i.eo, 4
  %i.gx = add i64 %i.gw, %i.gu                    ; 3 uses
  %i.gy = add i64 %i.gv, %i.gx                    ; 2 uses
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 16)
  %i.ha = xor i64 %i.gz, %i.gy                    ; 3 uses
  %i.hb = add i64 %i.ha, %i.gy                    ; 2 uses
  %i.hc = tail call i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 42)
  %i.hd = xor i64 %i.hc, %i.hb                    ; 3 uses
  %i.he = add i64 %i.hd, %i.hb                    ; 2 uses
  %i.hf = tail call i64 @llvm.fshl.i64(i64 %i.hd, i64 %i.hd, i64 12)
  %i.hg = xor i64 %i.hf, %i.he                    ; 3 uses
  %i.hh = add i64 %i.hg, %i.he                    ; 2 uses
  %i.hi = tail call i64 @llvm.fshl.i64(i64 %i.hg, i64 %i.hg, i64 31)
  %i.hj = xor i64 %i.hi, %i.hh
  %i.hk = add i64 %i.hh, %i.eo                    ; 2 uses
  %i.hl = add i64 %i.ek, 5
  %i.hm = add i64 %i.hl, %i.hj
  store i64 %i.hk, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !153
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26.i

_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26.i: ; preds = %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit, %._crit_edge.i.i.i.i19.i
  %i.hn = phi i64 [ %i.hk, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit ], [ %.pre.i.i.i.i23.i, %._crit_edge.i.i.i.i19.i ]
  %i.ho = phi i32 [ 1, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit ], [ 2, %._crit_edge.i.i.i.i19.i ] ; 2 uses
  store i32 %i.ho, ptr %i.z, align 8, !tbaa !216
  %i.hp = uitofp i64 %i.hn to float
  %i.hq = fmul nnan float %i.hp, f0x1F800000      ; 2 uses
  %i.hr = fcmp oeq float %i.hq, 1.000000e+00
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hq, float 2.000000e+00, float -1.000000e+00)
  %i.ht = select i1 %i.hr, float -1.000000e+00, float %i.hs ; 3 uses
  %i.hu = fmul float %i.ht, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.hu) ; 4 uses
  %i.hw = fcmp ogt float %i.hv, 1.000000e+00
  %i.hx = fcmp oeq float %i.hv, 0.000000e+00
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %bb.g, label %bb.v, !llvm.loop !3

bb.v:                                             ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit26.i
  %i.hz = fpext float %i.hv to double
  %i.ia = tail call ninf float @llvm.log.f32(float %i.hv)
  %i.ib = fpext ninf float %i.ia to double
  %i.ic = fmul double %i.ib, -2.000000e+00
  %i.id = fdiv double %i.ic, %i.hz
  %i.ie = tail call double @sqrt(double noundef %i.id) #22
  %i.if = fptrunc double %i.ie to float           ; 2 uses
  %i.ig = fmul float %i.ht, %i.if
  %i.ih = fmul float %i.ea, %i.if
  br label %_ZN3gmx18NormalDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE.exit

_ZN3gmx18NormalDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE.exit: ; preds = %bb.f, %bb.v
  %.sroa.1073.2 = phi float [ %i.ig, %bb.v ], [ %.sroa.1073.1, %bb.f ] ; 2 uses
  %.0.i = phi float [ %i.ih, %bb.v ], [ %.sroa.1073.1, %bb.f ]
  %.sroa.6.2 = xor i1 %.sroa.6.1, true            ; 2 uses
  %i.ii = fadd float %.0.i, 0.000000e+00          ; 3 uses
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ii, float 1.000000e+00) ; 4 uses
  %i.ik = fcmp ugt float %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.w, label %bb.f, !llvm.loop !461

bb.w:                                             ; preds = %_ZN3gmx18NormalDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE.exit
  %i.il = fmul float %i.ij, %i.ij
  %i.im = fmul float %i.ij, %i.il                 ; 4 uses
  %i.in = load i32, ptr %i.z, align 8, !tbaa !216 ; 3 uses
  %i.io = icmp ugt i32 %i.in, 1
  br i1 %i.io, label %bb.x, label %._crit_edge.i.i.i.i43

._crit_edge.i.i.i.i43:                            ; preds = %bb.w
  %.phi.trans.insert1.i.i.i.i45 = zext nneg i32 %i.in to i64
  %.phi.trans.insert2.i.i.i.i46 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert.i.i.i.i.i, i64 %.phi.trans.insert1.i.i.i.i45
  %.pre.i.i.i.i47 = load i64, ptr %.phi.trans.insert2.i.i.i.i46, align 8, !tbaa !150
  %i.ip = add nuw nsw i32 %i.in, 1
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.aa)
  %i.iq = tail call { i64, i64 } @_ZN3gmx19ThreeFry2x64GeneralILj20ELj64EE13generateBlockERKSt5arrayImLm2EES5_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.aa) ; 2 uses
  %i.ir = extractvalue { i64, i64 } %i.iq, 0      ; 2 uses
  %i.is = extractvalue { i64, i64 } %i.iq, 1
  store i64 %i.ir, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  store i64 %i.is, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !153
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit

_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit: ; preds = %._crit_edge.i.i.i.i43, %bb.x
  %i.it = phi i64 [ %i.ir, %bb.x ], [ %.pre.i.i.i.i47, %._crit_edge.i.i.i.i43 ]
  %i.iu = phi i32 [ 1, %bb.x ], [ %i.ip, %._crit_edge.i.i.i.i43 ]
  store i32 %i.iu, ptr %i.z, align 8, !tbaa !216
  %i.iv = uitofp i64 %i.it to float
  %i.iw = fmul nnan float %i.iv, f0x1F800000      ; 2 uses
  %i.ix = fcmp oeq float %i.iw, 1.000000e+00
  %i.iy = fadd float %i.iw, f0x00800000
  %i.iz = select i1 %i.ix, float f0x00800000, float %i.iy ; 2 uses
  %i.ja = fmul float %i.ii, %i.ii                 ; 3 uses
  %i.jb = fmul float %i.ja, -3.310000e-02
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.ja, float 1.000000e+00)
  %i.jd = fcmp olt float %i.iz, %i.jc
  br i1 %i.jd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit
  %i.je = fmul float %i.y, %i.im
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !272
  %i.jh = fmul float %i.je, %i.jg
  br label %bb.ad

bb.z:                                             ; preds = %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit
  %i.ji = tail call float @llvm.log.f32(float %i.iz)
  %i.jj = fsub float 1.000000e+00, %i.im
  %i.jk = tail call noundef float @logf(float noundef %i.im) #22
  %i.jl = fadd float %i.jj, %i.jk
  %i.jm = fmul float %i.y, %i.jl
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ja, float 5.000000e-01, float %i.jm)
  %i.jo = fcmp olt float %i.ji, %i.jn
  br i1 %i.jo, label %bb.aa, label %bb.e, !llvm.loop !462

bb.aa:                                            ; preds = %bb.z
  %i.jp = fmul float %i.y, %i.im
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !272
  %i.js = fmul float %i.jp, %i.jr
  br label %bb.ad

bb.ab:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.jt = fadd float %i.a, 1.000000e+00
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !272
  call void @_ZN3gmx17GammaDistributionIfE10param_typeC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.jt, float noundef %i.jv)
  %i.jw = call noundef float @_ZN3gmx17GammaDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_RKNS1_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !216 ; 3 uses
  %i.jz = icmp ugt i32 %i.jy, 1
  br i1 %i.jz, label %bb.ac, label %._crit_edge.i.i.i.i49

._crit_edge.i.i.i.i49:                            ; preds = %bb.ab
  %.phi.trans.insert.i.i.i.i50 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert1.i.i.i.i51 = zext nneg i32 %i.jy to i64
  %.phi.trans.insert2.i.i.i.i52 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert.i.i.i.i50, i64 %.phi.trans.insert1.i.i.i.i51
  %.pre.i.i.i.i53 = load i64, ptr %.phi.trans.insert2.i.i.i.i52, align 8, !tbaa !150
  %i.ka = add nuw nsw i32 %i.jy, 1
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit56

bb.ac:                                            ; preds = %bb.ab
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.kb)
  %i.kc = call { i64, i64 } @_ZN3gmx19ThreeFry2x64GeneralILj20ELj64EE13generateBlockERKSt5arrayImLm2EES5_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.kb) ; 2 uses
  %i.kd = extractvalue { i64, i64 } %i.kc, 0      ; 2 uses
  %i.ke = extractvalue { i64, i64 } %i.kc, 1
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.kd, ptr %i.kf, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i.i.i55, align 8, !tbaa !153
  br label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit56

_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit56: ; preds = %._crit_edge.i.i.i.i49, %bb.ac
  %i.kg = phi i64 [ %i.kd, %bb.ac ], [ %.pre.i.i.i.i53, %._crit_edge.i.i.i.i49 ]
  %i.kh = phi i32 [ 1, %bb.ac ], [ %i.ka, %._crit_edge.i.i.i.i49 ]
  store i32 %i.kh, ptr %i.jx, align 8, !tbaa !216
  %i.ki = uitofp i64 %i.kg to float
  %i.kj = fmul nnan float %i.ki, f0x1F800000      ; 2 uses
  %i.kk = fcmp oeq float %i.kj, 1.000000e+00
  %i.kl = fadd float %i.kj, f0x00800000
  %i.km = select i1 %i.kk, float f0x00800000, float %i.kl
  %i.kn = fdiv float 1.000000e+00, %i.a
  %i.ko = call noundef float @powf(float noundef %i.km, float noundef %i.kn) #22
  %i.kp = fmul float %i.jw, %i.ko
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.y, %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit56, %_ZN3gmx23ExponentialDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit
  %.2 = phi float [ %i.w, %_ZN3gmx23ExponentialDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit ], [ %i.kp, %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj64EEEEEfRT_.exit56 ], [ %i.js, %bb.aa ], [ %i.jh, %bb.y ]
  ret float %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z22initSimulatedAnnealingRK10t_inputrecP14gmx_ekindata_tPN3gmx6UpdateE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z20doSimulatedAnnealingRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load double, ptr %i.b, align 8, !tbaa !463
  %i.d = fptrunc double %i.c to float
  tail call void @_Z28update_annealing_target_tempRK10t_inputrecfP14gmx_ekindata_tPN3gmx6UpdateE(ptr noundef nonnull align 8 dereferenceable(888) %0, float noundef %i.d, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.a
}

declare noundef zeroext i1 @_Z20doSimulatedAnnealingRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z28update_annealing_target_tempRK10t_inputrecfP14gmx_ekindata_tPN3gmx6UpdateE(ptr noundef nonnull align 8 dereferenceable(888) %0, float noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load i32, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !466
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN14gmx_ekindata_t30setCurrentReferenceTemperatureEif.exit, %bb.a
  tail call void @_ZN3gmx6Update28update_temperature_constantsERK10t_inputrecRK14gmx_ekindata_t(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(224) %2)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN14gmx_ekindata_t30setCurrentReferenceTemperatureEif.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN14gmx_ekindata_t30setCurrentReferenceTemperatureEif.exit ] ; 12 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !468
  switch i32 %i.o, label %bb.c [
    i32 0, label %_ZN14gmx_ekindata_t30setCurrentReferenceTemperatureEif.exit
    i32 2, label %.thread.i
    i32 1, label %.thread62.i
  ]

.thread62.i:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !162
  br label %bb.f

.thread.i:                                        ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !162  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !172
end_hunk_2
