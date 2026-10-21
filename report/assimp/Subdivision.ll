Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Subdivision?download=true
inline.NumInlined: 871
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  store i32 %i.afy, ptr %i.a, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph2803
  %i.afz = uitofp i32 %i.afv to float
  %i.aga = fadd float %i.afz, 2.000000e+00
  %i.agb = fdiv float 1.000000e+00, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.01898.02801, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6Assimp6Vertex8BinaryOpINS_6Intern10multipliesEEES0_RKS0_f(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::Vertex") align 4 %5, ptr noundef nonnull align 4 dereferenceable(272) %i.agc, float noundef %i.agb)
          to label %bb.ae unwind label %.loopexit.split-lp2292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.agc, ptr noundef nonnull align 4 dereferenceable(272) %5, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.agd = load ptr, ptr %.sroa.01898.02801, align 8 ; 2 uses
  %.not2265 = icmp eq ptr %i.agd, null
  br i1 %.not2265, label %._crit_edge2804, label %.lr.ph2803, !llvm.loop !38

bb.af:                                            ; preds = %._crit_edge2804
  %i.age = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ag unwind label %.loopexit.split-lp2292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.agf = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.agg = load i64, ptr %i.agf, align 8
  %i.agh = trunc i64 %i.agg to i32
  store i32 %i.agh, ptr %i.b, align 4
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA31_KcRjRA44_S2_jRA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.age, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.4)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %._crit_edge2804.thread

.loopexit.split-lp2292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2292

bb.ai:                                            ; preds = %bb.ag
  %i.agi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit.split-lp2292

._crit_edge2804.thread:                           ; preds = %._crit_edge2799.thread, %._crit_edge2799, %bb.ah, %._crit_edge2804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.agj = zext i32 %.0322.lcssa to i64           ; 3 uses
  %.not.i.i.i.i431 = icmp eq i32 %.0322.lcssa, 0
  br i1 %.not.i.i.i.i431, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge2804.thread
  %i.agk = shl nuw nsw i64 %i.agj, 2
  %i.agl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agk) #18
          to label %.noexc432 unwind label %.loopexit.split-lp2297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc432:                                        ; preds = %bb.aj
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.agj ; 2 uses
  store i32 0, ptr %i.agl, align 4
  %i.agn = add nsw i64 %i.agj, -1                 ; 2 uses
  %i.ago = icmp eq i64 %i.agn, 0
  br i1 %i.ago, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc432
  %i.agp = getelementptr i8, ptr %i.agl, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.agn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.agp, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc432, %._crit_edge2804.thread
  %.sroa.01890.0 = phi ptr [ %i.agl, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.agl, %.noexc432 ], [ null, %._crit_edge2804.thread ] ; 8 uses
  %.sroa.111895.0 = phi ptr [ %i.agm, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.agm, %.noexc432 ], [ null, %._crit_edge2804.thread ] ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 8          ; 2 uses
  %i.ags = load ptr, ptr %6, align 8              ; 2 uses
  %i.agt = ptrtoint ptr %i.agr to i64             ; 4 uses
  %i.agu = ptrtoint ptr %i.ags to i64             ; 2 uses
  %i.agv = sub i64 %i.agt, %i.agu                 ; 3 uses
  %i.agw = icmp ugt i64 %i.agv, 9223372036854775804
  br i1 %i.agw, label %bb.ak, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc435 unwind label %bb.ao

.noexc435:                                        ; preds = %bb.ak
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %.not.i.i.i.i433 = icmp eq ptr %i.agr, %i.ags
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.agx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agv) #18
          to label %.noexc436 unwind label %bb.ao ; 3 uses

.noexc436:                                        ; preds = %bb.al
  %i.agy = add i64 %i.agt, -4
  %i.agz = sub i64 %i.agy, %i.agu
  %i.aha = and i64 %i.agz, -4
  %i.ahb = add i64 %i.aha, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.agx, i8 0, i64 %i.ahb, i1 false)
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.agv
  %.pre3513 = load ptr, ptr %i.agq, align 8
  %.pre3514 = load ptr, ptr %6, align 8
  %.pre3536.a = ptrtoint ptr %.pre3513 to i64
  %.pre3537.a = ptrtoint ptr %.pre3514 to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc436, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.pre-phi3538 = phi i64 [ %.pre3537.a, %.noexc436 ], [ %i.agt, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.pre-phi = phi i64 [ %.pre3536.a, %.noexc436 ], [ %i.agt, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.01880.0 = phi ptr [ %i.agx, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %.sroa.161887.0 = phi ptr [ %i.ahc, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.ahd = sub i64 %.pre-phi, %.pre-phi3538
  %i.ahe = ashr exact i64 %i.ahd, 2
  %i.ahf = add nsw i64 %i.ahe, 1                  ; 4 uses
  %i.ahg = icmp ugt i64 %i.ahf, 2305843009213693951
  br i1 %i.ahg, label %bb.am, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc444 unwind label %bb.ap

.noexc444:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %.not.i.i.i.i438 = icmp eq i64 %i.ahf, 0
  br i1 %.not.i.i.i.i438, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  %i.ahh = shl nuw nsw i64 %i.ahf, 2              ; 2 uses
  %i.ahi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahh) #18
          to label %.noexc445 unwind label %bb.ap ; 3 uses

.noexc445:                                        ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ahi, i8 0, i64 %i.ahh, i1 false)
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ahf
  %i.ahk = ptrtoint ptr %i.ahj to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446:         ; preds = %.noexc445, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  %.sroa.01870.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.ahi, %.noexc445 ] ; 13 uses
  %.sroa.141876.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.ahk, %.noexc445 ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph2814, label %.preheader2290

.lr.ph2814:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %i.ahl = load ptr, ptr %6, align 8
  br label %bb.aq

.preheader2290:                                   ; preds = %._crit_edge2812, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %i.ahm = ptrtoint ptr %.sroa.161887.0 to i64
  %i.ahn = ptrtoint ptr %.sroa.01880.0 to i64
  %i.aho = sub i64 %i.ahm, %i.ahn                 ; 2 uses
  %.not3072 = icmp eq ptr %.sroa.161887.0, %.sroa.01880.0
  br i1 %.not3072, label %.preheader2289, label %.lr.ph2817.preheader

.lr.ph2817.preheader:                             ; preds = %.preheader2290
  %i.ahp = ashr exact i64 %i.aho, 2               ; 3 uses
  %xtraiter = and i64 %i.ahp, 3                   ; 3 uses
  %i.ahq = icmp ult i64 %i.ahp, 4
  br i1 %i.ahq, label %.lr.ph2817.epil.preheader, label %.lr.ph2817.preheader.new

.lr.ph2817.preheader.new:                         ; preds = %.lr.ph2817.preheader
  %unroll_iter = and i64 %i.ahp, -4
  br label %.lr.ph2817

.loopexit.split-lp2292:                           ; preds = %.loopexit.split-lp2292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn398 = phi { ptr, i32 } [ %i.agi, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp2292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.body

.loopexit.split-lp2297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.aj
  %lpad.loopexit.split-lp4503 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit542

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

bb.aq:                                            ; preds = %.lr.ph2814, %._crit_edge2812
  %.03132813 = phi i64 [ 0, %.lr.ph2814 ], [ %i.aia, %._crit_edge2812 ] ; 3 uses
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03132813
  %i.ahu = load ptr, ptr %i.aht, align 8          ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 8          ; 2 uses
  %.not3070 = icmp eq i32 %i.ahw, 0
  br i1 %.not3070, label %._crit_edge2812, label %.lr.ph2811

.lr.ph2811:                                       ; preds = %bb.aq
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 208 ; 2 uses
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01962.03607, i64 %.03132813
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %.pre3517 = load ptr, ptr %i.ahx, align 8
  br label %bb.ar

._crit_edge2812:                                  ; preds = %._crit_edge2808, %bb.aq
  %i.aia = add nuw nsw i64 %.03132813, 1          ; 2 uses
  %exitcond3420.not = icmp eq i64 %i.aia, %2
  br i1 %exitcond3420.not, label %.preheader2290, label %bb.aq, !llvm.loop !39

bb.ar:                                            ; preds = %.lr.ph2811, %._crit_edge2808
  %i.aib = phi i32 [ %i.ahw, %.lr.ph2811 ], [ %i.aig, %._crit_edge2808 ]
  %14 = phi ptr [ %.pre3517, %.lr.ph2811 ], [ %15, %._crit_edge2808 ] ; 2 uses
  %indvars.iv3417 = phi i64 [ 0, %.lr.ph2811 ], [ %indvars.iv.next3418, %._crit_edge2808 ] ; 2 uses
  %i.aic = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %indvars.iv3417 ; 3 uses
  %i.aid = load i32, ptr %i.aic, align 8
  %.not3071 = icmp eq i32 %i.aid, 0
  br i1 %.not3071, label %._crit_edge2808, label %.lr.ph2807

.lr.ph2807:                                       ; preds = %bb.ar
  %i.aie = load i32, ptr %i.ahz, align 4
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  br label %bb.as

._crit_edge2808.loopexit:                         ; preds = %bb.as
  %.pre3516 = load ptr, ptr %i.ahx, align 8
  %.pre3516.a = load i32, ptr %i.ahv, align 8
  br label %._crit_edge2808

._crit_edge2808:                                  ; preds = %._crit_edge2808.loopexit, %bb.ar
  %i.aig = phi i32 [ %.pre3516.a, %._crit_edge2808.loopexit ], [ %i.aib, %bb.ar ] ; 2 uses
  %15 = phi ptr [ %.pre3516, %._crit_edge2808.loopexit ], [ %14, %bb.ar ]
  %indvars.iv.next3418 = add nuw nsw i64 %indvars.iv3417, 1 ; 2 uses
  %i.aih = zext i32 %i.aig to i64
  %i.aii = icmp samesign ult i64 %indvars.iv.next3418, %i.aih
  br i1 %i.aii, label %bb.ar, label %._crit_edge2812, !llvm.loop !40

bb.as:                                            ; preds = %.lr.ph2807, %bb.as
  %indvars.iv3414 = phi i64 [ 0, %.lr.ph2807 ], [ %indvars.iv.next3415, %bb.as ] ; 2 uses
  %i.aij = load ptr, ptr %i.aif, align 8
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv3414
  %i.ail = load i32, ptr %i.aik, align 4
  %i.aim = add i32 %i.ail, %i.aie
  %i.ain = zext i32 %i.aim to i64
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4
  %i.aiq = zext i32 %i.aip to i64
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.aiq ; 2 uses
  %i.ais = load i32, ptr %i.air, align 4
  %i.ait = add i32 %i.ais, 1
  store i32 %i.ait, ptr %i.air, align 4
  %indvars.iv.next3415 = add nuw nsw i64 %indvars.iv3414, 1 ; 2 uses
  %i.aiu = load i32, ptr %i.aic, align 8
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = icmp samesign ult i64 %indvars.iv.next3415, %i.aiv
  br i1 %i.aiw, label %bb.as, label %._crit_edge2808.loopexit, !llvm.loop !41

.preheader2289.loopexit.unr-lcssa:                ; preds = %.lr.ph2817
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader2289, label %.lr.ph2817.epil.preheader

.lr.ph2817.epil.preheader:                        ; preds = %.preheader2289.loopexit.unr-lcssa, %.lr.ph2817.preheader
  %.03092816.epil.init = phi i64 [ 0, %.lr.ph2817.preheader ], [ %i.ajs, %.preheader2289.loopexit.unr-lcssa ]
  %.03102815.epil.init = phi i32 [ 0, %.lr.ph2817.preheader ], [ %i.ajw, %.preheader2289.loopexit.unr-lcssa ]
  %lcmp.mod4516 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4516)
  br label %.lr.ph2817.epil

.lr.ph2817.epil:                                  ; preds = %.lr.ph2817.epil, %.lr.ph2817.epil.preheader
  %.03092816.epil = phi i64 [ %i.aix, %.lr.ph2817.epil ], [ %.03092816.epil.init, %.lr.ph2817.epil.preheader ] ; 2 uses
  %.03102815.epil = phi i32 [ %i.ajb, %.lr.ph2817.epil ], [ %.03102815.epil.init, %.lr.ph2817.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph2817.epil ], [ 0, %.lr.ph2817.epil.preheader ]
  %i.aix = add nuw i64 %.03092816.epil, 1         ; 2 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.aix
  store i32 %.03102815.epil, ptr %i.aiy, align 4
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %.03092816.epil
  %i.aja = load i32, ptr %i.aiz, align 4
  %i.ajb = add i32 %i.aja, %.03102815.epil
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2289, label %.lr.ph2817.epil, !llvm.loop !42

.preheader2289:                                   ; preds = %.preheader2289.loopexit.unr-lcssa, %.lr.ph2817.epil, %.preheader2290
  br i1 %.not.i.i.i.i, label %.lr.ph2828, label %._crit_edge2829

.lr.ph2828:                                       ; preds = %.preheader2289
  %i.ajc = load ptr, ptr %6, align 8
  br label %bb.at

.lr.ph2817:                                       ; preds = %.lr.ph2817, %.lr.ph2817.preheader.new
  %.03092816 = phi i64 [ 0, %.lr.ph2817.preheader.new ], [ %i.ajs, %.lr.ph2817 ] ; 5 uses
  %.03102815 = phi i32 [ 0, %.lr.ph2817.preheader.new ], [ %i.ajw, %.lr.ph2817 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph2817.preheader.new ], [ %niter.next.3, %.lr.ph2817 ]
  %i.ajd = or disjoint i64 %.03092816, 1          ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajd
  store i32 %.03102815, ptr %i.aje, align 4
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %.03092816
  %i.ajg = load i32, ptr %i.ajf, align 4
  %i.ajh = add i32 %i.ajg, %.03102815             ; 2 uses
  %i.aji = or disjoint i64 %.03092816, 2          ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.aji
  store i32 %i.ajh, ptr %i.ajj, align 4
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajd
  %i.ajl = load i32, ptr %i.ajk, align 4
  %i.ajm = add i32 %i.ajl, %i.ajh                 ; 2 uses
  %i.ajn = or disjoint i64 %.03092816, 3          ; 2 uses
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajn
  store i32 %i.ajm, ptr %i.ajo, align 4
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.aji
  %i.ajq = load i32, ptr %i.ajp, align 4
  %i.ajr = add i32 %i.ajq, %i.ajm                 ; 2 uses
  %i.ajs = add nuw i64 %.03092816, 4              ; 3 uses
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajs
  store i32 %i.ajr, ptr %i.ajt, align 4
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajn
  %i.ajv = load i32, ptr %i.aju, align 4
  %i.ajw = add i32 %i.ajv, %i.ajr                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2289.loopexit.unr-lcssa, label %.lr.ph2817, !llvm.loop !43

._crit_edge2829:                                  ; preds = %._crit_edge2826, %.preheader2289
  %i.ajx = zext i32 %i.x to i64                   ; 5 uses
  %.not.i.i.i.i447 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i447, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit, label %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %._crit_edge2829
  %i.ajy = mul nuw nsw i64 %i.ajx, 276
  %i.ajz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajy) #18
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %bb.bb ; 4 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %xtraiter4517 = and i64 %i.ajx, 7               ; 2 uses
  %lcmp.mod4518.not = icmp eq i64 %xtraiter4517, 0
  br i1 %lcmp.mod4518.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.akc, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ajz, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.akb, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ajx, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i8 0, ptr %.09.i.i.i.i.i.i.prol, align 4
  %i.aka = getelementptr i8, ptr %.09.i.i.i.i.i.i.prol, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.aka, i8 0, i64 272, i1 false)
  %i.akb = add nsw i64 %.068.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 276 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4517
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !44

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.ajz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akc, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.ajx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akb, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.akd = icmp ult i32 %i.x, 8
  br i1 %i.akd, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aku, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.akt, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i8 0, ptr %.09.i.i.i.i.i.i, align 4
  %i.ake = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.ake, i8 0, i64 272, i1 false)
  %i.akf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 276
  store i8 0, ptr %i.akf, align 4
  %i.akg = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akg, i8 0, i64 272, i1 false)
  %i.akh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 552
  store i8 0, ptr %i.akh, align 4
  %i.aki = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.aki, i8 0, i64 272, i1 false)
  %i.akj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 828
  store i8 0, ptr %i.akj, align 4
  %i.akk = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akk, i8 0, i64 272, i1 false)
  %i.akl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1104
  store i8 0, ptr %i.akl, align 4
  %i.akm = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akm, i8 0, i64 272, i1 false)
  %i.akn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1380
  store i8 0, ptr %i.akn, align 4
  %i.ako = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.ako, i8 0, i64 272, i1 false)
  %i.akp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1656
  store i8 0, ptr %i.akp, align 4
  %i.akq = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akq, i8 0, i64 272, i1 false)
  %i.akr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 1932
  store i8 0, ptr %i.akr, align 4
  %i.aks = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 1936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.aks, i8 0, i64 272, i1 false)
  %i.akt = add nsw i64 %.068.i.i.i.i.i.i, -8      ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 2208
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.akt, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

bb.at:                                            ; preds = %.lr.ph2828, %._crit_edge2826
  %.03082827 = phi i64 [ 0, %.lr.ph2828 ], [ %i.alc, %._crit_edge2826 ] ; 3 uses
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03082827
  %i.akw = load ptr, ptr %i.akv, align 8          ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8 ; 2 uses
  %i.aky = load i32, ptr %i.akx, align 8          ; 2 uses
  %.not3074 = icmp eq i32 %i.aky, 0
  br i1 %.not3074, label %._crit_edge2826, label %.lr.ph2825

.lr.ph2825:                                       ; preds = %bb.at
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akw, i64 208 ; 2 uses
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01962.03607, i64 %.03082827 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 4
  %.pre3521 = load ptr, ptr %i.akz, align 8
  br label %bb.au

._crit_edge2826:                                  ; preds = %._crit_edge2822, %bb.at
  %i.alc = add nuw nsw i64 %.03082827, 1          ; 2 uses
  %exitcond3428.not = icmp eq i64 %i.alc, %2
  br i1 %exitcond3428.not, label %._crit_edge2829, label %bb.at, !llvm.loop !46

bb.au:                                            ; preds = %.lr.ph2825, %._crit_edge2822
  %i.ald = phi i32 [ %i.aky, %.lr.ph2825 ], [ %i.all, %._crit_edge2822 ]
  %16 = phi ptr [ %.pre3521, %.lr.ph2825 ], [ %17, %._crit_edge2822 ] ; 2 uses
  %indvars.iv3425 = phi i64 [ 0, %.lr.ph2825 ], [ %indvars.iv.next3426, %._crit_edge2822 ] ; 3 uses
  %i.ale = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %indvars.iv3425 ; 3 uses
  %i.alf = load i32, ptr %i.ale, align 8
  %.not3075 = icmp eq i32 %i.alf, 0
  br i1 %.not3075, label %._crit_edge2822, label %.lr.ph2821

.lr.ph2821:                                       ; preds = %bb.au
  %i.alg = load i32, ptr %i.ala, align 4
  %i.alh = trunc nuw i64 %indvars.iv3425 to i32
  %i.ali = add i32 %i.alg, %i.alh
  %i.alj = load i32, ptr %i.alb, align 4
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  br label %bb.av

._crit_edge2822.loopexit:                         ; preds = %bb.av
  %.pre3520 = load ptr, ptr %i.akz, align 8
  %.pre3518 = load i32, ptr %i.akx, align 8
  br label %._crit_edge2822

._crit_edge2822:                                  ; preds = %._crit_edge2822.loopexit, %bb.au
  %i.all = phi i32 [ %.pre3518, %._crit_edge2822.loopexit ], [ %i.ald, %bb.au ] ; 2 uses
  %17 = phi ptr [ %.pre3520, %._crit_edge2822.loopexit ], [ %16, %bb.au ]
  %indvars.iv.next3426 = add nuw nsw i64 %indvars.iv3425, 1 ; 2 uses
  %i.alm = zext i32 %i.all to i64
  %i.aln = icmp samesign ult i64 %indvars.iv.next3426, %i.alm
  br i1 %i.aln, label %bb.au, label %._crit_edge2826, !llvm.loop !47

bb.av:                                            ; preds = %.lr.ph2821, %bb.av
  %indvars.iv3422 = phi i64 [ 0, %.lr.ph2821 ], [ %indvars.iv.next3423, %bb.av ] ; 2 uses
  %i.alo = load ptr, ptr %i.alk, align 8
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %indvars.iv3422
  %i.alq = load i32, ptr %i.alp, align 4
  %i.alr = add i32 %i.alq, %i.alj
  %i.als = zext i32 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.als
  %i.alu = load i32, ptr %i.alt, align 4
  %i.alv = add i32 %i.alu, 1
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.alw ; 2 uses
  %i.aly = load i32, ptr %i.alx, align 4          ; 2 uses
  %i.alz = add i32 %i.aly, 1
  store i32 %i.alz, ptr %i.alx, align 4
  %i.ama = zext i32 %i.aly to i64
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01890.0, i64 %i.ama
  store i32 %i.ali, ptr %i.amb, align 4
  %indvars.iv.next3423 = add nuw nsw i64 %indvars.iv3422, 1 ; 2 uses
  %i.amc = load i32, ptr %i.ale, align 8
  %i.amd = zext i32 %i.amc to i64
  %i.ame = icmp samesign ult i64 %indvars.iv.next3423, %i.amd
  br i1 %i.ame, label %bb.av, label %._crit_edge2822.loopexit, !llvm.loop !48

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.amf = getelementptr inbounds nuw [276 x i8], ptr %i.ajz, i64 %i.ajx
  %i.amg = ptrtoint ptr %i.amf to i64
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, %._crit_edge2829
  %.sroa.01862.0 = phi ptr [ null, %._crit_edge2829 ], [ %i.ajz, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit ] ; 7 uses
  %.sroa.121866.0 = phi i64 [ 0, %._crit_edge2829 ], [ %i.amg, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph3059, label %._crit_edge3060

.lr.ph3059:                                       ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit
  %i.amh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ami = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.amj = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.amk = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.aml = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.amm = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.amn = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.amo = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.amp = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.amq = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.amr = getelementptr inbounds nuw i8, ptr %13, i64 92
  %i.ams = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.amt = getelementptr inbounds nuw i8, ptr %13, i64 108
  %i.amu = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.amv = getelementptr inbounds nuw i8, ptr %13, i64 132
  %i.amw = getelementptr inbounds nuw i8, ptr %13, i64 140
  %i.amx = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.amy = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.amz = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.ana = getelementptr inbounds nuw i8, ptr %13, i64 168
  %i.anb = getelementptr inbounds nuw i8, ptr %13, i64 176
  %i.anc = getelementptr inbounds nuw i8, ptr %13, i64 184
  %i.and = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.ane = getelementptr inbounds nuw i8, ptr %13, i64 200
  %i.anf = getelementptr inbounds nuw i8, ptr %13, i64 208
  %i.ang = getelementptr inbounds nuw i8, ptr %13, i64 216
  %i.anh = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.ani = getelementptr inbounds nuw i8, ptr %13, i64 232
  %i.anj = getelementptr inbounds nuw i8, ptr %13, i64 240
  %i.ank = getelementptr inbounds nuw i8, ptr %13, i64 248
  %i.anl = getelementptr inbounds nuw i8, ptr %13, i64 256
  %i.anm = getelementptr inbounds nuw i8, ptr %13, i64 264
  %i.ann = icmp eq i64 %2, 1
  br label %bb.bc

._crit_edge3060:                                  ; preds = %._crit_edge3057, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.01862.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge3060
  %i.ano = ptrtoint ptr %.sroa.01862.0 to i64
  %i.anp = sub i64 %.sroa.121866.0, %i.ano
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01862.0, i64 noundef %i.anp) #20
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit: ; preds = %._crit_edge3060, %bb.aw
  %.not.i.i.i449 = icmp eq ptr %.sroa.01870.0, null
  br i1 %.not.i.i.i449, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit
  %i.anq = ptrtoint ptr %.sroa.01870.0 to i64
  %i.anr = sub i64 %.sroa.141876.0, %i.anq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01870.0, i64 noundef %i.anr) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit, %bb.ax
  %.not.i.i.i450 = icmp eq ptr %.sroa.01880.0, null
  br i1 %.not.i.i.i450, label %_ZNSt6vectorIjSaIjEED2Ev.exit451, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01880.0, i64 noundef %i.aho) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit451

_ZNSt6vectorIjSaIjEED2Ev.exit451:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ay
  %.not.i.i.i452 = icmp eq ptr %.sroa.01890.0, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIjSaIjEED2Ev.exit453, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit451
  %i.ans = ptrtoint ptr %.sroa.111895.0 to i64
  %i.ant = ptrtoint ptr %.sroa.01890.0 to i64
  %i.anu = sub i64 %i.ans, %i.ant
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01890.0, i64 noundef %i.anu) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit453

_ZNSt6vectorIjSaIjEED2Ev.exit453:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit451, %bb.az
  %i.anv = load ptr, ptr %i.bd, align 8           ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.anv, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit453, %.lr.ph.i.i.i.i454
  %.06.i.i.i.i = phi ptr [ %i.anw, %.lr.ph.i.i.i.i454 ], [ %i.anv, %_ZNSt6vectorIjSaIjEED2Ev.exit453 ] ; 2 uses
  %i.anw = load ptr, ptr %.06.i.i.i.i, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 568) #20
  %.not.i.i.i.i455 = icmp eq ptr %i.anw, null
  br i1 %.not.i.i.i.i455, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i454, !llvm.loop !49

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i454, %_ZNSt6vectorIjSaIjEED2Ev.exit453
  %i.anx = load ptr, ptr %9, align 8
  %i.any = load i64, ptr %i.bc, align 8
  %i.anz = shl i64 %i.any, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anx, i8 0, i64 %i.anz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.aoa = load ptr, ptr %9, align 8              ; 2 uses
  %i.aob = icmp eq ptr %i.aoa, %i.bb
  br i1 %i.aob, label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.aoc = load i64, ptr %i.bc, align 8
  %i.aod = shl i64 %i.aoc, 3
  call void @_ZdlPvm(ptr noundef %i.aoa, i64 noundef %i.aod) #20
  br label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not371 = icmp eq i32 %4, 1
  br i1 %.not371, label %bb.eg, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532

bb.bc:                                            ; preds = %.lr.ph3059, %._crit_edge3057
  %.03053058 = phi i64 [ 0, %.lr.ph3059 ], [ %i.bbm, %._crit_edge3057 ] ; 4 uses
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03053058
  %i.aog = load ptr, ptr %i.aof, align 8          ; 34 uses
  %i.aoh = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #18
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 42 uses

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.aoh, align 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 4 ; 22 uses
  store i32 0, ptr %i.aoi, align 4
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8 ; 4 uses
  store i32 0, ptr %i.aoj, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 16 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoh, i64 224
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1272
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1312
  store ptr null, ptr %i.aon, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aok, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aol, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aom, i8 0, i64 36, i1 false)
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03053058
  store ptr %i.aoh, ptr %i.aoo, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aog, i64 8 ; 4 uses
  %i.aoq = load i32, ptr %i.aop, align 8
  %.not3077 = icmp eq i32 %i.aoq, 0
  br i1 %.not3077, label %._crit_edge2833, label %.lr.ph2832

.lr.ph2832:                                       ; preds = %bb.bd
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aog, i64 208
  br label %bb.be

._crit_edge2833:                                  ; preds = %bb.be, %bb.bd
  %i.aos = phi i32 [ 0, %bb.bd ], [ %i.apb, %bb.be ] ; 2 uses
  %i.aot = zext i32 %i.aos to i64                 ; 5 uses
  %i.aou = shl nuw nsw i64 %i.aot, 4
  %i.aov = or disjoint i64 %i.aou, 8
  %i.aow = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aov) #18
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %.lr.ph2832, %bb.be
  %i.aox = phi i32 [ 0, %.lr.ph2832 ], [ %i.apb, %bb.be ]
  %indvars.iv3429 = phi i64 [ 0, %.lr.ph2832 ], [ %indvars.iv.next3430, %bb.be ] ; 2 uses
  %i.aoy = load ptr, ptr %i.aor, align 8
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %i.aoy, i64 %indvars.iv3429
  %i.apa = load i32, ptr %i.aoz, align 8
  %i.apb = add i32 %i.aox, %i.apa                 ; 3 uses
  store i32 %i.apb, ptr %i.aoj, align 8
end_hunk_0
