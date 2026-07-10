inline.NumInlined: 960
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %exp2.i312 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc unwind label %bb.dh ; 0 uses

exp2.i.noexc:                                     ; preds = %bb.dc
  %.not.not.not.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 512
  br i1 %.not.not.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dd

bb.dd:                                            ; preds = %exp2.i.noexc
  %exp2.1.i313 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc unwind label %bb.dh ; 0 uses

exp2.1.i.noexc:                                   ; preds = %bb.dd
  %.not.not.not.1.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 2048
  br i1 %.not.not.not.1.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.de

bb.de:                                            ; preds = %exp2.1.i.noexc
  %exp2.2.i314 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc unwind label %bb.dh ; 0 uses

exp2.2.i.noexc:                                   ; preds = %bb.de
  %.not.not.not.2.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 8192
  br i1 %.not.not.not.2.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.df

bb.df:                                            ; preds = %exp2.2.i.noexc
  %exp2.3.i315 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc unwind label %bb.dh ; 0 uses

exp2.3.i.noexc:                                   ; preds = %bb.df
  %.not.not.not.3.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 32768
  br i1 %.not.not.not.3.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dg

bb.dg:                                            ; preds = %exp2.3.i.noexc
  %exp2.4.i316 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit unwind label %bb.dh ; 0 uses

bb.dh:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit: ; preds = %exp2.i.noexc, %exp2.1.i.noexc, %exp2.2.i.noexc, %exp2.3.i.noexc, %bb.dg
  %.0.i = phi i32 [ 5, %bb.dg ], [ 3, %exp2.2.i.noexc ], [ 5, %exp2.3.i.noexc ], [ 2, %exp2.1.i.noexc ], [ 1, %exp2.i.noexc ] ; 3 uses
  %i.mq = ptrtoint ptr %.sroa.17479.0.ph.lcssa595949 to i64
  %i.mr = ptrtoint ptr %.sroa.0467.0.ph.lcssa575950 to i64
  %i.ms = sub i64 %i.mq, %i.mr                    ; 2 uses
  %i.mt = lshr i64 %i.ms, 2                       ; 2 uses
  %i.mu = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef range(i32 1, 6) %.0.i)
          to label %.noexc337 unwind label %bb.dh

.noexc337:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit
  %i.mv = trunc i64 %i.mt to i32                  ; 2 uses
  %i.mw = fptrunc double %i.mu to float
  %i.mx = uitofp i32 %i.mv to float
  %i.my = fadd float %i.mx, -1.000000e+00
  %i.mz = fdiv float %i.mw, %i.my
  %.not13.i = icmp eq i32 %i.mv, 0
  br i1 %.not13.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc337
  %wide.trip.count.i = and i64 %i.mt, 4294967295
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %bb.dj, !llvm.loop !77

bb.dj:                                            ; preds = %bb.di, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.di ] ; 3 uses
  %i.na = trunc nuw i64 %indvars.iv.i to i32
  %i.nb = uitofp i32 %i.na to float
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %indvars.iv.i
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !3
  %i.ne = sitofp i32 %i.nd to float
  %i.nf = fneg float %i.ne
  %i.ng = call float @llvm.fmuladd.f32(float %i.nb, float %i.mz, float %i.nf)
  %i.nh = call noundef float @llvm.fabs.f32(float %i.ng)
  %i.ni = fcmp ult float %i.nh, 2.000000e+00
  br i1 %i.ni, label %bb.di, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit: ; preds = %bb.dj
  %i.nj = ashr exact i64 %i.ms, 2                 ; 6 uses
  %i.nk = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #22
          to label %.noexc338 unwind label %bb.ds ; 6 uses

.noexc338:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store i32 1, ptr %i.nl, align 8, !tbaa !67, !noalias !78
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  store i32 1, ptr %i.nm, align 4, !tbaa !69, !noalias !78
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nk, align 8, !tbaa !7, !noalias !78
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.nn, i64 noundef %i.nj)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !78

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc338
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef 384) #24, !noalias !78
  br label %.body339

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc338
  store ptr %i.nn, ptr %i.ku, align 8, !tbaa !81
  %i.np = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !83 ; 8 uses
  store ptr %i.nk, ptr %i.np, align 8, !tbaa !83
  %.not.i.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 4 uses
  %i.ns = load atomic i64, ptr %i.nr acquire, align 8 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 4294967297
  %i.nu = trunc i64 %i.ns to i32                  ; 2 uses
  br i1 %i.nt, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.nr, align 8, !tbaa !67
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  store i32 0, ptr %i.nv, align 4, !tbaa !69
  %i.nw = load ptr, ptr %i.nq, align 8, !tbaa !7
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #23, !inline_history !86
  %i.nz = load ptr, ptr %i.nq, align 8, !tbaa !7
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #23, !inline_history !86
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dm:                                            ; preds = %bb.dk
  %i.oc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i341 = icmp eq i8 %i.oc, 0
  br i1 %.not.i.i.i.i.i341, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.od = add nsw i32 %i.nu, -1
  store i32 %i.od, ptr %i.nr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  %i.oe = atomicrmw volatile add ptr %i.nr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i.i.i = phi i32 [ %i.nu, %bb.dn ], [ %i.oe, %bb.do ]
  %i.of = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.of, label %bb.dp, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dl, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.og = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.og, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.oh = load ptr, ptr %i.ku, align 8, !tbaa !88
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.oh, i32 noundef %4)
          to label %bb.du unwind label %bb.dt

bb.ds:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.dt:                                            ; preds = %bb.dr, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.du:                                            ; preds = %bb.dr, %bb.dq
  %i.ok = load ptr, ptr %i.ku, align 8, !tbaa !88
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 360
  store i32 %.0.i, ptr %i.ol, align 8, !tbaa !90
  %i.om = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i)
          to label %.preheader.lr.ph unwind label %bb.dv

.preheader.lr.ph:                                 ; preds = %bb.du
  %i.on = fptrunc double %i.om to float           ; 2 uses
  %i.oo = load ptr, ptr %i.ku, align 8, !tbaa !88
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 200
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !120 ; 4 uses
  %min.iters.check1233 = icmp ult i64 %i.nj, 4
  br i1 %min.iters.check1233, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.lr.ph
  %i.or = add nsw i64 %i.nj, -1                   ; 2 uses
  %i.os = trunc i64 %i.or to i32
  %i.ot = icmp ugt i32 %i.os, 1431655764
  %i.ou = icmp ugt i64 %i.or, 4294967295
  %i.ov = or i1 %i.ot, %i.ou
  br i1 %i.ov, label %.preheader.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %vector.scevcheck
  %n.vec1236 = and i64 %i.nj, 8589934588          ; 4 uses
  %i.ow = trunc i64 %n.vec1236 to i32
  %i.ox = mul i32 %i.ow, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.on, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1234
  %index1238 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1240, %vector.body1237 ] ; 3 uses
  %i.oy = mul i64 %index1238, 3
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %index1238
  %wide.load1239 = load <4 x i32>, ptr %i.oz, align 4, !tbaa !3
  %i.pa = sitofp <4 x i32> %wide.load1239 to <4 x float>
  %i.pb = fdiv <4 x float> %i.pa, %broadcast.splat
  %i.pc = and i64 %i.oy, 4294967292
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pc
  %interleaved.vec = shufflevector <4 x float> %i.pb, <4 x float> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3>
  store <12 x float> %interleaved.vec, ptr %i.pd, align 4, !tbaa !121
  %index.next1240 = add nuw i64 %index1238, 4     ; 2 uses
  %i.pe = icmp eq i64 %index.next1240, %n.vec1236
  br i1 %i.pe, label %middle.block1241, label %vector.body1237, !llvm.loop !123

middle.block1241:                                 ; preds = %vector.body1237
  %cmp.n1242 = icmp eq i64 %i.nj, %n.vec1236
  br i1 %cmp.n1242, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %.preheader.lr.ph, %middle.block1241
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec1236, %middle.block1241 ]
  %.098722.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.ox, %middle.block1241 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.pf = phi i64 [ %indvars.iv.next, %.preheader ], [ %.ph, %.preheader.preheader ] ; 2 uses
  %.0100721 = phi i32 [ %i.ps, %.preheader ], [ %.098722.ph, %.preheader.preheader ] ; 4 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = sitofp i32 %i.ph to float
  %i.pj = fdiv float %i.pi, %i.on                 ; 3 uses
  %i.pk = zext i32 %.0100721 to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pk
  store float %i.pj, ptr %i.pl, align 4, !tbaa !121
  %i.pm = add i32 %.0100721, 1
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pn
  store float %i.pj, ptr %i.po, align 4, !tbaa !121
  %i.pp = add i32 %.0100721, 2
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pq
  store float %i.pj, ptr %i.pr, align 4, !tbaa !121
  %i.ps = add i32 %.0100721, 3
  %indvars.iv.next = add i64 %i.pf, 1             ; 2 uses
  %22 = and i64 %indvars.iv.next, 4294967295
  %i.pt = icmp ugt i64 %i.nj, %22
  br i1 %i.pt, label %.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, !llvm.loop !124

bb.dv:                                            ; preds = %bb.du
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread: ; preds = %bb.di, %.preheader, %middle.block1241, %.noexc337, %bb.cp
  br i1 %i.jy, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  %i.pv = icmp slt i32 %.0490.ph.lcssa661943, 128
  br i1 %i.pv, label %bb.dx, label %bb.ei

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.pw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.19, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344: ; preds = %bb.dy
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.20, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %.0490.ph.lcssa661943)
          to label %bb.dz unwind label %bb.ed     ; 0 uses

bb.dz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.13, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348: ; preds = %bb.dz
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.14, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.15, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350
  %i.qc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.ea unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread

bb.ea:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352
  %i.qd = load ptr, ptr %21, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, ptr noundef %i.qd)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  invoke void @__cxa_throw(ptr nonnull %i.qc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ff unwind label %bb.ee

bb.ec:                                            ; preds = %bb.dx
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348, %bb.dz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344, %bb.dy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eb, %bb.ea
  %.095 = phi i1 [ false, %bb.eb ], [ true, %bb.ea ] ; 2 uses
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qi = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.ee
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !16
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.095, label %bb.ef, label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.095, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.pn144514 = phi { ptr, i32 } [ %i.qg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread ], [ %i.qh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @__cxa_free_exception(ptr %i.qc) #23
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %bb.ef, %bb.ed
  %.pn144.pn = phi { ptr, i32 } [ %.pn144514, %bb.ef ], [ %i.qh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.qf, %bb.ed ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ec
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %bb.eg ], [ %i.qe, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body339

bb.ei:                                            ; preds = %bb.dw
  %exp2.i362 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc361 unwind label %bb.en ; 0 uses

exp2.i.noexc361:                                  ; preds = %bb.ei
  %.not.not.not.i356 = icmp samesign ult i32 %.0490.ph.lcssa661943, 512
  br i1 %.not.not.not.i356, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.ej

bb.ej:                                            ; preds = %exp2.i.noexc361
  %exp2.1.i364 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc363 unwind label %bb.en ; 0 uses

exp2.1.i.noexc363:                                ; preds = %bb.ej
  %.not.not.not.1.i357 = icmp samesign ult i32 %.0490.ph.lcssa661943, 2048
  br i1 %.not.not.not.1.i357, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.ek

bb.ek:                                            ; preds = %exp2.1.i.noexc363
  %exp2.2.i366 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc365 unwind label %bb.en ; 0 uses

exp2.2.i.noexc365:                                ; preds = %bb.ek
  %.not.not.not.2.i358 = icmp samesign ult i32 %.0490.ph.lcssa661943, 8192
  br i1 %.not.not.not.2.i358, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.el

bb.el:                                            ; preds = %exp2.2.i.noexc365
  %exp2.3.i368 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc367 unwind label %bb.en ; 0 uses

exp2.3.i.noexc367:                                ; preds = %bb.el
  %.not.not.not.3.i359 = icmp samesign ult i32 %.0490.ph.lcssa661943, 32768
  br i1 %.not.not.not.3.i359, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.em

bb.em:                                            ; preds = %exp2.3.i.noexc367
  %exp2.4.i370 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371 unwind label %bb.en ; 0 uses

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371: ; preds = %bb.em, %exp2.i.noexc361, %exp2.1.i.noexc363, %exp2.2.i.noexc365, %exp2.3.i.noexc367
  %spec.select.i360 = phi i64 [ 8, %exp2.3.i.noexc367 ], [ 0, %exp2.i.noexc361 ], [ 2, %exp2.1.i.noexc363 ], [ 4, %exp2.2.i.noexc365 ], [ 8, %bb.em ]
  %i.qo = ptrtoint ptr %.sroa.17.0.ph.lcssa647944 to i64
  %i.qp = ptrtoint ptr %.sroa.0447.0.ph.lcssa629945 to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = ashr exact i64 %i.qq, 2                 ; 5 uses
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = sdiv i32 %i.qs, 3
  %i.qu = invoke noundef i32 @_ZN16OpenColorIO_v2_528Get3DLutEdgeLenFromNumPixelsEi(i32 noundef %i.qt)
          to label %switch.lookup unwind label %bb.ew

switch.lookup:                                    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %spec.select.i360
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.qv = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc385 unwind label %bb.ey ; 6 uses

.noexc385:                                        ; preds = %switch.lookup
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store i32 1, ptr %i.qw, align 8, !tbaa !67, !noalias !125
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  store i32 1, ptr %i.qx, align 4, !tbaa !69, !noalias !125
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qv, align 8, !tbaa !7, !noalias !125
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %i.qz = sext i32 %i.qu to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.qy, i64 noundef %i.qz)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !125

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc385
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef 248) #24, !noalias !125
  br label %.body339

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc385
  %i.rb = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 4 uses
  store ptr %i.qy, ptr %i.rb, align 8, !tbaa !128
  %i.rc = getelementptr inbounds nuw i8, ptr %i.kt, i64 32 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !83 ; 8 uses
  store ptr %i.qv, ptr %i.rc, align 8, !tbaa !83
  %.not.i.i.i.i388 = icmp eq ptr %i.rd, null
  br i1 %.not.i.i.i.i388, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8 ; 4 uses
  %i.rf = load atomic i64, ptr %i.re acquire, align 8 ; 2 uses
  %i.rg = icmp eq i64 %i.rf, 4294967297
  %i.rh = trunc i64 %i.rf to i32                  ; 2 uses
  br i1 %i.rg, label %bb.ep, label %bb.eq
end_hunk_0
