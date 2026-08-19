inline.NumInlined: 965
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %exp2.i329 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc unwind label %bb.ds ; 0 uses

exp2.i.noexc:                                     ; preds = %bb.dn
  %.not.not.not.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 512
  br i1 %.not.not.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.do

bb.do:                                            ; preds = %exp2.i.noexc
  %exp2.1.i330 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc unwind label %bb.ds ; 0 uses

exp2.1.i.noexc:                                   ; preds = %bb.do
  %.not.not.not.1.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 2048
  br i1 %.not.not.not.1.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dp

bb.dp:                                            ; preds = %exp2.1.i.noexc
  %exp2.2.i331 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc unwind label %bb.ds ; 0 uses

exp2.2.i.noexc:                                   ; preds = %bb.dp
  %.not.not.not.2.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 8192
  br i1 %.not.not.not.2.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dq

bb.dq:                                            ; preds = %exp2.2.i.noexc
  %exp2.3.i332 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc unwind label %bb.ds ; 0 uses

exp2.3.i.noexc:                                   ; preds = %bb.dq
  %.not.not.not.3.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 32768
  br i1 %.not.not.not.3.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dr

bb.dr:                                            ; preds = %exp2.3.i.noexc
  %exp2.4.i333 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit unwind label %bb.ds ; 0 uses

bb.ds:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body356

_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit: ; preds = %exp2.i.noexc, %exp2.1.i.noexc, %exp2.2.i.noexc, %exp2.3.i.noexc, %bb.dr
  %.0.i = phi i32 [ 5, %bb.dr ], [ 3, %exp2.2.i.noexc ], [ 5, %exp2.3.i.noexc ], [ 2, %exp2.1.i.noexc ], [ 1, %exp2.i.noexc ] ; 3 uses
  %i.nd = ptrtoint ptr %.sroa.17.0.ph.lcssa620990 to i64
  %i.ne = ptrtoint ptr %.sroa.0486.0.ph.lcssa599991 to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 2 uses
  %i.ng = lshr i64 %i.nf, 2                       ; 2 uses
  %i.nh = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef range(i32 1, 6) %.0.i)
          to label %.noexc354 unwind label %bb.ds

.noexc354:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit
  %i.ni = trunc i64 %i.ng to i32                  ; 2 uses
  %i.nj = fptrunc double %i.nh to float
  %i.nk = uitofp i32 %i.ni to float
  %i.nl = fadd float %i.nk, -1.000000e+00
  %i.nm = fdiv float %i.nj, %i.nl
  %.not13.i = icmp eq i32 %i.ni, 0
  br i1 %.not13.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc354
  %wide.trip.count.i = and i64 %i.ng, 4294967295
  br label %bb.du

bb.dt:                                            ; preds = %bb.du
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %bb.du, !llvm.loop !79

bb.du:                                            ; preds = %bb.dt, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.dt ] ; 3 uses
  %i.nn = trunc nuw i64 %indvars.iv.i to i32
  %i.no = uitofp i32 %i.nn to float
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0486.0.ph.lcssa599991, i64 %indvars.iv.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !65
  %i.nr = sitofp i32 %i.nq to float
  %i.ns = fneg float %i.nr
  %i.nt = call float @llvm.fmuladd.f32(float %i.no, float %i.nm, float %i.ns)
  %i.nu = call noundef float @llvm.fabs.f32(float %i.nt)
  %i.nv = fcmp ult float %i.nu, 2.000000e+00
  br i1 %i.nv, label %bb.dt, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit: ; preds = %bb.du
  %i.nw = ashr exact i64 %i.nf, 2                 ; 6 uses
  %i.nx = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #22
          to label %.noexc355 unwind label %bb.ed ; 6 uses

.noexc355:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i32 1, ptr %i.ny, align 8, !tbaa !69, !noalias !80
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 1, ptr %i.nz, align 4, !tbaa !71, !noalias !80
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nx, align 8, !tbaa !8, !noalias !80
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.oa, i64 noundef %i.nw)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !80

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc355
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef 384) #24, !noalias !80
  br label %.body356

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc355
  store ptr %i.oa, ptr %i.lf, align 8, !tbaa !83
  %i.oc = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !85 ; 8 uses
  store ptr %i.nx, ptr %i.oc, align 8, !tbaa !85
  %.not.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 4 uses
  %i.of = load atomic i64, ptr %i.oe acquire, align 8 ; 2 uses
  %i.og = icmp eq i64 %i.of, 4294967297
  %i.oh = trunc i64 %i.of to i32                  ; 2 uses
  br i1 %i.og, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.oe, align 8, !tbaa !69
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  store i32 0, ptr %i.oi, align 4, !tbaa !71
  %i.oj = load ptr, ptr %i.od, align 8, !tbaa !8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #23, !inline_history !88
  %i.om = load ptr, ptr %i.od, align 8, !tbaa !8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #23, !inline_history !88
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dx:                                            ; preds = %bb.dv
  %i.op = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i358 = icmp eq i8 %i.op, 0
  br i1 %.not.i.i.i.i.i358, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oq = add nsw i32 %i.oh, -1
  store i32 %i.oq, ptr %i.oe, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.or = atomicrmw volatile add ptr %i.oe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i.i.i = phi i32 [ %i.oh, %bb.dy ], [ %i.or, %bb.dz ]
  %i.os = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.os, label %bb.ea, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !89

bb.ea:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dw, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.ot = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.ot, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.ou = load ptr, ptr %i.lf, align 8, !tbaa !90
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.ou, i32 noundef %4)
          to label %bb.ef unwind label %bb.ee

bb.ed:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.ee:                                            ; preds = %bb.ec, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.ef:                                            ; preds = %bb.ec, %bb.eb
  %i.ox = load ptr, ptr %i.lf, align 8, !tbaa !90
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 360
  store i32 %.0.i, ptr %i.oy, align 8, !tbaa !92
  %i.oz = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i)
          to label %.preheader.lr.ph unwind label %bb.eg

.preheader.lr.ph:                                 ; preds = %bb.ef
  %i.pa = fptrunc double %i.oz to float           ; 2 uses
  %i.pb = load ptr, ptr %i.lf, align 8, !tbaa !90
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 200
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !122 ; 4 uses
  %min.iters.check1287 = icmp ult i64 %i.nw, 4
  br i1 %min.iters.check1287, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.lr.ph
  %i.pe = add nsw i64 %i.nw, -1                   ; 2 uses
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = icmp ugt i32 %i.pf, 1431655764
  %i.ph = icmp ugt i64 %i.pe, 4294967295
  %i.pi = or i1 %i.pg, %i.ph
  br i1 %i.pi, label %.preheader.preheader, label %vector.ph1288

vector.ph1288:                                    ; preds = %vector.scevcheck
  %n.vec1289 = and i64 %i.nw, 8589934588          ; 4 uses
  %i.pj = trunc i64 %n.vec1289 to i32             ; 2 uses
  %i.pk = mul i32 %i.pj, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.pa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1288
  %index1291 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1293, %vector.body1290 ] ; 3 uses
  %i.pl = mul i64 %index1291, 3
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0486.0.ph.lcssa599991, i64 %index1291
  %wide.load1292 = load <4 x i32>, ptr %i.pm, align 4, !tbaa !65
  %i.pn = sitofp <4 x i32> %wide.load1292 to <4 x float>
  %i.po = fdiv <4 x float> %i.pn, %broadcast.splat
  %i.pp = and i64 %i.pl, 4294967292
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pp
  %interleaved.vec = shufflevector <4 x float> %i.po, <4 x float> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3>
  store <12 x float> %interleaved.vec, ptr %i.pq, align 4, !tbaa !123
  %index.next1293 = add nuw i64 %index1291, 4     ; 2 uses
  %i.pr = icmp eq i64 %index.next1293, %n.vec1289
  br i1 %i.pr, label %middle.block1294, label %vector.body1290, !llvm.loop !125

middle.block1294:                                 ; preds = %vector.body1290
  %cmp.n1295 = icmp eq i64 %i.nw, %n.vec1289
  br i1 %cmp.n1295, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %.preheader.lr.ph, %middle.block1294
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec1289, %middle.block1294 ]
  %.055752.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.pk, %middle.block1294 ]
  %.057751.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.pj, %middle.block1294 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %25, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ]
  %.055752 = phi i32 [ %i.qe, %.preheader ], [ %.055752.ph, %.preheader.preheader ] ; 4 uses
  %.055752.a = phi i32 [ %24, %.preheader ], [ %.057751.ph, %.preheader.preheader ]
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0486.0.ph.lcssa599991, i64 %indvars.iv
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !65
  %i.pu = sitofp i32 %i.pt to float
  %i.pv = fdiv float %i.pu, %i.pa                 ; 3 uses
  %i.pw = zext i32 %.055752 to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pw
  store float %i.pv, ptr %i.px, align 4, !tbaa !123
  %i.py = add i32 %.055752, 1
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pz
  store float %i.pv, ptr %i.qa, align 4, !tbaa !123
  %i.qb = add i32 %.055752, 2
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qc
  store float %i.pv, ptr %i.qd, align 4, !tbaa !123
  %i.qe = add i32 %.055752, 3
  %24 = add i32 %.055752.a, 1                     ; 2 uses
  %25 = zext i32 %24 to i64                       ; 2 uses
  %i.qf = icmp ugt i64 %i.nw, %25
  br i1 %i.qf, label %.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, !llvm.loop !126

bb.eg:                                            ; preds = %bb.ef
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %.body356

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread: ; preds = %bb.dt, %.preheader, %middle.block1294, %.noexc354, %bb.da
  br i1 %i.kj, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  %i.qh = icmp slt i32 %.0508.ph.lcssa635989, 128
  br i1 %i.qh, label %bb.ei, label %bb.et

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %22)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.20, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361: ; preds = %bb.ej
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.21, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0508.ph.lcssa635989)
          to label %bb.ek unwind label %bb.eo     ; 0 uses

bb.ek:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.14, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365: ; preds = %bb.ek
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.15, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.16, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367
  %i.qo = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(112) %22)
          to label %bb.el unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread

bb.el:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369
  %i.qp = load ptr, ptr %23, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qo, ptr noundef %i.qp)
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  invoke void @__cxa_throw(ptr nonnull %i.qo, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.ep

bb.en:                                            ; preds = %bb.ei
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365, %bb.ek, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361, %bb.ej, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.eq

bb.ep:                                            ; preds = %bb.em, %bb.el
  %.052 = phi i1 [ false, %bb.em ], [ true, %bb.el ] ; 2 uses
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qu = load ptr, ptr %23, align 8, !tbaa !27   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %bb.ep
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !17
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %.052, label %bb.eq, label %bb.er

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %.052, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %.pn150536 = phi { ptr, i32 } [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread ], [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %i.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ]
  call void @__cxa_free_exception(ptr %i.qo) #23
  br label %bb.er

bb.er:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %bb.eq, %bb.eo
  %.pn150.pn = phi { ptr, i32 } [ %.pn150536, %bb.eq ], [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %i.qr, %bb.eo ], [ %i.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %22) #23
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn, %bb.er ], [ %i.qq, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.body356

bb.et:                                            ; preds = %bb.eh
  %exp2.i379 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc378 unwind label %bb.ey ; 0 uses

exp2.i.noexc378:                                  ; preds = %bb.et
  %.not.not.not.i373 = icmp samesign ult i32 %.0508.ph.lcssa635989, 512
  br i1 %.not.not.not.i373, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.eu

bb.eu:                                            ; preds = %exp2.i.noexc378
  %exp2.1.i381 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc380 unwind label %bb.ey ; 0 uses

exp2.1.i.noexc380:                                ; preds = %bb.eu
  %.not.not.not.1.i374 = icmp samesign ult i32 %.0508.ph.lcssa635989, 2048
  br i1 %.not.not.not.1.i374, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.ev

bb.ev:                                            ; preds = %exp2.1.i.noexc380
  %exp2.2.i383 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc382 unwind label %bb.ey ; 0 uses

exp2.2.i.noexc382:                                ; preds = %bb.ev
  %.not.not.not.2.i375 = icmp samesign ult i32 %.0508.ph.lcssa635989, 8192
  br i1 %.not.not.not.2.i375, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.ew

bb.ew:                                            ; preds = %exp2.2.i.noexc382
  %exp2.3.i385 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc384 unwind label %bb.ey ; 0 uses

exp2.3.i.noexc384:                                ; preds = %bb.ew
  %.not.not.not.3.i376 = icmp samesign ult i32 %.0508.ph.lcssa635989, 32768
  br i1 %.not.not.not.3.i376, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.ex

bb.ex:                                            ; preds = %exp2.3.i.noexc384
  %exp2.4.i387 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388 unwind label %bb.ey ; 0 uses

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body356

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388: ; preds = %bb.ex, %exp2.i.noexc378, %exp2.1.i.noexc380, %exp2.2.i.noexc382, %exp2.3.i.noexc384
  %spec.select.i377 = phi i64 [ 8, %exp2.3.i.noexc384 ], [ 0, %exp2.i.noexc378 ], [ 2, %exp2.1.i.noexc380 ], [ 4, %exp2.2.i.noexc382 ], [ 8, %bb.ex ]
  %i.ra = ptrtoint ptr %.sroa.18.0.ph.lcssa669986 to i64
  %i.rb = ptrtoint ptr %.sroa.0464.0.ph.lcssa684984 to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 2                 ; 5 uses
  %i.re = trunc i64 %i.rd to i32
  %i.rf = sdiv i32 %i.re, 3
  %i.rg = invoke noundef i32 @_ZN16OpenColorIO_v2_528Get3DLutEdgeLenFromNumPixelsEi(i32 noundef %i.rf)
          to label %switch.lookup unwind label %bb.fh

switch.lookup:                                    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %spec.select.i377
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.rh = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc402 unwind label %bb.fj ; 6 uses

.noexc402:                                        ; preds = %switch.lookup
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i32 1, ptr %i.ri, align 8, !tbaa !69, !noalias !127
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 1, ptr %i.rj, align 4, !tbaa !71, !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.rh, align 8, !tbaa !8, !noalias !127
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 16 ; 2 uses
  %i.rl = sext i32 %i.rg to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.rk, i64 noundef %i.rl)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !127

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc402
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef 248) #24, !noalias !127
  br label %.body356

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc402
  %i.rn = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 4 uses
  store ptr %i.rk, ptr %i.rn, align 8, !tbaa !130
  %i.ro = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !85 ; 8 uses
  store ptr %i.rh, ptr %i.ro, align 8, !tbaa !85
  %.not.i.i.i.i405 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i405, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 4 uses
  %i.rr = load atomic i64, ptr %i.rq acquire, align 8 ; 2 uses
  %i.rs = icmp eq i64 %i.rr, 4294967297
  %i.rt = trunc i64 %i.rr to i32                  ; 2 uses
  br i1 %i.rs, label %bb.fa, label %bb.fb
end_hunk_0
