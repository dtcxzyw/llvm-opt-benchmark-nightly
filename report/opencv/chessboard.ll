Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNK2cv7details10Chessboard16getInitialPointsERNS_5flann5IndexERKNS_3MatERKNS_8KeyPointEfff:bb.a

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.s, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.q, %bb.k
  %i.cq = phi ptr [ %i.am, %bb.s ], [ %.pre, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.am, %bb.q ], [ %i.am, %bb.k ] ; 2 uses
  %i.cr = phi ptr [ %i.ap, %bb.s ], [ %i.ck, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ap, %bb.q ], [ %i.ap, %bb.k ] ; 2 uses
  %i.cs = phi ptr [ %i.ao, %bb.s ], [ %i.cp, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ao, %bb.q ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ct = phi ptr [ %i.bz, %bb.s ], [ %i.co, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.an, %bb.q ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.097.0 = getelementptr inbounds nuw i8, ptr %.sroa.097.0118, i64 4 ; 2 uses
  %.not104 = icmp eq ptr %.sroa.097.0, %i.cq
  br i1 %.not104, label %._crit_edge, label %bb.k, !llvm.loop !821

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %i.ac, align 8
  store ptr %i.ao, ptr %i.ad, align 8
  store ptr %i.ap, ptr %0, align 8
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.u, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cu = phi ptr [ %i.an, %bb.u ], [ null, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %i.cv = phi ptr [ %i.ap, %bb.u ], [ null, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.cw = phi ptr [ %i.an, %.loopexit ], [ %i.cu, %.loopexit.split-lp ]
  %i.cx = phi ptr [ %i.ap, %.loopexit ], [ %i.cv, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, label %bb.z

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit, %.noexc57
  %.lcssa113 = phi ptr [ %i.ae, %.noexc57 ], [ %i.cr, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit ]
  %.lcssa109 = phi ptr [ %i.af, %.noexc57 ], [ %i.cs, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit ]
  %.lcssa105 = phi ptr [ %i.af, %.noexc57 ], [ %i.ct, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit ]
  store ptr %.lcssa105, ptr %i.ac, align 8
  store ptr %.lcssa109, ptr %i.ad, align 8
  store ptr %.lcssa113, ptr %0, align 8
  %i.cy = load ptr, ptr %12, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !236
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.de = load ptr, ptr %11, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !122
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.dk = load ptr, ptr %10, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIfSaIfEED2Ev.exit70, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit70

_ZNSt6vectorIfSaIfEED2Ev.exit70:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  ret void

bb.z:                                             ; preds = %bb.v
  %i.dp = ptrtoint ptr %i.cw to i64
  %i.dq = ptrtoint ptr %i.cx to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dr) #34
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit:     ; preds = %bb.z, %bb.v, %bb.o, %bb.l
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %.pn, %bb.o ], [ %lpad.phi, %bb.v ], [ %lpad.phi, %bb.z ]
  %i.ds = load ptr, ptr %12, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIiSaIiEED2Ev.exit73, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !236
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit73

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dy = load ptr, ptr %11, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIfSaIfEED2Ev.exit75, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !122
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit75

_ZNSt6vectorIfSaIfEED2Ev.exit75:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ee = load ptr, ptr %10, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIfSaIfEED2Ev.exit77, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit75
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !122
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit77

_ZNSt6vectorIfSaIfEED2Ev.exit77:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit75, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn46.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit77 ]
  resume { ptr, i32 } %.pn51.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 5) i32 @_ZNK2cv7details10Chessboard14generateBoardsERNS_5flann5IndexERKNS_3MatERKNS_8KeyPointEfffS7_RSt6vectorINS1_5BoardESaISC_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::KeyPoint", align 4      ; 4 uses
  %10 = alloca %"class.std::vector.9", align 8    ; 10 uses
  %11 = alloca %"struct.std::pair.108", align 4   ; 7 uses
  %12 = alloca %"struct.std::pair.108", align 4   ; 7 uses
  %13 = alloca %"class.std::vector.34", align 8   ; 10 uses
  %14 = alloca %"class.cv::Point_", align 8       ; 5 uses
  %15 = alloca %"class.cv::details::Chessboard::Board", align 8 ; 15 uses
  %16 = alloca %"class.cv::Size_", align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @_ZNK2cv7details10Chessboard16getInitialPointsERNS_5flann5IndexERKNS_3MatERKNS_8KeyPointEfff(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 4 dereferenceable(28) %3, float noundef %4, float noundef %5, float noundef %6)
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = load ptr, ptr %10, align 8, !tbaa !94    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 28
  %i.h = icmp ult i64 %i.g, 5
  br i1 %i.h, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit145

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef float @cosf(float noundef %4) #33
  %i.l = tail call noundef float @sinf(float noundef %4) #33
  %i.m = fneg float %i.l
  %i.n = tail call noundef float @cosf(float noundef %5) #33
  %i.o = tail call noundef float @sinf(float noundef %5) #33
  %i.p = fneg float %i.o
  %.sroa.0218.0321 = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %.not322 = icmp eq ptr %.sroa.0218.0321, %i.b
  br i1 %.not322, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit
  %.sroa.0218.0327 = phi ptr [ %.sroa.0218.0, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0218.0321, %bb.d ] ; 4 uses
  %.sroa.0233.0326 = phi ptr [ %.sroa.0233.1, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.d ] ; 9 uses
  %.sroa.9237.0325 = phi ptr [ %.sroa.9237.1, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.d ] ; 9 uses
  %.sroa.15.0324 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.d ] ; 4 uses
  %i.q = load <2 x float>, ptr %.sroa.0218.0327, align 4, !tbaa !39
  %i.r = load <2 x float>, ptr %3, align 4, !tbaa !39
  %i.s = fsub <2 x float> %i.q, %i.r
  %i.t = fpext <2 x float> %i.s to <2 x double>   ; 3 uses
  %17 = extractelement <2 x double> %i.t, i64 0   ; 2 uses
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double 0.000000e+00)
  %i.u = extractelement <2 x double> %i.t, i64 1  ; 2 uses
  %i.v = tail call noundef double @llvm.fmuladd.f64(double %i.u, double %i.u, double %18)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.v)
  %i.w = fdiv double 1.000000e+00, %sqrt.i
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.y, %i.t             ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fptrunc double %i.aa to float           ; 2 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.k, float 0.000000e+00)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.m, float %i.ae)
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.af)
  %i.ah = fpext float %i.ag to double
  %i.ai = fcmp olt double %i.ah, f0x3FEEB851EB851EB8
  br i1 %i.ai, label %bb.e, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.n, float 0.000000e+00)
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.p, float %i.aj)
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak)
  %i.am = fpext float %i.al to double
  %i.an = fcmp olt double %i.am, f0x3FEEB851EB851EB8
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.sroa.9237.0325, %.sroa.15.0324
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.9237.0325, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0218.0327, i64 28, i1 false), !tbaa.struct !140
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.9237.0325, i64 28
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = ptrtoint ptr %.sroa.9237.0325 to i64
  %i.aq = ptrtoint ptr %.sroa.0233.0326 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.i, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc unwind label %.loopexit.split-lp258.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.at = sdiv exact i64 %i.ar, 28                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 329406144173384850)
  %i.ax = select i1 %i.av, i64 329406144173384850, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = mul nuw nsw i64 %i.ax, 28
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35
          to label %.noexc97 unwind label %.loopexit.split-lp258.loopexit.split-lp ; 5 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ba, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0218.0327, i64 28, i1 false), !tbaa.struct !140
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0233.0326, %.sroa.9237.0325
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc97, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.az, %.noexc97 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.0233.0326, %.noexc97 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !140, !alias.scope !839
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %.sroa.9237.0325
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc97
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %.noexc97 ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 28
  %.not.i23.i.i = icmp eq ptr %.sroa.0233.0326, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0233.0326, i64 noundef %i.ar) #34
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.be = getelementptr inbounds nuw [28 x i8], ptr %i.az, i64 %i.ax
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit

.loopexit.split-lp258.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %lpad.loopexit.split-lp570 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EED2Ev.exit143

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g, %bb.e, %.lr.ph
  %.sroa.15.1 = phi ptr [ %.sroa.15.0324, %.lr.ph ], [ %.sroa.15.0324, %bb.e ], [ %i.be, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.15.0324, %bb.g ] ; 4 uses
  %.sroa.9237.1 = phi ptr [ %.sroa.9237.0325, %.lr.ph ], [ %.sroa.9237.0325, %bb.e ], [ %i.bd, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ao, %bb.g ] ; 5 uses
  %.sroa.0233.1 = phi ptr [ %.sroa.0233.0326, %.lr.ph ], [ %.sroa.0233.0326, %bb.e ], [ %i.az, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0233.0326, %bb.g ] ; 9 uses
  %.sroa.0218.0 = getelementptr inbounds nuw i8, ptr %.sroa.0218.0327, i64 28 ; 2 uses
  %.not = icmp eq ptr %.sroa.0218.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !826

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit
  %i.bf = ptrtoint ptr %.sroa.0233.1 to i64
  %.not245340 = icmp eq ptr %.sroa.0233.1, %.sroa.9237.1
  br i1 %.not245340, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EED2Ev.exit, label %.lr.ph346

.lr.ph346:                                        ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0233.1, i64 28 ; 2 uses
  %.not248330532 = icmp eq ptr %i.bi, %.sroa.9237.1
  br i1 %.not248330532, label %._crit_edge347, label %.lr.ph336.preheader

.loopexit250:                                     ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bk, i64 28 ; 2 uses
  %.not248330 = icmp eq ptr %i.bj, %.sroa.9237.1
  br i1 %.not248330, label %._crit_edge347, label %.lr.ph336.preheader, !llvm.loop !827

.lr.ph336.preheader:                              ; preds = %.lr.ph346, %.loopexit250
  %i.bk = phi ptr [ %i.bj, %.loopexit250 ], [ %i.bi, %.lr.ph346 ] ; 3 uses
  %.sroa.0218.1341536 = phi ptr [ %i.bk, %.loopexit250 ], [ %.sroa.0233.1, %.lr.ph346 ] ; 3 uses
  %.sroa.0192.0342535 = phi ptr [ %.sroa.0192.2, %.loopexit250 ], [ null, %.lr.ph346 ]
  %.sroa.12.0343534 = phi ptr [ %.sroa.12.2, %.loopexit250 ], [ null, %.lr.ph346 ]
  %.sroa.23.0344533 = phi ptr [ %.sroa.23.2, %.loopexit250 ], [ null, %.lr.ph346 ]
  br label %.lr.ph336

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %bb.v
  %.sroa.0183.0334 = phi ptr [ %i.dv, %bb.v ], [ %i.bk, %.lr.ph336.preheader ] ; 4 uses
  %.sroa.23.1333 = phi ptr [ %.sroa.23.2, %bb.v ], [ %.sroa.23.0344533, %.lr.ph336.preheader ] ; 12 uses
  %.sroa.12.1332 = phi ptr [ %.sroa.12.2, %bb.v ], [ %.sroa.12.0343534, %.lr.ph336.preheader ] ; 6 uses
  %.sroa.0192.1331 = phi ptr [ %.sroa.0192.2, %bb.v ], [ %.sroa.0192.0342535, %.lr.ph336.preheader ] ; 15 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %.sroa.0218.1341536, align 4 ; 4 uses
  %.sroa.06.0.copyload = load <2 x float>, ptr %.sroa.0183.0334, align 4 ; 4 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %3, align 4, !tbaa !39 ; 4 uses
  %i.bl = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.05.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bm = shufflevector <2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.06.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bn = fsub <2 x float> %i.bl, %i.bm           ; 3 uses
  %i.bo = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.05.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.bp = shufflevector <2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.06.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.bq = fsub <2 x float> %i.bo, %i.bp           ; 3 uses
  %i.br = extractelement <2 x float> %i.bn, i64 0
  %i.bs = extractelement <2 x float> %i.bn, i64 1
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bs, float 0.000000e+00)
  %i.bu = extractelement <2 x float> %i.bq, i64 0
  %i.bv = extractelement <2 x float> %i.bq, i64 1
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float %i.bt)
  %i.bx = fpext float %i.bw to double
  %i.by = fpext <2 x float> %i.bn to <2 x double> ; 2 uses
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.by, <2 x double> zeroinitializer)
  %i.bz = fpext <2 x float> %i.bq to <2 x double> ; 2 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bz, <2 x double> %19)
  %i.cb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = fmul double %i.cc, f0x3FEF0A3D80000000
  %i.ce = extractelement <2 x double> %i.cb, i64 1
  %i.cf = fmul double %i.ce, %i.cd
  %i.cg = fcmp ule double %i.cf, %i.bx
  br i1 %i.cg, label %bb.k, label %bb.v

bb.k:                                             ; preds = %.lr.ph336
  %i.ch = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.06.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 2 uses
  %i.cj = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.06.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ck = fpext <2 x float> %i.cj to <2 x double> ; 2 uses
  %i.cl = fmul <2 x double> %i.ck, %i.ck
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ci, <2 x double> %i.cl)
  %i.cn = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cm) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0
  %i.cp = extractelement <2 x double> %i.cn, i64 1
  %i.cq = fcmp olt double %i.co, %i.cp
  %.not.i.i = icmp eq ptr %.sroa.12.1332, %.sroa.23.1333 ; 2 uses
  br i1 %i.cq, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %11, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0218.1341536, i64 28, i1 false), !tbaa.struct !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bh, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0183.0334, i64 28, i1 false), !tbaa.struct !140
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.1332, ptr noundef nonnull align 4 dereferenceable(56) %11, i64 56, i1 false)
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.cr = ptrtoint ptr %.sroa.23.1333 to i64
  %i.cs = ptrtoint ptr %.sroa.0192.1331 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.o, label %_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc100 unwind label %.loopexit.split-lp253.loopexit.split-lp

.noexc100:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.cv = sdiv exact i64 %i.ct, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 164703072086692425)
  %i.cz = select i1 %i.cx, i64 164703072086692425, i64 %i.cy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.da = mul nuw nsw i64 %i.cz, 56
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #35
          to label %.noexc101 unwind label %.loopexit.split-lp253.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dc, ptr noundef nonnull align 4 dereferenceable(56) %11, i64 56, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0192.1331, %.sroa.23.1333
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc101, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ %i.db, %.noexc101 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0192.1331, %.noexc101 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !840
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, %.sroa.23.1333
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !831

_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc101
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.db, %.noexc101 ], [ %i.de, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0192.1331, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.1331, i64 noundef %i.ct) #34
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.df = getelementptr inbounds nuw [56 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.m
  %.sroa.0192.4 = phi ptr [ %i.db, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0192.1331, %bb.m ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.12.1332, %bb.m ]
  %.sroa.23.4 = phi ptr [ %i.df, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.23.1333, %bb.m ]
  %.sroa.12.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.v

.loopexit.split-lp253.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.az

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %12, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0183.0334, i64 28, i1 false), !tbaa.struct !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bg, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0218.1341536, i64 28, i1 false), !tbaa.struct !140
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.1332, ptr noundef nonnull align 4 dereferenceable(56) %12, i64 56, i1 false)
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117

bb.s:                                             ; preds = %bb.q
  %i.dg = ptrtoint ptr %.sroa.23.1333 to i64
  %i.dh = ptrtoint ptr %.sroa.0192.1331 to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 4 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.t, label %_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i103

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i103: ; preds = %bb.s
  %i.dk = sdiv exact i64 %i.di, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i104 = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i104, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 164703072086692425)
  %i.do = select i1 %i.dm, i64 164703072086692425, i64 %i.dn ; 3 uses
  %.not.i.i.i.i105 = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i105)
  %i.dp = mul nuw nsw i64 %i.do, 56
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #35
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i103
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dr, ptr noundef nonnull align 4 dereferenceable(56) %12, i64 56, i1 false)
  %.not10.i.i.i.i.i.i106 = icmp eq ptr %.sroa.0192.1331, %.sroa.23.1333
  br i1 %.not10.i.i.i.i.i.i106, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i111, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %.noexc116, %.lr.ph.i.i.i.i.i.i107
  %.012.i.i.i.i.i.i108 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i107 ], [ %i.dq, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i.i.i109 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i107 ], [ %.sroa.0192.1331, %.noexc116 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.012.i.i.i.i.i.i108, ptr noundef nonnull align 4 dereferenceable(56) %.0911.i.i.i.i.i.i109, i64 56, i1 false), !alias.scope !841
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i109, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i108, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.ds, %.sroa.23.1333
  br i1 %.not.i.i.i.i.i.i110, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i111, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !831

_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i.i107, %.noexc116
  %.0.lcssa.i.i.i.i.i.i112 = phi ptr [ %i.dq, %.noexc116 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i107 ]
  %.not.i23.i.i.i113 = icmp eq ptr %.sroa.0192.1331, null
  br i1 %.not.i23.i.i.i113, label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i111
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.1331, i64 noundef %i.di) #34
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114

_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114: ; preds = %bb.u, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i111
  %i.du = getelementptr inbounds nuw [56 x i8], ptr %i.dq, i64 %i.do
  br label %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117

_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117: ; preds = %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114, %bb.r
  %.sroa.0192.5 = phi ptr [ %i.dq, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114 ], [ %.sroa.0192.1331, %bb.r ]
  %.0.lcssa.i.i.i.i.i.i112.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i112, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114 ], [ %.sroa.12.1332, %bb.r ]
  %.sroa.23.5 = phi ptr [ %i.du, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i114 ], [ %.sroa.23.1333, %bb.r ]
  %.sroa.12.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112.pn, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i103, %bb.t
  %lpad.loopexit.split-lp552 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.az

bb.v:                                             ; preds = %.lr.ph336, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit
  %.sroa.0192.2 = phi ptr [ %.sroa.0192.4, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0192.5, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117 ], [ %.sroa.0192.1331, %.lr.ph336 ] ; 3 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.3, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.12.4, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117 ], [ %.sroa.12.1332, %.lr.ph336 ] ; 3 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.4, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.23.5, %_ZNSt6vectorISt4pairIN2cv8KeyPointES2_ESaIS3_EE9push_backEOS3_.exit117 ], [ %.sroa.23.1333, %.lr.ph336 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0183.0334, i64 28 ; 2 uses
  %.not248 = icmp eq ptr %i.dv, %.sroa.9237.1
  br i1 %.not248, label %.loopexit250, label %.lr.ph336, !llvm.loop !835

._crit_edge347:                                   ; preds = %.loopexit250, %.lr.ph346
  %.sroa.23.0344.lcssa = phi ptr [ null, %.lr.ph346 ], [ %.sroa.23.2, %.loopexit250 ] ; 2 uses
  %.sroa.12.0343.lcssa = phi ptr [ null, %.lr.ph346 ], [ %.sroa.12.2, %.loopexit250 ] ; 4 uses
  %.sroa.0192.0342.lcssa = phi ptr [ null, %.lr.ph346 ], [ %.sroa.0192.2, %.loopexit250 ] ; 6 uses
  %i.dw = ptrtoint ptr %.sroa.12.0343.lcssa to i64
  %i.dx = ptrtoint ptr %.sroa.0192.0342.lcssa to i64 ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 56
  %i.ea = icmp ult i64 %i.dz, 2
  %.not246357 = icmp eq ptr %.sroa.0192.0342.lcssa, %.sroa.12.0343.lcssa
  %or.cond = or i1 %i.ea, %.not246357
  br i1 %or.cond, label %.loopexit249, label %.lr.ph360
end_hunk_0
