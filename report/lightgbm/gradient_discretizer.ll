Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gradient_discretizer?download=true
inline.NumInlined: 717
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE:bb.a
  %.not = icmp eq i64 %i.f, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !tbaa !161
  store i32 -1, ptr %i.v, align 4, !tbaa !160
  %i.w = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 32                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !159

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = load i32, ptr %2, align 4, !tbaa !161
  %i.ag = trunc i64 %.0 to i32
  %i.ah = add i32 %i.af, %i.ag
  ret i32 %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5336) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca double, align 8                   ; 5 uses
  %i.n = alloca double, align 8                   ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.o = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !35
  store ptr %5, ptr %i.f, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 43, ptr %i.d, align 8, !tbaa !71
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !171
  %i.r = load i64, ptr %i.d, align 8, !tbaa !71   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.q, ptr noundef nonnull align 1 dereferenceable(43) @.str.10, i64 43, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !172
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.u = load ptr, ptr %7, align 8, !tbaa !171    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.p
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.w = load i64, ptr %i.p, align 8, !tbaa !73
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.y, ptr %8, align 8, !tbaa !169
  store i32 1635017060, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.z, align 8, !tbaa !172
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.aa, align 4, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !172
  %i.ad = icmp eq i64 %i.ac, 4
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %.preheader75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !171
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = load i32, ptr %i.y, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br i1 %i.ak, label %.preheader, label %.preheader75

.preheader75:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !186
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph:                                           ; preds = %.preheader75
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 336
  br label %bb.i

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !186
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph78, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27, !noalias !187
  br label %._crit_edge

.lr.ph78:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5288
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader.._crit_edge_crit_edge
  %i.bc = phi ptr [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.cq, %bb.b ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41, !noalias !187 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %.noexc.i50, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i50:                                       ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #26, !noalias !187
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.bc
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.noexc7.i

.noexc7.i:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #27, !noalias !187 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.bm = add i64 %i.bg, -8
  %i.bn = sub i64 %i.bm, %i.bh
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bk, i8 0, i64 %i.bp, i1 false), !tbaa !39, !noalias !187
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !27, !noalias !187 ; 2 uses
  %.pre9.i = load ptr, ptr %i.be, align 8, !tbaa !41, !noalias !187
  %.pre10.i = ptrtoint ptr %.pre9.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %i.bq = trunc i64 %.pre13.i to i32
  %i.br = and i32 %i.bq, -8
  %i.bs = ptrtoint ptr %i.bl to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc7.i
  %.sroa.10.0 = phi i64 [ %i.bs, %.noexc7.i ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.068.0 = phi ptr [ %i.bk, %.noexc7.i ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 8 uses
  %.pre-phi14.i = phi i32 [ %i.br, %.noexc7.i ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.bt = phi ptr [ %.pre.i, %.noexc7.i ], [ %i.bc, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5, !noalias !187
  store ptr @_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENUlPKcPciiE_8__invokeES8_S9_ii, ptr %i.c, align 8, !tbaa !46, !noalias !187
  invoke void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef %i.bt, i32 noundef %.pre-phi14.i, i32 noundef 8, ptr noundef %.sroa.068.0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_.exit unwind label %bb.a, !noalias !187

bb.a:                                             ; preds = %.loopexit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5, !noalias !187
  %.not.i.i.i.i = icmp eq ptr %.sroa.068.0, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.a, %_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit, %_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit.split-lp
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit.split-lp ], [ %lpad.loopexit, %_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit ], [ %i.bu, %bb.a ]
  %i.bv = ptrtoint ptr %.sroa.068.0 to i64
  %i.bw = sub i64 %.sroa.10.0, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0, i64 noundef %i.bw) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.a ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5, !noalias !187
  %i.bx = load i32, ptr %i.av, align 4, !tbaa !186
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph78, %bb.b
  %indvars.iv83 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next84, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.cf = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv83
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !33
  %i.ci = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv83
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !33
  store i32 %i.ck, ptr %i.g, align 4, !tbaa !33
  %i.cl = load ptr, ptr %i.ba, align 8, !tbaa !189
  %i.cm = sext i32 %i.ch to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store ptr %i.cn, ptr %i.h, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !39
  %i.co = call i32 @OMP_NUM_THREADS()
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.co)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.i, ptr nonnull %i.j)
  %i.cp = load double, ptr %i.i, align 8, !tbaa !39
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv83, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx ; 2 uses
  store double %i.cp, ptr %i.cr, align 8, !tbaa !39
  %i.cs = load double, ptr %i.j, align 8, !tbaa !39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.cu = load i32, ptr %i.av, align 4, !tbaa !186
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next84, %i.cv
  br i1 %i.cw, label %bb.b, label %._crit_edge, !llvm.loop !164

._crit_edge81:                                    ; preds = %_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.068.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge81.thread

._crit_edge81.thread:                             ; preds = %bb.h, %._crit_edge81
  %i.cx = ptrtoint ptr %.sroa.068.0 to i64
  %i.cy = sub i64 %.sroa.10.0, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0, i64 noundef %i.cy) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.c:                                             ; preds = %.lr.ph80, %bb.h
  %indvars.iv86 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next87, %bb.h ] ; 4 uses
  %.idx99 = shl nuw nsw i64 %indvars.iv86, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 %.idx99 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !39 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load double, ptr %i.db, align 8, !tbaa !39
  %i.dd = load double, ptr %i.bz, align 8, !tbaa !197
  %i.de = load double, ptr %i.ca, align 8, !tbaa !198
  %i.df = load double, ptr %i.cb, align 8, !tbaa !199 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dg = trunc nuw nsw i64 %indvars.iv86 to i32
  store i32 %i.dg, ptr %i.b, align 4, !tbaa !33
  %i.dh = load ptr, ptr %i.cc, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc51 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit.split-lp

.noexc51:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.di = load ptr, ptr %i.cd, align 8, !tbaa !201
  %i.dj = invoke noundef i32 %i.di(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.f unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit, !inline_history !165 ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dk = call double @llvm.fabs.f64(double %i.da)
  %i.dl = fsub double %i.dk, %i.dd                ; 2 uses
  %i.dm = fcmp ogt double %i.dl, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.dm, double %i.dl, double 0.000000e+00
  %i.dn = fcmp ogt double %i.da, 0.000000e+00
  %i.do = zext i1 %i.dn to i32
  %i.dp = fcmp olt double %i.da, 0.000000e+00
  %.neg.i.i.i = sext i1 %i.dp to i32
  %i.dq = add nsw i32 %.neg.i.i.i, %i.do
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = fneg double %i.dr
  %i.dt = fmul double %.sroa.speculated.i.i, %i.ds
  %i.du = fadd double %i.dc, %i.de
  %i.dv = fdiv double %i.dt, %i.du                ; 4 uses
  %i.dw = fcmp ogt double %i.df, 0.000000e+00
  %i.dx = call double @llvm.fabs.f64(double %i.dv) ; 2 uses
  %i.dy = fcmp ogt double %i.dx, %i.df
  %or.cond.i = and i1 %i.dw, %i.dy
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dz = fcmp ogt double %i.dv, 0.000000e+00
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fcmp olt double %i.dv, 0.000000e+00
  %.neg.i.i = sext i1 %i.eb to i32
  %i.ec = add nsw i32 %.neg.i.i, %i.ea
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fmul double %i.df, %i.ed                ; 2 uses
  %.pre89 = call double @llvm.fabs.f64(double %i.ee)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pre-phi = phi double [ %i.dx, %bb.f ], [ %.pre89, %bb.g ]
  %.0.i = phi double [ %i.dv, %bb.f ], [ %i.ee, %bb.g ]
  %i.ef = fcmp ole double %.pre-phi, f0x38AA95A5C0000000
  %i.eg = select i1 %i.ef, double 0.000000e+00, double %.0.i
  %i.eh = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv86
  store double %i.eg, ptr %i.ei, align 8, !tbaa !39
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ej = load i32, ptr %i.av, align 4, !tbaa !186
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next87, %i.ek
  br i1 %i.el, label %bb.c, label %._crit_edge81.thread, !llvm.loop !166

_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit:         ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZNSt6vectorIdSaIdEED2Ev.exit54.loopexit.split-lp: ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.i:                                             ; preds = %.lr.ph, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit60
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit60 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  store i32 0, ptr %i.k, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.em = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !33
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !33
  store i32 %i.er, ptr %i.k, align 4, !tbaa !33
  %i.es = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.et = sext i32 %i.eo to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  store ptr %i.eu, ptr %i.l, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !39
  %i.ev = call i32 @OMP_NUM_THREADS()
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.ev)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12, ptr nonnull %i.k, ptr nonnull %i.l, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.m, ptr nonnull %i.n)
  %i.ew = load double, ptr %i.m, align 8, !tbaa !39 ; 3 uses
  %i.ex = load double, ptr %i.n, align 8, !tbaa !39
  %i.ey = load double, ptr %i.ar, align 8, !tbaa !197
  %i.ez = load double, ptr %i.as, align 8, !tbaa !198
  %i.fa = load double, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.fb = call double @llvm.fabs.f64(double %i.ew)
  %i.fc = fsub double %i.fb, %i.ey                ; 2 uses
  %i.fd = fcmp ogt double %i.fc, 0.000000e+00
  %.sroa.speculated.i.i55 = select i1 %i.fd, double %i.fc, double 0.000000e+00
  %i.fe = fcmp ogt double %i.ew, 0.000000e+00
  %i.ff = zext i1 %i.fe to i32
  %i.fg = fcmp olt double %i.ew, 0.000000e+00
  %.neg.i.i.i56 = sext i1 %i.fg to i32
  %i.fh = add nsw i32 %.neg.i.i.i56, %i.ff
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fneg double %i.fi
  %i.fk = fmul double %.sroa.speculated.i.i55, %i.fj
  %i.fl = fadd double %i.ex, %i.ez
  %i.fm = fdiv double %i.fk, %i.fl                ; 4 uses
  %i.fn = fcmp ogt double %i.fa, 0.000000e+00
  %i.fo = call double @llvm.fabs.f64(double %i.fm) ; 2 uses
  %i.fp = fcmp ogt double %i.fo, %i.fa
  %or.cond.i57 = and i1 %i.fn, %i.fp
  br i1 %or.cond.i57, label %bb.j, label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit60

bb.j:                                             ; preds = %bb.i
  %i.fq = fcmp ogt double %i.fm, 0.000000e+00
  %i.fr = zext i1 %i.fq to i32
  %i.fs = fcmp olt double %i.fm, 0.000000e+00
  %.neg.i.i59 = sext i1 %i.fs to i32
  %i.ft = add nsw i32 %.neg.i.i59, %i.fr
  %i.fu = sitofp i32 %i.ft to double
  %i.fv = fmul double %i.fa, %i.fu                ; 2 uses
  %.pre90 = call double @llvm.fabs.f64(double %i.fv)
  br label %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit60

_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit60: ; preds = %bb.i, %bb.j
  %.pre-phi91 = phi double [ %i.fo, %bb.i ], [ %.pre90, %bb.j ]
  %.0.i58 = phi double [ %i.fm, %bb.i ], [ %i.fv, %bb.j ]
  %i.fw = fcmp ole double %.pre-phi91, f0x38AA95A5C0000000
  %i.fx = select i1 %i.fw, double 0.000000e+00, double %.0.i58
  %i.fy = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv
  store double %i.fx, ptr %i.fz, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load i32, ptr %i.al, align 4, !tbaa !186
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next, %i.gb
  br i1 %i.gc, label %bb.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, !llvm.loop !167

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM16FeatureHistogram27CalculateSplittedLeafOutputILb1ELb1ELb0EEEdddddddid.exit60, %.preheader75, %._crit_edge81.thread, %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.gd, ptr %9, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 43, ptr %i.a, align 8, !tbaa !71
  %i.ge = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.ge, ptr %9, align 8, !tbaa !171
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !71  ; 3 uses
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.ge, ptr noundef nonnull align 1 dereferenceable(43) @.str.10, i64 43, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !172
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.gi = load ptr, ptr %9, align 8, !tbaa !171   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.gd
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.gk = load i64, ptr %i.gd, align 8, !tbaa !73
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !39
  %i.k = load i32, ptr %0, align 4, !tbaa !33     ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !33
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 5 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !33
  %i.n = load i32, ptr %i.a, align 4, !tbaa !33   ; 4 uses
  %.not22 = icmp sgt i32 %i.n, %i.m
  br i1 %.not22, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %3, align 8, !tbaa !83     ; 3 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !35     ; 3 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !35     ; 3 uses
  %i.r = sext i32 %i.n to i64                     ; 3 uses
  %i.s = add nsw i32 %i.m, 1
  %i.t = add i32 %i.m, %i.n
  %i.u = and i32 %i.t, 1
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !37
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.x
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !37
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  %i.af = fadd <2 x double> %i.ae, zeroinitializer ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %i.ag = icmp eq i32 %i.m, %i.n
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ah = phi <2 x double> [ %i.be, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !37
  %i.an = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ak
  %i.ao = load float, ptr %i.an, align 4, !tbaa !37
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fadd <2 x double> %i.ah, %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
end_hunk_0
