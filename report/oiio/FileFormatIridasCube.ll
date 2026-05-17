inline.NumInlined: 864
inline.NumDeleted: 319
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.tr = shl nuw nsw i64 %i.tq, 2
  %i.ts = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tr) #26
          to label %.noexc498 unwind label %.loopexit ; 4 uses

.noexc498:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 %i.tk ; 2 uses
  store float %.0705, ptr %i.tt, align 4, !tbaa !61
  %i.tu = icmp sgt i64 %i.tk, 0
  br i1 %i.tu, label %bb.cx, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.cx:                                            ; preds = %.noexc498
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ts, ptr align 4 %i.th, i64 %i.tk, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.cx, %.noexc498
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.th, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.tk) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.cy, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.ts, ptr %5, align 8, !tbaa !51
  store ptr %i.tv, ptr %i.bs, align 8, !tbaa !54
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.tq ; 2 uses
  store ptr %i.tw, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.cv
  %i.tx = phi ptr [ %i.tw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.pre, %bb.cv ] ; 3 uses
  %i.ty = phi ptr [ %i.tv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.tg, %bb.cv ] ; 3 uses
  %.not.i499 = icmp eq ptr %i.ty, %i.tx
  br i1 %.not.i499, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store float %.0706, ptr %i.ty, align 4, !tbaa !61
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4 ; 2 uses
  store ptr %i.tz, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit508

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ua = load ptr, ptr %5, align 8, !tbaa !51    ; 4 uses
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = sub i64 %i.ub, %i.uc                    ; 6 uses
  %i.ue = icmp eq i64 %i.ud, 9223372036854775804
  br i1 %i.ue, label %.invoke1462, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i500

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i500: ; preds = %bb.da
  %i.uf = ashr exact i64 %i.ud, 2                 ; 3 uses
  %.sroa.speculated.i.i.i501 = call i64 @llvm.umax.i64(i64 %i.uf, i64 1)
  %i.ug = add nsw i64 %.sroa.speculated.i.i.i501, %i.uf ; 2 uses
  %i.uh = icmp ult i64 %i.ug, %i.uf
  %i.ui = call i64 @llvm.umin.i64(i64 %i.ug, i64 2305843009213693951)
  %i.uj = select i1 %i.uh, i64 2305843009213693951, i64 %i.ui ; 3 uses
  %.not.i.i.i502 = icmp ne i64 %i.uj, 0
  call void @llvm.assume(i1 %.not.i.i.i502)
  %i.uk = shl nuw nsw i64 %i.uj, 2
  %i.ul = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uk) #26
          to label %.noexc507 unwind label %.loopexit ; 4 uses

.noexc507:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i500
  %i.um = getelementptr inbounds i8, ptr %i.ul, i64 %i.ud ; 2 uses
  store float %.0706, ptr %i.um, align 4, !tbaa !61
  %i.un = icmp sgt i64 %i.ud, 0
  br i1 %i.un, label %bb.db, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i503

bb.db:                                            ; preds = %.noexc507
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ul, ptr align 4 %i.ua, i64 %i.ud, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i503

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i503: ; preds = %bb.db, %.noexc507
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 4 ; 2 uses
  %.not.i17.i.i504 = icmp eq ptr %i.ua, null
  br i1 %.not.i17.i.i504, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i505, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i503
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef %i.ud) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i505

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i505: ; preds = %bb.dc, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i503
  store ptr %i.ul, ptr %5, align 8, !tbaa !51
  store ptr %i.uo, ptr %i.bs, align 8, !tbaa !54
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.uj ; 2 uses
  store ptr %i.up, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit508

_ZNSt6vectorIfSaIfEE9push_backERKf.exit508:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i505, %bb.cz
  %i.uq = phi ptr [ %i.up, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i505 ], [ %i.tx, %bb.cz ] ; 3 uses
  %i.ur = phi ptr [ %i.uo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i505 ], [ %i.tz, %bb.cz ] ; 3 uses
  %.not.i509 = icmp eq ptr %i.ur, %i.uq
  br i1 %.not.i509, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit508
  store float %i.sq, ptr %i.ur, align 4, !tbaa !61
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4 ; 2 uses
  store ptr %i.us, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit518

bb.de:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit508
  %i.ut = load ptr, ptr %5, align 8, !tbaa !51    ; 4 uses
  %i.uu = ptrtoint ptr %i.uq to i64
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = sub i64 %i.uu, %i.uv                    ; 6 uses
  %i.ux = icmp eq i64 %i.uw, 9223372036854775804
  br i1 %i.ux, label %.invoke1462, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i510

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i510: ; preds = %bb.de
  %i.uy = ashr exact i64 %i.uw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i511 = call i64 @llvm.umax.i64(i64 %i.uy, i64 1)
  %i.uz = add nsw i64 %.sroa.speculated.i.i.i511, %i.uy ; 2 uses
  %i.va = icmp ult i64 %i.uz, %i.uy
  %i.vb = call i64 @llvm.umin.i64(i64 %i.uz, i64 2305843009213693951)
  %i.vc = select i1 %i.va, i64 2305843009213693951, i64 %i.vb ; 3 uses
  %.not.i.i.i512 = icmp ne i64 %i.vc, 0
  call void @llvm.assume(i1 %.not.i.i.i512)
  %i.vd = shl nuw nsw i64 %i.vc, 2
  %i.ve = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vd) #26
          to label %.noexc517 unwind label %.loopexit ; 4 uses

.noexc517:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i510
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 %i.uw ; 2 uses
  store float %i.sq, ptr %i.vf, align 4, !tbaa !61
  %i.vg = icmp sgt i64 %i.uw, 0
  br i1 %i.vg, label %bb.df, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i513

bb.df:                                            ; preds = %.noexc517
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ve, ptr align 4 %i.ut, i64 %i.uw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i513

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i513: ; preds = %bb.df, %.noexc517
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 4 ; 2 uses
  %.not.i17.i.i514 = icmp eq ptr %i.ut, null
  br i1 %.not.i17.i.i514, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i515, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i513
  call void @_ZdlPvm(ptr noundef nonnull %i.ut, i64 noundef %i.uw) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i515

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i515: ; preds = %bb.dg, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i513
  store ptr %i.ve, ptr %5, align 8, !tbaa !51
  store ptr %i.vh, ptr %i.bs, align 8, !tbaa !54
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.vc ; 2 uses
  store ptr %i.vi, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit518

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i500, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i510
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp:                               ; preds = %.invoke1462
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZNSt6vectorIfSaIfEE9push_backERKf.exit518:       ; preds = %bb.dd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i515
  %i.vj = phi ptr [ %i.uq, %bb.dd ], [ %i.vi, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i515 ]
  %i.vk = phi ptr [ %i.us, %bb.dd ], [ %i.vh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i515 ]
  %i.vl = add nsw i32 %.1128, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #25
  br label %.thread712

.thread712:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit472, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit518
  %i.vm = phi ptr [ %i.oh, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit472 ], [ %i.vj, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit518 ], [ %i.oh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ]
  %i.vn = phi ptr [ %i.oi, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit472 ], [ %i.vk, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit518 ], [ %i.oi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ] ; 3 uses
  %.2129 = phi i32 [ %.1128, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit472 ], [ %i.vl, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit518 ], [ %.1128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ]
  %i.vo = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.dh unwind label %.loopexit734

bb.dh:                                            ; preds = %.thread712
  br i1 %i.vo, label %bb.bm, label %bb.di, !llvm.loop !63

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #25
  %i.vp = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.ar
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %bb.di
  %i.vr = load i64, ptr %i.ar, align 8, !tbaa !19
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.vt = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.dj unwind label %bb.eb     ; 19 uses

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.vt, align 8, !tbaa !11
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 52 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.vu, i8 0, i64 44, i1 false)
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 56 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.vv, align 4, !tbaa !61
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 60 ; 3 uses
  store float 1.000000e+00, ptr %i.vx, align 4, !tbaa !61
  %i.vy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.do unwind label %bb.dk     ; 7 uses

bb.dk:                                            ; preds = %bb.dj
  %i.vz = landingpad { ptr, i32 }
          catch ptr null
  %i.wa = extractvalue { ptr, i32 } %i.vz, 0
  %i.wb = call ptr @__cxa_begin_catch(ptr %i.wa) #25 ; 0 uses
  %i.wc = load ptr, ptr %i.vt, align 8, !tbaa !11
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(64) %i.vt) #25, !inline_history !64
  invoke void @__cxa_rethrow() #28
          to label %bb.dn unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.wf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.wg = landingpad { ptr, i32 }
          catch ptr null
  %i.wh = extractvalue { ptr, i32 } %i.wg, 0
  call void @__clang_call_terminate(ptr %i.wh) #30
  unreachable

bb.dn:                                            ; preds = %bb.dk
  unreachable

bb.do:                                            ; preds = %bb.dj
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  store i32 1, ptr %i.wi, align 8, !tbaa !65
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  store i32 1, ptr %i.wj, align 4, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.vy, align 8, !tbaa !11
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store ptr %i.vt, ptr %i.wk, align 8, !tbaa !68
  br i1 %.0123.ph931.ph1727, label %bb.dp, label %bb.ew

bb.dp:                                            ; preds = %bb.do
  %i.wl = load i32, ptr %i.x, align 4, !tbaa !3   ; 3 uses
  %i.wm = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.wn = ptrtoint ptr %i.vn to i64
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = ashr exact i64 %i.wp, 2
  %i.wr = udiv i64 %i.wq, 3                       ; 2 uses
  %i.ws = trunc i64 %i.wr to i32
  %.not187 = icmp eq i32 %i.wl, %i.ws
  br i1 %.not187, label %bb.ei, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %28)
          to label %bb.dr unwind label %bb.ec

bb.dr:                                            ; preds = %bb.dq
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.25, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.dr
  %i.wu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.26, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit524 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit524: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.wv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef %i.wr)
          to label %_ZNSolsEm.exit unwind label %bb.ed ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit524
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.27, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527: ; preds = %_ZNSolsEm.exit
  %i.wx = load i32, ptr %i.x, align 4, !tbaa !3
  %i.wy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef %i.wx)
          to label %bb.ds unwind label %bb.ed

bb.ds:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit527
  %i.wz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wy, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529: ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.xa = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  store ptr %i.xa, ptr %30, align 8, !tbaa !13, !alias.scope !77
  %i.xb = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.xb, align 8, !tbaa !16, !alias.scope !77
  store i8 0, ptr %i.xa, align 8, !tbaa !19, !alias.scope !77
  %i.xc = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !78, !noalias !77 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.xd, null
  %i.xe = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.xf = load ptr, ptr %i.xe, align 8, !noalias !77 ; 2 uses
  %i.xg = icmp ugt ptr %i.xd, %i.xf
  %.08.i.i.i = select i1 %i.xg, ptr %i.xd, ptr %i.xf ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i530 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i530, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !80, !noalias !77 ; 2 uses
  %i.xj = ptrtoint ptr %.08.i.i.i to i64
  %i.xk = ptrtoint ptr %i.xi to i64
  %i.xl = sub i64 %i.xj, %i.xk
  %i.xm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, i64 noundef 0, ptr noundef %i.xi, i64 noundef %i.xl)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.du ; 0 uses

bb.du:                                            ; preds = %bb.dv, %bb.dt
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xo = load ptr, ptr %30, align 8, !tbaa !29, !alias.scope !77 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.xa
  br i1 %i.xp, label %.body531, label %.body531.sink.split

bb.dv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529
  %i.xq = getelementptr inbounds nuw i8, ptr %28, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %i.xq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.du

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.dv, %bb.dt
  %i.xr = load ptr, ptr %30, align 8, !tbaa !29   ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  store ptr %i.xs, ptr %29, align 8, !tbaa !13
  %i.xt = icmp eq ptr %i.xr, null
  br i1 %i.xt, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #28
          to label %.noexc535 unwind label %bb.ee

.noexc535:                                        ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.xu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xr) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.xu, ptr %i.c, align 8, !tbaa !39
  %i.xv = icmp ugt i64 %i.xu, 15
  br i1 %i.xv, label %.noexc.i534, label %._crit_edge.i.i533

.noexc.i534:                                      ; preds = %bb.dx
  %i.xw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc536 unwind label %bb.ee ; 2 uses

.noexc536:                                        ; preds = %.noexc.i534
  store ptr %i.xw, ptr %29, align 8, !tbaa !29
  %i.xx = load i64, ptr %i.c, align 8, !tbaa !39
  store i64 %i.xx, ptr %i.xs, align 8, !tbaa !19
  br label %._crit_edge.i.i533

._crit_edge.i.i533:                               ; preds = %.noexc536, %bb.dx
  %i.xy = phi ptr [ %i.xw, %.noexc536 ], [ %i.xs, %bb.dx ] ; 2 uses
  switch i64 %i.xu, label %bb.dz [
    i64 1, label %bb.dy
    i64 0, label %._crit_edge.i.i538
  ]

bb.dy:                                            ; preds = %._crit_edge.i.i533
  %i.xz = load i8, ptr %i.xr, align 1, !tbaa !19
  store i8 %i.xz, ptr %i.xy, align 1, !tbaa !19
  br label %._crit_edge.i.i538

bb.dz:                                            ; preds = %._crit_edge.i.i533
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xy, ptr nonnull align 1 %i.xr, i64 %i.xu, i1 false)
  br label %._crit_edge.i.i538

._crit_edge.i.i538:                               ; preds = %bb.dz, %bb.dy, %._crit_edge.i.i533
  %i.ya = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.ya, ptr %i.yb, align 8, !tbaa !16
  %i.yc = load ptr, ptr %29, align 8, !tbaa !29
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.ya
  store i8 0, ptr %i.yd, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.ye = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  store ptr %i.ye, ptr %31, align 8, !tbaa !13
  %i.yf = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.yf, align 8, !tbaa !16
  store i8 0, ptr %i.ye, align 8, !tbaa !19
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %.unreachable723 unwind label %bb.ef

.unreachable723:                                  ; preds = %._crit_edge.i.i538
  unreachable

bb.ea:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485
  %.pn172.pn = phi { ptr, i32 } [ %.pn172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485 ], [ %.pn168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #25
  br label %.loopexit.split-lp735

.loopexit.split-lp735:                            ; preds = %.loopexit734, %.loopexit.split-lp735.loopexit.loopexit, %.loopexit.split-lp735.loopexit.loopexit.split-lp, %.loopexit.split-lp735.loopexit.split-lp, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %bb.bl, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
end_hunk_0
