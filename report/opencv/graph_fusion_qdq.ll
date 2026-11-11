Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_qdq?download=true
inline.NumInlined: 1844
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  br i1 %i.fok, label %bb.asx, label %bb.asy

bb.asx:                                           ; preds = %bb.asw
  store i32 0, ptr %i.foi, align 8, !tbaa !96
  %i.fom = getelementptr inbounds nuw i8, ptr %i.foh, i64 12
  store i32 0, ptr %i.fom, align 4, !tbaa !97
  %i.fon = load ptr, ptr %i.foh, align 8, !tbaa !26
  %i.foo = getelementptr inbounds nuw i8, ptr %i.fon, i64 16
  %i.fop = load ptr, ptr %i.foo, align 8
  call void %i.fop(ptr noundef nonnull align 8 dereferenceable(16) %i.foh) #23, !inline_history !180
  %i.foq = load ptr, ptr %i.foh, align 8, !tbaa !26
  %i.for = getelementptr inbounds nuw i8, ptr %i.foq, i64 24
  %i.fos = load ptr, ptr %i.for, align 8
  call void %i.fos(ptr noundef nonnull align 8 dereferenceable(16) %i.foh) #23, !inline_history !180
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3164

bb.asy:                                           ; preds = %bb.asw
  %i.fot = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i3161 = icmp eq i8 %i.fot, 0
  br i1 %.not.i9.i.i.i.i3161, label %bb.ata, label %bb.asz

bb.asz:                                           ; preds = %bb.asy
  %i.fou = add nsw i32 %i.fol, -1
  store i32 %i.fou, ptr %i.foi, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3162

bb.ata:                                           ; preds = %bb.asy
  %i.fov = atomicrmw volatile add ptr %i.foi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3162: ; preds = %bb.ata, %bb.asz
  %.0.i.i.i.i.i.i3163 = phi i32 [ %i.fol, %bb.asz ], [ %i.fov, %bb.ata ]
  %i.fow = icmp eq i32 %.0.i.i.i.i.i.i3163, 1
  br i1 %i.fow, label %bb.atb, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3164, !prof !98

bb.atb:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.foh) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3164

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3164: ; preds = %bb.atb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3162, %bb.asx
  store ptr null, ptr %i.fog, align 8, !tbaa !94
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit3171

.lr.ph6188:                                       ; preds = %._crit_edge6184, %bb.atd
  %.sroa.03252.06186 = phi ptr [ %i.fpe, %bb.atd ], [ %i.fod, %._crit_edge6184 ] ; 2 uses
  %i.fox = load i32, ptr %.sroa.03252.06186, align 4, !tbaa !51 ; 3 uses
  %i.foy = icmp sgt i32 %i.fox, -1
  %i.foz = icmp slt i32 %i.fox, %.pre7977
  %or.cond2291 = and i1 %i.foy, %i.foz
  br i1 %or.cond2291, label %bb.atc, label %bb.atd

bb.atc:                                           ; preds = %.lr.ph6188
  %i.fpa = zext nneg i32 %i.fox to i64
  %i.fpb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03276.0, i64 %i.fpa ; 2 uses
  %i.fpc = load i32, ptr %i.fpb, align 4, !tbaa !31
  %i.fpd = add nsw i32 %i.fpc, -1
  store i32 %i.fpd, ptr %i.fpb, align 4, !tbaa !31
  br label %bb.atd

bb.atd:                                           ; preds = %bb.atc, %.lr.ph6188
  %i.fpe = getelementptr inbounds nuw i8, ptr %.sroa.03252.06186, i64 4 ; 2 uses
  %.not3692 = icmp eq ptr %i.fpe, %i.fof
  br i1 %.not3692, label %._crit_edge6189, label %.lr.ph6188

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit3171: ; preds = %bb.asu, %._crit_edge6189, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3164, %.lr.ph6194
  %.3 = phi i1 [ %.112826192, %.lr.ph6194 ], [ true, %._crit_edge6189 ], [ true, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3164 ], [ %.112826192, %bb.asu ] ; 2 uses
  %i.fpf = getelementptr inbounds nuw i8, ptr %.sroa.03260.06191, i64 16 ; 2 uses
  %.not3690 = icmp eq ptr %i.fpf, %i.fnn
  br i1 %.not3690, label %.loopexit, label %.lr.ph6194

.split6197.us:                                    ; preds = %.preheader.split, %.loopexit..split6197.us.loopexit_crit_edge, %.preheader
  %i.fpg = phi ptr [ %i.fnb, %.preheader ], [ %.pre7943.pre, %.loopexit..split6197.us.loopexit_crit_edge ], [ %i.fnm, %.preheader.split ] ; 3 uses
  %i.fph = phi ptr [ %i.fnc, %.preheader ], [ %.pre7942.pre, %.loopexit..split6197.us.loopexit_crit_edge ], [ %i.fnn, %.preheader.split ] ; 3 uses
  %i.fpi = ptrtoint ptr %i.fph to i64
  %i.fpj = ptrtoint ptr %i.fpg to i64
  %i.fpk = sub i64 %i.fpi, %i.fpj
  %i.fpl = ashr exact i64 %i.fpk, 4
  %.not6216 = icmp eq ptr %i.fph, %i.fpg
  br i1 %.not6216, label %._crit_edge6202.thread, label %.lr.ph6201

.lr.ph6201:                                       ; preds = %.split6197.us, %bb.ats
  %.06199 = phi i64 [ %.1, %bb.ats ], [ 0, %.split6197.us ] ; 4 uses
  %.012786198 = phi i64 [ %i.fqv, %bb.ats ], [ 0, %.split6197.us ] ; 3 uses
  %i.fpm = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.fpn = getelementptr inbounds nuw [16 x i8], ptr %i.fpm, i64 %.012786198 ; 2 uses
  %i.fpo = load ptr, ptr %i.fpn, align 8, !tbaa !45 ; 2 uses
  %i.fpp = icmp eq ptr %i.fpo, null
  br i1 %i.fpp, label %bb.ats, label %bb.ate

bb.ate:                                           ; preds = %.lr.ph6201
  %i.fpq = icmp ult i64 %.06199, %.012786198
  br i1 %i.fpq, label %bb.atf, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit3182

bb.atf:                                           ; preds = %bb.ate
  %i.fpr = getelementptr inbounds nuw [16 x i8], ptr %i.fpm, i64 %.06199 ; 2 uses
  store ptr %i.fpo, ptr %i.fpr, align 8, !tbaa !45
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpr, i64 8 ; 3 uses
  %i.fpt = getelementptr inbounds nuw i8, ptr %i.fpn, i64 8
  %i.fpu = load ptr, ptr %i.fpt, align 8, !tbaa !94 ; 4 uses
  %i.fpv = load ptr, ptr %i.fps, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i3172 = icmp eq ptr %i.fpu, %i.fpv
  br i1 %.not.i.i.i.i3172, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit3182, label %bb.atg

bb.atg:                                           ; preds = %bb.atf
  %.not7.i.i.i.i3173 = icmp eq ptr %i.fpu, null
  br i1 %.not7.i.i.i.i3173, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i3175, label %bb.ath

bb.ath:                                           ; preds = %bb.atg
  %i.fpw = getelementptr inbounds nuw i8, ptr %i.fpu, i64 8 ; 3 uses
  %i.fpx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i3174 = icmp eq i8 %i.fpx, 0
  br i1 %.not.i.i.i.i.i3174, label %bb.atj, label %bb.ati

bb.ati:                                           ; preds = %bb.ath
  %i.fpy = load i32, ptr %i.fpw, align 4, !tbaa !31
  %i.fpz = add nsw i32 %i.fpy, 1
  store i32 %i.fpz, ptr %i.fpw, align 4, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i3175

bb.atj:                                           ; preds = %bb.ath
  %i.fqa = atomicrmw volatile add ptr %i.fpw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i3181 = load ptr, ptr %i.fps, align 8, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i3175

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i3175: ; preds = %bb.atj, %bb.ati, %bb.atg
  %i.fqb = phi ptr [ %i.fpv, %bb.atg ], [ %i.fpv, %bb.ati ], [ %.pr.pre.i.i.i.i3181, %bb.atj ] ; 8 uses
  %.not8.i.i.i.i3176 = icmp eq ptr %i.fqb, null
  br i1 %.not8.i.i.i.i3176, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3180, label %bb.atk

bb.atk:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i3175
  %i.fqc = getelementptr inbounds nuw i8, ptr %i.fqb, i64 8 ; 4 uses
  %i.fqd = load atomic i64, ptr %i.fqc acquire, align 8 ; 2 uses
  %i.fqe = icmp eq i64 %i.fqd, 4294967297
  %i.fqf = trunc i64 %i.fqd to i32                ; 2 uses
  br i1 %i.fqe, label %bb.atl, label %bb.atm

bb.atl:                                           ; preds = %bb.atk
  store i32 0, ptr %i.fqc, align 8, !tbaa !96
  %i.fqg = getelementptr inbounds nuw i8, ptr %i.fqb, i64 12
  store i32 0, ptr %i.fqg, align 4, !tbaa !97
  %i.fqh = load ptr, ptr %i.fqb, align 8, !tbaa !26
  %i.fqi = getelementptr inbounds nuw i8, ptr %i.fqh, i64 16
  %i.fqj = load ptr, ptr %i.fqi, align 8
  call void %i.fqj(ptr noundef nonnull align 8 dereferenceable(16) %i.fqb) #23, !inline_history !180
  %i.fqk = load ptr, ptr %i.fqb, align 8, !tbaa !26
  %i.fql = getelementptr inbounds nuw i8, ptr %i.fqk, i64 24
  %i.fqm = load ptr, ptr %i.fql, align 8
  call void %i.fqm(ptr noundef nonnull align 8 dereferenceable(16) %i.fqb) #23, !inline_history !180
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3180

bb.atm:                                           ; preds = %bb.atk
  %i.fqn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i3177 = icmp eq i8 %i.fqn, 0
  br i1 %.not.i9.i.i.i.i3177, label %bb.ato, label %bb.atn

bb.atn:                                           ; preds = %bb.atm
  %i.fqo = add nsw i32 %i.fqf, -1
  store i32 %i.fqo, ptr %i.fqc, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3178

bb.ato:                                           ; preds = %bb.atm
  %i.fqp = atomicrmw volatile add ptr %i.fqc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3178

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3178: ; preds = %bb.ato, %bb.atn
  %.0.i.i.i.i.i.i3179 = phi i32 [ %i.fqf, %bb.atn ], [ %i.fqp, %bb.ato ]
  %i.fqq = icmp eq i32 %.0.i.i.i.i.i.i3179, 1
  br i1 %i.fqq, label %bb.atp, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3180, !prof !98

bb.atp:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3178
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fqb) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3180

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3180: ; preds = %bb.atp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3178, %bb.atl, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i3175
  store ptr %i.fpu, ptr %i.fps, align 8, !tbaa !94
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit3182

bb.atq:                                           ; preds = %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.atv, %._crit_edge6175, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit
  %i.fqr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i3183 = icmp eq ptr %.sroa.03276.0, null
  br i1 %.not.i.i.i3183, label %_ZNSt6vectorIiSaIiEED2Ev.exit3184, label %bb.atr

bb.atr:                                           ; preds = %bb.atq
  %i.fqs = ptrtoint ptr %.sroa.03276.0 to i64
  %i.fqt = sub i64 %.sroa.13.0, %i.fqs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03276.0, i64 noundef %i.fqt) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3184

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit3182: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i3180, %bb.atf, %bb.ate
  %i.fqu = add i64 %.06199, 1
  br label %bb.ats

bb.ats:                                           ; preds = %.lr.ph6201, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit3182
  %.1 = phi i64 [ %.06199, %.lr.ph6201 ], [ %i.fqu, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit3182 ] ; 4 uses
  %i.fqv = add nuw i64 %.012786198, 1             ; 2 uses
  %exitcond7903.not = icmp eq i64 %i.fqv, %i.fpl
  br i1 %exitcond7903.not, label %._crit_edge6202, label %.lr.ph6201, !llvm.loop !254

._crit_edge6202:                                  ; preds = %bb.ats
  %.pre7944 = load ptr, ptr %i.hn, align 8, !tbaa !29 ; 7 uses
  %.pre7945 = load ptr, ptr %12, align 8, !tbaa !30 ; 7 uses
  %.pre7949 = ptrtoint ptr %.pre7944 to i64
  %.pre7950 = ptrtoint ptr %.pre7945 to i64
  %.pre7952 = sub i64 %.pre7949, %.pre7950        ; 2 uses
  %.pre7954 = ashr exact i64 %.pre7952, 4         ; 7 uses
  %.pre-phi7951 = ptrtoint ptr %.pre7945 to i64
  %i.fqw = icmp ugt i64 %.1, %.pre7954
  br i1 %i.fqw, label %bb.att, label %._crit_edge6202.thread

bb.att:                                           ; preds = %._crit_edge6202
  %.pre-phi = ptrtoint ptr %.pre7944 to i64
  %i.fqx = sub nuw i64 %.1, %.pre7954             ; 6 uses
  %i.fqy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.fqz = load ptr, ptr %i.fqy, align 8, !tbaa !155
  %i.fra = ptrtoint ptr %i.fqz to i64
  %i.frb = sub i64 %i.fra, %.pre-phi
  %i.frc = ashr exact i64 %i.frb, 4               ; 2 uses
  %i.frd = icmp ult i64 %.pre7954, 576460752303423488
  call void @llvm.assume(i1 %i.frd)
  %i.fre = xor i64 %.pre7954, 576460752303423487  ; 2 uses
  %i.frf = icmp ule i64 %i.frc, %i.fre
  call void @llvm.assume(i1 %i.frf)
  %.not28.i = icmp ult i64 %i.frc, %i.fqx
  br i1 %.not28.i, label %bb.atu, label %_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.att
  %i.frg = shl nuw nsw i64 %i.fqx, 4              ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.pre7944, i8 0, i64 %i.frg, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.pre7944, i64 %i.frg
  store ptr %scevgep.i.i.i.i, ptr %i.hn, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

bb.atu:                                           ; preds = %bb.att
  %i.frh = icmp ult i64 %i.fre, %i.fqx
  br i1 %i.frh, label %bb.atv, label %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.atv:                                           ; preds = %bb.atu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc3248 unwind label %bb.atq

.noexc3248:                                       ; preds = %bb.atv
  unreachable

_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.atu
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %.pre7954, i64 %i.fqx)
  %i.fri = add nuw nsw i64 %.sroa.speculated.i.i, %.pre7954
  %i.frj = call i64 @llvm.umin.i64(i64 %i.fri, i64 576460752303423487) ; 2 uses
  %i.frk = shl nuw nsw i64 %i.frj, 4
  %i.frl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.frk) #26
          to label %.noexc3249 unwind label %bb.atq ; 4 uses

.noexc3249:                                       ; preds = %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.frm = getelementptr inbounds nuw i8, ptr %i.frl, i64 %.pre7952 ; 2 uses
  %i.frn = shl nuw nsw i64 %i.fqx, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.frm, i8 0, i64 %i.frn, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %.pre7945, %.pre7944
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i3246

.lr.ph.i.i.i.i3246:                               ; preds = %.noexc3249, %.lr.ph.i.i.i.i3246
  %.012.i.i.i.i = phi ptr [ %i.frr, %.lr.ph.i.i.i.i3246 ], [ %i.frl, %.noexc3249 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.frq, %.lr.ph.i.i.i.i3246 ], [ %.pre7945, %.noexc3249 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.fro = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.frp = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !116, !alias.scope !361
  store ptr null, ptr %i.fro, align 8, !tbaa !94, !alias.scope !361
  store <2 x ptr> %i.frp, ptr %.012.i.i.i.i, align 8, !tbaa !116, !alias.scope !360
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !45, !alias.scope !361
  %i.frq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.frr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i3247 = icmp eq ptr %i.frq, %.pre7944
  br i1 %.not.i.i.i.i3247, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i3246, !llvm.loop !1

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i3246, %.noexc3249
  %.not.i36.i = icmp eq ptr %.pre7945, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i, label %bb.atw

bb.atw:                                           ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.frs = load ptr, ptr %i.fqy, align 8, !tbaa !155
  %i.frt = ptrtoint ptr %i.frs to i64
  %i.fru = sub i64 %i.frt, %.pre-phi7951
  call void @_ZdlPvm(ptr noundef nonnull %.pre7945, i64 noundef %i.fru) #24
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %bb.atw, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.frl, ptr %12, align 8, !tbaa !30
  %i.frv = getelementptr inbounds nuw [16 x i8], ptr %i.frm, i64 %i.fqx
  store ptr %i.frv, ptr %i.hn, align 8, !tbaa !29
  %i.frw = getelementptr inbounds nuw [16 x i8], ptr %i.frl, i64 %i.frj
  store ptr %i.frw, ptr %i.fqy, align 8, !tbaa !155
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

._crit_edge6202.thread:                           ; preds = %.split6197.us, %._crit_edge6202
  %.0.lcssa8592 = phi i64 [ %.1, %._crit_edge6202 ], [ 0, %.split6197.us ] ; 2 uses
  %i.frx = phi ptr [ %.pre7944, %._crit_edge6202 ], [ %i.fph, %.split6197.us ] ; 2 uses
  %i.fry = phi ptr [ %.pre7945, %._crit_edge6202 ], [ %i.fpg, %.split6197.us ]
  %.pre-phi79558591 = phi i64 [ %.pre7954, %._crit_edge6202 ], [ 0, %.split6197.us ]
  %i.frz = icmp ult i64 %.0.lcssa8592, %.pre-phi79558591
  br i1 %i.frz, label %bb.atx, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

bb.atx:                                           ; preds = %._crit_edge6202.thread
  %i.fsa = getelementptr inbounds nuw [16 x i8], ptr %i.fry, i64 %.0.lcssa8592 ; 3 uses
  %.not.i.i3185 = icmp eq ptr %i.frx, %i.fsa
  br i1 %.not.i.i3185, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.atx, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fss, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i ], [ %i.fsa, %bb.atx ] ; 2 uses
  %i.fsb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.fsc = load ptr, ptr %i.fsb, align 8, !tbaa !94 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fsc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i, label %bb.aty

bb.aty:                                           ; preds = %.lr.ph.i.i.i.i
  %i.fsd = getelementptr inbounds nuw i8, ptr %i.fsc, i64 8 ; 4 uses
  %i.fse = load atomic i64, ptr %i.fsd acquire, align 8 ; 2 uses
  %i.fsf = icmp eq i64 %i.fse, 4294967297
  %i.fsg = trunc i64 %i.fse to i32                ; 2 uses
  br i1 %i.fsf, label %bb.atz, label %bb.aua

bb.atz:                                           ; preds = %bb.aty
  store i32 0, ptr %i.fsd, align 8, !tbaa !96
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fsc, i64 12
  store i32 0, ptr %i.fsh, align 4, !tbaa !97
  %i.fsi = load ptr, ptr %i.fsc, align 8, !tbaa !26
  %i.fsj = getelementptr inbounds nuw i8, ptr %i.fsi, i64 16
  %i.fsk = load ptr, ptr %i.fsj, align 8
  call void %i.fsk(ptr noundef nonnull align 8 dereferenceable(16) %i.fsc) #23, !inline_history !258
  %i.fsl = load ptr, ptr %i.fsc, align 8, !tbaa !26
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.fsl, i64 24
  %i.fsn = load ptr, ptr %i.fsm, align 8
  call void %i.fsn(ptr noundef nonnull align 8 dereferenceable(16) %i.fsc) #23, !inline_history !258
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i

bb.aua:                                           ; preds = %bb.aty
  %i.fso = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fso, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.auc, label %bb.aub

bb.aub:                                           ; preds = %bb.aua
  %i.fsp = add nsw i32 %i.fsg, -1
  store i32 %i.fsp, ptr %i.fsd, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.auc:                                           ; preds = %bb.aua
  %i.fsq = atomicrmw volatile add ptr %i.fsd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.auc, %bb.aub
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fsg, %bb.aub ], [ %i.fsq, %bb.auc ]
  %i.fsr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fsr, label %bb.aud, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i, !prof !98

bb.aud:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fsc) #23
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i: ; preds = %bb.aud, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.atz, %.lr.ph.i.i.i.i
  %i.fss = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i3186 = icmp eq ptr %i.fss, %i.frx
  br i1 %.not.i.i.i.i3186, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i
  store ptr %i.fsa, ptr %i.hn, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.atx, %._crit_edge6202.thread, %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i
  %i.fst = load ptr, ptr %1, align 8, !tbaa !262  ; 2 uses
  %i.fsu = load ptr, ptr %i.fst, align 8, !tbaa !26
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.fsu, i64 96
  %i.fsw = load ptr, ptr %i.fsv, align 8
  invoke void %i.fsw(ptr noundef nonnull align 8 dereferenceable(8) %i.fst, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.aue unwind label %bb.atq

bb.aue:                                           ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit
  %.not.i.i.i3188 = icmp eq ptr %.sroa.03276.0, null
  br i1 %.not.i.i.i3188, label %_ZNSt6vectorIiSaIiEED2Ev.exit3189, label %bb.auf

bb.auf:                                           ; preds = %bb.aue
  %i.fsx = ptrtoint ptr %.sroa.03276.0 to i64
  %i.fsy = sub i64 %.sroa.13.0, %i.fsx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03276.0, i64 noundef %i.fsy) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3189

_ZNSt6vectorIiSaIiEED2Ev.exit3189:                ; preds = %.preheader3727.thread.thread, %.preheader3727.thread, %bb.auf, %bb.aue, %._crit_edge6166
  %.11.lcssa8579 = phi i1 [ false, %.preheader3727.thread ], [ true, %bb.auf ], [ true, %bb.aue ], [ false, %._crit_edge6166 ], [ false, %.preheader3727.thread.thread ]
  %i.fsz = phi ptr [ %i.hn, %.preheader3727.thread ], [ %i.hn, %bb.auf ], [ %i.hn, %bb.aue ], [ %i.hn, %._crit_edge6166 ], [ %i.be, %.preheader3727.thread.thread ]
  %i.fta = load ptr, ptr %i.ba, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.fta)
          to label %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEED2Ev.exit unwind label %bb.aug

bb.aug:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3189
  %i.ftb = landingpad { ptr, i32 }
          catch ptr null
  %i.ftc = extractvalue { ptr, i32 } %i.ftb, 0
  call void @__clang_call_terminate(ptr %i.ftc) #27
  unreachable

_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3189
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ftd = load ptr, ptr %15, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i3190 = icmp eq ptr %i.ftd, null
  br i1 %.not.i.i.i3190, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3191, label %bb.auh

bb.auh:                                           ; preds = %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEED2Ev.exit
  %i.fte = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ftf = load ptr, ptr %i.fte, align 8, !tbaa !99
  %i.ftg = ptrtoint ptr %i.ftf to i64
  %i.fth = ptrtoint ptr %i.ftd to i64
  %i.fti = sub i64 %i.ftg, %i.fth
  call void @_ZdlPvm(ptr noundef nonnull %i.ftd, i64 noundef %i.fti) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3191

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3191: ; preds = %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEED2Ev.exit, %bb.auh
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ftj = load ptr, ptr %i.av, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.ftj)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.aui

bb.aui:                                           ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3191
  %i.ftk = landingpad { ptr, i32 }
          catch ptr null
  %i.ftl = extractvalue { ptr, i32 } %i.ftk, 0
  call void @__clang_call_terminate(ptr %i.ftl) #27
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3191
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.ftm = load ptr, ptr %13, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i3192 = icmp eq ptr %i.ftm, null
  br i1 %.not.i.i.i3192, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3193, label %bb.auj

bb.auj:                                           ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  %i.ftn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fto = load ptr, ptr %i.ftn, align 8, !tbaa !99
  %i.ftp = ptrtoint ptr %i.fto to i64
  %i.ftq = ptrtoint ptr %i.ftm to i64
  %i.ftr = sub i64 %i.ftp, %i.ftq
  call void @_ZdlPvm(ptr noundef nonnull %i.ftm, i64 noundef %i.ftr) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3193

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3193: ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit, %bb.auj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.fts = load ptr, ptr %12, align 8, !tbaa !30  ; 3 uses
  %i.ftt = load ptr, ptr %i.fsz, align 8, !tbaa !29 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fts, %i.ftt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3194

.lr.ph.i.i.i3194:                                 ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3193, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ful, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i ], [ %i.fts, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit3193 ] ; 2 uses
  %i.ftu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ftv = load ptr, ptr %i.ftu, align 8, !tbaa !94 ; 8 uses
  %.not.i.i.i.i.i.i3195 = icmp eq ptr %i.ftv, null
  br i1 %.not.i.i.i.i.i.i3195, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, label %bb.auk

bb.auk:                                           ; preds = %.lr.ph.i.i.i3194
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.ftv, i64 8 ; 4 uses
  %i.ftx = load atomic i64, ptr %i.ftw acquire, align 8 ; 2 uses
  %i.fty = icmp eq i64 %i.ftx, 4294967297
  %i.ftz = trunc i64 %i.ftx to i32                ; 2 uses
  br i1 %i.fty, label %bb.aul, label %bb.aum

bb.aul:                                           ; preds = %bb.auk
  store i32 0, ptr %i.ftw, align 8, !tbaa !96
  %i.fua = getelementptr inbounds nuw i8, ptr %i.ftv, i64 12
  store i32 0, ptr %i.fua, align 4, !tbaa !97
  %i.fub = load ptr, ptr %i.ftv, align 8, !tbaa !26
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.fub, i64 16
  %i.fud = load ptr, ptr %i.fuc, align 8
  call void %i.fud(ptr noundef nonnull align 8 dereferenceable(16) %i.ftv) #23, !inline_history !259
  %i.fue = load ptr, ptr %i.ftv, align 8, !tbaa !26
  %i.fuf = getelementptr inbounds nuw i8, ptr %i.fue, i64 24
  %i.fug = load ptr, ptr %i.fuf, align 8
  call void %i.fug(ptr noundef nonnull align 8 dereferenceable(16) %i.ftv) #23, !inline_history !259
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

bb.aum:                                           ; preds = %bb.auk
  %i.fuh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i.i3196 = icmp eq i8 %i.fuh, 0
  br i1 %.not.i.i.i.i.i.i.i3196, label %bb.auo, label %bb.aun

bb.aun:                                           ; preds = %bb.aum
end_hunk_0
