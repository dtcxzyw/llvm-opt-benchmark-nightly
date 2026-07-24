inline.NumInlined: 455
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

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
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !31 ; 7 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !tbaa !136 ; 12 uses
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.rw, i32 0)
  %i.se = sext i32 %.sroa.speculated.us.us to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.se
  %wide.trip.count188 = zext nneg i32 %i.pz to i64 ; 5 uses
  %.pre192 = load ptr, ptr %i.sf, align 8, !tbaa !35 ; 5 uses
  %.sroa.speculated.us.us.1 = call i32 @llvm.smin.i32(i32 %i.rw, i32 1)
  %i.sg = sext i32 %.sroa.speculated.us.us.1 to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !35 ; 5 uses
  %.sroa.speculated.us.us.2 = call i32 @llvm.smin.i32(i32 %i.rw, i32 2)
  %i.sj = sext i32 %.sroa.speculated.us.us.2 to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !35 ; 5 uses
  br i1 %i.rz, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %wide.trip.count188, 1
  %i.sm = icmp eq i32 %i.pz, 1
  br i1 %i.sm, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter = and i64 %wide.trip.count188, 2147483646
  br label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check305 = icmp ult i32 %i.pz, 4
  br i1 %min.iters.check305, label %.preheader.preheader322, label %vector.ph306

vector.ph306:                                     ; preds = %.preheader.preheader
  %n.vec308 = and i64 %wide.trip.count188, 2147483644 ; 4 uses
  %i.sn = mul nuw nsw i64 %n.vec308, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.rt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body309 ] ; 5 uses
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %index310
  %wide.load311 = load <4 x i16>, ptr %i.so, align 2, !tbaa !37
  %i.sp = uitofp <4 x i16> %wide.load311 to <4 x float>
  %i.sq = fdiv <4 x float> %i.sp, %broadcast.splat
  %.idx = mul nuw i64 %index310, 12
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %index310
  %wide.load312 = load <4 x i16>, ptr %i.ss, align 2, !tbaa !37
  %i.st = uitofp <4 x i16> %wide.load312 to <4 x float>
  %i.su = fdiv <4 x float> %i.st, %broadcast.splat
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index310
  %wide.load313 = load <4 x i16>, ptr %i.sv, align 2, !tbaa !37
  %i.sw = uitofp <4 x i16> %wide.load313 to <4 x float>
  %i.sx = fdiv <4 x float> %i.sw, %broadcast.splat
  %i.sy = shufflevector <4 x float> %i.sq, <4 x float> %i.su, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sz = shufflevector <4 x float> %i.sx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.sy, <8 x float> %i.sz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.sr, align 4, !tbaa !137
  %index.next314 = add nuw i64 %index310, 4       ; 2 uses
  %i.ta = icmp eq i64 %index.next314, %n.vec308
  br i1 %i.ta, label %middle.block315, label %vector.body309, !llvm.loop !139

middle.block315:                                  ; preds = %vector.body309
  %cmp.n316 = icmp eq i64 %n.vec308, %wide.trip.count188
  br i1 %cmp.n316, label %.preheader13.i.i, label %.preheader.preheader322

.preheader.preheader322:                          ; preds = %.preheader.preheader, %middle.block315
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec308, %middle.block315 ]
  %.026161.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.sn, %middle.block315 ]
  %i.tb = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.tc = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv185 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next186.1, %.preheader.us ] ; 5 uses
  %.026161.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next182.2.1, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter.next.1, %.preheader.us ]
  %i.td = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv185
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !37
  %i.tg = zext i16 %i.tf to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tg
  %i.ti = load float, ptr %i.th, align 4, !tbaa !16
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us
  store float %i.ti, ptr %i.tj, align 4, !tbaa !137
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv185
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !37
  %i.tm = zext i16 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tm
  %i.to = load float, ptr %i.tn, align 4, !tbaa !16
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  store float %i.to, ptr %i.tq, align 4, !tbaa !137
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv185
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !37
  %i.tt = zext i16 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !16
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  store float %i.tv, ptr %i.tx, align 4, !tbaa !137
  %indvars.iv.next182.2 = add nuw nsw i64 %.026161.us, 3 ; 3 uses
  %indvars.iv.next186 = or disjoint i64 %indvars.iv185, 1 ; 3 uses
  %i.ty = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv.next186
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !37
  %i.ub = zext i16 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.ub
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !16
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next182.2
  store float %i.ud, ptr %i.ue, align 4, !tbaa !137
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv.next186
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !37
  %i.uh = zext i16 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.uh
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !16
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next182.2
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  store float %i.uj, ptr %i.ul, align 4, !tbaa !137
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv.next186
  %i.un = load i16, ptr %i.um, align 2, !tbaa !37
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.uo
  %i.uq = load float, ptr %i.up, align 4, !tbaa !16
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next182.2
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store float %i.uq, ptr %i.us, align 4, !tbaa !137
  %indvars.iv.next182.2.1 = add nuw nsw i64 %.026161.us, 6 ; 2 uses
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader13.i.i.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !140

.preheader:                                       ; preds = %.preheader.preheader322, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next179, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader322 ] ; 4 uses
  %.026161 = phi i64 [ %indvars.iv.next.2, %.preheader ], [ %.026161.ph, %.preheader.preheader322 ] ; 3 uses
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !37
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !37
  %i.uy = insertelement <2 x i16> poison, i16 %i.uu, i64 0
  %i.uz = insertelement <2 x i16> %i.uy, i16 %i.ux, i64 1
  %i.va = uitofp <2 x i16> %i.uz to <2 x float>
  %i.vb = fdiv <2 x float> %i.va, %i.tc
  store <2 x float> %i.vb, ptr %i.uv, align 4, !tbaa !137
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !37
  %i.ve = uitofp i16 %i.vd to float
  %i.vf = fdiv float %i.ve, %i.rt
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store float %i.vf, ptr %i.vh, align 4, !tbaa !137
  %indvars.iv.next.2 = add nuw nsw i64 %.026161, 3
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count188
  br i1 %exitcond.not, label %.preheader13.i.i, label %.preheader, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.dz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.pre193 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %.not.i.i85 = icmp eq ptr %.pre193, null
  br i1 %.not.i.i85, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.preheader13.i.i

.preheader13.i.i.loopexit.unr-lcssa:              ; preds = %.preheader.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader13.i.i, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.preheader13.i.i.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv185.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next186.1, %.preheader13.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.026161.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next182.2.1, %.preheader13.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod338 = trunc i32 %i.pz to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.vi = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv185.epil.init
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !37
  %i.vl = zext i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vl
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !16
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us.epil.init
  store float %i.vn, ptr %i.vo, align 4, !tbaa !137
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv185.epil.init
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !37
  %i.vr = zext i16 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vr
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !16
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us.epil.init
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store float %i.vt, ptr %i.vv, align 4, !tbaa !137
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv185.epil.init
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !37
  %i.vy = zext i16 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vy
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !16
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us.epil.init
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store float %i.wa, ptr %i.wc, align 4, !tbaa !137
  br label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %.preheader, %.preheader.us.epil.preheader, %.preheader13.i.i.loopexit.unr-lcssa, %middle.block315, %._crit_edge
  %i.wd = phi ptr [ %.pre193, %._crit_edge ], [ %i.sc, %middle.block315 ], [ %i.sc, %.preheader.us.epil.preheader ], [ %i.sc, %.preheader13.i.i.loopexit.unr-lcssa ], [ %i.sc, %.preheader ]
  %i.we = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.wf = icmp sgt i32 %i.ru, 0
  br i1 %i.wf, label %.lr.ph18.i.i, label %._crit_edge19.i.i

._crit_edge19.loopexit.i.i:                       ; preds = %bb.eb
  %.pre25.i.i = load ptr, ptr %i.we, align 8, !tbaa !31
  br label %._crit_edge19.i.i

._crit_edge19.i.i:                                ; preds = %._crit_edge19.loopexit.i.i, %.preheader13.i.i
  %i.wg = phi ptr [ %.pre25.i.i, %._crit_edge19.loopexit.i.i ], [ %i.wd, %.preheader13.i.i ]
  call void @free(ptr noundef %i.wg) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph18.i.i:                                     ; preds = %.preheader13.i.i, %bb.eb
  %i.wh = phi i32 [ %i.wq, %bb.eb ], [ %i.ru, %.preheader13.i.i ] ; 2 uses
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %bb.eb ], [ 0, %.preheader13.i.i ] ; 6 uses
  %i.wi = load ptr, ptr %i.we, align 8, !tbaa !31 ; 2 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv22.i.i
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !35 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.wk, null
  br i1 %.not12.i.i, label %bb.eb, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph18.i.i
  %.not20.i.i = icmp eq i64 %indvars.iv22.i.i, 0
  br i1 %.not20.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.preheader.i.i, %bb.ea
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ea ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv.i.i
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !35
  %i.wn = icmp eq ptr %i.wm, %i.wk
  br i1 %i.wn, label %._crit_edge.i.i, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i86
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv22.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i86, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %bb.ea, %.lr.ph.i.i86
  %.0.lcssa.ph.in.i.i = phi i64 [ %indvars.iv22.i.i, %bb.ea ], [ %indvars.iv.i.i, %.lr.ph.i.i86 ]
  %i.wo = and i64 %.0.lcssa.ph.in.i.i, 4294967295
  %i.wp = icmp eq i64 %i.wo, %indvars.iv22.i.i
  br i1 %i.wp, label %._crit_edge.thread.i.i, label %bb.eb

end_hunk_0
