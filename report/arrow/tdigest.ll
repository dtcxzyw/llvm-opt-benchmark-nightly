inline.NumInlined: 879
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.lifetime.start.p0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7TDigest11TDigestImpl5MergeERKSt6vectorIPKS2_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::priority_queue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = add nsw i64 %i.g, 1                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not115 = icmp eq i64 %i.h, 0
  br i1 %.not115, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ESaISD_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ESaISD_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.h, 4
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20 ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.h
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ESaISD_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.13.1 = phi ptr [ %i.l, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ESaISD_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %.sroa.10.0 = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ESaISD_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %.sroa.10.0, ptr %2, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %.sroa.10.0, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %.sroa.13.1, ptr %i.n, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [24 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %.val28 = load ptr, ptr %i.s, align 8, !tbaa !17 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val29 = load ptr, ptr %i.t, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %.val29, %.val28
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit
  %i.u = ptrtoint ptr %.val28 to i64
  %i.v = ptrtoint ptr %.val29 to i64
  invoke fastcc void @_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJSC_SC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %2, i64 %i.u, i64 %i.v)
          to label %._crit_edge141 unwind label %bb.d

._crit_edge141:                                   ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8, !tbaa !102
  %.pre142 = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.e:                                             ; preds = %._crit_edge141, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit
  %i.x = phi ptr [ %.pre142, %._crit_edge141 ], [ %i.b, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit ] ; 2 uses
  %i.y = phi ptr [ %.pre, %._crit_edge141 ], [ %i.c, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE7reserveEm.exit ] ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !37
  %i.ag = load i32, ptr %i.p, align 8, !tbaa !22
  %i.ah = sub nsw i32 1, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.o, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store double %i.af, ptr %i.ak, align 8, !tbaa !103
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !15
  %.val5.i.i = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.val6.i.i = load ptr, ptr %i.am, align 8, !tbaa !20
  %.not.i.i.i62 = icmp eq ptr %.val6.i.i, %.val5.i.i
  br i1 %.not.i.i.i62, label %bb.k, label %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_18CentroidES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_18CentroidES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge
  store ptr %.val5.i.i, ptr %i.am, align 8, !tbaa !20
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0105.0128 = phi ptr [ %i.y, %.lr.ph ], [ %i.bl, %bb.j ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.0105.0128, align 8, !tbaa !25 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !22
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [24 x i8], ptr %i.ao, i64 %i.ar ; 2 uses
  %.val = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val27 = load ptr, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %.not22 = icmp eq ptr %.val27, %.val
  br i1 %.not22, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = ptrtoint ptr %.val to i64
  %i.av = ptrtoint ptr %.val27 to i64
  invoke fastcc void @_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJSC_SC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %2, i64 %i.au, i64 %i.av)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !37
  %i.ay = load double, ptr %i.aa, align 8, !tbaa !37
  %i.az = fadd double %i.ax, %i.ay
  store double %i.az, ptr %i.aa, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bc = load double, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.bd = fcmp olt double %i.bb, %i.bc
  %i.be = select i1 %i.bd, double %i.bb, double %i.bc
  store double %i.be, ptr %i.ab, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.bg = load double, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !23 ; 2 uses
  %i.bi = fcmp olt double %i.bg, %i.bh
  %i.bj = select i1 %i.bi, double %i.bh, double %i.bg
  store double %i.bj, ptr %i.ac, align 8, !tbaa !24
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0105.0128, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.x
  br i1 %i.bm, label %._crit_edge, label %bb.f

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_18CentroidES3_EvT_S5_RSaIT0_E.exit.i.i.i, %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %i.bn, align 8, !tbaa !23
  %.promoted = load ptr, ptr %2, align 8, !tbaa !97 ; 3 uses
  %.promoted129 = load ptr, ptr %i.m, align 8, !tbaa !100 ; 3 uses
  %i.bp = ptrtoint ptr %.promoted129 to i64
  %i.bq = ptrtoint ptr %.promoted to i64          ; 3 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 16
  br i1 %i.bs, label %.lr.ph135.preheader, label %._crit_edge136

.lr.ph135.preheader:                              ; preds = %bb.k
  %.promoted132 = load ptr, ptr %i.n, align 8
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.y
  %i.bt = phi i64 [ %.pre-phi148, %bb.y ], [ %i.br, %.lr.ph135.preheader ]
  %i.bu = phi i64 [ %.pre-phi146, %bb.y ], [ %i.bq, %.lr.ph135.preheader ] ; 2 uses
  %i.bv = phi ptr [ %i.ff, %bb.y ], [ %.promoted, %.lr.ph135.preheader ] ; 18 uses
  %.val49130133 = phi ptr [ %.val49131, %bb.y ], [ %.promoted129, %.lr.ph135.preheader ] ; 6 uses
  %i.bw = phi ptr [ %i.fe, %bb.y ], [ %.promoted132, %.lr.ph135.preheader ] ; 6 uses
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !33
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33 ; 3 uses
  %i.cb = inttoptr i64 %i.ca to ptr
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE3AddERKNS1_8CentroidE(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %bb.l unwind label %.loopexit120

bb.l:                                             ; preds = %.lr.ph135
  %i.cc = icmp sgt i64 %i.bt, 16
  br i1 %i.cc, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds i8, ptr %.val49130133, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i67 = getelementptr inbounds i8, ptr %.val49130133, i64 -8
  %i.ce = load <2 x ptr>, ptr %i.cd, align 8
  %.sroa.03.0.copyload.i.i.i66 = load ptr, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.bv, align 8, !tbaa !33
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !33
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !33
  store i64 %i.cg, ptr %.sroa.4.0..sroa_idx.i.i.i67, align 8, !tbaa !33
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.ch, %i.bu                    ; 2 uses
  %i.cj = ashr exact i64 %i.ci, 4                 ; 3 uses
  %i.ck = add nsw i64 %i.cj, -1
  %3 = sdiv i64 %i.ck, 2
  %i.cl = icmp sgt i64 %i.cj, 2
  br i1 %i.cl, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i69

.lr.ph.i.i.i.i79:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i79
  %.041.i.i.i.i80 = phi i64 [ %spec.select.i.i.i.i85, %.lr.ph.i.i.i.i79 ], [ 0, %bb.m ] ; 2 uses
  %i.cm = shl i64 %.041.i.i.i.i80, 1              ; 2 uses
  %i.cn = add i64 %i.cm, 2                        ; 2 uses
  %i.co = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.cn
  %i.cp = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.cq = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.cp
  %.val2.i.i.i.i.i81 = load ptr, ptr %i.co, align 8, !tbaa !104
  %.val3.i.i.i.i.i82 = load ptr, ptr %i.cq, align 8, !tbaa !104
  %.val2.val.i.i.i.i.i83 = load double, ptr %.val2.i.i.i.i.i81, align 8, !tbaa !34
  %.val3.val.i.i.i.i.i84 = load double, ptr %.val3.i.i.i.i.i82, align 8, !tbaa !34
  %i.cr = fcmp ogt double %.val2.val.i.i.i.i.i83, %.val3.val.i.i.i.i.i84
  %spec.select.i.i.i.i85 = select i1 %i.cr, i64 %i.cp, i64 %i.cn ; 4 uses
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %spec.select.i.i.i.i85
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %.041.i.i.i.i80
  %i.cu = load <2 x i64>, ptr %i.cs, align 8, !tbaa !33
  store <2 x i64> %i.cu, ptr %i.ct, align 8, !tbaa !33
  %i.cv = icmp slt i64 %spec.select.i.i.i.i85, %3
  br i1 %i.cv, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i69, !llvm.loop !106

._crit_edge.i.i.i.i69:                            ; preds = %.lr.ph.i.i.i.i79, %bb.m
  %.0.lcssa.i.i.i.i70 = phi i64 [ 0, %bb.m ], [ %spec.select.i.i.i.i85, %.lr.ph.i.i.i.i79 ] ; 5 uses
  %i.cw = and i64 %i.ci, 16
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i69
  %i.cy = add nsw i64 %i.cj, -2
  %i.cz = ashr exact i64 %i.cy, 1
  %i.da = icmp eq i64 %.0.lcssa.i.i.i.i70, %i.cz
  br i1 %i.da, label %.thread.i.i.i, label %bb.o

.thread.i.i.i:                                    ; preds = %bb.n
  %i.db = shl nuw nsw i64 %.0.lcssa.i.i.i.i70, 1
  %i.dc = or disjoint i64 %i.db, 1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.dc
  %i.de = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %.0.lcssa.i.i.i.i70
  %i.df = load <2 x i64>, ptr %i.dd, align 8, !tbaa !33
  store <2 x i64> %i.df, ptr %i.de, align 8, !tbaa !33
  br label %.lr.ph.i.i.i.i.i72

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i69
  %.not.i.i.i71 = icmp eq i64 %.0.lcssa.i.i.i.i70, 0
  br i1 %.not.i.i.i71, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSL_SaISN_EEEUlRKSD_ST_E_EEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i72

.lr.ph.i.i.i.i.i72:                               ; preds = %bb.o, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.dc, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i70, %bb.o ]
  %.val16.val.i.i.i.i.i73 = load double, ptr %.sroa.03.0.copyload.i.i.i66, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i72
  %.07.i.i.i.i.i74 = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i.i72 ], [ %.098.i.i56.i.i.i, %bb.q ] ; 3 uses
  %.098.in.i.i.i.i.i75 = add nsw i64 %.07.i.i.i.i.i74, -1
  %.098.i.i56.i.i.i = lshr i64 %.098.in.i.i.i.i.i75, 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.098.i.i56.i.i.i ; 2 uses
  %.val2.i.i.i.i.i.i76 = load ptr, ptr %i.dg, align 8 ; 2 uses
  %.val2.val.i.i.i.i.i.i77 = load double, ptr %.val2.i.i.i.i.i.i76, align 8, !tbaa !34
  %i.dh = fcmp ogt double %.val2.val.i.i.i.i.i.i77, %.val16.val.i.i.i.i.i73
  br i1 %i.dh, label %bb.q, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSL_SaISN_EEEUlRKSD_ST_E_EEEvT_SW_SW_RT0_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.di = ptrtoint ptr %.val2.i.i.i.i.i.i76 to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %.07.i.i.i.i.i74 ; 2 uses
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !33
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !33
  %.not7.i.i.i = icmp eq i64 %.098.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSL_SaISN_EEEUlRKSD_ST_E_EEEvT_SW_SW_RT0_.exit.i.i, label %bb.p, !llvm.loop !107

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSL_SaISN_EEEUlRKSD_ST_E_EEEvT_SW_SW_RT0_.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.0.lcssa.i.i.i.i.i78 = phi i64 [ 0, %bb.o ], [ %.07.i.i.i.i.i74, %bb.p ], [ 0, %bb.q ]
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %.0.lcssa.i.i.i.i.i78
  %i.do = ptrtoint <2 x ptr> %i.ce to <2 x i64>
  store <2 x i64> %i.do, ptr %i.dn, align 8, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSL_SaISN_EEEUlRKSD_ST_E_EEEvT_SW_SW_RT0_.exit.i.i, %bb.l
  %i.dp = getelementptr inbounds i8, ptr %.val49130133, i64 -16 ; 5 uses
  store ptr %i.dp, ptr %i.m, align 8, !tbaa !100
  %i.dq = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cb
  br i1 %i.dr, label %._crit_edge143, label %bb.s

._crit_edge143:                                   ; preds = %bb.r
  %.pre144 = ptrtoint ptr %i.dp to i64
  %.pre145 = ptrtoint ptr %i.bv to i64            ; 2 uses
  %.pre147 = sub i64 %.pre144, %.pre145
  br label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.bw
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.ds, ptr %i.dp, align 8, !tbaa !33
  %i.dt = getelementptr inbounds i8, ptr %.val49130133, i64 -8
  store i64 %i.ca, ptr %i.dt, align 8, !tbaa !33
  store ptr %.val49130133, ptr %i.m, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJRSB_SG_EEERSC_DpOT_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.du = ptrtoint ptr %i.bw to i64
  %i.dv = sub i64 %i.du, %i.bu                    ; 4 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775792
  br i1 %i.dw, label %bb.v, label %_ZNKSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
          to label %.noexc89 unwind label %.loopexit.split-lp

.noexc89:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.dx = ashr exact i64 %i.dv, 4                 ; 3 uses
  %i.dy = icmp eq ptr %i.bw, %i.bv                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dy, i64 1, i64 %i.dx
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dx
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.ec, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #20
          to label %.noexc90 unwind label %.loopexit120 ; 6 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dv ; 2 uses
  store i64 %i.ds, ptr %i.ef, align 8, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ca, ptr %i.eg, align 8, !tbaa !33
  br i1 %i.dy, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc90, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i ], [ %i.ee, %.noexc90 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %.noexc90 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !108
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.bw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !112

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc90
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ee, %.noexc90 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.dv) #21
  store ptr %i.ee, ptr %2, align 8, !tbaa !97
  store ptr %i.ej, ptr %i.m, align 8, !tbaa !100
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  store ptr %i.ek, ptr %i.n, align 8, !tbaa !101
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJRSB_SG_EEERSC_DpOT_.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJRSB_SG_EEERSC_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i, %bb.t
  %i.el = phi ptr [ %i.bw, %bb.t ], [ %i.ek, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i ]
  %i.em = phi ptr [ %i.bv, %bb.t ], [ %i.ee, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i ] ; 5 uses
  %.val4.i86 = phi ptr [ %.val49130133, %bb.t ], [ %i.ej, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE17_M_realloc_insertIJRSB_SG_EEEvNS2_IPSC_SE_EEDpOT_.exit.i.i ] ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %.val4.i86, i64 -16 ; 2 uses
  %i.eo = load <2 x ptr>, ptr %i.en, align 8
  %i.ep = ptrtoint ptr %.val4.i86 to i64
  %i.eq = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %i.es = ashr exact i64 %i.er, 4                 ; 2 uses
  %i.et = add nsw i64 %i.es, -1                   ; 2 uses
  %i.eu = icmp sgt i64 %i.es, 1
  br i1 %i.eu, label %.lr.ph.i.i.i, label %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJRSB_SG_EEERSC_DpOT_.exit.i
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.en, align 8
  %.val16.val.i.i.i = load double, ptr %.sroa.02.0.copyload.i.i, align 8, !tbaa !34
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.et, %.lr.ph.i.i.i ], [ %.098.i910.i.i, %bb.x ] ; 3 uses
  %.098.in.i.i.i = add nsw i64 %.07.i.i.i, -1
  %.098.i910.i.i = lshr i64 %.098.in.i.i.i, 1     ; 3 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %.098.i910.i.i ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.ev, align 8   ; 2 uses
  %.val2.val.i.i.i.i = load double, ptr %.val2.i.i.i.i, align 8, !tbaa !34
  %i.ew = fcmp ogt double %.val2.val.i.i.i.i, %.val16.val.i.i.i
  br i1 %i.ew, label %bb.x, label %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit

bb.x:                                             ; preds = %bb.w
  %i.ex = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.ey = getelementptr inbounds [16 x i8], ptr %i.em, i64 %.07.i.i.i ; 2 uses
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !33
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !33
  %.not.i6.i = icmp eq i64 %.098.i910.i.i, 0
  br i1 %.not.i6.i, label %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit, label %bb.w, !llvm.loop !107

_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit: ; preds = %bb.w, %bb.x, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJRSB_SG_EEERSC_DpOT_.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.et, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJRSB_SG_EEERSC_DpOT_.exit.i ], [ %.07.i.i.i, %bb.w ], [ 0, %bb.x ]
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.em, i64 %.0.lcssa.i.i.i
  %i.fd = ptrtoint <2 x ptr> %i.eo to <2 x i64>
  store <2 x i64> %i.fd, ptr %i.fc, align 8, !tbaa !33
  br label %bb.y

.loopexit120:                                     ; preds = %.lr.ph135, %_ZNKSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %._crit_edge143, %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit
  %.pre-phi148 = phi i64 [ %.pre147, %._crit_edge143 ], [ %i.er, %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit ] ; 2 uses
  %.pre-phi146 = phi i64 [ %.pre145, %._crit_edge143 ], [ %i.eq, %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit ] ; 2 uses
  %i.fe = phi ptr [ %i.bw, %._crit_edge143 ], [ %i.el, %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit ]
  %.val49131 = phi ptr [ %i.dp, %._crit_edge143 ], [ %.val4.i86, %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit ] ; 2 uses
  %i.ff = phi ptr [ %i.bv, %._crit_edge143 ], [ %i.em, %_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJRSC_ST_EEEvDpOT_.exit ] ; 2 uses
  %i.fg = icmp ugt i64 %.pre-phi148, 16
  br i1 %i.fg, label %.lr.ph135, label %._crit_edge136, !llvm.loop !113

._crit_edge136:                                   ; preds = %bb.y, %bb.k
  %.val48.lcssa = phi ptr [ %.promoted, %bb.k ], [ %i.ff, %bb.y ] ; 5 uses
  %.val49.lcssa = phi ptr [ %.promoted129, %bb.k ], [ %.val49131, %bb.y ]
  %.lcssa121 = phi i64 [ %i.bq, %bb.k ], [ %.pre-phi146, %bb.y ]
  %i.fh = icmp eq ptr %.val48.lcssa, %.val49.lcssa
  br i1 %i.fh, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %._crit_edge136
  %i.fi = load i64, ptr %.val48.lcssa, align 8, !tbaa !33
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %.val48.lcssa, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !33
  %i.fm = inttoptr i64 %i.fl to ptr
  br label %bb.aa

end_hunk_0
begin_hunk_1_@_ZNSt14priority_queueISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSH_SaISJ_EEEUlRKSD_SP_E_E7emplaceIJSC_SC_EEEvDpOT_:bb.a
  %i.ad = ashr exact i64 %i.ac, 4                 ; 2 uses
  %i.ae = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.af = icmp sgt i64 %i.ad, 1
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSJ_SaISL_EEEUlRKSD_SR_E_EvT_ST_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJSB_SB_EEERSC_DpOT_.exit
  %.sroa.02.0.copyload.i = load ptr, ptr %i.y, align 8
  %.val16.val.i.i = load double, ptr %.sroa.02.0.copyload.i, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.098.i910.i, %bb.g ] ; 3 uses
  %.098.in.i.i = add nsw i64 %.07.i.i, -1
  %.098.i910.i = lshr i64 %.098.in.i.i, 1         ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.098.i910.i ; 2 uses
  %.val2.i.i.i = load ptr, ptr %i.ag, align 8     ; 2 uses
  %.val2.val.i.i.i = load double, ptr %.val2.i.i.i, align 8, !tbaa !34
  %i.ah = fcmp ogt double %.val2.val.i.i.i, %.val16.val.i.i
  br i1 %i.ah, label %bb.g, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSJ_SaISL_EEEUlRKSD_SR_E_EvT_ST_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %.val2.i.i.i to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %.val, i64 %.07.i.i ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !33
  store i64 %i.am, ptr %i.al, align 8, !tbaa !33
  %.not.i6 = icmp eq i64 %.098.i910.i, 0
  br i1 %.not.i6, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSJ_SaISL_EEEUlRKSD_SR_E_EvT_ST_T0_.exit, label %bb.f, !llvm.loop !107

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINS1_IPKN5arrow8internal12_GLOBAL__N_18CentroidESt6vectorIS6_SaIS6_EEEESC_ES9_ISD_SaISD_EEEEZNS4_7TDigest11TDigestImpl5MergeERKS9_IPKSJ_SaISL_EEEUlRKSD_SR_E_EvT_ST_T0_.exit: ; preds = %bb.f, %bb.g, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJSB_SB_EEERSC_DpOT_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ae, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN5arrow8internal12_GLOBAL__N_18CentroidES_IS6_SaIS6_EEEESB_ESaISC_EE12emplace_backIJSB_SB_EEERSC_DpOT_.exit ], [ 0, %bb.g ], [ %.07.i.i, %bb.f ]
  %i.an = getelementptr inbounds [16 x i8], ptr %.val, i64 %.0.lcssa.i.i
  %i.ao = ptrtoint <2 x ptr> %i.z to <2 x i64>
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE3AddERKNS1_8CentroidE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !149 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.g = fadd double %i.d, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !16 ; 2 uses
  %i.j = fcmp ugt double %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.val, i64 -8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = fadd double %i.f, %i.n                   ; 2 uses
  store double %i.o, ptr %i.m, align 8, !tbaa !36
  %i.p = load double, ptr %1, align 8, !tbaa !34
  %i.q = load double, ptr %i.l, align 8, !tbaa !34 ; 2 uses
  %i.r = fsub double %i.p, %i.q
  %i.s = load double, ptr %i.e, align 8, !tbaa !36
  %i.t = fmul double %i.r, %i.s
  %i.u = fdiv double %i.t, %i.o
  %i.v = fadd double %i.q, %i.u
  store double %i.v, ptr %i.l, align 8, !tbaa !34
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !103 ; 3 uses
  %i.y = fdiv double %i.d, %i.x
  %.val11 = load double, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double 2.000000e+00, double -1.000000e+00)
  %i.aa = tail call double @asin(double noundef %i.z) #22, !tbaa !3
  %i.ab = fmul double %.val11, %i.aa
  %i.ac = fadd double %i.ab, 1.000000e+00
  %i.ad = fdiv double %i.ac, %.val11
  %i.ae = tail call double @sin(double noundef %i.ad) #22, !tbaa !3
  %i.af = fadd double %i.ae, 1.000000e+00
  %i.ag = fmul double %i.af, 5.000000e-01
  %i.ah = fmul double %i.x, %i.ag                 ; 2 uses
  %i.ai = fcmp ugt double %i.ah, %i.i
  %storemerge = select i1 %i.ai, double %i.ah, double %i.x
  store double %storemerge, ptr %i.h, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !20
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !17 ; 5 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %.val.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.f, label %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.at = ashr exact i64 %i.ar, 4                 ; 3 uses
  %i.au = icmp eq ptr %i.ak, %.val.i.i
  %.sroa.speculated.i.i.i = select i1 %i.au, i64 1, i64 %i.at
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.at
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #20 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ar ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  %i.bc = icmp sgt i64 %i.ar, 0
  br i1 %i.bc, label %bb.g, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %.val.i.i, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i: ; preds = %bb.g, %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.not.i21.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ar) #21
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !17
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8, !tbaa !21
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %bb.b
  store double %i.g, ptr %i.c, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !151

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !23 ; 2 uses
  %i.k = load double, ptr %0, align 8, !tbaa !23
  store double %i.k, ptr %i.i, align 8, !tbaa !23
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load double, ptr %i.s, align 8, !tbaa !23
  %i.w = load double, ptr %i.u, align 8, !tbaa !23
  %i.x = fcmp olt double %i.v, %i.w
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !23
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !152

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !23
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !23
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !23
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !153

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store double %i.j, ptr %i.aq, align 8, !tbaa !23
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !154

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.at = add nsw i64 %.01841, -1                 ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %storemerge1742, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.f, align 8, !tbaa !23 ; 5 uses
  %i.ay = load double, ptr %i.av, align 8, !tbaa !23 ; 5 uses
  %i.az = fcmp olt double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !23 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bb = fcmp olt double %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr %0, align 8, !tbaa !23
  store double %i.ay, ptr %0, align 8, !tbaa !23
  store double %i.bc, ptr %i.av, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt double %i.ax, %i.ba
  %i.be = load double, ptr %0, align 8, !tbaa !23 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ba, ptr %0, align 8, !tbaa !23
  store double %i.be, ptr %i.aw, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ax, ptr %0, align 8, !tbaa !23
  store double %i.be, ptr %i.f, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bf = fcmp olt double %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %0, align 8, !tbaa !23
  store double %i.ax, ptr %0, align 8, !tbaa !23
  store double %i.bg, ptr %i.f, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt double %i.ay, %i.ba
  %i.bi = load double, ptr %0, align 8, !tbaa !23 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ba, ptr %0, align 8, !tbaa !23
  store double %i.bi, ptr %i.aw, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ay, ptr %0, align 8, !tbaa !23
  store double %i.bi, ptr %i.av, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load double, ptr %0, align 8, !tbaa !23 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !23 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !155

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !23 ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !156

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bn, ptr %.sroa.012.1.i.i, align 8, !tbaa !23
  store double %i.bk, ptr %.sroa.0.1.i.i, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !157

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.at)
  %i.bp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 3                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !151

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load double, ptr %.sroa.0.017.i.ptr, align 8, !tbaa !23 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !23  ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 8
  br i1 %i.h, label %bb.d, label %bb.e, !prof !158

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !23
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load double, ptr %.pn16.i, align 8, !tbaa !23 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store double %i.l, ptr %.sroa.04.08.i.i, align 8, !tbaa !23
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !23 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !159

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !23
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 8 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 128
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !160

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
end_hunk_1
