Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatPandora?download=true
inline.NumInlined: 893
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
          cleanup                                 ; 2 uses
  %i.adw = load ptr, ptr %34, align 8, !tbaa !25  ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.acw
  br i1 %i.adx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %bb.dk
  %i.ady = load i64, ptr %i.acw, align 8, !tbaa !20
  %i.adz = add i64 %i.ady, 1
  call void @_ZdlPvm(ptr noundef %i.adw, i64 noundef %i.adz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520, %bb.dj
  %.pn161 = phi { ptr, i32 } [ %i.adu, %bb.dj ], [ %i.adv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %i.adv, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread: ; preds = %bb.t, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit364, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419
  br i1 %.081.ph, label %bb.dl, label %.outer.backedge

bb.dl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread
  %i.aea = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_517StringVecToIntVecERSt6vectorIiSaIiEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.dm unwind label %.loopexit.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.aea, label %bb.dn, label %.noexc.i524

bb.dn:                                            ; preds = %bb.dm
  %i.aeb = load ptr, ptr %i.bk, align 8, !tbaa !147
  %i.aec = load ptr, ptr %8, align 8, !tbaa !148  ; 3 uses
  %i.aed = ptrtoint ptr %i.aeb to i64
  %i.aee = ptrtoint ptr %i.aec to i64
  %i.aef = sub i64 %i.aed, %i.aee
  %.not146 = icmp eq i64 %i.aef, 16
  br i1 %.not146, label %bb.dr, label %.noexc.i524

.noexc.i524:                                      ; preds = %bb.dm, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.aeg = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  store ptr %i.aeg, ptr %35, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 28, ptr %i.e, align 8, !tbaa !36
  %i.aeh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %bb.do unwind label %bb.dp     ; 2 uses

bb.do:                                            ; preds = %.noexc.i524
  store ptr %i.aeh, ptr %35, align 8, !tbaa !25
  %i.aei = load i64, ptr %i.e, align 8, !tbaa !36 ; 3 uses
  store i64 %i.aei, ptr %i.aeg, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aeh, ptr noundef nonnull align 1 dereferenceable(28) @.str.24, i64 28, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.aei, ptr %i.aej, align 8, !tbaa !19
  %i.aek = load ptr, ptr %35, align 8, !tbaa !25
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aei
  store i8 0, ptr %i.ael, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable763 unwind label %bb.dq

.unreachable763:                                  ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %.noexc.i524
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

bb.dq:                                            ; preds = %bb.do
  %i.aen = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeo = load ptr, ptr %35, align 8, !tbaa !25  ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aeg
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %bb.dq
  %i.aeq = load i64, ptr %i.aeg, align 8, !tbaa !20
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %i.aeo, i64 noundef %i.aer) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530, %bb.dp
  %.pn147 = phi { ptr, i32 } [ %i.aem, %bb.dp ], [ %i.aen, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %i.aen, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %.loopexit

bb.dr:                                            ; preds = %bb.dn
  %i.aes = ptrtoint ptr %.sroa.20.0.ph to i64
  %i.aet = ptrtoint ptr %.sroa.0703.0.ph to i64   ; 2 uses
  %i.aeu = sub i64 %i.aes, %i.aet                 ; 5 uses
  %i.aev = ashr exact i64 %i.aeu, 2               ; 3 uses
  %i.aew = icmp ugt i64 %i.aev, 6440067
  br i1 %i.aew, label %.noexc.i534, label %bb.dv

.noexc.i534:                                      ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.aex = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  store ptr %i.aex, ptr %36, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 24, ptr %i.d, align 8, !tbaa !36
  %i.aey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %bb.ds unwind label %bb.dt     ; 2 uses

bb.ds:                                            ; preds = %.noexc.i534
  store ptr %i.aey, ptr %36, align 8, !tbaa !25
  %i.aez = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  store i64 %i.aez, ptr %i.aex, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aey, ptr noundef nonnull align 1 dereferenceable(24) @.str.25, i64 24, i1 false)
  %i.afa = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.aez, ptr %i.afa, align 8, !tbaa !19
  %i.afb = load ptr, ptr %36, align 8, !tbaa !25
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aez
  store i8 0, ptr %i.afc, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable764 unwind label %bb.du

.unreachable764:                                  ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %.noexc.i534
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

bb.du:                                            ; preds = %bb.ds
  %i.afe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aff = load ptr, ptr %36, align 8, !tbaa !25  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.aex
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.du
  %i.afh = load i64, ptr %i.aex, align 8, !tbaa !20
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540, %bb.dt
  %.pn149 = phi { ptr, i32 } [ %i.afd, %bb.dt ], [ %i.afe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540 ], [ %i.afe, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %.loopexit

bb.dv:                                            ; preds = %bb.dr
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 2 uses
  %.not.i543 = icmp eq ptr %.sroa.20.0.ph, %.sroa.36.0.ph
  br i1 %.not.i543, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !35
  store i32 %i.afk, ptr %.sroa.20.0.ph, align 4, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dx:                                            ; preds = %bb.dv
  %i.afl = icmp eq i64 %i.aeu, 9223372036854775804
  br i1 %i.afl, label %bb.dy, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc545 unwind label %.loopexit.split-lp

.noexc545:                                        ; preds = %bb.dy
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dx
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aev, i64 1)
  %i.afm = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.aev ; 2 uses
  %i.afn = shl nuw nsw i64 %i.afm, 2
  %i.afo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afn) #22
          to label %.noexc546 unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc546:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 %i.aeu ; 2 uses
  %i.afq = load i32, ptr %i.afj, align 4, !tbaa !35
  store i32 %i.afq, ptr %i.afp, align 4, !tbaa !35
  %i.afr = icmp sgt i64 %i.aeu, 0
  br i1 %i.afr, label %bb.dz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dz:                                            ; preds = %.noexc546
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.afo, ptr align 4 %.sroa.0703.0.ph, i64 %i.aeu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dz, %.noexc546
  %.not.i17.i.i = icmp eq ptr %.sroa.0703.0.ph, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.afs = ptrtoint ptr %.sroa.36.0.ph to i64
  %i.aft = sub i64 %i.afs, %i.aet
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0703.0.ph, i64 noundef %i.aft) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ea, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %i.afm
  %.pre1091 = load ptr, ptr %8, align 8, !tbaa !148
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.dw
  %i.afv = phi ptr [ %.pre1091, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aec, %bb.dw ] ; 2 uses
  %.sroa.36.8 = phi ptr [ %i.afu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.36.0.ph, %bb.dw ] ; 5 uses
  %.pn = phi ptr [ %i.afp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.20.0.ph, %bb.dw ] ; 2 uses
  %.sroa.0703.8 = phi ptr [ %i.afo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0703.0.ph, %bb.dw ] ; 7 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8 ; 2 uses
  %.not.i547 = icmp eq ptr %.sroa.20.3, %.sroa.36.8
  br i1 %.not.i547, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !35
  store i32 %i.afx, ptr %.sroa.20.3, align 4, !tbaa !35
  %i.afy = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556

bb.ec:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.afz = ptrtoint ptr %.sroa.36.8 to i64
  %i.aga = ptrtoint ptr %.sroa.0703.8 to i64
  %i.agb = sub i64 %i.afz, %i.aga                 ; 6 uses
  %i.agc = icmp eq i64 %i.agb, 9223372036854775804
  br i1 %i.agc, label %bb.ed, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc554 unwind label %.loopexit.split-lp

.noexc554:                                        ; preds = %bb.ed
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548: ; preds = %bb.ec
  %i.agd = ashr exact i64 %i.agb, 2               ; 3 uses
  %.sroa.speculated.i.i.i549 = call i64 @llvm.umax.i64(i64 %i.agd, i64 1)
  %i.age = add nsw i64 %.sroa.speculated.i.i.i549, %i.agd ; 2 uses
  %i.agf = icmp ult i64 %i.age, %i.agd
  %i.agg = call i64 @llvm.umin.i64(i64 %i.age, i64 2305843009213693951)
  %i.agh = select i1 %i.agf, i64 2305843009213693951, i64 %i.agg ; 3 uses
  %.not.i.i.i550 = icmp ne i64 %i.agh, 0
  call void @llvm.assume(i1 %.not.i.i.i550)
  %i.agi = shl nuw nsw i64 %i.agh, 2
  %i.agj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agi) #22
          to label %.noexc555 unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc555:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i548
  %i.agk = getelementptr inbounds i8, ptr %i.agj, i64 %i.agb ; 2 uses
  %i.agl = load i32, ptr %i.afw, align 4, !tbaa !35
  store i32 %i.agl, ptr %i.agk, align 4, !tbaa !35
  %i.agm = icmp sgt i64 %i.agb, 0
  br i1 %i.agm, label %bb.ee, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551

bb.ee:                                            ; preds = %.noexc555
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agj, ptr align 4 %.sroa.0703.8, i64 %i.agb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551: ; preds = %bb.ee, %.noexc555
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %.not.i17.i.i552 = icmp eq ptr %.sroa.0703.8, null
  br i1 %.not.i17.i.i552, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0703.8, i64 noundef %i.agb) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553: ; preds = %bb.ef, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i551
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.agh
  %.pre1092 = load ptr, ptr %8, align 8, !tbaa !148
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556

_ZNSt6vectorIiSaIiEE9push_backERKi.exit556:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553, %bb.eb
  %i.agp = phi ptr [ %.pre1092, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %i.afv, %bb.eb ]
  %.sroa.36.9 = phi ptr [ %i.ago, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %.sroa.36.8, %bb.eb ] ; 5 uses
  %.sroa.20.4 = phi ptr [ %i.agn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %i.afy, %bb.eb ] ; 3 uses
  %.sroa.0703.9 = phi ptr [ %i.agj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i553 ], [ %.sroa.0703.8, %bb.eb ] ; 7 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 12 ; 2 uses
  %.not.i557 = icmp eq ptr %.sroa.20.4, %.sroa.36.9
  br i1 %.not.i557, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !35
  store i32 %i.agr, ptr %.sroa.20.4, align 4, !tbaa !35
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.20.4, i64 4
  br label %.outer.backedge

bb.eh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit556
  %i.agt = ptrtoint ptr %.sroa.36.9 to i64
  %i.agu = ptrtoint ptr %.sroa.0703.9 to i64
  %i.agv = sub i64 %i.agt, %i.agu                 ; 6 uses
  %i.agw = icmp eq i64 %i.agv, 9223372036854775804
  br i1 %i.agw, label %bb.ei, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc564 unwind label %.loopexit.split-lp

.noexc564:                                        ; preds = %bb.ei
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558: ; preds = %bb.eh
  %i.agx = ashr exact i64 %i.agv, 2               ; 3 uses
  %.sroa.speculated.i.i.i559 = call i64 @llvm.umax.i64(i64 %i.agx, i64 1)
  %i.agy = add nsw i64 %.sroa.speculated.i.i.i559, %i.agx ; 2 uses
  %i.agz = icmp ult i64 %i.agy, %i.agx
  %i.aha = call i64 @llvm.umin.i64(i64 %i.agy, i64 2305843009213693951)
  %i.ahb = select i1 %i.agz, i64 2305843009213693951, i64 %i.aha ; 3 uses
  %.not.i.i.i560 = icmp ne i64 %i.ahb, 0
  call void @llvm.assume(i1 %.not.i.i.i560)
  %i.ahc = shl nuw nsw i64 %i.ahb, 2
  %i.ahd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahc) #22
          to label %.noexc565 unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc565:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i558
  %i.ahe = getelementptr inbounds i8, ptr %i.ahd, i64 %i.agv ; 2 uses
  %i.ahf = load i32, ptr %i.agq, align 4, !tbaa !35
  store i32 %i.ahf, ptr %i.ahe, align 4, !tbaa !35
  %i.ahg = icmp sgt i64 %i.agv, 0
  br i1 %i.ahg, label %bb.ej, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561

bb.ej:                                            ; preds = %.noexc565
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ahd, ptr align 4 %.sroa.0703.9, i64 %i.agv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561: ; preds = %bb.ej, %.noexc565
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  %.not.i17.i.i562 = icmp eq ptr %.sroa.0703.9, null
  br i1 %.not.i17.i.i562, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0703.9, i64 noundef %i.agv) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563: ; preds = %bb.ek, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i561
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ahb
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563, %bb.eg, %.critedge207, %bb.br, %.critedge198, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread, %bb.bv, %.critedge195
  %.sroa.36.0.ph.be = phi ptr [ %.sroa.36.9, %bb.eg ], [ %.sroa.36.0.ph, %.critedge195 ], [ %.sroa.36.7, %bb.br ], [ %.sroa.36.0.ph, %bb.bv ], [ %i.ahi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.sroa.36.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.sroa.36.0.ph, %.critedge198 ], [ %.sroa.36.0.ph, %.critedge207 ]
  %.sroa.20.0.ph.be = phi ptr [ %i.ags, %bb.eg ], [ %.sroa.20.0.ph, %.critedge195 ], [ %.sroa.20.2, %bb.br ], [ %.sroa.20.0.ph, %bb.bv ], [ %i.ahh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.sroa.20.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.sroa.20.0.ph, %.critedge198 ], [ %.sroa.20.0.ph, %.critedge207 ]
  %.sroa.0703.0.ph.be = phi ptr [ %.sroa.0703.9, %bb.eg ], [ %.sroa.0703.0.ph, %.critedge195 ], [ %.sroa.0703.7, %bb.br ], [ %.sroa.0703.0.ph, %bb.bv ], [ %i.ahd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.sroa.0703.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.sroa.0703.0.ph, %.critedge198 ], [ %.sroa.0703.0.ph, %.critedge207 ]
  %.0735.ph.be = phi i32 [ %.0735.ph, %bb.eg ], [ %.0735.ph, %.critedge195 ], [ %i.qs, %bb.br ], [ %.0735.ph, %bb.bv ], [ %.0735.ph, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ %.0735.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.0735.ph, %.critedge198 ], [ %.0735.ph, %.critedge207 ]
  %.081.ph.be = phi i1 [ true, %bb.eg ], [ %.081.ph, %.critedge195 ], [ %.081.ph, %bb.br ], [ %.081.ph, %bb.bv ], [ true, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i563 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit419.thread ], [ %.081.ph, %.critedge198 ], [ true, %.critedge207 ]
  br label %.outer, !llvm.loop !79

bb.el:                                            ; preds = %bb.f
  %i.ahj = load ptr, ptr %8, align 8, !tbaa !148  ; 3 uses
  %.not.i.i.i567 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i.i567, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ahk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !149
  %i.ahm = ptrtoint ptr %i.ahl to i64
  %i.ahn = ptrtoint ptr %i.ahj to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.aho) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ahp = load ptr, ptr %7, align 16, !tbaa !40  ; 3 uses
  %i.ahq = load ptr, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i.i568 = icmp eq ptr %i.ahp, %i.ahq
  br i1 %.not4.i.i.i568, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i576, label %.lr.ph.i.i.i569

.lr.ph.i.i.i569:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572
  %.05.i.i.i570 = phi ptr [ %i.ahw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572 ], [ %i.ahp, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.ahr = load ptr, ptr %.05.i.i.i570, align 8, !tbaa !25 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.05.i.i.i570, i64 16 ; 2 uses
  %i.aht = icmp eq ptr %i.ahr, %i.ahs
  br i1 %i.aht, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i571: ; preds = %.lr.ph.i.i.i569
  %i.ahu = load i64, ptr %i.ahs, align 8, !tbaa !20
  %i.ahv = add i64 %i.ahu, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahv) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572: ; preds = %.lr.ph.i.i.i569, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i571
  %i.ahw = getelementptr inbounds nuw i8, ptr %.05.i.i.i570, i64 32 ; 2 uses
  %.not.i.i.i573 = icmp eq ptr %i.ahw, %i.ahq
  br i1 %.not.i.i.i573, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i574, label %.lr.ph.i.i.i569, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i574: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i572
  %.pr.i575 = load ptr, ptr %7, align 16, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i576

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i576: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i574, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ahx = phi ptr [ %.pr.i575, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i574 ], [ %i.ahp, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i577 = icmp eq ptr %i.ahx, null
  br i1 %.not.i.i1.i577, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit579, label %bb.en

bb.en:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i576
  %i.ahy = load ptr, ptr %i.an, align 16, !tbaa !42
  %i.ahz = ptrtoint ptr %i.ahy to i64
  %i.aia = ptrtoint ptr %i.ahx to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  call void @_ZdlPvm(ptr noundef nonnull %i.ahx, i64 noundef %i.aib) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit579

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit579: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i576, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.aic = mul nsw i32 %.0735.ph, %.0735.ph
  %i.aid = mul nsw i32 %i.aic, %.0735.ph          ; 3 uses
  %i.aie = ptrtoint ptr %.sroa.20.0.ph to i64
  %i.aif = ptrtoint ptr %.sroa.0703.0.ph to i64   ; 2 uses
  %i.aig = sub i64 %i.aie, %i.aif
  %i.aih = ashr exact i64 %i.aig, 2               ; 5 uses
  %i.aii = udiv i64 %i.aih, 3                     ; 2 uses
  %i.aij = trunc i64 %i.aii to i32
  %.not = icmp eq i32 %i.aid, %i.aij
  br i1 %.not, label %bb.fg, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit579
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %37)
          to label %bb.ep unwind label %bb.fa

bb.ep:                                            ; preds = %bb.eo
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.26, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.fb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ep
  %i.ail = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.27, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit582 unwind label %bb.fb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit582: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aim = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %37, i64 noundef %i.aii)
          to label %_ZNSolsEm.exit unwind label %bb.fb

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit582
  %i.ain = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aim, ptr noundef nonnull @.str.28, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit585 unwind label %bb.fb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit585: ; preds = %_ZNSolsEm.exit
  %i.aio = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %i.aid)
          to label %bb.eq unwind label %bb.fb

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit585
  %i.aip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aio, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587 unwind label %bb.fb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.aiq = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 5 uses
  store ptr %i.aiq, ptr %39, align 8, !tbaa !16, !alias.scope !152
  %i.air = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %i.air, align 8, !tbaa !19, !alias.scope !152
  store i8 0, ptr %i.aiq, align 8, !tbaa !20, !alias.scope !152
  %i.ais = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !44, !noalias !152 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ait, null
  %i.aiu = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.aiv = load ptr, ptr %i.aiu, align 8, !noalias !152 ; 2 uses
  %i.aiw = icmp ugt ptr %i.ait, %i.aiv
  %.08.i.i.i = select i1 %i.aiw, ptr %i.ait, ptr %i.aiv ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i588 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i588, label %bb.et, label %bb.er

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587
  %i.aix = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !45, !noalias !152 ; 2 uses
  %i.aiz = ptrtoint ptr %.08.i.i.i to i64
  %i.aja = ptrtoint ptr %i.aiy to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  %i.ajc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef %i.aiy, i64 noundef %i.ajb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.es ; 0 uses

bb.es:                                            ; preds = %bb.et, %bb.er
  %i.ajd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aje = load ptr, ptr %39, align 8, !tbaa !25, !alias.scope !152 ; 2 uses
  %i.ajf = icmp eq ptr %i.aje, %i.aiq
  br i1 %i.ajf, label %.body, label %.body.sink.split

bb.et:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit587
  %i.ajg = getelementptr inbounds nuw i8, ptr %37, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.ajg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.es

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.et, %bb.er
  %i.ajh = load ptr, ptr %39, align 8, !tbaa !25  ; 4 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 5 uses
  store ptr %i.aji, ptr %38, align 8, !tbaa !16
  %i.ajj = icmp eq ptr %i.ajh, null
  br i1 %i.ajj, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #25
          to label %.noexc591 unwind label %bb.fc

.noexc591:                                        ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ajk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajh) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.ajk, ptr %i.c, align 8, !tbaa !36
  %i.ajl = icmp ugt i64 %i.ajk, 15
  br i1 %i.ajl, label %.noexc.i590, label %._crit_edge.i.i589

.noexc.i590:                                      ; preds = %bb.ev
  %i.ajm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc592 unwind label %bb.fc ; 2 uses

.noexc592:                                        ; preds = %.noexc.i590
  store ptr %i.ajm, ptr %38, align 8, !tbaa !25
  %i.ajn = load i64, ptr %i.c, align 8, !tbaa !36
  store i64 %i.ajn, ptr %i.aji, align 8, !tbaa !20
  br label %._crit_edge.i.i589

._crit_edge.i.i589:                               ; preds = %.noexc592, %bb.ev
  %i.ajo = phi ptr [ %i.ajm, %.noexc592 ], [ %i.aji, %bb.ev ] ; 2 uses
  switch i64 %i.ajk, label %bb.ex [
    i64 1, label %bb.ew
    i64 0, label %bb.ey
  ]

bb.ew:                                            ; preds = %._crit_edge.i.i589
  %i.ajp = load i8, ptr %i.ajh, align 1, !tbaa !20
  store i8 %i.ajp, ptr %i.ajo, align 1, !tbaa !20
  br label %bb.ey

bb.ex:                                            ; preds = %._crit_edge.i.i589
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajo, ptr nonnull align 1 %i.ajh, i64 %i.ajk, i1 false)
  br label %bb.ey
end_hunk_0
