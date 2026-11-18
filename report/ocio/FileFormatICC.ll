Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatICC?download=true
inline.NumInlined: 1375
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.jk = icmp eq ptr %i.jj, %i.jc
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.bn
  %i.jl = load i64, ptr %i.jc, align 8, !tbaa !17
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221, %bb.bm
  %.pn169 = phi { ptr, i32 } [ %i.jh, %bb.bm ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221 ], [ %i.ji, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body

bb.bo:                                            ; preds = %bb.bl
  switch i64 %i.in, label %bb.bs [
    i64 0, label %.noexc.i225
    i64 1, label %bb.br
  ]

.noexc.i225:                                      ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.jn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.jn, ptr %12, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 37, ptr %i.a, align 8, !tbaa !56
  %i.jo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc226 unwind label %bb.bp ; 3 uses

.noexc226:                                        ; preds = %.noexc.i225
  store ptr %i.jo, ptr %12, align 8, !tbaa !52
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.jo, ptr noundef nonnull align 1 dereferenceable(37) @.str.32, i64 37, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !47
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jp
  store i8 0, ptr %i.jr, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable274 unwind label %bb.bq

.unreachable274:                                  ; preds = %.noexc226
  unreachable

bb.bp:                                            ; preds = %.noexc.i225
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.bq:                                            ; preds = %.noexc226
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.jn
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.bq
  %i.jw = load i64, ptr %i.jn, align 8, !tbaa !17
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.bp
  %.pn171 = phi { ptr, i32 } [ %i.js, %bb.bp ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.jt, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.body

bb.br:                                            ; preds = %bb.bo
  %i.jy = load float, ptr %i.ij, align 4, !tbaa !36
  %i.jz = fmul float %i.jy, 6.553500e+04
  %i.ka = fmul float %i.jz, 3.906250e-03
  %i.kb = load ptr, ptr %6, align 8, !tbaa !76    ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 168
  store float %i.ka, ptr %i.kc, align 8, !tbaa !36
  %i.kd = load float, ptr %i.ir, align 4, !tbaa !36
  %i.ke = fmul float %i.kd, 6.553500e+04
  %i.kf = fmul float %i.ke, 3.906250e-03
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 172
  store float %i.kf, ptr %i.kg, align 4, !tbaa !36
  %i.kh = load float, ptr %i.iy, align 4, !tbaa !36
  %i.ki = fmul float %i.kh, 6.553500e+04
  %i.kj = fmul float %i.ki, 3.906250e-03
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 176
  store float %i.kj, ptr %i.kk, align 8, !tbaa !36
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 180
  store float 1.000000e+00, ptr %i.kl, align 4, !tbaa !36
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bs:                                            ; preds = %bb.bo
  %i.km = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #31
          to label %.noexc235 unwind label %bb.bz ; 6 uses

.noexc235:                                        ; preds = %bb.bs
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 1, ptr %i.kn, align 8, !tbaa !79, !noalias !242
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i32 1, ptr %i.ko, align 4, !tbaa !80, !noalias !242
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.km, align 8, !tbaa !21, !noalias !242
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.kp, i64 noundef %i.in)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234, !noalias !242

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234: ; preds = %.noexc235
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef 384) #32, !noalias !242
  br label %.body

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %.noexc235
  %i.kr = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 184
  store ptr %i.kp, ptr %i.ks, align 8, !tbaa !213
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 192 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !77 ; 8 uses
  store ptr %i.km, ptr %i.kt, align 8, !tbaa !77
  %.not.i.i.i.i238 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i238, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, label %bb.bt

bb.bt:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 4294967297
  %i.ky = trunc i64 %i.kw to i32                  ; 2 uses
  br i1 %i.kx, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.kv, align 8, !tbaa !79
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !80
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !21
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #30, !inline_history !5
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !21
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

bb.bv:                                            ; preds = %bb.bt
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i239 = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i.i.i239, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 8, !tbaa !71
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240

bb.bx:                                            ; preds = %bb.bv
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i.i241 = phi i32 [ %i.ky, %bb.bw ], [ %i.li, %bb.bx ]
  %i.lj = icmp eq i32 %.0.i.i.i.i.i.i241, 1
  br i1 %i.lj, label %bb.by, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, !prof !90

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247: ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i240, %bb.bu, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.lk = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 184
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !108 ; 2 uses
  %.not283 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not283, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247
  %i.ln = load ptr, ptr %i.ig, align 8, !tbaa !111 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 200
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !111 ; 12 uses
  %i.lq = load ptr, ptr %i.io, align 8, !tbaa !111 ; 6 uses
  %i.lr = load ptr, ptr %i.iv, align 8, !tbaa !111 ; 6 uses
  %min.iters.check = icmp ult i64 %i.in, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.ls = add nsw i64 %i.in, -1
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ls, i64 12) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.lt = getelementptr i8, ptr %i.lp, i64 %mul.result
  %i.lu = icmp ult ptr %i.lt, %i.lp
  %scevgep = getelementptr i8, ptr %i.lp, i64 4   ; 2 uses
  %i.lv = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.lw = icmp ult ptr %i.lv, %scevgep
  %scevgep319 = getelementptr i8, ptr %i.lp, i64 8 ; 2 uses
  %i.lx = getelementptr i8, ptr %scevgep319, i64 %mul.result
  %i.ly = icmp ult ptr %i.lx, %scevgep319
  %i.lz = or i1 %i.ly, %mul.overflow
  %i.ma = or i1 %i.lw, %i.lu
  %i.mb = or i1 %i.ma, %i.lz
  br i1 %i.mb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.mc = getelementptr i8, ptr %i.ln, i64 %i.im
  %i.md = mul i64 %i.in, 12
  %13 = getelementptr i8, ptr %i.lp, i64 %i.md    ; 3 uses
  %i.me = getelementptr i8, ptr %i.lq, i64 %i.im
  %14 = getelementptr i8, ptr %i.lr, i64 %i.im
  %bound0.a = icmp ult ptr %i.ln, %13
  %bound1 = icmp ult ptr %i.lp, %i.mc
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0331 = icmp ult ptr %i.lq, %13
  %bound1332 = icmp ult ptr %i.lp, %i.me
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx = or i1 %found.conflict, %found.conflict333
  %bound0334 = icmp ult ptr %i.lr, %13
  %bound1335 = icmp ult ptr %i.lp, %14
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx, %found.conflict336
  br i1 %conflict.rdx337, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.in, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %index
  %wide.load = load <4 x float>, ptr %i.mf, align 4, !tbaa !36, !alias.scope !243, !noalias !244
  %i.mg = mul i64 %index, 12
  %i.mh = getelementptr i8, ptr %i.lp, i64 %i.mg
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %index
  %wide.load338 = load <4 x float>, ptr %i.mi, align 4, !tbaa !36, !alias.scope !245, !noalias !244
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %index
  %wide.load339 = load <4 x float>, ptr %i.mj, align 4, !tbaa !36, !alias.scope !246, !noalias !244
  %i.mk = shufflevector <4 x float> %wide.load, <4 x float> %wide.load338, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ml = shufflevector <4 x float> %wide.load339, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.mk, <8 x float> %i.ml, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.mh, align 4, !tbaa !36, !alias.scope !244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mm = icmp eq i64 %index.next, %n.vec
  br i1 %i.mm, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.0281.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.0281.ph, 1
  %i.mn = and i64 %i.im, 4
  %lcmp.mod.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.0281.ph
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !36
  %.idx.prol = mul i64 %.0281.ph, 12
  %i.mq = getelementptr i8, ptr %i.lp, i64 %.idx.prol ; 3 uses
  store float %i.mp, ptr %i.mq, align 4, !tbaa !36
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.0281.ph
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !36
  %i.mt = getelementptr i8, ptr %i.mq, i64 4
  store float %i.ms, ptr %i.mt, align 4, !tbaa !36
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.0281.ph
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !36
  %i.mw = getelementptr i8, ptr %i.mq, i64 8
  store float %i.mv, ptr %i.mw, align 4, !tbaa !36
  %i.mx = or disjoint i64 %.0281.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0281.unr = phi i64 [ %.0281.ph, %scalar.ph.preheader ], [ %i.mx, %scalar.ph.prol ]
  %i.my = icmp eq i64 %i.in, %.neg
  br i1 %i.my, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lm, i64 360
  store i32 5, ptr %i.mz, align 8, !tbaa !241
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bz:                                            ; preds = %.thread269.invoke, %bb.ad, %bb.af, %bb.ah, %bb.bf, %bb.bh, %bb.ap, %bb.ao, %bb.an, %bb.ax, %bb.bs
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0281 = phi i64 [ %i.nu, %scalar.ph ], [ %.0281.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.0281
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !36
  %.idx = mul i64 %.0281, 12
  %i.nd = getelementptr i8, ptr %i.lp, i64 %.idx  ; 3 uses
  store float %i.nc, ptr %i.nd, align 4, !tbaa !36
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.0281
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !36
  %i.ng = getelementptr i8, ptr %i.nd, i64 4
  store float %i.nf, ptr %i.ng, align 4, !tbaa !36
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.0281
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !36
  %i.nj = getelementptr i8, ptr %i.nd, i64 8
  store float %i.ni, ptr %i.nj, align 4, !tbaa !36
  %i.nk = add nuw i64 %.0281, 1                   ; 4 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.nk
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !36
  %.idx.1 = mul i64 %i.nk, 12
  %i.nn = getelementptr i8, ptr %i.lp, i64 %.idx.1 ; 3 uses
  store float %i.nm, ptr %i.nn, align 4, !tbaa !36
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.nk
  %i.np = load float, ptr %i.no, align 4, !tbaa !36
  %i.nq = getelementptr i8, ptr %i.nn, i64 4
  store float %i.np, ptr %i.nq, align 4, !tbaa !36
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.nk
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !36
  %i.nt = getelementptr i8, ptr %i.nn, i64 8
  store float %i.ns, ptr %i.nt, align 4, !tbaa !36
  %i.nu = add nuw i64 %.0281, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.nu, %i.in
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !207

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.be, %bb.aw, %bb.br, %._crit_edge
  %i.nv = phi ptr [ %i.lk, %._crit_edge ], [ %i.fm, %bb.aw ], [ %i.kb, %bb.br ], [ %i.ha, %bb.be ]
  store ptr %i.nv, ptr %0, align 8, !tbaa !115
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !77
  store ptr %i.ny, ptr %i.nw, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.nz = load ptr, ptr %i.l, align 8, !tbaa !85  ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !85 ; 2 uses
  %.not67.i = icmp eq ptr %i.nz, %i.ob
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cb
  %.sroa.01.08.i = phi ptr [ %i.oh, %bb.cb ], [ %i.nz, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 16 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !89 ; 3 uses
  %.not.i = icmp eq ptr %i.od, null
  br i1 %.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !21
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.od) #30, !inline_history !116
  store ptr null, ptr %i.oc, align 8, !tbaa !89
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 24 ; 2 uses
  %.not6.i = icmp eq ptr %i.oh, %i.ob
  br i1 %.not6.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.loopexit.i:                           ; preds = %bb.cb
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !70
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.oi = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.nz, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i.i252, label %_ZN9SampleICC10IccContentD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !117
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = ptrtoint ptr %i.oi to i64
  %i.on = sub i64 %i.ol, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %i.oi, i64 noundef %i.on) #32
  br label %_ZN9SampleICC10IccContentD2Ev.exit

_ZN9SampleICC10IccContentD2Ev.exit:               ; preds = %._crit_edge.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

.body:                                            ; preds = %bb.bz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.u, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %bb.v, %bb.f, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.j
  %.pn182.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.q, %bb.f ], [ %i.v, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.cu, %bb.u ], [ %i.cv, %bb.v ], [ %i.cw, %bb.w ], [ %.pn169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %i.gg, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.dt, %bb.aj ], [ %.pn165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %i.na, %bb.bz ], [ %i.kq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i234 ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  br label %bb.cd

bb.cd:                                            ; preds = %.body, %bb.e
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC10IccContentD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %.not67 = icmp eq ptr %i.b, %i.d
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.01.08 = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
