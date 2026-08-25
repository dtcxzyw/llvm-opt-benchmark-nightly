Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sphereflake?download=true
inline.NumInlined: 106
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A256\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_sphereflake.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [4 x %struct.v_t], align 16         ; 9 uses
  %3 = alloca %struct.v_t, align 8                ; 2 uses
  %4 = alloca %struct.v_t, align 8                ; 4 uses
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #11, !inline_history !11
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.e, i32 2)
  %i.f = icmp sgt i32 %i.e, 2
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %.sroa.speculated, %bb.b ], [ 6, %bb.a ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.025 = phi i32 [ %i.j, %.lr.ph ], [ 9, %.lr.ph.preheader ]
  %.01124 = phi i32 [ %i.h, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.h = add nsw i32 %.01124, -1
  %i.i = mul nsw i32 %.025, 9                     ; 2 uses
  %i.j = add nsw i32 %i.i, 9
  %i.k = icmp samesign ugt i32 %.01124, 3
  br i1 %i.k, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.l = add nsw i32 %i.i, 10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.m = phi i32 [ 2, %bb.b ], [ %i.g, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 10, %bb.b ], [ %i.l, %._crit_edge.loopexit ] ; 3 uses
  %i.n = sext i32 %.0.lcssa to i64                ; 2 uses
  %i.o = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.n, i64 72) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #12 ; 4 uses
  %.idx = mul nsw i64 %i.n, 72
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.idx ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge, %.preheader.i.i
  %.016.i.i = phi i32 [ %i.aa, %.preheader.i.i ], [ 100, %._crit_edge ]
  %.01015.i.i = phi double [ %i.w, %.preheader.i.i ], [ 1.000000e+00, %._crit_edge ] ; 3 uses
  %i.u = fdiv double 1.312500e+00, %.01015.i.i
  %i.v = fadd double %.01015.i.i, %i.u
  %i.w = fmul double %i.v, 5.000000e-01           ; 3 uses
  %i.x = fsub double %i.w, %.01015.i.i
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ule double %i.y, f0x3D719799812DEA11
  %i.aa = add nsw i32 %.016.i.i, -1               ; 2 uses
  %.not.i.i = icmp eq i32 %i.aa, 0
  %or.cond.i.i = select i1 %i.z, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZNK3v_t4normEv.exit, label %.preheader.i.i, !llvm.loop !14

_ZNK3v_t4normEv.exit:                             ; preds = %.preheader.i.i
  %i.ab = fdiv double 1.000000e+00, %i.w          ; 3 uses
  %i.ac = fmul double %i.ab, 2.500000e-01
  %i.ad = fmul double %i.ab, -5.000000e-01
  store double %i.ac, ptr %4, align 8, !tbaa !15, !alias.scope !18
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ab, ptr %i.ae, align 8, !tbaa !23, !alias.scope !18
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.ad, ptr %i.af, align 8, !tbaa !24, !alias.scope !18
  %i.ag = tail call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %i.s, i32 noundef %i.m, i32 noundef %.0.lcssa, ptr noundef nonnull byval(%struct.v_t) align 8 %3, ptr noundef nonnull byval(%struct.v_t) align 8 %4, double noundef 1.000000e+00) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1024) ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef 1024)
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store <2 x double> <double -5.125000e+02, double f0xC080015555555555>, ptr %2, align 16, !tbaa !25
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> <double 0.000000e+00, double f0xC07FFD5555555555>, ptr %.sroa.543.0..sroa_idx.i, align 16, !tbaa !25
  %.sroa.442.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> <double -5.125000e+02, double 0.000000e+00>, ptr %.sroa.442.0..sroa_idx.1.i, align 16, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x double> <double f0xC080015555555555, double -5.115000e+02>, ptr %i.am, align 16, !tbaa !25
  %.sroa.543.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <2 x double> <double 0.000000e+00, double -5.115000e+02>, ptr %.sroa.543.0..sroa_idx.2.i, align 16, !tbaa !25
  %.sroa.442.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <2 x double> <double f0xC07FFD5555555555, double 0.000000e+00>, ptr %.sroa.442.0..sroa_idx.3.i, align 16, !tbaa !25
  %i.an = icmp sgt i32 %.0.lcssa, 0
  br label %.preheader74.i

.preheader74.i:                                   ; preds = %bb.t, %_ZNK3v_t4normEv.exit
  %.01987.i = phi i32 [ %i.jj, %bb.t ], [ 1024, %_ZNK3v_t4normEv.exit ]
  %.sroa.7.086.i = phi double [ %i.ji, %bb.t ], [ 1.023000e+03, %_ZNK3v_t4normEv.exit ] ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %.sroa.7.086.i, i64 1
  br label %.preheader.i

bb.c:                                             ; preds = %bb.t
  %i.ap = load ptr, ptr @_ZSt4cout, align 8, !tbaa !26
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !45
  %.not.i1.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !51
  br label %_ZL10trace_rgssii.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10), !inline_history !52
  br label %_ZL10trace_rgssii.exit

.preheader.i:                                     ; preds = %.split.us.i, %.preheader74.i
  %.01885.i = phi i32 [ 1024, %.preheader74.i ], [ %i.jp, %.split.us.i ]
  %.sroa.038.184.i = phi double [ 0.000000e+00, %.preheader74.i ], [ %i.jo, %.split.us.i ] ; 2 uses
  %i.bd = load <2 x double>, ptr @_ZL5light, align 16 ; 3 uses
  %i.be = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL5light, i64 16), align 16 ; 3 uses
  br i1 %i.an, label %.preheader.split.us.i.preheader, label %.split.us.i

.preheader.split.us.i.preheader:                  ; preds = %.preheader.i
  %i.bf = insertelement <2 x double> %i.ao, double %.sroa.038.184.i, i64 0
  %i.bg = fneg <2 x double> %i.bd
  %i.bh = shufflevector <2 x double> %i.bd, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3> ; 2 uses
  br label %.preheader.split.us.i

.preheader.split.us.i:                            ; preds = %.preheader.split.us.i.preheader, %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i ], [ 0, %.preheader.split.us.i.preheader ] ; 2 uses
  %.01782.us.i = phi double [ %i.jh, %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i ], [ 0.000000e+00, %.preheader.split.us.i.preheader ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bi, align 8, !tbaa !25, !noalias !53
  %i.bk = fadd <2 x double> %i.bf, %i.bj          ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !24, !noalias !53
  %i.bn = fadd double %i.bm, 1.024000e+03         ; 3 uses
  %i.bo = fmul <2 x double> %i.bk, %i.bk          ; 2 uses
  %shift = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bo, %shift
  %i.bp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bq = fmul double %i.bn, %i.bn
  %i.br = fadd double %i.bp, %i.bq                ; 2 uses
  %i.bs = fcmp oeq double %i.br, +inf
  br i1 %i.bs, label %_ZNK3v_t4normEv.exit.us.i, label %.preheader.i.i.us.i

.preheader.i.i.us.i:                              ; preds = %.preheader.split.us.i, %.preheader.i.i.us.i
  %.016.i.i.us.i = phi i32 [ %i.bz, %.preheader.i.i.us.i ], [ 100, %.preheader.split.us.i ]
  %.01015.i.i.us.i = phi double [ %i.bv, %.preheader.i.i.us.i ], [ 1.000000e+00, %.preheader.split.us.i ] ; 3 uses
  %i.bt = fdiv double %i.br, %.01015.i.i.us.i
  %i.bu = fadd double %.01015.i.i.us.i, %i.bt
  %i.bv = fmul double %i.bu, 5.000000e-01         ; 3 uses
  %i.bw = fsub double %i.bv, %.01015.i.i.us.i
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp ule double %i.bx, f0x3D719799812DEA11
  %i.bz = add nsw i32 %.016.i.i.us.i, -1          ; 2 uses
  %.not.i.i.us.i = icmp eq i32 %i.bz, 0
  %or.cond.i.i.us.i = select i1 %i.by, i1 true, i1 %.not.i.i.us.i
  br i1 %or.cond.i.i.us.i, label %_ZNK3v_t4normEv.exit.us.i, label %.preheader.i.i.us.i, !llvm.loop !14

_ZNK3v_t4normEv.exit.us.i:                        ; preds = %.preheader.i.i.us.i, %.preheader.split.us.i
  %.1.i.i.us.i = phi double [ +inf, %.preheader.split.us.i ], [ %i.bv, %.preheader.i.i.us.i ]
  %i.ca = fdiv double 1.000000e+00, %.1.i.i.us.i  ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x double> %i.bk, %i.cc          ; 4 uses
  %i.ce = fmul double %i.bn, %i.ca                ; 4 uses
  br label %.lr.ph.i25.us.i

.lr.ph.i25.us.i:                                  ; preds = %bb.m, %_ZNK3v_t4normEv.exit.us.i
  %.sroa.9.0.us.i.a = phi double [ %.sroa.9.1.us.i.a, %bb.m ], [ 0.000000e+00, %_ZNK3v_t4normEv.exit.us.i ] ; 4 uses
  %i.cf = phi double [ %i.fp, %bb.m ], [ +inf, %_ZNK3v_t4normEv.exit.us.i ] ; 6 uses
  %.034.i.us.i = phi ptr [ %.1.i.us.i, %bb.m ], [ %i.s, %_ZNK3v_t4normEv.exit.us.i ] ; 9 uses
  %i.cg = phi <2 x double> [ %i.fq, %bb.m ], [ zeroinitializer, %_ZNK3v_t4normEv.exit.us.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !24, !noalias !56
  %i.cj = fadd double %i.ci, 4.500000e+00         ; 3 uses
  %i.ck = fmul double %i.ce, %i.cj
  %i.cl = load <2 x double>, ptr %.034.i.us.i, align 8, !tbaa !25, !noalias !56 ; 3 uses
  %i.cm = fmul <2 x double> %i.cd, %i.cl          ; 2 uses
  %shift66 = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop67 = fadd <2 x double> %i.cm, %shift66
  %i.cn = extractelement <2 x double> %foldExtExtBinop67, i64 0
  %i.co = fadd double %i.cn, %i.ck                ; 4 uses
  %i.cp = fmul double %i.co, %i.co
  %i.cq = fmul <2 x double> %i.cl, %i.cl          ; 2 uses
  %shift69 = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x double> %i.cq, %shift69
  %i.cr = extractelement <2 x double> %foldExtExtBinop70, i64 0
  %i.cs = fmul double %i.cj, %i.cj
  %i.ct = fadd double %i.cr, %i.cs
  %i.cu = fsub double %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 24
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !59 ; 2 uses
  %i.cx = fmul double %i.cw, %i.cw
  %i.cy = fadd double %i.cx, %i.cu                ; 3 uses
  %i.cz = fcmp olt double %i.cy, 0.000000e+00
  br i1 %i.cz, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i34.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i25.us.i
  %i.da = fcmp oeq double %i.cy, +inf
  br i1 %i.da, label %_ZL8LLVMsqrtd.exit.i.i32.us.i, label %.preheader.i.i.i27.us.i

.preheader.i.i.i27.us.i:                          ; preds = %bb.g, %.preheader.i.i.i27.us.i
  %.016.i.i.i28.us.i = phi i32 [ %i.dh, %.preheader.i.i.i27.us.i ], [ 100, %bb.g ]
  %.01015.i.i.i29.us.i = phi double [ %i.dd, %.preheader.i.i.i27.us.i ], [ 1.000000e+00, %bb.g ] ; 3 uses
  %i.db = fdiv double %i.cy, %.01015.i.i.i29.us.i
  %i.dc = fadd double %.01015.i.i.i29.us.i, %i.db
  %i.dd = fmul double %i.dc, 5.000000e-01         ; 3 uses
  %i.de = fsub double %i.dd, %.01015.i.i.i29.us.i
  %i.df = tail call double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp ule double %i.df, f0x3D719799812DEA11
  %i.dh = add nsw i32 %.016.i.i.i28.us.i, -1      ; 2 uses
  %.not.i.i.i30.us.i = icmp eq i32 %i.dh, 0
  %or.cond.i.i.i31.us.i = select i1 %i.dg, i1 true, i1 %.not.i.i.i30.us.i
  br i1 %or.cond.i.i.i31.us.i, label %_ZL8LLVMsqrtd.exit.i.i32.us.i, label %.preheader.i.i.i27.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i.i32.us.i:                    ; preds = %.preheader.i.i.i27.us.i, %bb.g
  %.1.i.i.i33.us.i = phi double [ +inf, %bb.g ], [ %i.dd, %.preheader.i.i.i27.us.i ] ; 2 uses
  %i.di = fadd double %i.co, %.1.i.i.i33.us.i     ; 2 uses
  %i.dj = fcmp olt double %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i34.us.i, label %bb.h

bb.h:                                             ; preds = %_ZL8LLVMsqrtd.exit.i.i32.us.i
  %i.dk = fsub double %i.co, %.1.i.i.i33.us.i     ; 2 uses
  %i.dl = fcmp ogt double %i.dk, 0.000000e+00
  %i.dm = select i1 %i.dl, double %i.dk, double %i.di
  br label %_ZNK8sphere_t9intersectERK5ray_t.exit.i34.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit.i34.us.i:   ; preds = %bb.h, %_ZL8LLVMsqrtd.exit.i.i32.us.i, %.lr.ph.i25.us.i
  %.1.i.i35.us.i = phi double [ +inf, %.lr.ph.i25.us.i ], [ %i.dm, %bb.h ], [ +inf, %_ZL8LLVMsqrtd.exit.i.i32.us.i ]
  %i.dn = fcmp ult double %.1.i.i35.us.i, %i.cf
  br i1 %i.dn, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i34.us.i
  %i.do = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !61
  %i.dq = getelementptr inbounds [72 x i8], ptr %.034.i.us.i, i64 %i.dp
  br label %bb.m

bb.j:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i34.us.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 32
  %i.ds = load <2 x double>, ptr %i.dr, align 8, !tbaa !25, !noalias !63 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 48
  %i.du = load double, ptr %i.dt, align 8, !tbaa !24, !noalias !63 ; 2 uses
  %i.dv = fadd double %i.du, 4.500000e+00         ; 3 uses
  %i.dw = fmul <2 x double> %i.cd, %i.ds          ; 2 uses
  %shift72 = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop73 = fadd <2 x double> %i.dw, %shift72
  %i.dx = extractelement <2 x double> %foldExtExtBinop73, i64 0
  %i.dy = fmul double %i.ce, %i.dv
  %i.dz = fadd double %i.dx, %i.dy                ; 4 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = fmul <2 x double> %i.ds, %i.ds          ; 2 uses
  %shift75 = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop76 = fadd <2 x double> %i.eb, %shift75
  %i.ec = extractelement <2 x double> %foldExtExtBinop76, i64 0
  %i.ed = fmul double %i.dv, %i.dv
  %i.ee = fadd double %i.ec, %i.ed
  %i.ef = fsub double %i.ea, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 56
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !59 ; 3 uses
  %i.ei = fmul double %i.eh, %i.eh
  %i.ej = fadd double %i.ei, %i.ef                ; 3 uses
  %i.ek = fcmp olt double %i.ej, 0.000000e+00
  br i1 %i.ek, label %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = fcmp oeq double %i.ej, +inf
  br i1 %i.el, label %_ZL8LLVMsqrtd.exit.i24.i.us.i, label %.preheader.i.i19.i.us.i

.preheader.i.i19.i.us.i:                          ; preds = %bb.k, %.preheader.i.i19.i.us.i
  %.016.i.i20.i.us.i = phi i32 [ %i.es, %.preheader.i.i19.i.us.i ], [ 100, %bb.k ]
  %.01015.i.i21.i.us.i = phi double [ %i.eo, %.preheader.i.i19.i.us.i ], [ 1.000000e+00, %bb.k ] ; 3 uses
  %i.em = fdiv double %i.ej, %.01015.i.i21.i.us.i
  %i.en = fadd double %.01015.i.i21.i.us.i, %i.em
  %i.eo = fmul double %i.en, 5.000000e-01         ; 3 uses
  %i.ep = fsub double %i.eo, %.01015.i.i21.i.us.i
  %i.eq = tail call double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp ule double %i.eq, f0x3D719799812DEA11
  %i.es = add nsw i32 %.016.i.i20.i.us.i, -1      ; 2 uses
  %.not.i.i22.i.us.i = icmp eq i32 %i.es, 0
  %or.cond.i.i23.i.us.i = select i1 %i.er, i1 true, i1 %.not.i.i22.i.us.i
  br i1 %or.cond.i.i23.i.us.i, label %_ZL8LLVMsqrtd.exit.i24.i.us.i, label %.preheader.i.i19.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i24.i.us.i:                    ; preds = %.preheader.i.i19.i.us.i, %bb.k
  %.1.i.i25.i.us.i = phi double [ +inf, %bb.k ], [ %i.eo, %.preheader.i.i19.i.us.i ] ; 2 uses
  %i.et = fadd double %i.dz, %.1.i.i25.i.us.i     ; 2 uses
  %i.eu = fcmp olt double %i.et, 0.000000e+00
  br i1 %i.eu, label %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i:   ; preds = %_ZL8LLVMsqrtd.exit.i24.i.us.i
  %i.ev = fsub double %i.dz, %.1.i.i25.i.us.i     ; 2 uses
  %i.ew = fcmp ogt double %i.ev, 0.000000e+00
  %i.ex = select i1 %i.ew, double %i.ev, double %i.et ; 4 uses
  %i.ey = fcmp olt double %i.ex, %i.cf
  br i1 %i.ey, label %bb.l, label %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i

bb.l:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i
  %i.ez = fmul double %i.ce, %i.ex
  %i.fa = fadd double %i.ez, -4.500000e+00
  %i.fb = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %i.cd, %i.fc
  %i.fe = fadd <2 x double> %i.fd, zeroinitializer
  %i.ff = fsub <2 x double> %i.fe, %i.ds
  %i.fg = fsub double %i.fa, %i.du
  %i.fh = fdiv double 1.000000e+00, %i.eh         ; 2 uses
  %i.fi = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x double> %i.fj, %i.ff
  %i.fl = fmul double %i.fh, %i.fg
  br label %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i: ; preds = %bb.l, %_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i, %_ZL8LLVMsqrtd.exit.i24.i.us.i, %bb.j
  %.sroa.9.2.us.i.a = phi double [ %i.fl, %bb.l ], [ %.sroa.9.0.us.i.a, %_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i ], [ %.sroa.9.0.us.i.a, %bb.j ], [ %.sroa.9.0.us.i.a, %_ZL8LLVMsqrtd.exit.i24.i.us.i ]
  %i.fm = phi double [ %i.ex, %bb.l ], [ %i.cf, %_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i ], [ %i.cf, %bb.j ], [ %i.cf, %_ZL8LLVMsqrtd.exit.i24.i.us.i ]
  %i.fn = phi <2 x double> [ %i.fk, %bb.l ], [ %i.cg, %_ZNK8sphere_t9intersectERK5ray_t.exit27.i.us.i ], [ %i.cg, %bb.j ], [ %i.cg, %_ZL8LLVMsqrtd.exit.i24.i.us.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.034.i.us.i, i64 72
  br label %bb.m

bb.m:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i, %bb.i
  %.sroa.9.1.us.i.a = phi double [ %.sroa.9.2.us.i.a, %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i ], [ %.sroa.9.0.us.i.a, %bb.i ] ; 3 uses
  %i.fp = phi double [ %i.fm, %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i ], [ %i.cf, %bb.i ] ; 4 uses
  %.1.i.us.i = phi ptr [ %i.fo, %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i ], [ %i.dq, %bb.i ] ; 2 uses
  %i.fq = phi <2 x double> [ %i.fn, %_ZNK8sphere_t9intersectERK5ray_t.exit27.thread.i.us.i ], [ %i.cg, %bb.i ] ; 3 uses
  %i.fr = icmp ult ptr %.1.i.us.i, %i.t
  br i1 %i.fr, label %.lr.ph.i25.us.i, label %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i, !llvm.loop !66

_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i: ; preds = %bb.m
  %i.fs = fcmp oeq double %i.fp, +inf
  br i1 %i.fs, label %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i, label %bb.n

bb.n:                                             ; preds = %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i
  %i.ft = fmul <2 x double> %i.bd, %i.fq          ; 2 uses
  %shift78 = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop79 = fadd <2 x double> %shift78, %i.ft
  %i.fu = extractelement <2 x double> %foldExtExtBinop79, i64 0
  %i.fv = fmul double %i.be, %.sroa.9.1.us.i.a
  %i.fw = fadd double %i.fv, %i.fu                ; 2 uses
  %i.fx = fcmp ult double %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.o, label %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i

bb.o:                                             ; preds = %bb.n
  %i.fy = fneg double %i.fw
  %i.fz = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %i.cd, %i.ga
  %i.gc = fmul double %i.ce, %i.fp
  %i.gd = fadd <2 x double> %i.gb, zeroinitializer
  %i.ge = fadd double %i.gc, -4.500000e+00
  %i.gf = fmul <2 x double> %i.fq, splat (double f0x3D719799812DEA11)
  %i.gg = fmul double %.sroa.9.1.us.i.a, f0x3D719799812DEA11
  %i.gh = fadd <2 x double> %i.gd, %i.gf          ; 2 uses
  %i.gi = fadd double %i.gg, %i.ge                ; 2 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.s, %bb.o
  %.01328.i.us.i = phi ptr [ %.2.i.us.i, %bb.s ], [ %i.s, %bb.o ] ; 9 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !24, !noalias !67
  %i.gl = fsub double %i.gk, %i.gi                ; 3 uses
  %i.gm = fmul double %i.be, %i.gl
  %i.gn = load <2 x double>, ptr %.01328.i.us.i, align 8, !tbaa !25, !noalias !67
  %i.go = fsub <2 x double> %i.gn, %i.gh          ; 3 uses
  %i.gp = fmul <2 x double> %i.go, %i.bh          ; 2 uses
  %shift81 = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop82 = fsub <2 x double> %shift81, %i.gp
  %i.gq = extractelement <2 x double> %foldExtExtBinop82, i64 0
  %i.gr = fsub double %i.gq, %i.gm                ; 4 uses
  %i.gs = fmul double %i.gr, %i.gr
  %i.gt = fmul <2 x double> %i.go, %i.go          ; 2 uses
  %shift84 = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop85 = fadd <2 x double> %i.gt, %shift84
  %i.gu = extractelement <2 x double> %foldExtExtBinop85, i64 0
  %i.gv = fmul double %i.gl, %i.gl
  %i.gw = fadd double %i.gu, %i.gv
  %i.gx = fsub double %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 24
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !59 ; 2 uses
  %i.ha = fmul double %i.gz, %i.gz
  %i.hb = fadd double %i.ha, %i.gx                ; 3 uses
  %i.hc = fcmp olt double %i.hb, 0.000000e+00
  br i1 %i.hc, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us.i
  %i.hd = fcmp oeq double %i.hb, +inf
  br i1 %i.hd, label %_ZL8LLVMsqrtd.exit.i.i.us.i, label %.preheader.i.i.i.us.i

.preheader.i.i.i.us.i:                            ; preds = %bb.p, %.preheader.i.i.i.us.i
  %.016.i.i.i.us.i = phi i32 [ %i.hk, %.preheader.i.i.i.us.i ], [ 100, %bb.p ]
  %.01015.i.i.i.us.i = phi double [ %i.hg, %.preheader.i.i.i.us.i ], [ 1.000000e+00, %bb.p ] ; 3 uses
  %i.he = fdiv double %i.hb, %.01015.i.i.i.us.i
  %i.hf = fadd double %.01015.i.i.i.us.i, %i.he
  %i.hg = fmul double %i.hf, 5.000000e-01         ; 3 uses
  %i.hh = fsub double %i.hg, %.01015.i.i.i.us.i
  %i.hi = tail call double @llvm.fabs.f64(double %i.hh)
  %i.hj = fcmp ule double %i.hi, f0x3D719799812DEA11
  %i.hk = add nsw i32 %.016.i.i.i.us.i, -1        ; 2 uses
  %.not.i.i.i23.us.i = icmp eq i32 %i.hk, 0
  %or.cond.i.i.i.us.i = select i1 %i.hj, i1 true, i1 %.not.i.i.i23.us.i
  br i1 %or.cond.i.i.i.us.i, label %_ZL8LLVMsqrtd.exit.i.i.us.i, label %.preheader.i.i.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i.i.us.i:                      ; preds = %.preheader.i.i.i.us.i, %bb.p
  %.1.i.i.i.us.i = phi double [ +inf, %bb.p ], [ %i.hg, %.preheader.i.i.i.us.i ] ; 2 uses
  %i.hl = fadd double %i.gr, %.1.i.i.i.us.i       ; 2 uses
  %i.hm = fcmp olt double %i.hl, 0.000000e+00
  br i1 %i.hm, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i:     ; preds = %_ZL8LLVMsqrtd.exit.i.i.us.i
  %i.hn = fsub double %i.gr, %.1.i.i.i.us.i       ; 2 uses
  %i.ho = fcmp ogt double %i.hn, 0.000000e+00
  %i.hp = select i1 %i.ho, double %i.hn, double %i.hl
  %i.hq = fcmp une double %i.hp, +inf
  br i1 %i.hq, label %bb.q, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i

bb.q:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 48
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !24, !noalias !70
  %i.hu = fsub double %i.ht, %i.gi                ; 3 uses
  %i.hv = fmul double %i.be, %i.hu
  %i.hw = load <2 x double>, ptr %i.hr, align 8, !tbaa !25, !noalias !70
  %i.hx = fsub <2 x double> %i.hw, %i.gh          ; 3 uses
  %i.hy = fmul <2 x double> %i.hx, %i.bh          ; 2 uses
  %shift87 = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop88 = fsub <2 x double> %shift87, %i.hy
  %i.hz = extractelement <2 x double> %foldExtExtBinop88, i64 0
  %i.ia = fsub double %i.hz, %i.hv                ; 4 uses
  %i.ib = fmul double %i.ia, %i.ia
  %i.ic = fmul <2 x double> %i.hx, %i.hx          ; 2 uses
  %shift90 = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop91 = fadd <2 x double> %i.ic, %shift90
  %i.id = extractelement <2 x double> %foldExtExtBinop91, i64 0
  %i.ie = fmul double %i.hu, %i.hu
  %i.if = fadd double %i.id, %i.ie
  %i.ig = fsub double %i.ib, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 56
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !59 ; 2 uses
  %i.ij = fmul double %i.ii, %i.ii
  %i.ik = fadd double %i.ij, %i.ig                ; 3 uses
  %i.il = fcmp olt double %i.ik, 0.000000e+00
  br i1 %i.il, label %.thread.i.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.im = fcmp oeq double %i.ik, +inf
  br i1 %i.im, label %_ZL8LLVMsqrtd.exit.i20.i.us.i, label %.preheader.i.i15.i.us.i

.preheader.i.i15.i.us.i:                          ; preds = %bb.r, %.preheader.i.i15.i.us.i
  %.016.i.i16.i.us.i = phi i32 [ %i.it, %.preheader.i.i15.i.us.i ], [ 100, %bb.r ]
  %.01015.i.i17.i.us.i = phi double [ %i.ip, %.preheader.i.i15.i.us.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %i.in = fdiv double %i.ik, %.01015.i.i17.i.us.i
  %i.io = fadd double %.01015.i.i17.i.us.i, %i.in
  %i.ip = fmul double %i.io, 5.000000e-01         ; 3 uses
  %i.iq = fsub double %i.ip, %.01015.i.i17.i.us.i
  %i.ir = tail call double @llvm.fabs.f64(double %i.iq)
  %i.is = fcmp ule double %i.ir, f0x3D719799812DEA11
  %i.it = add nsw i32 %.016.i.i16.i.us.i, -1      ; 2 uses
  %.not.i.i18.i.us.i = icmp eq i32 %i.it, 0
  %or.cond.i.i19.i.us.i = select i1 %i.is, i1 true, i1 %.not.i.i18.i.us.i
  br i1 %or.cond.i.i19.i.us.i, label %_ZL8LLVMsqrtd.exit.i20.i.us.i, label %.preheader.i.i15.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i20.i.us.i:                    ; preds = %.preheader.i.i15.i.us.i, %bb.r
  %.1.i.i21.i.us.i = phi double [ +inf, %bb.r ], [ %i.ip, %.preheader.i.i15.i.us.i ] ; 2 uses
  %i.iu = fadd double %i.ia, %.1.i.i21.i.us.i     ; 2 uses
  %i.iv = fcmp olt double %i.iu, 0.000000e+00
  br i1 %i.iv, label %.thread.i.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i:   ; preds = %_ZL8LLVMsqrtd.exit.i20.i.us.i
  %i.iw = fsub double %i.ia, %.1.i.i21.i.us.i     ; 2 uses
  %i.ix = fcmp ogt double %i.iw, 0.000000e+00
  %i.iy = select i1 %i.ix, double %i.iw, double %i.iu ; 2 uses
  %i.iz = fcmp ueq double %i.iy, +inf
  br i1 %i.iz, label %.thread.i.us.i, label %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i

.thread.i.us.i:                                   ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i, %_ZL8LLVMsqrtd.exit.i20.i.us.i, %bb.q
  %i.ja = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 72
  br label %bb.s

_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i: ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i, %_ZL8LLVMsqrtd.exit.i.i.us.i, %.lr.ph.i.us.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 64
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !61
  %i.jd = getelementptr inbounds [72 x i8], ptr %.01328.i.us.i, i64 %i.jc
  br label %bb.s

bb.s:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, %.thread.i.us.i
  %.2.i.us.i = phi ptr [ %i.jd, %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i ], [ %i.ja, %.thread.i.us.i ] ; 2 uses
  %i.je = icmp ult ptr %.2.i.us.i, %i.t
  br i1 %i.je, label %.lr.ph.i.us.i, label %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i, !llvm.loop !73

_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i: ; preds = %bb.s, %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i
  %.sroa.3.0.us.i = phi double [ %i.iy, %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i ], [ +inf, %bb.s ]
  %i.jf = fcmp oeq double %.sroa.3.0.us.i, +inf
  %i.jg = select i1 %i.jf, double %i.fy, double 0.000000e+00
  br label %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i

_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i:         ; preds = %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i, %bb.n, %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i
  %.0.i.us.i = phi double [ %i.jg, %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i ]
  %i.jh = fadd double %.01782.us.i, %.0.i.us.i    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.split.us.loopexit.i, label %.preheader.split.us.i, !llvm.loop !74

bb.t:                                             ; preds = %.split.us.i
  %i.ji = fadd double %.sroa.7.086.i, -1.000000e+00
  %i.jj = add nsw i32 %.01987.i, -1               ; 2 uses
  %.not.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i, label %bb.c, label %.preheader74.i, !llvm.loop !75

.split.us.loopexit.i:                             ; preds = %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i
  %i.jk = fmul double %i.jh, 6.400000e+01
  %i.jl = fptosi double %i.jk to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %.preheader.i
  %.us-phi.i = phi i32 [ %i.jl, %.split.us.loopexit.i ], [ 0, %.preheader.i ]
  %i.jm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.us-phi.i)
  %i.jn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.jo = fadd double %.sroa.038.184.i, 1.000000e+00
  %i.jp = add nsw i32 %.01885.i, -1               ; 2 uses
  %.not22.i = icmp eq i32 %i.jp, 0
  br i1 %.not22.i, label %bb.t, label %.preheader.i, !llvm.loop !76

_ZL10trace_rgssii.exit:                           ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi i8 [ %i.ay, %bb.e ], [ %i.bc, %bb.f ]
  %i.jq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.jr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jq) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef initializes((0, 72)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.v_t) align 8 captures(none) %3, ptr noundef byval(%struct.v_t) align 8 %4, double noundef %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.basis_t, align 8            ; 7 uses
  %7 = alloca %struct.v_t, align 16               ; 3 uses
  %8 = alloca %struct.v_t, align 16               ; 3 uses
  %9 = alloca %struct.v_t, align 16               ; 3 uses
  %10 = alloca %struct.v_t, align 16              ; 3 uses
  %i.a = fmul double %5, 2.000000e+00
  %i.b = icmp sgt i32 %1, 1
  %i.c = select i1 %i.b, i32 %2, i32 1
  %i.d = sext i32 %i.c to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
