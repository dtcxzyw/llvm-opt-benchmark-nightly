inline.NumInlined: 455
inline.NumDeleted: 214
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.df, %bb.db
  %.pn39.pn = phi { ptr, i32 } [ %.pn39133, %bb.df ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.pi, %bb.db ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #26
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.dg ], [ %i.ph, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit: ; preds = %bb.cr
  %i.ps = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !85
  %switch.selectcmp135 = icmp eq i32 %i.pt, -16
  %switch.select136 = zext i1 %switch.selectcmp135 to i32
  %i.pu = getelementptr inbounds nuw i8, ptr %.1, i64 12 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !84
  %switch.tableidx326 = add i32 %i.pv, 32         ; 2 uses
  %i.pw = icmp ult i32 %switch.tableidx326, 49
  br i1 %i.pw, label %switch.lookup327, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

switch.lookup327:                                 ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  %i.px = zext nneg i32 %switch.tableidx326 to i64
  %switch.gep328 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE.12, i64 %i.px
  %switch.load329 = load i8, ptr %switch.gep328, align 1
  %switch.ext = zext i8 %switch.load329 to i32
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, %switch.lookup327
  %.0.i76 = phi i32 [ %switch.ext, %switch.lookup327 ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !86 ; 4 uses
  %i.qa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.di unwind label %bb.ec     ; 8 uses

bb.di:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.qa, align 8, !tbaa !7
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, i8 0, i64 16, i1 false)
  %i.qc = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25
          to label %.noexc.i78 unwind label %bb.dr ; 6 uses

.noexc.i78:                                       ; preds = %bb.di
  %i.qd = sext i32 %i.pz to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i32 1, ptr %i.qe, align 8, !tbaa !87, !noalias !89
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 12
  store i32 1, ptr %i.qf, align 4, !tbaa !92, !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qc, align 8, !tbaa !7, !noalias !89
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.qg, i32 noundef %switch.select136, i64 noundef range(i64 -2147483648, 2147483648) %i.qd, i1 noundef zeroext false)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !89

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc.i78
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef 384) #27, !noalias !89
  br label %.body.i

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i: ; preds = %.noexc.i78
  store ptr %i.qg, ptr %i.qb, align 8, !tbaa !93
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !95 ; 8 uses
  store ptr %i.qc, ptr %i.qi, align 8, !tbaa !95
  %.not.i.i.i.i.i79 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i.i.i79, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 4 uses
  %i.ql = load atomic i64, ptr %i.qk acquire, align 8 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 4294967297
  %i.qn = trunc i64 %i.ql to i32                  ; 2 uses
  br i1 %i.qm, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.qk, align 8, !tbaa !87
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 12
  store i32 0, ptr %i.qo, align 4, !tbaa !92
  %i.qp = load ptr, ptr %i.qj, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #26, !inline_history !98
  %i.qs = load ptr, ptr %i.qj, align 8, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #26, !inline_history !98
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.qv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.qv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qw = add nsw i32 %i.qn, -1
  store i32 %i.qw, ptr %i.qk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.qx = atomicrmw volatile add ptr %i.qk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.qn, %bb.dm ], [ %i.qx, %bb.dn ]
  %i.qy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.qy, label %bb.do, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !99

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dk, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qz = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  br i1 %i.qz, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.ra = load ptr, ptr %i.qb, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.ra, i32 noundef %4)
          to label %bb.dt unwind label %bb.ds

bb.dr:                                            ; preds = %bb.di
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ds:                                            ; preds = %bb.dq, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ds, %bb.dr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.rc, %bb.ds ], [ %i.rb, %bb.dr ], [ %i.qh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.qb) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef 24) #27
  br label %.body

bb.dt:                                            ; preds = %bb.dq, %bb.dp
  %i.rd = load ptr, ptr %i.qb, align 8, !tbaa !100
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 360
  store i32 %.0.i76, ptr %i.re, align 8, !tbaa !102
  %i.rf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.dy unwind label %bb.du     ; 6 uses

bb.du:                                            ; preds = %bb.dt
  %i.rg = landingpad { ptr, i32 }
          catch ptr null
  %i.rh = extractvalue { ptr, i32 } %i.rg, 0
  %i.ri = call ptr @__cxa_begin_catch(ptr %i.rh) #26 ; 0 uses
  %i.rj = load ptr, ptr %i.qa, align 8, !tbaa !7
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(24) %i.qa) #26, !inline_history !132
  invoke void @__cxa_rethrow() #29
          to label %bb.dx unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #31
  unreachable

bb.dx:                                            ; preds = %bb.du
  unreachable

bb.dy:                                            ; preds = %bb.dt
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i32 1, ptr %i.rp, align 8, !tbaa !87
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  store i32 1, ptr %i.rq, align 4, !tbaa !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.rf, align 8, !tbaa !7
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store ptr %i.qa, ptr %i.rr, align 8, !tbaa !133
  %i.rs = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i76)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.rt = fptrunc double %i.rs to float           ; 3 uses
  %i.ru = load i32, ptr %.1, align 8, !tbaa !71   ; 3 uses
  %i.rv = icmp sgt i32 %i.pz, 0
  br i1 %i.rv, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.dz
  %i.rw = add nsw i32 %i.ru, -1                   ; 3 uses
  %i.rx = load ptr, ptr %i.qb, align 8, !tbaa !100
  %i.ry = load i32, ptr %i.pu, align 4, !tbaa !84
  %i.rz = icmp eq i32 %i.ry, -16
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 200
  %i.sb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !31 ; 6 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !tbaa !136 ; 8 uses
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.rw, i32 0)
  %i.se = sext i32 %.sroa.speculated.us.us to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.se
  %wide.trip.count188 = zext nneg i32 %i.pz to i64 ; 5 uses
  %.pre192 = load ptr, ptr %i.sf, align 8, !tbaa !35 ; 3 uses
  %.sroa.speculated.us.us.1 = call i32 @llvm.smin.i32(i32 %i.rw, i32 1)
  %i.sg = sext i32 %.sroa.speculated.us.us.1 to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !35 ; 3 uses
  %.sroa.speculated.us.us.2 = call i32 @llvm.smin.i32(i32 %i.rw, i32 2)
  %i.sj = sext i32 %.sroa.speculated.us.us.2 to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !35 ; 3 uses
  br i1 %i.rz, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check313 = icmp ult i32 %i.pz, 4
  br i1 %min.iters.check313, label %.preheader.preheader330, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.sm = add nsw i64 %wide.trip.count188, -1     ; 4 uses
  %i.sn = trunc nsw i64 %i.sm to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.sn, i32 3) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.so = icmp slt i32 %mul.result, 0
  %i.sp = or i1 %i.so, %mul.overflow
  %i.sq = icmp ugt i64 %i.sm, 4294967295
  %20 = or i1 %i.sp, %i.sq
  %scevgep = getelementptr i8, ptr %i.sd, i64 4   ; 2 uses
  %mul306 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.sm, i64 12) ; 2 uses
  %mul.result307 = extractvalue { i64, i1 } %mul306, 0
  %mul.overflow308 = extractvalue { i64, i1 } %mul306, 1
  %21 = getelementptr i8, ptr %scevgep, i64 %mul.result307
  %22 = icmp ult ptr %21, %scevgep
  %23 = or i1 %22, %mul.overflow308
  %scevgep309 = getelementptr i8, ptr %i.sd, i64 8 ; 2 uses
  %mul310 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.sm, i64 12) ; 2 uses
  %mul.result311 = extractvalue { i64, i1 } %mul310, 0
  %mul.overflow312 = extractvalue { i64, i1 } %mul310, 1
  %24 = getelementptr i8, ptr %scevgep309, i64 %mul.result311
  %25 = icmp ult ptr %24, %scevgep309
  %26 = or i1 %25, %mul.overflow312
  %27 = or i1 %20, %23
  %i.sr = or i1 %27, %26
  br i1 %i.sr, label %.preheader.preheader330, label %vector.ph314

vector.ph314:                                     ; preds = %vector.scevcheck
  %n.vec316 = and i64 %wide.trip.count188, 2147483644 ; 4 uses
  %i.ss = mul nuw nsw i64 %n.vec316, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.rt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph314
  %index318 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body317 ] ; 5 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %index318
  %wide.load319 = load <4 x i16>, ptr %i.st, align 2, !tbaa !37
  %i.su = uitofp <4 x i16> %wide.load319 to <4 x float>
  %i.sv = fdiv <4 x float> %i.su, %broadcast.splat
  %.idx = mul i64 %index318, 12
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %index318
  %wide.load320 = load <4 x i16>, ptr %i.sx, align 2, !tbaa !37
  %i.sy = uitofp <4 x i16> %wide.load320 to <4 x float>
  %i.sz = fdiv <4 x float> %i.sy, %broadcast.splat
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index318
  %wide.load321 = load <4 x i16>, ptr %i.ta, align 2, !tbaa !37
  %i.tb = uitofp <4 x i16> %wide.load321 to <4 x float>
  %i.tc = fdiv <4 x float> %i.tb, %broadcast.splat
  %i.td = shufflevector <4 x float> %i.sv, <4 x float> %i.sz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.te = shufflevector <4 x float> %i.tc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.td, <8 x float> %i.te, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.sw, align 4, !tbaa !137
  %index.next322 = add nuw i64 %index318, 4       ; 2 uses
  %i.tf = icmp eq i64 %index.next322, %n.vec316
  br i1 %i.tf, label %middle.block323, label %vector.body317, !llvm.loop !139

middle.block323:                                  ; preds = %vector.body317
  %cmp.n324 = icmp eq i64 %n.vec316, %wide.trip.count188
  br i1 %cmp.n324, label %.preheader13.i.i, label %.preheader.preheader330

.preheader.preheader330:                          ; preds = %vector.scevcheck, %.preheader.preheader, %middle.block323
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.preheader ], [ %n.vec316, %middle.block323 ]
  %.026161.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.preheader ], [ %i.ss, %middle.block323 ]
  %i.tg = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %.026161.us = phi i64 [ %indvars.iv.next182.2, %.preheader.us ], [ 0, %.preheader.lr.ph ]
  %i.ti = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %sext265 = shl i64 %.026161.us, 32
  %i.tj = ashr exact i64 %sext265, 32             ; 4 uses
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv185
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !37
  %i.tm = zext i16 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.tm
  %i.to = load float, ptr %i.tn, align 4, !tbaa !16
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.tj
  store float %i.to, ptr %i.tp, align 4, !tbaa !137
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv185
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !37
  %i.ts = zext i16 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.ts
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !16
  %i.tv = getelementptr [4 x i8], ptr %i.sd, i64 %i.tj
  %i.tw = getelementptr i8, ptr %i.tv, i64 4
  store float %i.tu, ptr %i.tw, align 4, !tbaa !137
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv185
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !37
  %i.tz = zext i16 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.tz
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !16
  %i.uc = getelementptr [4 x i8], ptr %i.sd, i64 %i.tj
  %i.ud = getelementptr i8, ptr %i.uc, i64 8
  store float %i.ub, ptr %i.ud, align 4, !tbaa !137
  %indvars.iv.next182.2 = add nsw i64 %i.tj, 3
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.preheader13.i.i, label %.preheader.us, !llvm.loop !140

.preheader:                                       ; preds = %.preheader.preheader330, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next179, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader330 ] ; 4 uses
  %.026161 = phi i64 [ %indvars.iv.next.2, %.preheader ], [ %.026161.ph, %.preheader.preheader330 ]
  %sext = shl i64 %.026161, 32
  %i.ue = ashr exact i64 %sext, 32                ; 3 uses
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !37
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.ue
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !37
  %i.uk = insertelement <2 x i16> poison, i16 %i.ug, i64 0
  %i.ul = insertelement <2 x i16> %i.uk, i16 %i.uj, i64 1
  %i.um = uitofp <2 x i16> %i.ul to <2 x float>
  %i.un = fdiv <2 x float> %i.um, %i.th
  store <2 x float> %i.un, ptr %i.uh, align 4, !tbaa !137
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !37
  %i.uq = uitofp i16 %i.up to float
  %i.ur = fdiv float %i.uq, %i.rt
  %i.us = getelementptr [4 x i8], ptr %i.sd, i64 %i.ue
  %i.ut = getelementptr i8, ptr %i.us, i64 8
  store float %i.ur, ptr %i.ut, align 4, !tbaa !137
  %indvars.iv.next.2 = add nsw i64 %i.ue, 3
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count188
  br i1 %exitcond.not, label %.preheader13.i.i, label %.preheader, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.dz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.pre193 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %.not.i.i85 = icmp eq ptr %.pre193, null
  br i1 %.not.i.i85, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %.preheader, %.preheader.us, %middle.block323, %._crit_edge
  %i.uu = phi ptr [ %.pre193, %._crit_edge ], [ %i.sc, %middle.block323 ], [ %i.sc, %.preheader.us ], [ %i.sc, %.preheader ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.uw = icmp sgt i32 %i.ru, 0
  br i1 %i.uw, label %.lr.ph18.i.i, label %._crit_edge19.i.i

._crit_edge19.loopexit.i.i:                       ; preds = %bb.eb
  %.pre25.i.i = load ptr, ptr %i.uv, align 8, !tbaa !31
  br label %._crit_edge19.i.i

._crit_edge19.i.i:                                ; preds = %._crit_edge19.loopexit.i.i, %.preheader13.i.i
  %i.ux = phi ptr [ %.pre25.i.i, %._crit_edge19.loopexit.i.i ], [ %i.uu, %.preheader13.i.i ]
  call void @free(ptr noundef %i.ux) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph18.i.i:                                     ; preds = %.preheader13.i.i, %bb.eb
  %i.uy = phi i32 [ %i.vh, %bb.eb ], [ %i.ru, %.preheader13.i.i ] ; 2 uses
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %bb.eb ], [ 0, %.preheader13.i.i ] ; 6 uses
  %i.uz = load ptr, ptr %i.uv, align 8, !tbaa !31 ; 2 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv22.i.i
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !35 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.vb, null
  br i1 %.not12.i.i, label %bb.eb, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph18.i.i
  %.not20.i.i = icmp eq i64 %indvars.iv22.i.i, 0
  br i1 %.not20.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.preheader.i.i, %bb.ea
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ea ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv.i.i
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !35
  %i.ve = icmp eq ptr %i.vd, %i.vb
  br i1 %i.ve, label %._crit_edge.i.i, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i86
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv22.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i86, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %bb.ea, %.lr.ph.i.i86
  %.0.lcssa.ph.in.i.i = phi i64 [ %indvars.iv22.i.i, %bb.ea ], [ %indvars.iv.i.i, %.lr.ph.i.i86 ]
  %i.vf = and i64 %.0.lcssa.ph.in.i.i, 4294967295
  %i.vg = icmp eq i64 %i.vf, %indvars.iv22.i.i
  br i1 %i.vg, label %._crit_edge.thread.i.i, label %bb.eb

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.preheader.i.i
  call void @free(ptr noundef %i.vb) #26
  %.pre.i.i = load i32, ptr %.1, align 8, !tbaa !71
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.lr.ph18.i.i
  %i.vh = phi i32 [ %i.uy, %._crit_edge.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i ], [ %i.uy, %.lr.ph18.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.vi = sext i32 %i.vh to i64
  %i.vj = icmp slt i64 %indvars.iv.next23.i.i, %i.vi
  br i1 %i.vj, label %.lr.ph18.i.i, label %._crit_edge19.loopexit.i.i, !llvm.loop !73

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge19.i.i, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %.1, i64 noundef 24) #27
  store ptr %i.qa, ptr %0, align 8, !tbaa !142
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rf, ptr %i.vk, align 8, !tbaa !95
  %i.vl = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.v
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.vn = load i64, ptr %i.v, align 8, !tbaa !16
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.vp = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.t
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.vr = load i64, ptr %i.t, align 8, !tbaa !16
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.vt = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.r
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_510CachedFile11getCDLGroupEv:bb.a
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.24)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(364) %i.a) #26, !inline_history !175
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !178
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #19 align 2 {
bb.a:
  ret ptr null
}

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511HandleLUT1DERKSt10shared_ptrINS_11Lut1DOpDataEENS_13InterpolationERb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_530LogWarningInterpolationNotUsedENS_13InterpolationERKNS_13FileTransformE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !19, i64 64}
!18 = !{!"_ZTSN16OpenColorIO_v2_510FormatInfoE", !14, i64 0, !14, i64 32, !19, i64 64, !20, i64 68}
!19 = !{!"_ZTSN16OpenColorIO_v2_521FormatCapabilityFlagsE", !5, i64 0}
!20 = !{!"_ZTSN16OpenColorIO_v2_515FormatBakeFlagsE", !5, i64 0}
!21 = !{!18, !20, i64 68}
!22 = !{!23, !24, i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 _ZTSN16OpenColorIO_v2_510FormatInfoE", !12, i64 0}
!25 = !{!23, !24, i64 16}
!26 = !{!14, !11, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructE", !12, i64 0}
!29 = !{!15, !15, i64 0}
!30 = !{!11, !11, i64 0}
!31 = !{!32, !33, i64 16}
!32 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructE", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 12, !33, i64 16}
!33 = !{!"p2 short", !34, i64 0}
!34 = !{!"any p2 pointer", !12, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 short", !12, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!41 = distinct !{!41, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!42 = !{!43, !45, i64 32}
!43 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !46, i64 40, !47, i64 48, !5, i64 64, !4, i64 192, !48, i64 200, !49, i64 208}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!46 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!47 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !15, i64 8}
!48 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!49 = !{!"_ZTSSt6locale", !50, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!51 = !{!52, !56, i64 240}
!52 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !43, i64 0, !53, i64 216, !5, i64 224, !54, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!53 = !{!"p1 _ZTSSo", !12, i64 0}
!54 = !{!"bool", !5, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!59 = !{!60, !5, i64 56}
!60 = !{!"_ZTSSt5ctypeIcE", !61, i64 0, !62, i64 16, !54, i64 24, !63, i64 32, !63, i64 40, !36, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!61 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!62 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!63 = !{!"p1 int", !12, i64 0}
!64 = distinct !{null}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = !{!32, !4, i64 0}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !66}
!74 = distinct !{!74, !66}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!77 = distinct !{!77, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!78 = distinct !{!78, !66, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 8, i32 24}
!82 = distinct !{!82, !66, !79, !80}
!83 = distinct !{!83, !66, !80, !79}
!84 = !{!32, !5, i64 12}
!85 = !{!32, !5, i64 8}
!86 = !{!32, !4, i64 4}
!87 = !{!88, !4, i64 8}
!88 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!92 = !{!88, !4, i64 12}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !12, i64 0}
!95 = !{!96, !97, i64 0}
!96 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !97, i64 0}
!97 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!98 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!99 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!100 = !{!101, !94, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !96, i64 8}
!102 = !{!103, !131, i64 360}
!103 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !104, i64 0, !119, i64 168, !120, i64 176, !128, i64 224, !129, i64 228, !130, i64 232, !5, i64 240, !131, i64 360}
!104 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !105, i64 8, !107, i64 48}
!105 = !{!"_ZTSSt5mutex", !106, i64 0}
!106 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!107 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !108, i64 0, !14, i64 8, !14, i64 40, !109, i64 72, !114, i64 96}
!108 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!109 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !12, i64 0}
!114 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!118 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !12, i64 0}
!119 = !{!"_ZTSN16OpenColorIO_v2_513InterpolationE", !5, i64 0}
!120 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayE", !121, i64 0}
!121 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !122, i64 0, !15, i64 8, !15, i64 16, !123, i64 24}
!122 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!123 = !{!"_ZTSSt6vectorIfSaIfEE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"p1 float", !12, i64 0}
!128 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData9HalfFlagsE", !5, i64 0}
!129 = !{!"_ZTSN16OpenColorIO_v2_514Lut1DHueAdjustE", !5, i64 0}
!130 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!131 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !5, i64 0}
!132 = distinct !{null, null, null, null}
!133 = !{!134, !135, i64 16}
!134 = !{!"_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0, !135, i64 16}
!135 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE", !12, i64 0}
!136 = !{!126, !127, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !5, i64 0}
!139 = distinct !{!139, !66, !79, !80}
!140 = distinct !{!140, !66}
!141 = distinct !{!141, !66, !79}
!142 = !{!143, !144, i64 0}
!143 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EE", !144, i64 0, !96, i64 8}
!144 = !{!"p1 _ZTSN16OpenColorIO_v2_510CachedFileE", !12, i64 0}
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileENS0_10CachedFileEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!147 = distinct !{!147, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileENS0_10CachedFileEESt10shared_ptrIT_ERKS4_IT0_E"}
!148 = distinct !{!148, !149, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!149 = distinct !{!149, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E"}
!150 = !{!54, !54, i64 0}
!151 = !{i8 0, i8 2}
!152 = !{}
!153 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!154 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!155 = !{!23, !24, i64 0}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!161 = !{!157, !160}
end_hunk_1
