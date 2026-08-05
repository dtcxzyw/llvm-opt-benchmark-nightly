inline.NumInlined: 1707
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_114findHeaderItemERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EESt4lessIS7_ESaISt4pairIKS7_SA_EEES7_jj:bb.a
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.t
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #27
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.s
  %i.cg = phi ptr [ null, %bb.s ], [ %i.cf, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !71
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.at
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !75
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aq, ptr %i.ap, ptr noundef %i.cg)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i43, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.at) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.r, %bb.v, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %bb.v ], [ %i.cl, %bb.w ], [ %.pn26.pn, %bb.i ], [ %.pn.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.u
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !73
  ret void

bb.x:                                             ; preds = %bb.o, %bb.e
  unreachable
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !188
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !188
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut3DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef) local_unnamed_addr #6

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232), i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDL8setLUT1DERKSt6vectorIfSaIfEENS_13InterpolationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !138    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 8 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27, !noalias !189 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !42, !noalias !189
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !44, !noalias !189
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !11, !noalias !189
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.k, i64 noundef %i.g)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !189

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 384) #28, !noalias !189
  resume { ptr, i32 } %i.l

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 8 uses
  store ptr %i.h, ptr %i.n, align 8, !tbaa !97
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !44
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !193
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !193
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.ae = tail call noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %2)
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !166
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.af, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !166 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  store i32 8, ptr %i.ah, align 8, !tbaa !194
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !138   ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !138 ; 10 uses
  %min.iters.check = icmp ult i64 %i.g, 44
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.al = add nsw i64 %i.g, -1                    ; 3 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 12) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.am = getelementptr i8, ptr %i.ak, i64 %mul.result
  %i.an = icmp ult ptr %i.am, %i.ak
  %3 = or i1 %i.an, %mul.overflow
  %scevgep = getelementptr i8, ptr %i.ak, i64 4   ; 2 uses
  %mul20 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 12) ; 2 uses
  %mul.result21 = extractvalue { i64, i1 } %mul20, 0
  %mul.overflow22 = extractvalue { i64, i1 } %mul20, 1
  %i.ao = getelementptr i8, ptr %scevgep, i64 %mul.result21
  %i.ap = icmp ult ptr %i.ao, %scevgep
  %4 = or i1 %i.ap, %mul.overflow22
  %scevgep23 = getelementptr i8, ptr %i.ak, i64 8 ; 2 uses
  %mul24 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 12) ; 2 uses
  %mul.result25 = extractvalue { i64, i1 } %mul24, 0
  %mul.overflow26 = extractvalue { i64, i1 } %mul24, 1
  %i.aq = getelementptr i8, ptr %scevgep23, i64 %mul.result25
  %i.ar = icmp ult ptr %i.aq, %scevgep23
  %i.as = or i1 %i.ar, %mul.overflow26
  %i.at = or i1 %3, %4
  %i.au = or i1 %i.at, %i.as
  br i1 %i.au, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep27 = getelementptr i8, ptr %i.ai, i64 %i.f
  %i.av = mul i64 %i.g, 12
  %scevgep28 = getelementptr i8, ptr %i.ak, i64 %i.av
  %bound0 = icmp ult ptr %i.ai, %scevgep28
  %bound1 = icmp ult ptr %i.ak, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %wide.load = load <4 x float>, ptr %i.aw, align 4, !tbaa !39, !alias.scope !199, !noalias !202
  %i.ax = mul i64 %index, 12
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.ax
  %interleaved.vec = shufflevector <4 x float> %wide.load, <4 x float> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3>
  store <12 x float> %interleaved.vec, ptr %i.ay, align 4, !tbaa !39, !alias.scope !202
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.019.ph, 1
  %i.ba = and i64 %i.f, 4
  %lcmp.mod.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.019.ph ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39 ; 2 uses
  %.idx.prol = mul i64 %.019.ph, 12
  %i.bd = getelementptr i8, ptr %i.ak, i64 %.idx.prol ; 3 uses
  store float %i.bc, ptr %i.bd, align 4, !tbaa !39
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  store float %i.bc, ptr %i.be, align 4, !tbaa !39
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  store float %i.bf, ptr %i.bg, align 4, !tbaa !39
  %i.bh = or disjoint i64 %.019.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.019.unr = phi i64 [ %.019.ph, %scalar.ph.preheader ], [ %i.bh, %scalar.ph.prol ]
  %i.bi = icmp eq i64 %i.g, %.neg
  br i1 %i.bi, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.i
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.019 = phi i64 [ %i.bw, %scalar.ph ], [ %.019.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.019 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !39 ; 2 uses
  %.idx = mul i64 %.019, 12
  %i.bl = getelementptr i8, ptr %i.ak, i64 %.idx  ; 3 uses
  store float %i.bk, ptr %i.bl, align 4, !tbaa !39
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  store float %i.bk, ptr %i.bm, align 4, !tbaa !39
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !39
  %i.bo = getelementptr i8, ptr %i.bl, i64 8
  store float %i.bn, ptr %i.bo, align 4, !tbaa !39
  %i.bp = add nuw i64 %.019, 1                    ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bp ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !39 ; 2 uses
  %.idx.1 = mul i64 %i.bp, 12
  %i.bs = getelementptr i8, ptr %i.ak, i64 %.idx.1 ; 3 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !39
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  store float %i.br, ptr %i.bt, align 4, !tbaa !39
  %i.bu = load float, ptr %i.bq, align 4, !tbaa !39
  %i.bv = getelementptr i8, ptr %i.bs, i64 8
  store float %i.bu, ptr %i.bv, align 4, !tbaa !39
  %i.bw = add nuw i64 %.019, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bw, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !205
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData27setArrayFromRedFastestOrderERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIfSaIfEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIfSaIfEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !44
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #26, !inline_history !188
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #26, !inline_history !188
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
