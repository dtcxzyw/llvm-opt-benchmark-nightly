Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaLoader?download=true
inline.NumInlined: 3826
inline.NumDeleted: 1929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp13ColladaLoader15CreateAnimationEP7aiSceneRKNS_13ColladaParserEPKNS_7Collada9AnimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %.noexc644 unwind label %.loopexit.split-lp

.noexc644:                                        ; preds = %bb.ff
  unreachable

_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fe
  %i.ady = ashr exact i64 %i.adw, 6               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ady, i64 1)
  %i.adz = add nsw i64 %.sroa.speculated.i.i.i, %i.ady ; 2 uses
  %i.aea = icmp ult i64 %i.adz, %i.ady
  %i.aeb = call i64 @llvm.umin.i64(i64 %i.adz, i64 144115188075855871)
  %i.aec = select i1 %i.aea, i64 144115188075855871, i64 %i.aeb ; 3 uses
  %.not.i.i.i643 = icmp ne i64 %i.aec, 0
  call void @llvm.assume(i1 %.not.i.i.i643)
  %i.aed = shl nuw nsw i64 %i.aec, 6
  %i.aee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aed) #30
          to label %.noexc645 unwind label %.loopexit996 ; 5 uses

.noexc645:                                        ; preds = %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.adw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.aef, ptr noundef nonnull align 4 dereferenceable(64) %21, i64 64, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0823.0, %.sroa.17.0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc645, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aeh, %.lr.ph.i.i.i.i.i ], [ %i.aee, %.noexc645 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aeg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0823.0, %.noexc645 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !alias.scope !160
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aeg, %.sroa.17.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !145

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc645
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aee, %.noexc645 ], [ %i.aeh, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0823.0, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.0, i64 noundef %i.adw) #27
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.fg, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.aei = getelementptr inbounds nuw [64 x i8], ptr %i.aee, i64 %i.aec
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.fd
  %.sroa.0823.4 = phi ptr [ %i.aee, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0823.0, %bb.fd ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0, %bb.fd ]
  %.sroa.29.4 = phi ptr [ %i.aei, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.29.0, %bb.fd ] ; 7 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 64 ; 3 uses
  %i.aej = load ptr, ptr %6, align 8              ; 3 uses
  %i.aek = load ptr, ptr %i.aw, align 8           ; 3 uses
  %.not9721769 = icmp eq ptr %i.aej, %i.aek
  br i1 %.not9721769, label %._crit_edge1772, label %.preheader991.lr.ph

.preheader991.lr.ph:                              ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit
  %i.ael = load ptr, ptr %20, align 8
  br label %.preheader991

.preheader991:                                    ; preds = %.preheader991.lr.ph, %bb.fn
  %.sroa.0804.01771 = phi ptr [ %i.aej, %.preheader991.lr.ph ], [ %i.ahh, %bb.fn ] ; 8 uses
  %.01770 = phi float [ 1.000000e+20, %.preheader991.lr.ph ], [ %.4, %bb.fn ] ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 88
  %i.aen = load ptr, ptr %i.aem, align 8          ; 5 uses
  %i.aeo = load i64, ptr %i.aen, align 8          ; 4 uses
  %.not1828 = icmp eq i64 %i.aeo, 0
  br i1 %.not1828, label %.loopexit, label %.lr.ph1763

.lr.ph1763:                                       ; preds = %.preheader991
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 96
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = getelementptr i8, ptr %i.aen, i64 16
  %.val348 = load i64, ptr %i.aer, align 8
  %i.aes = getelementptr i8, ptr %i.aen, i64 24
  %.val349 = load i64, ptr %i.aes, align 8
  %i.aet = getelementptr i8, ptr %i.aeq, i64 8
  %.val350 = load ptr, ptr %i.aet, align 8
  %invariant.gep1767 = getelementptr [4 x i8], ptr %.val350, i64 %.val348
  br label %bb.fi

._crit_edge1772:                                  ; preds = %bb.fn, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit
  %.0.lcssa = phi float [ 1.000000e+20, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit ], [ %.4, %bb.fn ] ; 2 uses
  %i.aeu = fpext float %.0.lcssa to double
  %i.aev = fcmp ogt double %i.aeu, 1.000000e+19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %i.aev, label %bb.fo, label %bb.ev

.loopexit996:                                     ; preds = %._crit_edge1761, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.0, %._crit_edge1761 ], [ %.sroa.17.0, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

.loopexit.split-lp:                               ; preds = %bb.ff
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fh:                                            ; preds = %.loopexit.split-lp, %.loopexit996
  %.sroa.29.01918 = phi ptr [ %.sroa.29.0.lcssa, %.loopexit996 ], [ %.sroa.17.0, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit996 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #26
  br label %.body639

bb.fi:                                            ; preds = %.lr.ph1763, %bb.fj
  %.02651762 = phi i64 [ 0, %.lr.ph1763 ], [ %i.afa, %bb.fj ] ; 3 uses
  %i.aew = mul i64 %.val349, %.02651762
  %gep1768 = getelementptr [4 x i8], ptr %invariant.gep1767, i64 %i.aew
  %i.aex = load float, ptr %gep1768, align 4      ; 3 uses
  %i.aey = fcmp ogt float %i.aex, %.0272
  br i1 %i.aey, label %.thread, label %bb.fj

.thread:                                          ; preds = %bb.fi
  %i.aez = fcmp olt float %i.aex, %.01770
  %.sroa.speculated801 = select i1 %i.aez, float %i.aex, float %.01770
  br label %.loopexit

bb.fj:                                            ; preds = %bb.fi
  %i.afa = add nuw i64 %.02651762, 1              ; 2 uses
  %exitcond2172.not = icmp eq i64 %i.afa, %i.aeo
  br i1 %exitcond2172.not, label %.loopexit, label %bb.fi

.loopexit:                                        ; preds = %bb.fj, %.preheader991, %.thread
  %.02651135 = phi i64 [ %.02651762, %.thread ], [ 0, %.preheader991 ], [ %i.aeo, %bb.fj ] ; 5 uses
  %.3 = phi float [ %.sroa.speculated801, %.thread ], [ %.01770, %.preheader991 ], [ %.01770, %bb.fj ] ; 5 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 72
  %i.afc = load i64, ptr %i.afb, align 8
  %i.afd = getelementptr inbounds nuw [104 x i8], ptr %i.ael, i64 %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 32
  %i.aff = load i32, ptr %i.afe, align 8
  %i.afg = icmp eq i32 %i.aff, 1
  br i1 %i.afg, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %.loopexit
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 80
  %i.afi = load i64, ptr %i.afh, align 8
  %i.afj = icmp eq i64 %i.afi, 3
  %i.afk = icmp ne i64 %.02651135, 0
  %or.cond4 = and i1 %i.afk, %i.afj
  %i.afl = icmp ult i64 %.02651135, %i.aeo
  %or.cond960 = and i1 %i.afl, %or.cond4
  br i1 %or.cond960, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 104
  %i.afn = load ptr, ptr %i.afm, align 8          ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 112
  %i.afp = load ptr, ptr %i.afo, align 8
  %i.afq = getelementptr i8, ptr %i.afn, i64 16
  %.val360 = load i64, ptr %i.afq, align 8        ; 2 uses
  %i.afr = getelementptr i8, ptr %i.afn, i64 24
  %.val361 = load i64, ptr %i.afr, align 8        ; 2 uses
  %i.afs = getelementptr i8, ptr %i.afp, i64 8
  %.val362 = load ptr, ptr %i.afs, align 8        ; 2 uses
  %i.aft = mul i64 %.val361, %.02651135
  %i.afu = getelementptr [4 x i8], ptr %.val362, i64 %i.aft
  %i.afv = getelementptr [4 x i8], ptr %i.afu, i64 %.val360
  %i.afw = load float, ptr %i.afv, align 4        ; 2 uses
  %i.afx = add i64 %.02651135, -1                 ; 2 uses
  %i.afy = mul i64 %.val361, %i.afx
  %i.afz = getelementptr [4 x i8], ptr %.val362, i64 %i.afy
  %i.aga = getelementptr [4 x i8], ptr %i.afz, i64 %.val360
  %i.agb = load float, ptr %i.aga, align 4        ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 96
  %i.agd = load ptr, ptr %i.agc, align 8
  %i.age = getelementptr i8, ptr %i.aen, i64 16
  %.val354 = load i64, ptr %i.age, align 8        ; 2 uses
  %i.agf = getelementptr i8, ptr %i.aen, i64 24
  %.val355 = load i64, ptr %i.agf, align 8        ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agd, i64 8
  %.val356 = load ptr, ptr %i.agg, align 8        ; 2 uses
  %i.agh = mul i64 %.val355, %.02651135
  %i.agi = getelementptr [4 x i8], ptr %.val356, i64 %i.agh
  %i.agj = getelementptr [4 x i8], ptr %i.agi, i64 %.val354
  %i.agk = load float, ptr %i.agj, align 4        ; 3 uses
  %i.agl = mul i64 %.val355, %i.afx
  %i.agm = getelementptr [4 x i8], ptr %.val356, i64 %i.agl
  %i.agn = getelementptr [4 x i8], ptr %i.agm, i64 %.val354
  %i.ago = load float, ptr %i.agn, align 4        ; 2 uses
  %i.agp = fsub float %i.afw, %i.agb
  %i.agq = fsub float %.0272, %i.ago
  %i.agr = fmul float %i.agp, %i.agq
  %i.ags = fsub float %i.agk, %i.ago
  %i.agt = fdiv float %i.agr, %i.ags
  %i.agu = fadd float %i.agb, %i.agt
  %i.agv = fsub float %i.afw, %i.agu
  %i.agw = call noundef float @llvm.fabs.f32(float %i.agv) ; 2 uses
  %i.agx = fcmp oge float %i.agw, 1.800000e+02
  %i.agy = fcmp une float %i.agk, %.0272
  %or.cond330 = select i1 %i.agx, i1 %i.agy, i1 false
  br i1 %or.cond330, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.agz = fpext float %i.agw to double
  %i.aha = fdiv double %i.agz, 9.000000e+01
  %i.ahb = call double @llvm.floor.f64(double %i.aha)
  %i.ahc = fptosi double %i.ahb to i32
  %i.ahd = fsub float %i.agk, %.0272
  %25 = sitofp i32 %i.ahc to float
  %i.ahe = fdiv float %i.ahd, %25
  %i.ahf = fadd float %.0272, %i.ahe              ; 2 uses
  %i.ahg = fcmp olt float %i.ahf, %.3
  %.sroa.speculated = select i1 %i.ahg, float %i.ahf, float %.3
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fl, %bb.fm, %bb.fk, %.loopexit
  %.4 = phi float [ %.sroa.speculated, %bb.fm ], [ %.3, %bb.fl ], [ %.3, %.loopexit ], [ %.3, %bb.fk ] ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.0804.01771, i64 120 ; 2 uses
  %.not972 = icmp eq ptr %i.ahh, %i.aek
  br i1 %.not972, label %._crit_edge1772, label %.preheader991

bb.fo:                                            ; preds = %._crit_edge1772
  %i.ahi = load ptr, ptr %20, align 8             ; 3 uses
  %i.ahj = load ptr, ptr %i.bh, align 8           ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ahi, %i.ahj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fo, %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ahp, %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i ], [ %i.ahi, %bb.fo ] ; 3 uses
  %i.ahk = load ptr, ptr %.05.i.i.i, align 8      ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ahm = icmp eq ptr %i.ahk, %i.ahl
  br i1 %i.ahm, label %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ahn = load i64, ptr %i.ahl, align 8
  %i.aho = add i64 %i.ahn, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.aho) #27
  br label %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i648 = icmp eq ptr %i.ahp, %i.ahj
  br i1 %.not.i.i.i648, label %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.fo
  %i.ahq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ahi, %bb.fo ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i1.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i
  %i.ahr = load ptr, ptr %i.bi, align 8
  %i.ahs = ptrtoint ptr %i.ahr to i64
  %i.aht = ptrtoint ptr %i.ahq to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  call void @_ZdlPvm(ptr noundef nonnull %i.ahq, i64 noundef %i.ahu) #27
  br label %bb.fq

.body639:                                         ; preds = %.loopexit1033, %.loopexit.split-lp1034, %bb.et, %bb.es, %bb.fh
  %.sroa.0823.1 = phi ptr [ %.sroa.0823.0, %bb.fh ], [ null, %bb.es ], [ null, %bb.et ], [ null, %.loopexit.split-lp1034 ], [ null, %.loopexit1033 ]
  %.sroa.29.1 = phi ptr [ %.sroa.29.01918, %bb.fh ], [ null, %bb.es ], [ null, %bb.et ], [ null, %.loopexit.split-lp1034 ], [ null, %.loopexit1033 ]
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.fh ], [ %i.aan, %bb.es ], [ %i.aan, %bb.et ], [ %lpad.loopexit.split-lp1036, %.loopexit.split-lp1034 ], [ %lpad.loopexit1035, %.loopexit1033 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.hs

bb.fq:                                            ; preds = %bb.fp, %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ahv = icmp eq ptr %.sroa.0823.4, %.sroa.17.2
  br i1 %i.ahv, label %.thread929, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ahw = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30
          to label %bb.fs unwind label %.loopexit1038 ; 11 uses

bb.fs:                                            ; preds = %bb.fr
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1048 ; 4 uses
  store ptr null, ptr %i.ahx, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1056 ; 2 uses
  store i32 0, ptr %i.ahy, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1064 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ahw, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahz, i8 0, i64 16, i1 false)
  %i.aia = load i64, ptr %i.s, align 8            ; 4 uses
  %i.aib = icmp ugt i64 %i.aia, 1023
  br i1 %i.aib, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aic = trunc nuw nsw i64 %i.aia to i32
  store i32 %i.aic, ptr %i.ahw, align 8
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahw, i64 4 ; 2 uses
  %i.aie = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aid, ptr align 1 %i.aie, i64 %i.aia, i1 false)
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aia
  store i8 0, ptr %i.aif, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.fs, %bb.ft
  %i.aig = ptrtoint ptr %.sroa.17.2 to i64
  %i.aih = ptrtoint ptr %.sroa.0823.4 to i64      ; 2 uses
  %i.aii = sub i64 %i.aig, %i.aih                 ; 3 uses
  %i.aij = ashr exact i64 %i.aii, 6               ; 7 uses
  %i.aik = trunc i64 %i.aij to i32                ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1028
  store i32 %i.aik, ptr %i.ail, align 4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1040
  store i32 %i.aik, ptr %i.aim, align 8
  store i32 %i.aik, ptr %i.ahy, align 8
  %i.ain = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aij, i64 24) ; 2 uses
  %i.aio = extractvalue { i64, i1 } %i.ain, 1
  %i.aip = extractvalue { i64, i1 } %i.ain, 0
  %i.aiq = select i1 %i.aio, i64 -1, i64 %i.aip   ; 2 uses
  %i.air = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aiq) #30
          to label %bb.fu unwind label %.loopexit1038 ; 3 uses

bb.fu:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ais = getelementptr inbounds [24 x i8], ptr %i.air, i64 %i.aij
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %i.ait = phi ptr [ %i.air, %bb.fu ], [ %i.aiv, %bb.fv ] ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ait, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.aiu, align 4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 24 ; 2 uses
  %i.aiw = icmp eq ptr %i.aiv, %i.ais
  br i1 %i.aiw, label %bb.fw, label %bb.fv

bb.fw:                                            ; preds = %bb.fv
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1032 ; 3 uses
  store ptr %i.air, ptr %i.aix, align 8
  %i.aiy = icmp ugt i64 %i.aij, 576460752303423487
  %i.aiz = ashr exact i64 %i.aii, 1
  %i.aja = select i1 %i.aiy, i64 -1, i64 %i.aiz
  %i.ajb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aja) #30
          to label %bb.fx unwind label %.loopexit1038 ; 4 uses

bb.fx:                                            ; preds = %bb.fw
  %i.ajc = getelementptr inbounds [32 x i8], ptr %i.ajb, i64 %i.aij
  %i.ajd = ashr exact i64 %i.aii, 1
  %i.aje = add nsw i64 %i.ajd, -32                ; 2 uses
  %i.ajf = lshr i64 %i.aje, 5
  %i.ajg = add nuw nsw i64 %i.ajf, 1
  %xtraiter = and i64 %i.ajg, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.fx, %.prol.preheader
  %i.ajh = phi ptr [ %i.ajk, %.prol.preheader ], [ %i.ajb, %bb.fx ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.fx ]
  store double 0.000000e+00, ptr %i.ajh, align 8
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aji, align 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  store i32 1, ptr %i.ajj, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !146

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.fx
  %.unr = phi ptr [ %i.ajb, %bb.fx ], [ %i.ajk, %.prol.preheader ]
  %i.ajl = icmp ult i64 %i.aje, 224
  br i1 %i.ajl, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ajm = phi ptr [ %i.akk, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.ajm, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajn, align 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24
  store i32 1, ptr %i.ajo, align 8
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  store double 0.000000e+00, ptr %i.ajp, align 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajq, align 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  store i32 1, ptr %i.ajr, align 8
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajm, i64 64
  store double 0.000000e+00, ptr %i.ajs, align 8
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajm, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajt, align 8
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajm, i64 88
  store i32 1, ptr %i.aju, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajm, i64 96
  store double 0.000000e+00, ptr %i.ajv, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajm, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajw, align 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 120
  store i32 1, ptr %i.ajx, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajm, i64 128
  store double 0.000000e+00, ptr %i.ajy, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajm, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajz, align 8
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajm, i64 152
  store i32 1, ptr %i.aka, align 8
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajm, i64 160
  store double 0.000000e+00, ptr %i.akb, align 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajm, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.akc, align 8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajm, i64 184
  store i32 1, ptr %i.akd, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajm, i64 192
  store double 0.000000e+00, ptr %i.ake, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajm, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.akf, align 8
end_hunk_0
