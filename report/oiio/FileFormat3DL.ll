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
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit: ; preds = %exp2.i.noexc, %exp2.1.i.noexc, %exp2.2.i.noexc, %exp2.3.i.noexc, %bb.dg
  %.0.i = phi i32 [ 5, %bb.dg ], [ 3, %exp2.2.i.noexc ], [ 5, %exp2.3.i.noexc ], [ 2, %exp2.1.i.noexc ], [ 1, %exp2.i.noexc ] ; 3 uses
  %i.ms = ptrtoint ptr %.sroa.17479.0.ph.lcssa595949 to i64
  %i.mt = ptrtoint ptr %.sroa.0467.0.ph.lcssa575950 to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 2 uses
  %i.mv = lshr i64 %i.mu, 2                       ; 2 uses
  %i.mw = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef range(i32 1, 6) %.0.i)
          to label %.noexc337 unwind label %bb.dh

.noexc337:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit
  %i.mx = trunc i64 %i.mv to i32                  ; 2 uses
  %i.my = fptrunc double %i.mw to float
  %i.mz = uitofp i32 %i.mx to float
  %i.na = fadd float %i.mz, -1.000000e+00
  %i.nb = fdiv float %i.my, %i.na
  %.not13.i = icmp eq i32 %i.mx, 0
  br i1 %.not13.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc337
  %wide.trip.count.i = and i64 %i.mv, 4294967295
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %bb.dj, !llvm.loop !77

bb.dj:                                            ; preds = %bb.di, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.di ] ; 3 uses
  %i.nc = trunc nuw i64 %indvars.iv.i to i32
  %i.nd = uitofp i32 %i.nc to float
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %indvars.iv.i
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = sitofp i32 %i.nf to float
  %i.nh = fneg float %i.ng
  %i.ni = call float @llvm.fmuladd.f32(float %i.nd, float %i.nb, float %i.nh)
  %i.nj = call noundef float @llvm.fabs.f32(float %i.ni)
  %i.nk = fcmp ult float %i.nj, 2.000000e+00
  br i1 %i.nk, label %bb.di, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit: ; preds = %bb.dj
  %i.nl = ashr exact i64 %i.mu, 2                 ; 6 uses
  %i.nm = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #22
          to label %.noexc338 unwind label %bb.ds ; 6 uses

.noexc338:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i32 1, ptr %i.nn, align 8, !tbaa !67, !noalias !78
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i32 1, ptr %i.no, align 4, !tbaa !69, !noalias !78
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nm, align 8, !tbaa !7, !noalias !78
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.np, i64 noundef %i.nl)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !78

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc338
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef 384) #24, !noalias !78
  br label %.body339

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc338
  store ptr %i.np, ptr %i.ku, align 8, !tbaa !81
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !83 ; 8 uses
  store ptr %i.nm, ptr %i.nr, align 8, !tbaa !83
  %.not.i.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 4 uses
  %i.nu = load atomic i64, ptr %i.nt acquire, align 8 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 4294967297
  %i.nw = trunc i64 %i.nu to i32                  ; 2 uses
  br i1 %i.nv, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.nt, align 8, !tbaa !67
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  store i32 0, ptr %i.nx, align 4, !tbaa !69
  %i.ny = load ptr, ptr %i.ns, align 8, !tbaa !7
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #23, !inline_history !86
  %i.ob = load ptr, ptr %i.ns, align 8, !tbaa !7
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #23, !inline_history !86
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dm:                                            ; preds = %bb.dk
  %i.oe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i341 = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i.i.i.i341, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.of = add nsw i32 %i.nw, -1
  store i32 %i.of, ptr %i.nt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  %i.og = atomicrmw volatile add ptr %i.nt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i.i.i = phi i32 [ %i.nw, %bb.dn ], [ %i.og, %bb.do ]
  %i.oh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.oh, label %bb.dp, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dl, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.oi = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.oi, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.oj = load ptr, ptr %i.ku, align 8, !tbaa !88
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.oj, i32 noundef %4)
          to label %bb.du unwind label %bb.dt

bb.ds:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.dt:                                            ; preds = %bb.dr, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.du:                                            ; preds = %bb.dr, %bb.dq
  %i.om = load ptr, ptr %i.ku, align 8, !tbaa !88
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 360
  store i32 %.0.i, ptr %i.on, align 8, !tbaa !90
  %i.oo = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i)
          to label %.preheader.lr.ph unwind label %bb.dv

.preheader.lr.ph:                                 ; preds = %bb.du
  %i.op = fptrunc double %i.oo to float           ; 2 uses
  %i.oq = load ptr, ptr %i.ku, align 8, !tbaa !88
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 200
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !120 ; 4 uses
  %min.iters.check1230 = icmp ult i64 %i.nl, 4
  br i1 %min.iters.check1230, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.lr.ph
  %i.ot = add nsw i64 %i.nl, -1                   ; 2 uses
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = icmp ugt i32 %i.ou, 1431655764
  %i.ow = icmp ugt i64 %i.ot, 4294967295
  %i.ox = or i1 %i.ov, %i.ow
  br i1 %i.ox, label %.preheader.preheader, label %vector.ph1231

vector.ph1231:                                    ; preds = %vector.scevcheck
  %n.vec1233 = and i64 %i.nl, 8589934588          ; 4 uses
  %i.oy = trunc i64 %n.vec1233 to i32
  %i.oz = mul i32 %i.oy, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.op, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1231
  %index1235 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1237, %vector.body1234 ] ; 3 uses
  %i.pa = mul i64 %index1235, 3
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %index1235
  %wide.load1236 = load <4 x i32>, ptr %i.pb, align 4, !tbaa !3
  %i.pc = sitofp <4 x i32> %wide.load1236 to <4 x float>
  %i.pd = fdiv <4 x float> %i.pc, %broadcast.splat
  %i.pe = and i64 %i.pa, 4294967292
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.pe
  %interleaved.vec = shufflevector <4 x float> %i.pd, <4 x float> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3>
  store <12 x float> %interleaved.vec, ptr %i.pf, align 4, !tbaa !121
  %index.next1237 = add nuw i64 %index1235, 4     ; 2 uses
  %i.pg = icmp eq i64 %index.next1237, %n.vec1233
  br i1 %i.pg, label %middle.block1238, label %vector.body1234, !llvm.loop !123

middle.block1238:                                 ; preds = %vector.body1234
  %cmp.n1239 = icmp eq i64 %i.nl, %n.vec1233
  br i1 %cmp.n1239, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %.preheader.lr.ph, %middle.block1238
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec1233, %middle.block1238 ]
  %.098722.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.oz, %middle.block1238 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.ph = phi i64 [ %indvars.iv.next, %.preheader ], [ %.ph, %.preheader.preheader ] ; 2 uses
  %.0100721 = phi i32 [ %i.pu, %.preheader ], [ %.098722.ph, %.preheader.preheader ] ; 4 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  %i.pk = sitofp i32 %i.pj to float
  %i.pl = fdiv float %i.pk, %i.op                 ; 3 uses
  %i.pm = zext i32 %.0100721 to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.pm
  store float %i.pl, ptr %i.pn, align 4, !tbaa !121
  %i.po = add i32 %.0100721, 1
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.pp
  store float %i.pl, ptr %i.pq, align 4, !tbaa !121
  %i.pr = add i32 %.0100721, 2
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.ps
  store float %i.pl, ptr %i.pt, align 4, !tbaa !121
  %i.pu = add i32 %.0100721, 3
  %indvars.iv.next = add i64 %i.ph, 1             ; 2 uses
  %22 = and i64 %indvars.iv.next, 4294967295
  %i.pv = icmp ugt i64 %i.nl, %22
  br i1 %i.pv, label %.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, !llvm.loop !124

bb.dv:                                            ; preds = %bb.du
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread: ; preds = %bb.di, %.preheader, %middle.block1238, %.noexc337, %bb.cp
  br i1 %i.jy, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  %i.px = icmp slt i32 %.0490.ph.lcssa661943, 128
  br i1 %i.px, label %bb.dx, label %bb.ei

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.19, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344: ; preds = %bb.dy
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.20, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %.0490.ph.lcssa661943)
          to label %bb.dz unwind label %bb.ed     ; 0 uses

bb.dz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.13, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348: ; preds = %bb.dz
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.14, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.15, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350
  %i.qe = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.ea unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread

bb.ea:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352
  %i.qf = load ptr, ptr %21, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef %i.qf)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  invoke void @__cxa_throw(ptr nonnull %i.qe, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ff unwind label %bb.ee

bb.ec:                                            ; preds = %bb.dx
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348, %bb.dz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344, %bb.dy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eb, %bb.ea
  %.095 = phi i1 [ false, %bb.eb ], [ true, %bb.ea ] ; 2 uses
  %i.qj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qk = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.ee
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !16
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.095, label %bb.ef, label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.095, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.pn144514 = phi { ptr, i32 } [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread ], [ %i.qj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @__cxa_free_exception(ptr %i.qe) #23
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %bb.ef, %bb.ed
  %.pn144.pn = phi { ptr, i32 } [ %.pn144514, %bb.ef ], [ %i.qj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.qh, %bb.ed ], [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ec
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %bb.eg ], [ %i.qg, %bb.ec ]
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
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371: ; preds = %bb.em, %exp2.i.noexc361, %exp2.1.i.noexc363, %exp2.2.i.noexc365, %exp2.3.i.noexc367
  %spec.select.i360 = phi i64 [ 8, %exp2.3.i.noexc367 ], [ 0, %exp2.i.noexc361 ], [ 2, %exp2.1.i.noexc363 ], [ 4, %exp2.2.i.noexc365 ], [ 8, %bb.em ]
  %i.qq = ptrtoint ptr %.sroa.17.0.ph.lcssa647944 to i64
  %i.qr = ptrtoint ptr %.sroa.0447.0.ph.lcssa629945 to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = ashr exact i64 %i.qs, 2                 ; 5 uses
  %i.qu = trunc i64 %i.qt to i32
  %i.qv = sdiv i32 %i.qu, 3
  %i.qw = invoke noundef i32 @_ZN16OpenColorIO_v2_528Get3DLutEdgeLenFromNumPixelsEi(i32 noundef %i.qv)
          to label %switch.lookup unwind label %bb.ew

switch.lookup:                                    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %spec.select.i360
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.qx = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc385 unwind label %bb.ey ; 6 uses

.noexc385:                                        ; preds = %switch.lookup
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i32 1, ptr %i.qy, align 8, !tbaa !67, !noalias !125
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  store i32 1, ptr %i.qz, align 4, !tbaa !69, !noalias !125
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qx, align 8, !tbaa !7, !noalias !125
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 2 uses
  %i.rb = sext i32 %i.qw to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.ra, i64 noundef %i.rb)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !125

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc385
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef 248) #24, !noalias !125
  br label %.body339

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc385
  %i.rd = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 4 uses
  store ptr %i.ra, ptr %i.rd, align 8, !tbaa !128
  %i.re = getelementptr inbounds nuw i8, ptr %i.kt, i64 32 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !83 ; 8 uses
  store ptr %i.qx, ptr %i.re, align 8, !tbaa !83
  %.not.i.i.i.i388 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i388, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 4 uses
  %i.rh = load atomic i64, ptr %i.rg acquire, align 8 ; 2 uses
  %i.ri = icmp eq i64 %i.rh, 4294967297
  %i.rj = trunc i64 %i.rh to i32                  ; 2 uses
  br i1 %i.ri, label %bb.ep, label %bb.eq
end_hunk_0
