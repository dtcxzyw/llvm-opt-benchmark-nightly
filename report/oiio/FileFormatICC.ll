inline.NumInlined: 1370
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  store ptr %i.jg, ptr %11, align 8, !tbaa !53
  %i.jh = load i64, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  store i64 %i.jh, ptr %i.jf, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.jg, ptr noundef nonnull align 1 dereferenceable(57) @.str.30, i64 57, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !42
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jh
  store i8 0, ptr %i.jj, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable273 unwind label %bb.br

.unreachable273:                                  ; preds = %.noexc216
  unreachable

bb.bq:                                            ; preds = %.noexc.i215
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

bb.br:                                            ; preds = %.noexc216
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.jf
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.br
  %i.jo = load i64, ptr %i.jf, align 8, !tbaa !7
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221, %bb.bq
  %.pn169 = phi { ptr, i32 } [ %i.jk, %bb.bq ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221 ], [ %i.jl, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body

bb.bs:                                            ; preds = %bb.bp
  switch i64 %i.iq, label %bb.bw [
    i64 0, label %.noexc.i225
    i64 1, label %bb.bv
  ]

.noexc.i225:                                      ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.jq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.jq, ptr %12, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 37, ptr %i.a, align 8, !tbaa !64
  %i.jr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc226 unwind label %bb.bt ; 3 uses

.noexc226:                                        ; preds = %.noexc.i225
  store ptr %i.jr, ptr %12, align 8, !tbaa !53
  %i.js = load i64, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.jr, ptr noundef nonnull align 1 dereferenceable(37) @.str.31, i64 37, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !42
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.js
  store i8 0, ptr %i.ju, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable274 unwind label %bb.bu

.unreachable274:                                  ; preds = %.noexc226
  unreachable

bb.bt:                                            ; preds = %.noexc.i225
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.bu:                                            ; preds = %.noexc226
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %12, align 8, !tbaa !53   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.jq
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.bu
  %i.jz = load i64, ptr %i.jq, align 8, !tbaa !7
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.bt
  %.pn171 = phi { ptr, i32 } [ %i.jv, %bb.bt ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.jw, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.body

bb.bv:                                            ; preds = %bb.bs
  %i.kb = load float, ptr %i.im, align 4, !tbaa !30
  %i.kc = fmul float %i.kb, 6.553500e+04
  %i.kd = fmul float %i.kc, 3.906250e-03
  %i.ke = load ptr, ptr %6, align 8, !tbaa !81    ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 168
  store float %i.kd, ptr %i.kf, align 8, !tbaa !30
  %i.kg = load float, ptr %i.iu, align 4, !tbaa !30
  %i.kh = fmul float %i.kg, 6.553500e+04
  %i.ki = fmul float %i.kh, 3.906250e-03
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 172
  store float %i.ki, ptr %i.kj, align 4, !tbaa !30
  %i.kk = load float, ptr %i.jb, align 4, !tbaa !30
  %i.kl = fmul float %i.kk, 6.553500e+04
  %i.km = fmul float %i.kl, 3.906250e-03
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 176
  store float %i.km, ptr %i.kn, align 8, !tbaa !30
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 180
  store float 1.000000e+00, ptr %i.ko, align 4, !tbaa !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bw:                                            ; preds = %bb.bs
  %i.kp = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #31
          to label %.noexc235 unwind label %bb.cd ; 6 uses

.noexc235:                                        ; preds = %bb.bw
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 1, ptr %i.kq, align 8, !tbaa !88, !noalias !220
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store i32 1, ptr %i.kr, align 4, !tbaa !90, !noalias !220
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.kp, align 8, !tbaa !15, !noalias !220
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.ks, i64 noundef %i.iq)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234, !noalias !220

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234: ; preds = %.noexc235
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef 384) #32, !noalias !220
  br label %.body

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %.noexc235
  %i.ku = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 184
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !182
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 192 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !86 ; 8 uses
  store ptr %i.kp, ptr %i.kw, align 8, !tbaa !86
  %.not.i.i.i.i238 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i238, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, label %bb.bx

bb.bx:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 4 uses
  %i.kz = load atomic i64, ptr %i.ky acquire, align 8 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 4294967297
  %i.lb = trunc i64 %i.kz to i32                  ; 2 uses
  br i1 %i.la, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.ky, align 8, !tbaa !88
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 0, ptr %i.lc, align 4, !tbaa !90
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #30, !inline_history !184
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !15
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #30, !inline_history !184
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

bb.bz:                                            ; preds = %bb.bx
  %i.lj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i239 = icmp eq i8 %i.lj, 0
  br i1 %.not.i.i.i.i.i239, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lk = add nsw i32 %i.lb, -1
  store i32 %i.lk, ptr %i.ky, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240

bb.cb:                                            ; preds = %bb.bz
  %i.ll = atomicrmw volatile add ptr %i.ky, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i241 = phi i32 [ %i.lb, %bb.ca ], [ %i.ll, %bb.cb ]
  %i.lm = icmp eq i32 %.0.i.i.i.i.i.i241, 1
  br i1 %i.lm, label %bb.cc, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, !prof !128

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240, %bb.by, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.ln = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 184
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !185 ; 2 uses
  %.not283 = icmp eq ptr %i.il, %i.im
  br i1 %.not283, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247
  %i.lq = load ptr, ptr %i.ij, align 8, !tbaa !217 ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 200
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !217 ; 12 uses
  %i.lt = load ptr, ptr %i.ir, align 8, !tbaa !217 ; 6 uses
  %i.lu = load ptr, ptr %i.iy, align 8, !tbaa !217 ; 6 uses
  %min.iters.check = icmp ult i64 %i.iq, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.lv = add nsw i64 %i.iq, -1                   ; 3 uses
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lv, i64 12) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.lw = getelementptr i8, ptr %i.ls, i64 %mul.result
  %i.lx = icmp ult ptr %i.lw, %i.ls
  %13 = or i1 %i.lx, %mul.overflow
  %scevgep = getelementptr i8, ptr %i.ls, i64 4   ; 2 uses
  %mul321 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lv, i64 12) ; 2 uses
  %mul.result322 = extractvalue { i64, i1 } %mul321, 0
  %mul.overflow323 = extractvalue { i64, i1 } %mul321, 1
  %i.ly = getelementptr i8, ptr %scevgep, i64 %mul.result322
  %i.lz = icmp ult ptr %i.ly, %scevgep
  %14 = or i1 %i.lz, %mul.overflow323
  %scevgep324.a = getelementptr i8, ptr %i.ls, i64 8 ; 2 uses
  %mul325 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lv, i64 12) ; 2 uses
  %mul.result326 = extractvalue { i64, i1 } %mul325, 0
  %mul.overflow327 = extractvalue { i64, i1 } %mul325, 1
  %i.ma = getelementptr i8, ptr %scevgep324.a, i64 %mul.result326
  %i.mb = icmp ult ptr %i.ma, %scevgep324.a
  %i.mc = or i1 %i.mb, %mul.overflow327
  %i.md = or i1 %13, %14
  %i.me = or i1 %i.md, %i.mc
  br i1 %i.me, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep328 = getelementptr i8, ptr %i.lq, i64 %i.ip
  %i.mf = mul i64 %i.iq, 12
  %scevgep329 = getelementptr i8, ptr %i.ls, i64 %i.mf ; 3 uses
  %scevgep330 = getelementptr i8, ptr %i.lt, i64 %i.ip
  %scevgep331 = getelementptr i8, ptr %i.lu, i64 %i.ip
  %bound0 = icmp ult ptr %i.lq, %scevgep329
  %bound1 = icmp ult ptr %i.ls, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0332 = icmp ult ptr %i.lt, %scevgep329
  %bound1333 = icmp ult ptr %i.ls, %scevgep330
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx = or i1 %found.conflict, %found.conflict334
  %bound0335 = icmp ult ptr %i.lu, %scevgep329
  %bound1336 = icmp ult ptr %i.ls, %scevgep331
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %conflict.rdx, %found.conflict337
  br i1 %conflict.rdx338, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %index
  %wide.load = load <4 x float>, ptr %i.mg, align 4, !tbaa !30, !alias.scope !223, !noalias !226
  %i.mh = mul i64 %index, 12
  %i.mi = getelementptr i8, ptr %i.ls, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index
  %wide.load339 = load <4 x float>, ptr %i.mj, align 4, !tbaa !30, !alias.scope !228, !noalias !226
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %index
  %wide.load340 = load <4 x float>, ptr %i.mk, align 4, !tbaa !30, !alias.scope !230, !noalias !226
  %i.ml = shufflevector <4 x float> %wide.load, <4 x float> %wide.load339, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mm = shufflevector <4 x float> %wide.load340, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.ml, <8 x float> %i.mm, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.mi, align 4, !tbaa !30, !alias.scope !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.0281.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.0281.ph, 1
  %i.mo = and i64 %i.ip, 4
  %lcmp.mod.not = icmp eq i64 %i.mo, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.0281.ph
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !30
  %.idx.prol = mul i64 %.0281.ph, 12
  %i.mr = getelementptr i8, ptr %i.ls, i64 %.idx.prol ; 3 uses
  store float %i.mq, ptr %i.mr, align 4, !tbaa !30
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %.0281.ph
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !30
  %i.mu = getelementptr i8, ptr %i.mr, i64 4
  store float %i.mt, ptr %i.mu, align 4, !tbaa !30
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.0281.ph
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !30
  %i.mx = getelementptr i8, ptr %i.mr, i64 8
  store float %i.mw, ptr %i.mx, align 4, !tbaa !30
  %i.my = or disjoint i64 %.0281.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0281.unr = phi i64 [ %.0281.ph, %scalar.ph.preheader ], [ %i.my, %scalar.ph.prol ]
  %i.mz = icmp eq i64 %i.iq, %.neg
  br i1 %i.mz, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247
  %i.na = getelementptr inbounds nuw i8, ptr %i.lp, i64 360
  store i32 5, ptr %i.na, align 8, !tbaa !187
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.bw
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0281 = phi i64 [ %i.nv, %scalar.ph ], [ %.0281.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.0281
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !30
  %.idx = mul i64 %.0281, 12
  %i.ne = getelementptr i8, ptr %i.ls, i64 %.idx  ; 3 uses
  store float %i.nd, ptr %i.ne, align 4, !tbaa !30
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %.0281
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !30
  %i.nh = getelementptr i8, ptr %i.ne, i64 4
  store float %i.ng, ptr %i.nh, align 4, !tbaa !30
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.0281
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !30
  %i.nk = getelementptr i8, ptr %i.ne, i64 8
  store float %i.nj, ptr %i.nk, align 4, !tbaa !30
  %i.nl = add nuw i64 %.0281, 1                   ; 4 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.nl
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !30
  %.idx.1 = mul i64 %i.nl, 12
  %i.no = getelementptr i8, ptr %i.ls, i64 %.idx.1 ; 3 uses
  store float %i.nn, ptr %i.no, align 4, !tbaa !30
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.nl
  %i.nq = load float, ptr %i.np, align 4, !tbaa !30
  %i.nr = getelementptr i8, ptr %i.no, i64 4
  store float %i.nq, ptr %i.nr, align 4, !tbaa !30
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.nl
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !30
  %i.nu = getelementptr i8, ptr %i.no, i64 8
  store float %i.nt, ptr %i.nu, align 4, !tbaa !30
  %i.nv = add nuw i64 %.0281, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.nv, %i.iq
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !235

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bh, %bb.ay, %bb.bv, %._crit_edge
  %i.nw = phi ptr [ %i.ln, %._crit_edge ], [ %i.fn, %bb.ay ], [ %i.ke, %bb.bv ], [ %i.hb, %bb.bh ]
  store ptr %i.nw, ptr %0, align 8, !tbaa !236
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !86
  store ptr %i.nz, ptr %i.nx, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.oa = load ptr, ptr %i.l, align 8, !tbaa !111 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !111 ; 2 uses
  %.not67.i = icmp eq ptr %i.oa, %i.oc
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf
  %.sroa.01.08.i = phi ptr [ %i.oi, %bb.cf ], [ %i.oa, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 16 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !124 ; 3 uses
  %.not.i = icmp eq ptr %i.oe, null
  br i1 %.not.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !15
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oe) #30, !inline_history !239
  store ptr null, ptr %i.od, align 8, !tbaa !124
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 24 ; 2 uses
  %.not6.i = icmp eq ptr %i.oi, %i.oc
  br i1 %.not6.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !240

._crit_edge.loopexit.i:                           ; preds = %bb.cf
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !79
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.oj = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.oa, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i252, label %_ZN9SampleICC10IccContentD2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !241
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = ptrtoint ptr %i.oj to i64
  %i.oo = sub i64 %i.om, %i.on
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef %i.oo) #32
  br label %_ZN9SampleICC10IccContentD2Ev.exit

_ZN9SampleICC10IccContentD2Ev.exit:               ; preds = %._crit_edge.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

.body:                                            ; preds = %bb.cd, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.bg, %bb.u, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.aj, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %bb.bn, %bb.v, %bb.f, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.j
  %.pn182.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.q, %bb.f ], [ %i.v, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ct, %bb.u ], [ %i.cu, %bb.v ], [ %i.cv, %bb.w ], [ %i.dt, %bb.ak ], [ %i.ea, %bb.am ], [ %i.ds, %bb.aj ], [ %.pn165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %i.ii, %bb.bn ], [ %.pn171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %i.gh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.kt, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234 ], [ %i.hn, %bb.bg ], [ %i.nb, %bb.cd ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  br label %bb.ch

bb.ch:                                            ; preds = %.body, %bb.e
  %.pn182.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn182.pn.pn.pn.pn.pn, %.body ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN9SampleICC10IccContentD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn182.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #19
end_hunk_0
