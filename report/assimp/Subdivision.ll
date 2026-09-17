Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Subdivision?download=true
inline.NumInlined: 871
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  %i.aeo = load <2 x float>, ptr %i.aem, align 4, !noalias !68
  %i.aep = load <2 x float>, ptr %i.aen, align 4, !noalias !68
  %i.aeq = fadd <2 x float> %i.aeo, %i.aep
  %i.aer = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 240 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.ye, i64 224
  %i.aet = load <2 x float>, ptr %i.aer, align 4, !noalias !68
  %i.aeu = load <2 x float>, ptr %i.aes, align 4, !noalias !68
  %i.aev = fadd <2 x float> %i.aet, %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 248 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ye, i64 232
  %i.aey = load <2 x float>, ptr %i.aew, align 4, !noalias !68
  %i.aez = load <2 x float>, ptr %i.aex, align 4, !noalias !68
  %i.afa = fadd <2 x float> %i.aey, %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 256 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ye, i64 240
  %i.afd = load <2 x float>, ptr %i.afb, align 4, !noalias !68
  %i.afe = load <2 x float>, ptr %i.afc, align 4, !noalias !68
  %i.aff = fadd <2 x float> %i.afd, %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 264 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ye, i64 248
  %i.afi = load <2 x float>, ptr %i.afg, align 4, !noalias !68
  %i.afj = load <2 x float>, ptr %i.afh, align 4, !noalias !68
  %i.afk = fadd <2 x float> %i.afi, %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 272 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.ye, i64 256
  %i.afn = load <2 x float>, ptr %i.afl, align 4, !noalias !68
  %i.afo = load <2 x float>, ptr %i.afm, align 4, !noalias !68
  %i.afp = fadd <2 x float> %i.afn, %i.afo
  %i.afq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 280 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.ye, i64 264
  %i.afs = load <2 x float>, ptr %i.afq, align 4, !noalias !68
  %i.aft = load <2 x float>, ptr %i.afr, align 4, !noalias !68
  %i.afu = fadd <2 x float> %i.afs, %i.aft
  store <2 x float> %i.yh, ptr %.1.i.i, align 4
  store float %i.ym, ptr %i.yi, align 4
  store <2 x float> %i.yr, ptr %i.yn, align 4
  store float %i.yw, ptr %i.ys, align 4
  store <2 x float> %i.zb, ptr %i.yx, align 4
  store float %i.zg, ptr %i.zc, align 4
  store <2 x float> %i.zl, ptr %i.zh, align 4
  store float %i.zq, ptr %i.zm, align 4
  store <2 x float> %i.zv, ptr %i.zr, align 4
  store float %i.aaa, ptr %i.zw, align 4
  store <2 x float> %i.aaf, ptr %i.aab, align 4
  store float %i.aak, ptr %i.aag, align 4
  store <2 x float> %i.aap, ptr %i.aal, align 4
  store float %i.aau, ptr %i.aaq, align 4
  store <2 x float> %i.aaz, ptr %i.aav, align 4
  store float %i.abe, ptr %i.aba, align 4
  store <2 x float> %i.abj, ptr %i.abf, align 4
  store float %i.abo, ptr %i.abk, align 4
  store <2 x float> %i.abt, ptr %i.abp, align 4
  store float %i.aby, ptr %i.abu, align 4
  store <2 x float> %i.acd, ptr %i.abz, align 4
  store float %i.aci, ptr %i.ace, align 4
  store <2 x float> %i.acn, ptr %i.acj, align 4
  store float %i.acs, ptr %i.aco, align 4
  store <2 x float> %i.acx, ptr %i.act, align 4
  store <2 x float> %i.adc, ptr %i.acy, align 4
  store <2 x float> %i.adh, ptr %i.add, align 4
  store <2 x float> %i.adm, ptr %i.adi, align 4
  store <2 x float> %i.adr, ptr %i.adn, align 4
  store <2 x float> %i.adw, ptr %i.ads, align 4
  store <2 x float> %i.aeb, ptr %i.adx, align 4
  store <2 x float> %i.aeg, ptr %i.aec, align 4
  store <2 x float> %i.ael, ptr %i.aeh, align 4
  store <2 x float> %i.aeq, ptr %i.aem, align 4
  store <2 x float> %i.aev, ptr %i.aer, align 4
  store <2 x float> %i.afa, ptr %i.aew, align 4
  store <2 x float> %i.aff, ptr %i.afb, align 4
  store <2 x float> %i.afk, ptr %i.afg, align 4
  store <2 x float> %i.afp, ptr %i.afl, align 4
  store <2 x float> %i.afu, ptr %i.afq, align 4
  br label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp6VertexpLERKS0_.exit428, %.loopexit2282
  %i.afv = load i32, ptr %i.ow, align 8           ; 2 uses
  %i.afw = zext i32 %i.afv to i64
  %i.afx = icmp samesign ult i64 %indvars.iv.next3787, %i.afw
  br i1 %i.afx, label %bb.u, label %._crit_edge3048.loopexit, !llvm.loop !37

._crit_edge3061:                                  ; preds = %bb.ai
  %.pre3889 = load i32, ptr %i.a, align 4
  %i.afy = icmp eq i32 %.pre3889, 0
  br i1 %i.afy, label %._crit_edge3061.thread, label %bb.ak

.lr.ph3060:                                       ; preds = %._crit_edge3056, %bb.ai
  %.sroa.01898.03058 = phi ptr [ %i.agi, %bb.ai ], [ %.pre3888, %._crit_edge3056 ] ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.01898.03058, i64 560
  %i.aga = load i32, ptr %i.afz, align 8          ; 2 uses
  %i.agb = icmp ult i32 %i.aga, 2
  br i1 %i.agb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph3060
  %i.agc = load i32, ptr %i.a, align 4
  %i.agd = add i32 %i.agc, 1
  store i32 %i.agd, ptr %i.a, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph3060
  %i.age = uitofp i32 %i.aga to float
  %i.agf = fadd float %i.age, 2.000000e+00
  %i.agg = fdiv float 1.000000e+00, %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.01898.03058, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6Assimp6Vertex8BinaryOpINS_6Intern10multipliesEEES0_RKS0_f(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::Vertex") align 4 %5, ptr noundef nonnull align 4 dereferenceable(272) %i.agh, float noundef %i.agg)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.agh, ptr noundef nonnull align 4 dereferenceable(272) %5, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.agi = load ptr, ptr %.sroa.01898.03058, align 8 ; 2 uses
  %.not2265 = icmp eq ptr %i.agi, null
  br i1 %.not2265, label %._crit_edge3061, label %.lr.ph3060, !llvm.loop !38

bb.aj:                                            ; preds = %bb.ah
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ak:                                            ; preds = %._crit_edge3061
  %i.agk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.agl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.agm = load i64, ptr %i.agl, align 8
  %i.agn = trunc i64 %i.agm to i32
  store i32 %i.agn, ptr %i.b, align 4
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA31_KcRjRA44_S2_jRA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.agk, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.4)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %._crit_edge3061.thread

bb.an:                                            ; preds = %bb.ak
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ao:                                            ; preds = %bb.al
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.au

._crit_edge3061.thread:                           ; preds = %._crit_edge3056.thread, %._crit_edge3056, %bb.am, %._crit_edge3061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.agq = zext i32 %.0322.lcssa to i64           ; 3 uses
  %.not.i.i.i.i431 = icmp eq i32 %.0322.lcssa, 0
  br i1 %.not.i.i.i.i431, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge3061.thread
  %i.agr = shl nuw nsw i64 %i.agq, 2
  %i.ags = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agr) #18
          to label %.noexc432 unwind label %bb.av ; 5 uses

.noexc432:                                        ; preds = %bb.ap
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.agq ; 2 uses
  store i32 0, ptr %i.ags, align 4
  %i.agu = add nsw i64 %i.agq, -1                 ; 2 uses
  %i.agv = icmp eq i64 %i.agu, 0
  br i1 %i.agv, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc432
  %i.agw = getelementptr i8, ptr %i.ags, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.agu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.agw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc432, %._crit_edge3061.thread
  %.sroa.01890.0 = phi ptr [ %i.ags, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ags, %.noexc432 ], [ null, %._crit_edge3061.thread ] ; 8 uses
  %.sroa.111895.0 = phi ptr [ %i.agt, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.agt, %.noexc432 ], [ null, %._crit_edge3061.thread ] ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.agy = load ptr, ptr %i.agx, align 8          ; 2 uses
  %i.agz = load ptr, ptr %6, align 8              ; 2 uses
  %i.aha = ptrtoint ptr %i.agy to i64             ; 4 uses
  %i.ahb = ptrtoint ptr %i.agz to i64             ; 2 uses
  %i.ahc = sub i64 %i.aha, %i.ahb                 ; 3 uses
  %i.ahd = icmp ugt i64 %i.ahc, 9223372036854775804
  br i1 %i.ahd, label %bb.aq, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.aq:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc435 unwind label %bb.aw

.noexc435:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %.not.i.i.i.i433 = icmp eq ptr %i.agy, %i.agz
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ahe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahc) #18
          to label %.noexc436 unwind label %bb.aw ; 3 uses

.noexc436:                                        ; preds = %bb.ar
  %14 = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahc
  %i.ahf = add i64 %i.aha, -4
  %i.ahg = sub i64 %i.ahf, %i.ahb
  %i.ahh = and i64 %i.ahg, -4
  %i.ahi = add i64 %i.ahh, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ahe, i8 0, i64 %i.ahi, i1 false)
  %15 = ptrtoint ptr %14 to i64
  %.pre3890 = load ptr, ptr %i.agx, align 8
  %.pre3891 = load ptr, ptr %6, align 8
  %.pre3910 = ptrtoint ptr %.pre3890 to i64
  %.pre3911 = ptrtoint ptr %.pre3891 to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc436, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.pre-phi3912 = phi i64 [ %.pre3911, %.noexc436 ], [ %i.aha, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.pre-phi = phi i64 [ %.pre3910, %.noexc436 ], [ %i.aha, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.01880.0 = phi ptr [ %i.ahe, %.noexc436 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.161887.0 = phi i64 [ %15, %.noexc436 ], [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.ahj = sub i64 %.pre-phi, %.pre-phi3912
  %i.ahk = ashr exact i64 %i.ahj, 2
  %i.ahl = add nsw i64 %i.ahk, 1                  ; 4 uses
  %i.ahm = icmp ugt i64 %i.ahl, 2305843009213693951
  br i1 %i.ahm, label %bb.as, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc444 unwind label %bb.ax

.noexc444:                                        ; preds = %bb.as
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437: ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %.not.i.i.i.i438 = icmp eq i64 %i.ahl, 0
  br i1 %.not.i.i.i.i438, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  %i.ahn = shl nuw nsw i64 %i.ahl, 2              ; 2 uses
  %i.aho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahn) #18
          to label %.noexc445 unwind label %bb.ax ; 3 uses

.noexc445:                                        ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aho, i8 0, i64 %i.ahn, i1 false)
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ahl
  %i.ahq = ptrtoint ptr %i.ahp to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446:         ; preds = %.noexc445, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437
  %.sroa.01870.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.aho, %.noexc445 ] ; 13 uses
  %.sroa.141876.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i437 ], [ %i.ahq, %.noexc445 ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph3071, label %.preheader2281

.lr.ph3071:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %i.ahr = load ptr, ptr %6, align 8
  br label %bb.ay

.preheader2281:                                   ; preds = %._crit_edge3069, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit446
  %i.ahs = ptrtoint ptr %.sroa.01880.0 to i64     ; 2 uses
  %i.aht = sub i64 %.sroa.161887.0, %i.ahs        ; 2 uses
  %.not3329 = icmp eq i64 %.sroa.161887.0, %i.ahs
  br i1 %.not3329, label %.preheader2280, label %.lr.ph3074.preheader

.lr.ph3074.preheader:                             ; preds = %.preheader2281
  %i.ahu = ashr exact i64 %i.aht, 2               ; 3 uses
  %xtraiter = and i64 %i.ahu, 3                   ; 3 uses
  %i.ahv = icmp ult i64 %i.ahu, 4
  br i1 %i.ahv, label %.lr.ph3074.epil.preheader, label %.lr.ph3074.preheader.new

.lr.ph3074.preheader.new:                         ; preds = %.lr.ph3074.preheader
  %unroll_iter = and i64 %i.ahu, -4
  br label %.lr.ph3074

bb.au:                                            ; preds = %bb.ao, %bb.an, %bb.aj
  %.pn398 = phi { ptr, i32 } [ %i.agj, %bb.aj ], [ %i.agp, %bb.ao ], [ %i.ago, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.body

bb.av:                                            ; preds = %bb.ap
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit542

bb.ax:                                            ; preds = %bb.at, %bb.as
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

bb.ay:                                            ; preds = %.lr.ph3071, %._crit_edge3069
  %.03133070 = phi i64 [ 0, %.lr.ph3071 ], [ %i.aig, %._crit_edge3069 ] ; 3 uses
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03133070
  %i.aia = load ptr, ptr %i.ahz, align 8          ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 8 ; 2 uses
  %i.aic = load i32, ptr %i.aib, align 8          ; 2 uses
  %.not3327 = icmp eq i32 %i.aic, 0
  br i1 %.not3327, label %._crit_edge3069, label %.lr.ph3068

.lr.ph3068:                                       ; preds = %bb.ay
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aia, i64 208
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01962.03980, i64 %.03133070
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  br label %bb.az

._crit_edge3069:                                  ; preds = %._crit_edge3065, %bb.ay
  %i.aig = add nuw nsw i64 %.03133070, 1          ; 2 uses
  %exitcond3799.not = icmp eq i64 %i.aig, %2
  br i1 %exitcond3799.not, label %.preheader2281, label %bb.ay, !llvm.loop !39

bb.az:                                            ; preds = %.lr.ph3068, %._crit_edge3065
  %i.aih = phi i32 [ %i.aic, %.lr.ph3068 ], [ %i.ain, %._crit_edge3065 ]
  %indvars.iv3796 = phi i64 [ 0, %.lr.ph3068 ], [ %indvars.iv.next3797, %._crit_edge3065 ] ; 2 uses
  %i.aii = load ptr, ptr %i.aid, align 8
  %i.aij = getelementptr inbounds nuw [16 x i8], ptr %i.aii, i64 %indvars.iv3796 ; 3 uses
  %i.aik = load i32, ptr %i.aij, align 8
  %.not3328 = icmp eq i32 %i.aik, 0
  br i1 %.not3328, label %._crit_edge3065, label %.lr.ph3064

.lr.ph3064:                                       ; preds = %bb.az
  %i.ail = load i32, ptr %i.aif, align 4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  br label %bb.ba

._crit_edge3065.loopexit:                         ; preds = %bb.ba
  %.pre3892 = load i32, ptr %i.aib, align 8
  br label %._crit_edge3065

._crit_edge3065:                                  ; preds = %._crit_edge3065.loopexit, %bb.az
  %i.ain = phi i32 [ %.pre3892, %._crit_edge3065.loopexit ], [ %i.aih, %bb.az ] ; 2 uses
  %indvars.iv.next3797 = add nuw nsw i64 %indvars.iv3796, 1 ; 2 uses
  %i.aio = zext i32 %i.ain to i64
  %i.aip = icmp samesign ult i64 %indvars.iv.next3797, %i.aio
  br i1 %i.aip, label %bb.az, label %._crit_edge3069, !llvm.loop !40

bb.ba:                                            ; preds = %.lr.ph3064, %bb.ba
  %indvars.iv3793 = phi i64 [ 0, %.lr.ph3064 ], [ %indvars.iv.next3794, %bb.ba ] ; 2 uses
  %i.aiq = load ptr, ptr %i.aim, align 8
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %indvars.iv3793
  %i.ais = load i32, ptr %i.air, align 4
  %i.ait = add i32 %i.ais, %i.ail
  %i.aiu = zext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.aix ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 4
  %i.aja = add i32 %i.aiz, 1
  store i32 %i.aja, ptr %i.aiy, align 4
  %indvars.iv.next3794 = add nuw nsw i64 %indvars.iv3793, 1 ; 2 uses
  %i.ajb = load i32, ptr %i.aij, align 8
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = icmp samesign ult i64 %indvars.iv.next3794, %i.ajc
  br i1 %i.ajd, label %bb.ba, label %._crit_edge3065.loopexit, !llvm.loop !41

.preheader2280.loopexit.unr-lcssa:                ; preds = %.lr.ph3074
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader2280, label %.lr.ph3074.epil.preheader

.lr.ph3074.epil.preheader:                        ; preds = %.preheader2280.loopexit.unr-lcssa, %.lr.ph3074.preheader
  %.03093073.epil.init = phi i64 [ 0, %.lr.ph3074.preheader ], [ %i.ajz, %.preheader2280.loopexit.unr-lcssa ]
  %.03103072.epil.init = phi i32 [ 0, %.lr.ph3074.preheader ], [ %i.akd, %.preheader2280.loopexit.unr-lcssa ]
  %lcmp.mod5222 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5222)
  br label %.lr.ph3074.epil

.lr.ph3074.epil:                                  ; preds = %.lr.ph3074.epil, %.lr.ph3074.epil.preheader
  %.03093073.epil = phi i64 [ %i.aje, %.lr.ph3074.epil ], [ %.03093073.epil.init, %.lr.ph3074.epil.preheader ] ; 2 uses
  %.03103072.epil = phi i32 [ %i.aji, %.lr.ph3074.epil ], [ %.03103072.epil.init, %.lr.ph3074.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph3074.epil ], [ 0, %.lr.ph3074.epil.preheader ]
  %i.aje = add nuw i64 %.03093073.epil, 1         ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.aje
  store i32 %.03103072.epil, ptr %i.ajf, align 4
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %.03093073.epil
  %i.ajh = load i32, ptr %i.ajg, align 4
  %i.aji = add i32 %i.ajh, %.03103072.epil
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2280, label %.lr.ph3074.epil, !llvm.loop !42

.preheader2280:                                   ; preds = %.preheader2280.loopexit.unr-lcssa, %.lr.ph3074.epil, %.preheader2281
  br i1 %.not.i.i.i.i, label %.lr.ph3085, label %._crit_edge3086

.lr.ph3085:                                       ; preds = %.preheader2280
  %i.ajj = load ptr, ptr %6, align 8
  br label %bb.bb

.lr.ph3074:                                       ; preds = %.lr.ph3074, %.lr.ph3074.preheader.new
  %.03093073 = phi i64 [ 0, %.lr.ph3074.preheader.new ], [ %i.ajz, %.lr.ph3074 ] ; 5 uses
  %.03103072 = phi i32 [ 0, %.lr.ph3074.preheader.new ], [ %i.akd, %.lr.ph3074 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph3074.preheader.new ], [ %niter.next.3, %.lr.ph3074 ]
  %i.ajk = or disjoint i64 %.03093073, 1          ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajk
  store i32 %.03103072, ptr %i.ajl, align 4
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %.03093073
  %i.ajn = load i32, ptr %i.ajm, align 4
  %i.ajo = add i32 %i.ajn, %.03103072             ; 2 uses
  %i.ajp = or disjoint i64 %.03093073, 2          ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajp
  store i32 %i.ajo, ptr %i.ajq, align 4
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajk
  %i.ajs = load i32, ptr %i.ajr, align 4
  %i.ajt = add i32 %i.ajs, %i.ajo                 ; 2 uses
  %i.aju = or disjoint i64 %.03093073, 3          ; 2 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.aju
  store i32 %i.ajt, ptr %i.ajv, align 4
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.ajp
  %i.ajx = load i32, ptr %i.ajw, align 4
  %i.ajy = add i32 %i.ajx, %i.ajt                 ; 2 uses
  %i.ajz = add nuw i64 %.03093073, 4              ; 3 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01870.0, i64 %i.ajz
  store i32 %i.ajy, ptr %i.aka, align 4
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01880.0, i64 %i.aju
  %i.akc = load i32, ptr %i.akb, align 4
  %i.akd = add i32 %i.akc, %i.ajy                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2280.loopexit.unr-lcssa, label %.lr.ph3074, !llvm.loop !43

._crit_edge3086:                                  ; preds = %._crit_edge3083, %.preheader2280
  %i.ake = zext i32 %i.y to i64                   ; 5 uses
  %.not.i.i.i.i447 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i447, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit, label %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %._crit_edge3086
  %i.akf = mul nuw nsw i64 %i.ake, 276
  %i.akg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akf) #18
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %bb.bj ; 4 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS4_.exit.i
  %xtraiter5223 = and i64 %i.ake, 7               ; 2 uses
  %lcmp.mod5224.not = icmp eq i64 %xtraiter5223, 0
  br i1 %lcmp.mod5224.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.akj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.akg, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.aki, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ake, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i8 0, ptr %.09.i.i.i.i.i.i.prol, align 4
  %i.akh = getelementptr i8, ptr %.09.i.i.i.i.i.i.prol, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.akh, i8 0, i64 272, i1 false)
  %i.aki = add nsw i64 %.068.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 276 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5223
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !44

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.akj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.ake, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aki, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.akk = icmp ult i32 %i.y, 8
  br i1 %i.akk, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.alb, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ala, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i8 0, ptr %.09.i.i.i.i.i.i, align 4
  %i.akl = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 4
end_hunk_0
begin_hunk_1_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  %i.ckb = load <2 x float>, ptr %i.ann, align 8, !noalias !73
  %i.ckc = fmul <2 x float> %i.cgc, %i.ckb
  %i.ckd = fadd <2 x float> %i.cdx, %i.ckc
  %i.cke = fadd <2 x float> %i.cfs, %i.ckd
  %i.ckf = load <2 x float>, ptr %i.ano, align 8, !noalias !73
  %i.ckg = fmul <2 x float> %i.cgc, %i.ckf
  %i.ckh = fadd <2 x float> %i.cdy, %i.ckg
  %i.cki = fadd <2 x float> %i.cft, %i.ckh
  %i.ckj = load <2 x float>, ptr %i.anp, align 8, !noalias !73
  %i.ckk = fmul <2 x float> %i.cgc, %i.ckj
  %i.ckl = fadd <2 x float> %i.cdz, %i.ckk
  %i.ckm = fadd <2 x float> %i.cfu, %i.ckl
  %i.ckn = load <2 x float>, ptr %i.anq, align 8, !noalias !73
  %i.cko = fmul <2 x float> %i.cgc, %i.ckn
  %i.ckp = fadd <2 x float> %i.cea, %i.cko
  %i.ckq = fadd <2 x float> %i.cfv, %i.ckp
  %i.ckr = load <2 x float>, ptr %i.anr, align 8, !noalias !73
  %i.cks = fmul <2 x float> %i.cgc, %i.ckr
  %i.ckt = fadd <2 x float> %i.ceb, %i.cks
  %i.cku = fadd <2 x float> %i.cfw, %i.ckt
  %i.ckv = load <2 x float>, ptr %i.ans, align 8, !noalias !73
  %i.ckw = fmul <2 x float> %i.cgc, %i.ckv
  %i.ckx = fadd <2 x float> %i.cec, %i.ckw
  %i.cky = fadd <2 x float> %i.cfx, %i.ckx
  %i.ckz = load <2 x float>, ptr %i.ant, align 8, !noalias !73
  %i.cla = fmul <2 x float> %i.cgc, %i.ckz
  %i.clb = fadd <2 x float> %i.ced, %i.cla
  %i.clc = fadd <2 x float> %i.cfy, %i.clb
  %i.cld = load <2 x float>, ptr %i.anu, align 8, !noalias !73
  %i.cle = fmul <2 x float> %i.cgc, %i.cld
  %i.clf = fadd <2 x float> %i.cee, %i.cle
  %i.clg = fadd <2 x float> %i.cfz, %i.clf
  %i.clh = getelementptr inbounds nuw i8, ptr %i.bgl, i64 4
  store <2 x float> %i.cgf, ptr %i.clh, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 12
  %i.cli = extractelement <4 x float> %i.chg, i64 1
  store float %i.cli, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.61557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 16
  store <2 x float> %i.cgj, ptr %.sroa.61557.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 24
  %i.clj = extractelement <4 x float> %i.chg, i64 2
  store float %i.clj, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.81558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 28
  store <2 x float> %i.cgn, ptr %.sroa.81558.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 36
  %i.clk = extractelement <4 x float> %i.chg, i64 3
  store float %i.clk, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.101559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 40
  store <2 x float> %i.chk, ptr %.sroa.101559.0..sroa_idx, align 4
  %.sroa.111560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 48
  %i.cll = extractelement <4 x float> %i.chx, i64 0
  store float %i.cll, ptr %.sroa.111560.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 52
  store <2 x float> %i.cho, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.131561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 60
  %i.clm = extractelement <4 x float> %i.chx, i64 1
  store float %i.clm, ptr %.sroa.131561.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 64
  store <2 x float> %i.chs, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 72
  %i.cln = extractelement <4 x float> %i.chx, i64 2
  store float %i.cln, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.161562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 76
  store <2 x float> %i.chw, ptr %.sroa.161562.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 84
  %i.clo = extractelement <4 x float> %i.chx, i64 3
  store float %i.clo, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.181563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 88
  store <2 x float> %i.cib, ptr %.sroa.181563.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 96
  %i.clp = extractelement <4 x float> %i.cio, i64 0
  store float %i.clp, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 100
  store <2 x float> %i.cif, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.211564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 108
  %i.clq = extractelement <4 x float> %i.cio, i64 1
  store float %i.clq, ptr %.sroa.211564.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 112
  store <2 x float> %i.cij, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.231565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 120
  %i.clr = extractelement <4 x float> %i.cio, i64 2
  store float %i.clr, ptr %.sroa.231565.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 124
  store <2 x float> %i.cin, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 132
  %i.cls = extractelement <4 x float> %i.cio, i64 3
  store float %i.cls, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.261566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 136
  store <2 x float> %i.cis, ptr %.sroa.261566.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 144
  store float %i.ciu, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.281567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 148
  store <2 x float> %i.ciy, ptr %.sroa.281567.0..sroa_idx, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 156
  store <2 x float> %i.cjc, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 164
  store <2 x float> %i.cjg, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.311568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 172
  store <2 x float> %i.cjk, ptr %.sroa.311568.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 180
  store <2 x float> %i.cjo, ptr %.sroa.32.0..sroa_idx, align 4
  %.sroa.331569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 188
  store <2 x float> %i.cjs, ptr %.sroa.331569.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 196
  store <2 x float> %i.cjw, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 204
  store <2 x float> %i.cka, ptr %.sroa.35.0..sroa_idx, align 4
  %.sroa.361570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 212
  store <2 x float> %i.cke, ptr %.sroa.361570.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 220
  store <2 x float> %i.cki, ptr %.sroa.37.0..sroa_idx, align 4
  %.sroa.381571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 228
  store <2 x float> %i.ckm, ptr %.sroa.381571.0..sroa_idx, align 4
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 236
  store <2 x float> %i.ckq, ptr %.sroa.40.0..sroa_idx, align 4
  %.sroa.411572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 244
  store <2 x float> %i.cku, ptr %.sroa.411572.0..sroa_idx, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 252
  store <2 x float> %i.cky, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.431573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 260
  store <2 x float> %i.clc, ptr %.sroa.431573.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 268
  store <2 x float> %i.clg, ptr %.sroa.44.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.eo

bb.en:                                            ; preds = %bb.dw
  %i.clt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.body471

bb.eo:                                            ; preds = %bb.ds, %bb.em, %.loopexit2271
  %i.clu = getelementptr inbounds nuw i8, ptr %i.bgl, i64 4
  %i.clv = add i32 %.13003302, 4                  ; 2 uses
  %i.clw = load ptr, ptr %i.bcm, align 8
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clw, i64 8
  store i32 %i.bfy, ptr %i.clx, align 4
  call void @_ZNK6Assimp6Vertex8SortBackEP6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %i.clu, ptr noundef nonnull %i.aop, i32 noundef %i.bfy)
  %i.cly = load i32, ptr %i.bca, align 8
  %i.clz = zext i32 %i.cly to i64
  %i.cma = icmp samesign ult i64 %indvars.iv.next3829, %i.clz
  br i1 %i.cma, label %bb.dg, label %._crit_edge3307.loopexit, !llvm.loop !62

.body471:                                         ; preds = %bb.en, %bb.el, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i497, %bb.eh, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i511, %bb.ei, %bb.dv, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i481, %bb.du, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i467, %bb.dt, %bb.co, %bb.bx, %bb.bm
  %.pn392 = phi { ptr, i32 } [ %i.atf, %bb.bx ], [ %i.ays, %bb.co ], [ %i.apf, %bb.bm ], [ %i.bgz, %bb.dt ], [ %i.bfu, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i481 ], [ %i.bei, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i467 ], [ %i.bsd, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i511 ], [ %i.bha, %bb.du ], [ %i.bhb, %bb.dv ], [ %i.clt, %bb.en ], [ %i.cbn, %bb.ei ], [ %i.cbp, %bb.el ], [ %i.bqr, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i497 ], [ %i.cbm, %bb.eh ] ; 2 uses
  %.not.i.i.i531 = icmp eq ptr %.sroa.01862.0, null
  br i1 %.not.i.i.i531, label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532, label %bb.ep

bb.ep:                                            ; preds = %.body471.thread, %.body471
  %.pn3922255 = phi { ptr, i32 } [ %i.bhc, %.body471.thread ], [ %.pn392, %.body471 ]
  %i.cmb = ptrtoint ptr %.sroa.01862.0 to i64
  %i.cmc = sub i64 %.sroa.121866.0, %i.cmb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01862.0, i64 noundef %i.cmc) #20
  br label %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532

_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cmd = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.cme = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cmd) #18
          to label %.noexc537 unwind label %bb.eu ; 6 uses

.noexc537:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr null, ptr %i.cme, align 8
  %i.cmf = add nsw i64 %2, -1                     ; 2 uses
  %i.cmg = icmp eq i64 %i.cmf, 0
  br i1 %i.cmg, label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit, label %_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc537
  %i.cmh = getelementptr i8, ptr %i.cme, i64 8
  %.idx.i.i.i.i.i.i.i534 = shl nuw nsw i64 %i.cmf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cmh, i8 0, i64 %.idx.i.i.i.i.i.i.i534, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit:      ; preds = %_ZSt6fill_nIPP6aiMeshmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc537
  %i.cmi = add i32 %4, -1
  invoke void @_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.cme, i32 noundef %i.cmi)
          to label %.preheader unwind label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.cme, i64 noundef %i.cmd) #20
  br label %bb.ex

_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532: ; preds = %bb.ep, %.body471, %bb.bj
  %.pn392.pn = phi { ptr, i32 } [ %i.aom, %bb.bj ], [ %.pn392, %.body471 ], [ %.pn3922255, %bb.ep ] ; 2 uses
  %.not.i.i.i539 = icmp eq ptr %.sroa.01870.0, null
  br i1 %.not.i.i.i539, label %_ZNSt6vectorIjSaIjEED2Ev.exit540, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532
  %i.cmj = ptrtoint ptr %.sroa.01870.0 to i64
  %i.cmk = sub i64 %.sroa.141876.0, %i.cmj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01870.0, i64 noundef %i.cmk) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

_ZNSt6vectorIjSaIjEED2Ev.exit540:                 ; preds = %bb.eq, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532, %bb.ax
  %.pn392.pn.pn = phi { ptr, i32 } [ %i.ahy, %bb.ax ], [ %.pn392.pn, %_ZNSt6vectorISt4pairIbN6Assimp6VertexEESaIS3_EED2Ev.exit532 ], [ %.pn392.pn, %bb.eq ] ; 2 uses
  %.not.i.i.i541 = icmp eq ptr %.sroa.01880.0, null
  br i1 %.not.i.i.i541, label %_ZNSt6vectorIjSaIjEED2Ev.exit542, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit540
  %i.cml = ptrtoint ptr %.sroa.01880.0 to i64
  %i.cmm = sub i64 %.sroa.161887.0, %i.cml
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01880.0, i64 noundef %i.cmm) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit542

_ZNSt6vectorIjSaIjEED2Ev.exit542:                 ; preds = %bb.er, %_ZNSt6vectorIjSaIjEED2Ev.exit540, %bb.aw
  %.pn392.pn.pn.pn = phi { ptr, i32 } [ %i.ahx, %bb.aw ], [ %.pn392.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit540 ], [ %.pn392.pn.pn, %bb.er ] ; 2 uses
  %.not.i.i.i543 = icmp eq ptr %.sroa.01890.0, null
  br i1 %.not.i.i.i543, label %.body, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit542
  %i.cmn = ptrtoint ptr %.sroa.111895.0 to i64
  %i.cmo = ptrtoint ptr %.sroa.01890.0 to i64
  %i.cmp = sub i64 %i.cmn, %i.cmo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01890.0, i64 noundef %i.cmp) #20
  br label %.body

.body:                                            ; preds = %bb.av, %_ZNSt6vectorIjSaIjEED2Ev.exit542, %bb.es, %bb.ab, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.ae, %bb.au
  %.pn402.pn = phi { ptr, i32 } [ %i.qt, %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.pn398, %bb.au ], [ %.pn392.pn.pn.pn, %bb.es ], [ %.pn400, %bb.ae ], [ %i.xy, %bb.ab ], [ %i.ahw, %bb.av ], [ %.pn392.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit542 ]
  %i.cmq = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not5.i.i.i.i545 = icmp eq ptr %i.cmq, null
  br i1 %.not5.i.i.i.i545, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549, label %.lr.ph.i.i.i.i546

.lr.ph.i.i.i.i546:                                ; preds = %.body, %.lr.ph.i.i.i.i546
  %.06.i.i.i.i547 = phi ptr [ %i.cmr, %.lr.ph.i.i.i.i546 ], [ %i.cmq, %.body ] ; 2 uses
  %i.cmr = load ptr, ptr %.06.i.i.i.i547, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i547, i64 noundef 568) #20
  %.not.i.i.i.i548 = icmp eq ptr %i.cmr, null
  br i1 %.not.i.i.i.i548, label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549, label %.lr.ph.i.i.i.i546, !llvm.loop !49

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549: ; preds = %.lr.ph.i.i.i.i546, %.body
  %i.cms = load ptr, ptr %9, align 8
  %i.cmt = load i64, ptr %i.bd, align 8
  %i.cmu = shl i64 %i.cmt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cms, i8 0, i64 %i.cmu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.cmv = load ptr, ptr %9, align 8              ; 2 uses
  %i.cmw = icmp eq ptr %i.cmv, %i.bc
  br i1 %i.cmw, label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550, label %bb.et

bb.et:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549
  %i.cmx = load i64, ptr %i.bd, align 8
  %i.cmy = shl i64 %i.cmx, 3
  call void @_ZdlPvm(ptr noundef %i.cmv, i64 noundef %i.cmy) #20
  br label %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550

_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550: ; preds = %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i549, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.fd

bb.eu:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.cmz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552:        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit
  %i.cna = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cme, i64 noundef %i.cmd) #20
  br label %bb.fd

.preheader:                                       ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit, %bb.ew
  %.03318 = phi i64 [ %i.cng, %bb.ew ], [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS2_.exit ] ; 3 uses
  %i.cnb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03318 ; 2 uses
  %i.cnc = load ptr, ptr %i.cnb, align 8          ; 3 uses
  %i.cnd = icmp eq ptr %i.cnc, null
  br i1 %i.cnd, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.preheader
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.cnc) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.cnc, i64 noundef 1320) #20
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.preheader
  %i.cne = getelementptr inbounds nuw [8 x i8], ptr %i.cme, i64 %.03318
  %i.cnf = load ptr, ptr %i.cne, align 8
  store ptr %i.cnf, ptr %i.cnb, align 8
  %i.cng = add nuw i64 %.03318, 1                 ; 2 uses
  %exitcond3835.not = icmp eq i64 %i.cng, %2
  br i1 %exitcond3835.not, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %.preheader, !llvm.loop !63

bb.ex:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  %.not.i.i.i553 = icmp eq ptr %.sroa.01946.0, null
  br i1 %.not.i.i.i553, label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.cnh = ptrtoint ptr %.sroa.01946.0 to i64
  %i.cni = sub i64 %.sink.i418, %i.cnh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01946.0, i64 noundef %i.cni) #20
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit:   ; preds = %bb.ex, %bb.ey
  %.not.i.i.i554 = icmp eq ptr %.sroa.01962.03980, null
  br i1 %.not.i.i.i554, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit
  %i.cnj = ptrtoint ptr %.sroa.01962.03980 to i64
  %i.cnk = sub i64 %.sink.i3982, %i.cnj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01962.03980, i64 noundef %i.cnk) #20
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit, %bb.ez
  %i.cnl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cnm = load ptr, ptr %i.cnl, align 8          ; 3 uses
  %.not.i.i.i.i555 = icmp eq ptr %i.cnm, null
  br i1 %.not.i.i.i.i555, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.cnn = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cno = load ptr, ptr %i.cnn, align 8
  %i.cnp = ptrtoint ptr %i.cno to i64
  %i.cnq = ptrtoint ptr %i.cnm to i64
  %i.cnr = sub i64 %i.cnp, %i.cnq
  call void @_ZdlPvm(ptr noundef nonnull %i.cnm, i64 noundef %i.cnr) #20
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cns = load ptr, ptr %6, align 8              ; 3 uses
  %.not.i.i.i556 = icmp eq ptr %i.cns, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIjSaIjEED2Ev.exit557, label %bb.fb

bb.fb:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit
  %i.cnt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cnu = load ptr, ptr %i.cnt, align 8
  %i.cnv = ptrtoint ptr %i.cnu to i64
  %i.cnw = ptrtoint ptr %i.cns to i64
  %i.cnx = sub i64 %i.cnv, %i.cnw
  call void @_ZdlPvm(ptr noundef nonnull %i.cns, i64 noundef %i.cnx) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit557

_ZNSt6vectorIjSaIjEED2Ev.exit557:                 ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.fc

bb.fc:                                            ; preds = %bb.a, %_ZNSt6vectorIjSaIjEED2Ev.exit557
  ret void

bb.fd:                                            ; preds = %bb.eu, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552, %bb.r, %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550
  %.pn405.pn = phi { ptr, i32 } [ %i.cmz, %bb.eu ], [ %.pn402.pn, %_ZNSt13unordered_mapImN22CatmullClarkSubdivider4EdgeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit550 ], [ %i.jl, %bb.r ], [ %i.cna, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit552 ] ; 2 uses
  %.not.i.i.i558 = icmp eq ptr %.sroa.01946.0, null
  br i1 %.not.i.i.i558, label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.cny = ptrtoint ptr %.sroa.01946.0 to i64
  %i.cnz = sub i64 %.sink.i418, %i.cny
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01946.0, i64 noundef %i.cnz) #20
  br label %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559

_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559: ; preds = %bb.m, %bb.fd, %bb.fe, %bb.l, %bb.k
  %.pn410 = phi { ptr, i32 } [ %.pn405.pn, %bb.fe ], [ %i.dp, %bb.k ], [ %i.dq, %bb.l ], [ %i.dr, %bb.m ], [ %.pn405.pn, %bb.fd ] ; 2 uses
  %.not.i.i.i560 = icmp eq ptr %.sroa.01962.03980, null
  br i1 %.not.i.i.i560, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559
  %.pn4103994 = phi { ptr, i32 } [ %i.w, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread ], [ %.pn410, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ]
  %.sroa.01962.039793993 = phi ptr [ %i.e, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread ], [ %.sroa.01962.03980, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ] ; 2 uses
  %.sink.i39813992 = phi i64 [ %i.g, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559.thread ], [ %.sink.i3982, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ]
  %i.coa = ptrtoint ptr %.sroa.01962.039793993 to i64
  %i.cob = sub i64 %.sink.i39813992, %i.coa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01962.039793993, i64 noundef %i.cob) #20
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561:     ; preds = %bb.ff, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559, %bb.f
  %.pn410.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn410, %_ZNSt6vectorIN6Assimp6VertexESaIS1_EED2Ev.exit559 ], [ %.pn4103994, %bb.ff ] ; 2 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cod = load ptr, ptr %i.coc, align 8          ; 3 uses
  %.not.i.i.i.i562 = icmp eq ptr %i.cod, null
  br i1 %.not.i.i.i.i562, label %_ZN6Assimp11SpatialSortD2Ev.exit563, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561
  %i.coe = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cof = load ptr, ptr %i.coe, align 8
  %i.cog = ptrtoint ptr %i.cof to i64
  %i.coh = ptrtoint ptr %i.cod to i64
  %i.coi = sub i64 %i.cog, %i.coh
  call void @_ZdlPvm(ptr noundef nonnull %i.cod, i64 noundef %i.coi) #20
  br label %_ZN6Assimp11SpatialSortD2Ev.exit563

_ZN6Assimp11SpatialSortD2Ev.exit563:              ; preds = %bb.fg, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561, %bb.e
  %.pn410.pn.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn410.pn, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit561 ], [ %.pn410.pn, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.coj = load ptr, ptr %6, align 8              ; 3 uses
  %.not.i.i.i564 = icmp eq ptr %i.coj, null
  br i1 %.not.i.i.i564, label %_ZNSt6vectorIjSaIjEED2Ev.exit565, label %bb.fh

bb.fh:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit563
  %i.cok = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.col = load ptr, ptr %i.cok, align 8
  %i.com = ptrtoint ptr %i.col to i64
  %i.con = ptrtoint ptr %i.coj to i64
  %i.coo = sub i64 %i.com, %i.con
  call void @_ZdlPvm(ptr noundef nonnull %i.coj, i64 noundef %i.coo) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit565

_ZNSt6vectorIjSaIjEED2Ev.exit565:                 ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit563, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn410.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
