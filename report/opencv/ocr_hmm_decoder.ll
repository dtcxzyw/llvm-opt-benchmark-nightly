Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ocr_hmm_decoder?download=true
inline.NumInlined: 2610
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2cv4text19OCRHMMClassifierKNN4evalERKNS_11_InputArrayERSt6vectorIiSaIiEERS5_IdSaIdEE:bb.a
  br label %bb.kz

._crit_edge841:                                   ; preds = %.loopexit807, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit658
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  %i.arx = load double, ptr %73, align 8, !tbaa !122
  invoke void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %78, ptr noundef nonnull align 8 dereferenceable(208) %75, double noundef %i.arx)
          to label %bb.lb unwind label %bb.lr

bb.jq:                                            ; preds = %._crit_edge835
  %i.ary = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  br label %bb.mo

bb.jr:                                            ; preds = %bb.dy
  %i.arz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  br label %bb.mn

bb.js:                                            ; preds = %bb.dz
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.jt:                                            ; preds = %.body362, %bb.js
  %.pn284 = phi { ptr, i32 } [ %i.px, %.body362 ], [ %i.asa, %bb.js ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23
  br label %bb.mm

bb.ju:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit364
  %i.asb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.jv:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.asc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.jw:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i370, %bb.ed
  %i.asd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.jx:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i380, %bb.ei
  %i.ase = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.jy:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i390, %bb.en
  %i.asf = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.jz:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i400, %bb.es
  %i.asg = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ka:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i410, %bb.ex
  %i.ash = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kb:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i420, %bb.fc
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kc:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i430, %bb.fh
  %i.asj = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kd:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i440, %bb.fm
  %i.ask = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ke:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i450, %bb.fr
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kf:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i460, %bb.fw
  %i.asm = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kg:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i470, %bb.gb
  %i.asn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kh:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i480, %bb.gg
  %i.aso = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ki:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i490, %bb.gl
  %i.asp = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i500, %bb.gq
  %i.asq = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kk:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i510, %bb.gv
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kl:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i520, %bb.ha
  %i.ass = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.km:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i530, %bb.hf
  %i.ast = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kn:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i540, %bb.hk
  %i.asu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ko:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i550, %bb.hp
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kp:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i560, %bb.hu
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kq:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i570, %bb.hz
  %i.asx = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kr:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i580, %bb.ie
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ks:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i590, %bb.ij
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kt:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i600, %bb.io
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ku:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i610, %bb.it
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kv:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i620, %bb.iy
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kw:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i630, %bb.jd
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kx:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i640, %bb.ji
  %i.ate = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.ky:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i650, %bb.jn
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.kz:                                            ; preds = %.lr.ph840, %.loopexit807
  %indvars.iv868 = phi i64 [ 0, %.lr.ph840 ], [ %indvars.iv.next869, %.loopexit807 ] ; 3 uses
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv868
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !63 ; 2 uses
  %i.ati = fcmp olt float %i.ath, 0.000000e+00
  br i1 %i.ati, label %.loopexit807, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv868
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !63
  %i.atl = fpext float %i.atk to double           ; 7 uses
  %i.atm = fptosi float %i.ath to i32
  %79 = zext nneg i32 %i.atm to i64               ; 2 uses
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %i.arw, i64 %79 ; 2 uses
  %i.ato = load double, ptr %i.atn, align 8, !tbaa !122
  %i.atp = fadd double %i.ato, %i.atl
  store double %i.atp, ptr %i.atn, align 8, !tbaa !122
  %i.atq = getelementptr inbounds nuw [24 x i8], ptr %i.aku, i64 %79 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !77
  %i.att = load ptr, ptr %i.atq, align 8, !tbaa !76 ; 4 uses
  %i.atu = ptrtoint ptr %i.ats to i64
  %i.atv = ptrtoint ptr %i.att to i64
  %i.atw = sub i64 %i.atu, %i.atv                 ; 3 uses
  %i.atx = lshr exact i64 %i.atw, 2               ; 3 uses
  %i.aty = trunc i64 %i.atx to i32
  %i.atz = icmp sgt i32 %i.aty, 0
  br i1 %i.atz, label %.lr.ph838.preheader, label %.loopexit807

.lr.ph838.preheader:                              ; preds = %bb.la
  %i.aua = and i64 %i.atw, 8589934588
  %i.aub = icmp eq i64 %i.aua, 4
  br i1 %i.aub, label %.lr.ph838.epil.preheader, label %.lr.ph838.preheader.new

.lr.ph838.preheader.new:                          ; preds = %.lr.ph838.preheader
  %unroll_iter = and i64 %i.atx, 2147483646
  br label %.lr.ph838

.lr.ph838:                                        ; preds = %.lr.ph838, %.lr.ph838.preheader.new
  %indvars.iv864 = phi i64 [ 0, %.lr.ph838.preheader.new ], [ %indvars.iv.next865.1, %.lr.ph838 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph838.preheader.new ], [ %niter.next.1, %.lr.ph838 ]
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %indvars.iv864
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !93
  %i.aue = sext i32 %i.aud to i64
  %i.auf = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.aue ; 2 uses
  %i.aug = load double, ptr %i.auf, align 8, !tbaa !122
  %i.auh = fadd double %i.aug, %i.atl
  store double %i.auh, ptr %i.auf, align 8, !tbaa !122
  %i.aui = load double, ptr %73, align 8, !tbaa !122
  %i.auj = fadd double %i.aui, %i.atl
  store double %i.auj, ptr %73, align 8, !tbaa !122
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %indvars.iv864
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !93
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.aun ; 2 uses
  %i.aup = load double, ptr %i.auo, align 8, !tbaa !122
  %i.auq = fadd double %i.aup, %i.atl
  store double %i.auq, ptr %i.auo, align 8, !tbaa !122
  %i.aur = load double, ptr %73, align 8, !tbaa !122
  %i.aus = fadd double %i.aur, %i.atl
  store double %i.aus, ptr %73, align 8, !tbaa !122
  %indvars.iv.next865.1 = add nuw nsw i64 %indvars.iv864, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit807.loopexit.unr-lcssa, label %.lr.ph838, !llvm.loop !244

.loopexit807.loopexit.unr-lcssa:                  ; preds = %.lr.ph838
  %i.aut = and i64 %i.atw, 4
  %lcmp.mod.not = icmp eq i64 %i.aut, 0
  br i1 %lcmp.mod.not, label %.loopexit807, label %.lr.ph838.epil.preheader

.lr.ph838.epil.preheader:                         ; preds = %.loopexit807.loopexit.unr-lcssa, %.lr.ph838.preheader
  %indvars.iv864.epil.init = phi i64 [ 0, %.lr.ph838.preheader ], [ %indvars.iv.next865.1, %.loopexit807.loopexit.unr-lcssa ]
  %lcmp.mod1086 = trunc i64 %i.atx to i1
  call void @llvm.assume(i1 %lcmp.mod1086)
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %indvars.iv864.epil.init
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !93
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.auw ; 2 uses
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !122
  %i.auz = fadd double %i.auy, %i.atl
  store double %i.auz, ptr %i.aux, align 8, !tbaa !122
  %i.ava = load double, ptr %73, align 8, !tbaa !122
  %i.avb = fadd double %i.ava, %i.atl
  store double %i.avb, ptr %73, align 8, !tbaa !122
  br label %.loopexit807

.loopexit807:                                     ; preds = %.lr.ph838.epil.preheader, %.loopexit807.loopexit.unr-lcssa, %bb.la, %bb.kz
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 1 ; 2 uses
  %exitcond872.not = icmp eq i64 %indvars.iv.next869, %wide.trip.count871
  br i1 %exitcond872.not, label %._crit_edge841, label %bb.kz, !llvm.loop !245

bb.lb:                                            ; preds = %._crit_edge841
  %i.avc = load ptr, ptr %78, align 8, !tbaa !121 ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !61
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 24
  %i.avf = load ptr, ptr %i.ave, align 8
  invoke void %i.avf(ptr noundef nonnull align 8 dereferenceable(8) %i.avc, ptr noundef nonnull align 8 dereferenceable(688) %78, ptr noundef nonnull align 8 dereferenceable(208) %75, i32 noundef -1)
          to label %bb.lc unwind label %bb.ls, !inline_history !5

bb.lc:                                            ; preds = %bb.lb
  %i.avg = getelementptr inbounds nuw i8, ptr %78, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avg) #23
  %i.avh = getelementptr inbounds nuw i8, ptr %78, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avh) #23
  %i.avi = getelementptr inbounds nuw i8, ptr %78, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  %i.avj = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 2 uses
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !133
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !63
  %i.avm = fptosi float %i.avl to i32             ; 3 uses
  %i.avn = load ptr, ptr %i.p, align 8, !tbaa !77 ; 4 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !139
  %.not.i.i661 = icmp eq ptr %i.avn, %i.avp
  br i1 %.not.i.i661, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  store i32 %i.avm, ptr %i.avn, align 4, !tbaa !93
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  store ptr %i.avq, ptr %i.p, align 8, !tbaa !77
  br label %bb.li

bb.le:                                            ; preds = %bb.lc
  %i.avr = load ptr, ptr %2, align 8, !tbaa !76   ; 4 uses
  %i.avs = ptrtoint ptr %i.avn to i64
  %i.avt = ptrtoint ptr %i.avr to i64             ; 2 uses
  %i.avu = sub i64 %i.avs, %i.avt                 ; 5 uses
  %i.avv = icmp eq i64 %i.avu, 9223372036854775804
  br i1 %i.avv, label %bb.lf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i662

bb.lf:                                            ; preds = %bb.le
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc668 unwind label %bb.lu

.noexc668:                                        ; preds = %bb.lf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i662: ; preds = %bb.le
  %i.avw = ashr exact i64 %i.avu, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i663 = call i64 @llvm.umax.i64(i64 %i.avw, i64 1)
  %i.avx = add nsw i64 %.sroa.speculated.i.i.i.i663, %i.avw ; 2 uses
  %i.avy = icmp ult i64 %i.avx, %i.avw
  %i.avz = call i64 @llvm.umin.i64(i64 %i.avx, i64 2305843009213693951)
  %i.awa = select i1 %i.avy, i64 2305843009213693951, i64 %i.avz ; 3 uses
  %.not.i.i.i.i664 = icmp ne i64 %i.awa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i664)
  %i.awb = shl nuw nsw i64 %i.awa, 2
  %i.awc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awb) #26
          to label %.noexc669 unwind label %bb.lu ; 4 uses

.noexc669:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i662
  %i.awd = getelementptr inbounds i8, ptr %i.awc, i64 %i.avu ; 2 uses
  store i32 %i.avm, ptr %i.awd, align 4, !tbaa !93
  %i.awe = icmp sgt i64 %i.avu, 0
  br i1 %i.awe, label %bb.lg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i665

bb.lg:                                            ; preds = %.noexc669
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.awc, ptr align 4 %i.avr, i64 %i.avu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i665

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i665: ; preds = %bb.lg, %.noexc669
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awd, i64 4
  %.not.i17.i.i.i666 = icmp eq ptr %i.avr, null
  br i1 %.not.i17.i.i.i666, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i667, label %bb.lh

bb.lh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i665
  %i.awg = load ptr, ptr %i.avo, align 8, !tbaa !139
  %i.awh = ptrtoint ptr %i.awg to i64
  %i.awi = sub i64 %i.awh, %i.avt
  call void @_ZdlPvm(ptr noundef nonnull %i.avr, i64 noundef %i.awi) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i667

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i667: ; preds = %bb.lh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i665
  store ptr %i.awc, ptr %2, align 8, !tbaa !76
  store ptr %i.awf, ptr %i.p, align 8, !tbaa !77
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.awa
  store ptr %i.awj, ptr %i.avo, align 8, !tbaa !139
  %.pre880 = load ptr, ptr %i.avj, align 8, !tbaa !133
  %.pre881 = load float, ptr %.pre880, align 4, !tbaa !63
  %.pre888 = fptosi float %.pre881 to i32
  br label %bb.li

bb.li:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i667, %bb.ld
  %.pre-phi = phi i32 [ %.pre888, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i667 ], [ %i.avm, %bb.ld ]
  %i.awk = getelementptr inbounds nuw i8, ptr %75, i64 24 ; 3 uses
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !133
  %i.awm = sext i32 %.pre-phi to i64
  %i.awn = getelementptr inbounds [8 x i8], ptr %i.awl, i64 %i.awm ; 2 uses
  %i.awo = load ptr, ptr %i.s, align 8, !tbaa !81 ; 4 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !140 ; 2 uses
  %.not.i671 = icmp eq ptr %i.awo, %i.awq
  br i1 %.not.i671, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.awr = load double, ptr %i.awn, align 8, !tbaa !122
  store double %i.awr, ptr %i.awo, align 8, !tbaa !122
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awo, i64 8 ; 2 uses
  store ptr %i.aws, ptr %i.s, align 8, !tbaa !81
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.lk:                                            ; preds = %bb.li
  %i.awt = load ptr, ptr %3, align 8, !tbaa !80   ; 4 uses
  %i.awu = ptrtoint ptr %i.awo to i64
  %i.awv = ptrtoint ptr %i.awt to i64             ; 2 uses
  %i.aww = sub i64 %i.awu, %i.awv                 ; 5 uses
  %i.awx = icmp eq i64 %i.aww, 9223372036854775800
  br i1 %i.awx, label %bb.ll, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.ll:                                            ; preds = %bb.lk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
end_hunk_0
begin_hunk_1_@_ZN2cv4text19OCRHMMClassifierCNN4evalERKNS_11_InputArrayERSt6vectorIiSaIiEERS5_IdSaIdEE:bb.a
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ky, align 8, !tbaa !122, !alias.scope !315, !noalias !316
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %index
  %wide.load601 = load <2 x double>, ptr %i.kz, align 8, !tbaa !122, !alias.scope !317 ; 2 uses
  %i.la = fsub <2 x double> %wide.load, %wide.load601
  %i.lb = fmul <2 x double> %i.la, splat (double 2.000000e+00)
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %index
  %wide.load602 = load <2 x double>, ptr %i.lc, align 8, !tbaa !122, !alias.scope !318
  %i.ld = fsub <2 x double> %wide.load602, %wide.load601
  %i.le = fdiv <2 x double> %i.lb, %i.ld
  %i.lf = fadd <2 x double> %i.le, splat (double -1.000000e+00)
  store <2 x double> %i.lf, ptr %i.ky, align 8, !tbaa !122, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lg = icmp eq i64 %index.next, %n.vec
  br i1 %i.lg, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge503, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph502, %middle.block
  %indvars.iv517.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph502 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv517.ph ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !122
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv517.ph
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !122 ; 2 uses
  %i.ll = fsub double %i.li, %i.lk
  %i.lm = fmul double %i.ll, 2.000000e+00
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv517.ph
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !122
  %i.lp = fsub double %i.lo, %i.lk
  %i.lq = fdiv double %i.lm, %i.lp
  %i.lr = fadd double %i.lq, -1.000000e+00
  store double %i.lr, ptr %i.lh, align 8, !tbaa !122
  %indvars.iv.next518.prol = or disjoint i64 %indvars.iv517.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv517.unr = phi i64 [ %indvars.iv517.ph, %scalar.ph.preheader ], [ %indvars.iv.next518.prol, %scalar.ph.prol ]
  %i.ls = add nsw i64 %wide.trip.count, -1
  %i.lt = icmp eq i64 %indvars.iv517.ph, %i.ls
  br i1 %i.lt, label %._crit_edge503, label %scalar.ph

._crit_edge503:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !152 ; 3 uses
  %i.lw = sext i32 %i.lv to i64                   ; 2 uses
  %i.lx = icmp slt i32 %i.lv, 0
  br i1 %i.lx, label %bb.da, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.da:                                            ; preds = %._crit_edge503
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc355 unwind label %bb.di

.noexc355:                                        ; preds = %bb.da
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge503
  %.not.i.i.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.db

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br label %.loopexit450

bb.db:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ly = shl nuw nsw i64 %i.lw, 3                ; 3 uses
  %i.lz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #26
          to label %.noexc356 unwind label %bb.di ; 5 uses

.noexc356:                                        ; preds = %bb.db
  store ptr %i.lz, ptr %41, align 8, !tbaa !80
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.lw ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lz, i8 0, i64 %i.ly, i1 false), !tbaa !122
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  %i.md = ptrtoint ptr %i.ma to i64
  br label %.loopexit450

bb.dc:                                            ; preds = %bb.bx
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cy
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #23
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn276 = phi { ptr, i32 } [ %i.mf, %bb.dd ], [ %i.me, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %bb.es

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv517 = phi i64 [ %indvars.iv.next518.1, %scalar.ph ], [ %indvars.iv517.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv517 ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !122
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv517
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !122 ; 2 uses
  %i.mk = fsub double %i.mh, %i.mj
  %i.ml = fmul double %i.mk, 2.000000e+00
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv517
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !122
  %i.mo = fsub double %i.mn, %i.mj
  %i.mp = fdiv double %i.ml, %i.mo
  %i.mq = fadd double %i.mp, -1.000000e+00
  store double %i.mq, ptr %i.mg, align 8, !tbaa !122
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 3 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next518 ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !122
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.next518
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !122 ; 2 uses
  %i.mv = fsub double %i.ms, %i.mu
  %i.mw = fmul double %i.mv, 2.000000e+00
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next518
  %i.my = load double, ptr %i.mx, align 8, !tbaa !122
  %i.mz = fsub double %i.my, %i.mu
  %i.na = fdiv double %i.mw, %i.mz
  %i.nb = fadd double %i.na, -1.000000e+00
  store double %i.nb, ptr %i.mr, align 8, !tbaa !122
  %indvars.iv.next518.1 = add nuw nsw i64 %indvars.iv517, 2 ; 2 uses
  %exitcond520.not.1 = icmp eq i64 %indvars.iv.next518.1, %wide.trip.count
  br i1 %exitcond520.not.1, label %._crit_edge503, label %scalar.ph, !llvm.loop !304

.loopexit450:                                     ; preds = %.noexc356, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.nc = phi i64 [ 0, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.md, %.noexc356 ] ; 2 uses
  %i.nd = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.lz, %.noexc356 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.mc, %.noexc356 ]
  %i.ne = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ne, align 8, !tbaa !81
  %i.nf = call noundef double @_ZN2cv4text19OCRHMMClassifierCNN12eval_featureERNS_3MatERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(1296) %0, ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(24) %41) ; 2 uses
  %i.ng = fcmp olt double %i.nf, 0.000000e+00
  br i1 %i.ng, label %bb.df, label %bb.dm

bb.df:                                            ; preds = %.loopexit450
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @__func__._ZN2cv4text13OCRHMMDecoder18ClassifierCallback4evalERKNS_11_InputArrayERSt6vectorIiSaIiEERS6_IdSaIdEE, ptr noundef nonnull @.str.1, i32 noundef 1113) #24
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  unreachable

bb.di:                                            ; preds = %bb.db, %bb.da
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit387

bb.dj:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %bb.du
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.dk:                                            ; preds = %bb.df
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

bb.dl:                                            ; preds = %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = load ptr, ptr %42, align 8, !tbaa !39   ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.dl
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !40
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357, %bb.dk
  %.pn279 = phi { ptr, i32 } [ %i.nj, %bb.dk ], [ %i.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357 ], [ %i.nk, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %bb.er

bb.dm:                                            ; preds = %.loopexit450
  %i.nq = fptosi double %i.nf to i32              ; 3 uses
  %i.nr = load ptr, ptr %i.w, align 8, !tbaa !77  ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !139
  %.not.i.i360 = icmp eq ptr %i.nr, %i.nt
  br i1 %.not.i.i360, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !93
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  store ptr %i.nu, ptr %i.w, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.do:                                            ; preds = %bb.dm
  %i.nv = load ptr, ptr %2, align 8, !tbaa !76    ; 4 uses
  %i.nw = ptrtoint ptr %i.nr to i64
  %i.nx = ptrtoint ptr %i.nv to i64               ; 2 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 5 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775804
  br i1 %i.nz, label %bb.dp, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc362 unwind label %bb.eg

.noexc362:                                        ; preds = %bb.dp
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.do
  %i.oa = ashr exact i64 %i.ny, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.ob = add nsw i64 %.sroa.speculated.i.i.i.i, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 2305843009213693951)
  %i.oe = select i1 %i.oc, i64 2305843009213693951, i64 %i.od ; 3 uses
  %.not.i.i.i.i361 = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i.i.i361)
  %i.of = shl nuw nsw i64 %i.oe, 2
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #26
          to label %.noexc363 unwind label %bb.eg ; 4 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 %i.ny ; 2 uses
  store i32 %i.nq, ptr %i.oh, align 4, !tbaa !93
  %i.oi = icmp sgt i64 %i.ny, 0
  br i1 %i.oi, label %bb.dq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dq:                                            ; preds = %.noexc363
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.og, ptr align 4 %i.nv, i64 %i.ny, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dq, %.noexc363
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ok = load ptr, ptr %i.ns, align 8, !tbaa !139
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = sub i64 %i.ol, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef %i.om) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.dr, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.og, ptr %2, align 8, !tbaa !76
  store ptr %i.oj, ptr %i.w, align 8, !tbaa !77
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oe
  store ptr %i.on, ptr %i.ns, align 8, !tbaa !139
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.dn
  %44 = zext nneg i32 %i.nq to i64                ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %44 ; 2 uses
  %i.op = load ptr, ptr %i.z, align 8, !tbaa !81  ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp eq ptr %i.op, %i.or
  br i1 %.not.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.os = load double, ptr %i.oo, align 8, !tbaa !122
  store double %i.os, ptr %i.op, align 8, !tbaa !122
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  store ptr %i.ot, ptr %i.z, align 8, !tbaa !81
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ou = load ptr, ptr %3, align 8, !tbaa !80    ; 4 uses
  %i.ov = ptrtoint ptr %i.op to i64
  %i.ow = ptrtoint ptr %i.ou to i64               ; 2 uses
  %i.ox = sub i64 %i.ov, %i.ow                    ; 5 uses
  %i.oy = icmp eq i64 %i.ox, 9223372036854775800
  br i1 %i.oy, label %bb.du, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc365 unwind label %bb.dj

.noexc365:                                        ; preds = %bb.du
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dt
  %i.oz = ashr exact i64 %i.ox, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oz, i64 1)
  %i.pa = add nsw i64 %.sroa.speculated.i.i.i, %i.oz ; 2 uses
  %i.pb = icmp ult i64 %i.pa, %i.oz
  %i.pc = call i64 @llvm.umin.i64(i64 %i.pa, i64 1152921504606846975)
  %i.pd = select i1 %i.pb, i64 1152921504606846975, i64 %i.pc ; 3 uses
  %.not.i.i.i364 = icmp ne i64 %i.pd, 0
  call void @llvm.assume(i1 %.not.i.i.i364)
  %i.pe = shl nuw nsw i64 %i.pd, 3
  %i.pf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pe) #26
          to label %.noexc366 unwind label %bb.dj ; 4 uses

.noexc366:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 %i.ox ; 2 uses
  %i.ph = load double, ptr %i.oo, align 8, !tbaa !122
  store double %i.ph, ptr %i.pg, align 8, !tbaa !122
  %i.pi = icmp sgt i64 %i.ox, 0
  br i1 %i.pi, label %bb.dv, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.dv:                                            ; preds = %.noexc366
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pf, ptr align 8 %i.ou, i64 %i.ox, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.dv, %.noexc366
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.pk = load ptr, ptr %i.oq, align 8, !tbaa !140
  %i.pl = ptrtoint ptr %i.pk to i64
  %i.pm = sub i64 %i.pl, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.pm) #25
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.dw, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.pf, ptr %3, align 8, !tbaa !80
  store ptr %i.pj, ptr %i.z, align 8, !tbaa !81
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pd ; 2 uses
  store ptr %i.pn, ptr %i.oq, align 8, !tbaa !140
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.ds
  %i.po = phi ptr [ %i.pn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.or, %bb.ds ]
  %i.pp = phi ptr [ %i.pj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.ot, %bb.ds ]
  %i.pq = load i32, ptr %i.lu, align 8, !tbaa !152
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %.lr.ph506, label %._crit_edge507.thread

._crit_edge507:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385
  %.not.i.i.i367 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i367, label %_ZNSt6vectorIdSaIdEED2Ev.exit368, label %._crit_edge507.thread

._crit_edge507.thread:                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %._crit_edge507
  %i.ps = ptrtoint ptr %i.nd to i64
  %i.pt = sub i64 %i.nc, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.pt) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit368

_ZNSt6vectorIdSaIdEED2Ev.exit368:                 ; preds = %._crit_edge507, %._crit_edge507.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.pu = load ptr, ptr %i.av, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit368
  %i.pv = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !140
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = ptrtoint ptr %i.pu to i64
  %i.pz = sub i64 %i.px, %i.py
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.pz) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.dx, %_ZNSt6vectorIdSaIdEED2Ev.exit368
  %.05.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.qa = load ptr, ptr %.05.i.i.i.ptr.1, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1, label %bb.dy

bb.dy:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !140
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.qa to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef %i.qf) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1: ; preds = %bb.dy, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.qg = load ptr, ptr %.05.i.i.i.ptr.2, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.2 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2, label %bb.dz

bb.dz:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1
  %i.qh = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !140
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qg to i64
  %i.ql = sub i64 %i.qj, %i.qk
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.ql) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2: ; preds = %bb.dz, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1
  %.05.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.qm = load ptr, ptr %.05.i.i.i.ptr.3, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2
  %i.qn = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !140
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3: ; preds = %bb.ea, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2
  %.05.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.qs = load ptr, ptr %.05.i.i.i.ptr.4, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.4 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i.i.i.i.i.4, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4, label %bb.eb

bb.eb:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3
  %i.qt = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !140
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qx) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4: ; preds = %bb.eb, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3
  %.05.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.qy = load ptr, ptr %.05.i.i.i.ptr.5, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.5 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i.i.i.i.i.i.5, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5, label %bb.ec

bb.ec:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !140
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %i.qy to i64
  %i.rd = sub i64 %i.rb, %i.rc
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef %i.rd) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5: ; preds = %bb.ec, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4
  %.05.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.re = load ptr, ptr %.05.i.i.i.ptr.6, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.6 = icmp eq ptr %i.re, null
  br i1 %.not.i.i.i.i.i.i.i.6, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6, label %bb.ed

bb.ed:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5
  %i.rf = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !140
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.re to i64
  %i.rj = sub i64 %i.rh, %i.ri
  call void @_ZdlPvm(ptr noundef nonnull %i.re, i64 noundef %i.rj) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6: ; preds = %bb.ed, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5
  %.05.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.rk = load ptr, ptr %.05.i.i.i.ptr.7, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7, label %bb.ee

bb.ee:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6
  %i.rl = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !140
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = sub i64 %i.rn, %i.ro
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.rp) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7: ; preds = %bb.ee, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6
  %.05.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.rq = load ptr, ptr %.05.i.i.i.ptr.8, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.8 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i.i.8, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.8, label %bb.ef

bb.ef:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7
  %i.rr = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !140
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rq to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.rv) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.8

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.8: ; preds = %bb.ef, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 216) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  ret void

bb.eg:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.dp
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.lr.ph506:                                        ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385
  %i.rx = phi ptr [ %i.ty, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385 ], [ %i.po, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.ry = phi ptr [ %i.tz, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385 ], [ %i.pp, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385 ], [ 0, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 5 uses
  %.not278 = icmp eq i64 %indvars.iv521, %44
  br i1 %.not278, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph506
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv521 ; 3 uses
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !122
  %i.sb = fcmp une double %i.sa, 0.000000e+00
  br i1 %i.sb, label %bb.ei, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385

bb.ei:                                            ; preds = %bb.eh
  %i.sc = load ptr, ptr %i.w, align 8, !tbaa !77  ; 4 uses
  %i.sd = load ptr, ptr %i.ns, align 8, !tbaa !139
  %.not.i370 = icmp eq ptr %i.sc, %i.sd
  br i1 %.not.i370, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.se = trunc nuw nsw i64 %indvars.iv521 to i32
  store i32 %i.se, ptr %i.sc, align 4, !tbaa !93
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store ptr %i.sf, ptr %i.w, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ek:                                            ; preds = %bb.ei
  %i.sg = load ptr, ptr %2, align 8, !tbaa !76    ; 4 uses
  %i.sh = ptrtoint ptr %i.sc to i64
  %i.si = ptrtoint ptr %i.sg to i64               ; 2 uses
  %i.sj = sub i64 %i.sh, %i.si                    ; 5 uses
  %i.sk = icmp eq i64 %i.sj, 9223372036854775804
  br i1 %i.sk, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.eo, %bb.ek
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ek
  %i.sl = ashr exact i64 %i.sj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i371 = call i64 @llvm.umax.i64(i64 %i.sl, i64 1)
  %i.sm = add nsw i64 %.sroa.speculated.i.i.i371, %i.sl ; 2 uses
  %i.sn = icmp ult i64 %i.sm, %i.sl
  %i.so = call i64 @llvm.umin.i64(i64 %i.sm, i64 2305843009213693951)
  %i.sp = select i1 %i.sn, i64 2305843009213693951, i64 %i.so ; 3 uses
  %.not.i.i.i372 = icmp ne i64 %i.sp, 0
  call void @llvm.assume(i1 %.not.i.i.i372)
  %i.sq = shl nuw nsw i64 %i.sp, 2
  %i.sr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sq) #26
          to label %.noexc375 unwind label %.loopexit ; 4 uses

.noexc375:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ss = getelementptr inbounds i8, ptr %i.sr, i64 %i.sj ; 2 uses
  %i.st = trunc nuw nsw i64 %indvars.iv521 to i32
  store i32 %i.st, ptr %i.ss, align 4, !tbaa !93
  %i.su = icmp sgt i64 %i.sj, 0
  br i1 %i.su, label %bb.el, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.el:                                            ; preds = %.noexc375
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sr, ptr align 4 %i.sg, i64 %i.sj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.el, %.noexc375
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %.not.i17.i.i373 = icmp eq ptr %i.sg, null
  br i1 %.not.i17.i.i373, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.sw = load ptr, ptr %i.ns, align 8, !tbaa !139
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = sub i64 %i.sx, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.sg, i64 noundef %i.sy) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.em, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.sr, ptr %2, align 8, !tbaa !76
  store ptr %i.sv, ptr %i.w, align 8, !tbaa !77
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.sp
  store ptr %i.sz, ptr %i.ns, align 8, !tbaa !139
  %.pre524 = load ptr, ptr %i.z, align 8, !tbaa !81
  %.pre525 = load ptr, ptr %i.oq, align 8, !tbaa !140
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ej
  %i.ta = phi ptr [ %.pre525, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.rx, %bb.ej ] ; 3 uses
  %i.tb = phi ptr [ %.pre524, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ry, %bb.ej ] ; 3 uses
  %.not.i376 = icmp eq ptr %i.tb, %i.ta
  br i1 %.not.i376, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.tc = load double, ptr %i.rz, align 8, !tbaa !122
  store double %i.tc, ptr %i.tb, align 8, !tbaa !122
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 2 uses
  store ptr %i.td, ptr %i.z, align 8, !tbaa !81
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385

bb.eo:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.te = load ptr, ptr %3, align 8, !tbaa !80    ; 4 uses
  %i.tf = ptrtoint ptr %i.ta to i64
  %i.tg = ptrtoint ptr %i.te to i64               ; 2 uses
  %i.th = sub i64 %i.tf, %i.tg                    ; 5 uses
  %i.ti = icmp eq i64 %i.th, 9223372036854775800
  br i1 %i.ti, label %.invoke, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377: ; preds = %bb.eo
  %i.tj = ashr exact i64 %i.th, 3                 ; 3 uses
  %.sroa.speculated.i.i.i378 = call i64 @llvm.umax.i64(i64 %i.tj, i64 1)
  %i.tk = add nsw i64 %.sroa.speculated.i.i.i378, %i.tj ; 2 uses
  %i.tl = icmp ult i64 %i.tk, %i.tj
  %i.tm = call i64 @llvm.umin.i64(i64 %i.tk, i64 1152921504606846975)
  %i.tn = select i1 %i.tl, i64 1152921504606846975, i64 %i.tm ; 3 uses
  %.not.i.i.i379 = icmp ne i64 %i.tn, 0
  call void @llvm.assume(i1 %.not.i.i.i379)
  %i.to = shl nuw nsw i64 %i.tn, 3
  %i.tp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.to) #26
          to label %.noexc384 unwind label %.loopexit ; 4 uses

.noexc384:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 %i.th ; 2 uses
  %i.tr = load double, ptr %i.rz, align 8, !tbaa !122
  store double %i.tr, ptr %i.tq, align 8, !tbaa !122
  %i.ts = icmp sgt i64 %i.th, 0
  br i1 %i.ts, label %bb.ep, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380

bb.ep:                                            ; preds = %.noexc384
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tp, ptr align 8 %i.te, i64 %i.th, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380: ; preds = %bb.ep, %.noexc384
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 2 uses
  %.not.i17.i.i381 = icmp eq ptr %i.te, null
  br i1 %.not.i17.i.i381, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380
  %i.tu = load ptr, ptr %i.oq, align 8, !tbaa !140
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = sub i64 %i.tv, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.te, i64 noundef %i.tw) #25
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382: ; preds = %bb.eq, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380
  store ptr %i.tp, ptr %3, align 8, !tbaa !80
  store ptr %i.tt, ptr %i.z, align 8, !tbaa !81
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tn ; 2 uses
  store ptr %i.tx, ptr %i.oq, align 8, !tbaa !140
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZNSt6vectorIdSaIdEE9push_backERKd.exit385:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382, %bb.en, %.lr.ph506, %bb.eh
  %i.ty = phi ptr [ %i.tx, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382 ], [ %i.ta, %bb.en ], [ %i.rx, %.lr.ph506 ], [ %i.rx, %bb.eh ]
  %i.tz = phi ptr [ %i.tt, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382 ], [ %i.td, %bb.en ], [ %i.ry, %.lr.ph506 ], [ %i.ry, %bb.eh ]
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.ua = load i32, ptr %i.lu, align 8, !tbaa !152
  %i.ub = sext i32 %i.ua to i64
  %i.uc = icmp slt i64 %indvars.iv.next522, %i.ub
  br i1 %i.uc, label %.lr.ph506, label %._crit_edge507, !llvm.loop !305

bb.er:                                            ; preds = %bb.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %bb.dj
  %.pn279.pn = phi { ptr, i32 } [ %.pn279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ], [ %i.rw, %bb.eg ], [ %i.ni, %bb.dj ] ; 2 uses
  %.not.i.i.i386 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i386, label %_ZNSt6vectorIdSaIdEED2Ev.exit387, label %.thread

.thread:                                          ; preds = %.loopexit.split-lp, %.loopexit, %bb.er
  %.pn279.pn591 = phi { ptr, i32 } [ %.pn279.pn, %bb.er ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %i.ud = ptrtoint ptr %i.nd to i64
  %i.ue = sub i64 %i.nc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ue) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit387

_ZNSt6vectorIdSaIdEED2Ev.exit387:                 ; preds = %.thread, %bb.er, %bb.di
  %.pn279.pn.pn = phi { ptr, i32 } [ %i.nh, %bb.di ], [ %.pn279.pn, %bb.er ], [ %.pn279.pn591, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit387, %bb.de, %bb.cx
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %.pn276, %bb.de ], [ %.pn279.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit387 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #23
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.bz
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.es ], [ %.pn274, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.lr.ph.i.i.i389

.lr.ph.i.i.i389:                                  ; preds = %bb.et, %bb.bv
  %.pn311.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn, %bb.bv ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.et ]
  %i.uf = load ptr, ptr %i.av, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i.i.i.i.i391, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i389
  %i.ug = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !140
end_hunk_1
