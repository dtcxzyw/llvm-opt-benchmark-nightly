Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidbackend?download=true
inline.NumInlined: 7166
inline.NumDeleted: 3406
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv5gimpl16GFluidExecutableC2ERKN3ade5GraphERKNS0_19FluidGraphInputDataERKSt6vectorINS_5Rect_IiEESaISB_EE:bb.a
  %i.ih = load i32, ptr %i.if, align 4, !tbaa !66, !noalias !856 ; 2 uses
  %i.ii = add nsw i32 %i.ih, -1
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !66, !noalias !856
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i

bb.av:                                            ; preds = %bb.at
  %i.ij = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4, !noalias !856
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i47.i = phi i32 [ %i.ih, %bb.au ], [ %i.ij, %bb.av ]
  %i.ik = icmp eq i32 %.0.i.i.i.i.i47.i, 1
  br i1 %i.ik, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.sink.split, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i

bb.aw:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit40.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i38.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit53.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 12 ; 3 uses
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !856
  %.not.i.i.i.i50.i = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i50.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.io = load i32, ptr %i.im, align 4, !tbaa !66, !noalias !856 ; 2 uses
  %i.ip = add nsw i32 %i.io, -1
  store i32 %i.ip, ptr %i.im, align 4, !tbaa !66, !noalias !856
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51.i

bb.az:                                            ; preds = %bb.ax
  %i.iq = atomicrmw volatile add ptr %i.im, i32 -1 acq_rel, align 4, !noalias !856
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i52.i = phi i32 [ %i.io, %bb.ay ], [ %i.iq, %bb.az ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i52.i, 1
  br i1 %i.ir, label %bb.ba, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit53.i

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51.i
  %i.is = load ptr, ptr %i.hy, align 8, !tbaa !59, !noalias !856
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !856
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #30, !noalias !856, !inline_history !816
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit53.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit53.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51.i, %bb.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 360) #34, !noalias !856
  br label %.body

bb.bb:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !856
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30, !noalias !856
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.bc unwind label %bb.be, !noalias !856

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @"__func__._ZZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_ENK3$_2clES7_m", ptr noundef nonnull @.str.1, i32 noundef 847) #32
          to label %bb.bd unwind label %bb.bf, !noalias !856

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %26, align 8, !tbaa !105, !noalias !856 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bf
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !65, !noalias !856
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #34, !noalias !856
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.be
  %.pn.i = phi { ptr, i32 } [ %i.iv, %bb.be ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.iw, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !856
  br label %.body

_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.sink.split:  ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %.sink1438 = phi ptr [ %i.gx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i ], [ %i.gc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.hy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i ] ; 2 uses
  %.sroa.0544.0.ph = phi ptr [ %i.gu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i ], [ %i.fs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.hv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i ]
  %i.jc = load ptr, ptr %.sink1438, align 8, !tbaa !59, !noalias !856
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !856
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %.sink1438) #30, !noalias !856
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit.i:             ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.sink.split, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i, %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EE5resetEPS2_.exit43.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i, %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EE5resetEPS2_.exit27.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EE5resetEPS2_.exit.i
  %.sroa.0544.0 = phi ptr [ %i.fs, %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EE5resetEPS2_.exit.i ], [ %i.hv, %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EE5resetEPS2_.exit43.i ], [ %i.fs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.gu, %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EE5resetEPS2_.exit27.i ], [ %i.hv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46.i ], [ %i.gu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i ], [ %.sroa.0544.0.ph, %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.sink.split ] ; 8 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0548.01045, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0544.0, i64 232
  %i.jh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %.noexc.i unwind label %_ZNKSt14default_deleteIN2cv5gimpl10FluidAgentEEclEPS2_.exit.i.i, !noalias !856 ; 0 uses

.noexc.i:                                         ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0544.0, i64 256
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0548.01045, i64 48
  %i.jk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %bb.bg unwind label %_ZNKSt14default_deleteIN2cv5gimpl10FluidAgentEEclEPS2_.exit.i.i, !noalias !856 ; 0 uses

_ZNKSt14default_deleteIN2cv5gimpl10FluidAgentEEclEPS2_.exit.i.i: ; preds = %.noexc.i, %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.jl = load ptr, ptr %.sroa.0544.0, align 8, !tbaa !59, !noalias !856
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !856
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0544.0) #30, !noalias !856, !inline_history !817
  br label %.body

bb.bg:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %i.jo = load ptr, ptr %i.fk, align 8, !tbaa !419 ; 6 uses
  %i.jp = load ptr, ptr %i.fl, align 8, !tbaa !420
  %.not.i.i185 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not.i.i185, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jq = ptrtoint ptr %.sroa.0544.0 to i64
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !422
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %i.jr, ptr %i.fk, align 8, !tbaa !419
  br label %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.js = load ptr, ptr %i.e, align 8, !tbaa !423 ; 10 uses
  %i.jt = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64               ; 3 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 3 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775800
  br i1 %i.jw, label %bb.bj, label %_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc410 unwind label %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EED2Ev.exit189.loopexit.split-lp.loopexit.split-lp

.noexc410:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bi
  %i.jx = ashr exact i64 %i.jv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 1152921504606846975)
  %i.kb = select i1 %i.jz, i64 1152921504606846975, i64 %i.ka ; 3 uses
  %.not.i.i407 = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i407)
  %i.kc = shl nuw nsw i64 %i.kb, 3
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #31
          to label %.noexc411 unwind label %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EED2Ev.exit189.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc411:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv
  %i.kf = ptrtoint ptr %.sroa.0544.0 to i64
  store i64 %i.kf, ptr %i.ke, align 8, !tbaa !422
  %.not10.i.i.i.i = icmp eq ptr %i.js, %i.jo
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i408.preheader

.lr.ph.i.i.i.i408.preheader:                      ; preds = %.noexc411
  %i.kg = add i64 %i.jt, -8
  %i.kh = sub i64 %i.kg, %i.ju                    ; 3 uses
  %i.ki = lshr i64 %i.kh, 3
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kh, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i408.preheader1661, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i408.preheader
  %i.kk = and i64 %i.kh, -8
  %i.kl = add i64 %i.kk, 8                        ; 2 uses
  %i.km = getelementptr i8, ptr %i.kd, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.js, i64 %i.kl
  %bound0 = icmp ult ptr %i.kd, %i.kn
  %bound1 = icmp ult ptr %i.js, %i.km
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i408.preheader1661, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kj, 4611686018427387900     ; 3 uses
  %i.ko = shl i64 %n.vec, 3                       ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kd, i64 %i.ko  ; 2 uses
  %i.kq = getelementptr i8, ptr %i.js, i64 %i.ko
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kd, i64 %i.kr ; 2 uses
  %next.gep1553 = getelementptr i8, ptr %i.js, i64 %i.kr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.ks = getelementptr i8, ptr %next.gep1553, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1553, align 8, !tbaa !422, !alias.scope !861
  %wide.load1554 = load <2 x i64>, ptr %i.ks, align 8, !tbaa !422, !alias.scope !861
  %i.kt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !422, !alias.scope !862, !noalias !863
  store <2 x i64> %wide.load1554, ptr %i.kt, align 8, !tbaa !422, !alias.scope !862, !noalias !863
  %45 = getelementptr i8, ptr %next.gep1553, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1553, align 8, !tbaa !422, !alias.scope !861
  store <2 x ptr> splat (ptr null), ptr %45, align 8, !tbaa !422, !alias.scope !861
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !824

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i408.preheader1661

.lr.ph.i.i.i.i408.preheader1661:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i408.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.kd, %vector.memcheck ], [ %i.kd, %.lr.ph.i.i.i.i408.preheader ], [ %i.kp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.js, %vector.memcheck ], [ %i.js, %.lr.ph.i.i.i.i408.preheader ], [ %i.kq, %middle.block ]
  br label %.lr.ph.i.i.i.i408

.lr.ph.i.i.i.i408:                                ; preds = %.lr.ph.i.i.i.i408.preheader1661, %.lr.ph.i.i.i.i408
  %.012.i.i.i.i = phi ptr [ %i.kx, %.lr.ph.i.i.i.i408 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i408.preheader1661 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i408 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i408.preheader1661 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.kv = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !422, !alias.scope !860
  store i64 %i.kv, ptr %.012.i.i.i.i, align 8, !tbaa !422, !alias.scope !859
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !422, !alias.scope !860
  %i.kw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i409 = icmp eq ptr %i.kw, %i.jo
  br i1 %.not.i.i.i.i409, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i408, !llvm.loop !825

_ZNSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i408, %middle.block, %.noexc411
  %.0.lcssa.i.i.i.i = phi ptr [ %i.kd, %.noexc411 ], [ %i.kp, %middle.block ], [ %i.kx, %.lr.ph.i.i.i.i408 ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.js, null
  br i1 %.not.i23.i, label %.noexc186, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.kz = load ptr, ptr %i.fl, align 8, !tbaa !420
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = sub i64 %i.la, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.lb) #34
  br label %.noexc186

.noexc186:                                        ; preds = %bb.bk, %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.kd, ptr %i.e, align 8, !tbaa !423
  store ptr %i.ky, ptr %i.fk, align 8, !tbaa !419
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.lc, ptr %i.fl, align 8, !tbaa !420
  br label %_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bh, %.noexc186
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0548.01045, i64 72 ; 2 uses
  %.not571 = icmp eq ptr %i.ld, %i.fi
  br i1 %.not571, label %._crit_edge, label %bb.q

_ZNSt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS2_EED2Ev.exit189.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl10FluidAgentESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.bj
  %lpad.loopexit.split-lp1666 = landingpad { ptr, i32 }
          cleanup
  %i.le = load ptr, ptr %.sroa.0544.0, align 8, !tbaa !59
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0544.0) #30, !inline_history !826
  br label %.body

bb.bl:                                            ; preds = %._crit_edge
  %.not = icmp eq ptr %i.fm, null                 ; 2 uses
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !428
  %i.lj = icmp slt i32 %i.li, 4
  br i1 %i.lj, label %bb.cd, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33)
          to label %bb.bo unwind label %bb.by

bb.bo:                                            ; preds = %bb.bn
  %i.lk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef nonnull @.str.24, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bo
  %i.lm = load i64, ptr %i.cr, align 8, !tbaa !414
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, i64 noundef %i.lm)
          to label %_ZNSolsEm.exit unwind label %bb.bz ; 4 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, ptr noundef nonnull @.str.25, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %bb.bz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %_ZNSolsEm.exit
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !59
  %i.lq = getelementptr i8, ptr %i.lp, i64 -24
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds i8, ptr %i.ln, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 240
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !246 ; 6 uses
  %.not.i.i.i412 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i412, label %bb.bp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc413 unwind label %bb.bz

.noexc413:                                        ; preds = %bb.bp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !251
  %.not.i1.i.i = icmp eq i8 %i.lw, 0
  br i1 %.not.i1.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 67
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !65
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lu)
          to label %.noexc414 unwind label %bb.bz

.noexc414:                                        ; preds = %bb.br
  %i.lz = load ptr, ptr %i.lu, align 8, !tbaa !59
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef signext i8 %i.mb(ptr noundef nonnull align 8 dereferenceable(570) %i.lu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.bz, !inline_history !827

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc414, %bb.bq
  %.0.i.i.i = phi i8 [ %i.ly, %bb.bq ], [ %i.mc, %.noexc414 ]
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, i8 noundef signext %.0.i.i.i)
          to label %.noexc416 unwind label %bb.bz

.noexc416:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.md)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.bz ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc416
  br i1 %.not, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.mf = load ptr, ptr %i.fm, align 8, !tbaa !429
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.bs
  %i.mg = phi ptr [ %i.mf, %bb.bs ], [ null, %_ZNSolsEPFRSoS_E.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.mh = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  store ptr %i.mh, ptr %34, align 8, !tbaa !103, !alias.scope !866
  %i.mi = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.mi, align 8, !tbaa !106, !alias.scope !866
  store i8 0, ptr %i.mh, align 8, !tbaa !65, !alias.scope !866
  %i.mj = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !431, !noalias !866 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.mk, null
  %i.ml = getelementptr inbounds nuw i8, ptr %33, i64 48
  %i.mm = load ptr, ptr %i.ml, align 8, !noalias !866 ; 2 uses
  %i.mn = icmp ugt ptr %i.mk, %i.mm
  %.08.i.i.i = select i1 %i.mn, ptr %i.mk, ptr %i.mm ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i195 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i195, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mo = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !432, !noalias !866 ; 2 uses
  %i.mq = ptrtoint ptr %.08.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef 0, i64 noundef 0, ptr noundef %i.mp, i64 noundef %i.ms)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = load ptr, ptr %34, align 8, !tbaa !105, !alias.scope !866 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.mh
  br i1 %i.mw, label %.body196, label %.body196.sink.split

bb.bw:                                            ; preds = %bb.bt
  %i.mx = getelementptr inbounds nuw i8, ptr %33, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.mx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bv

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bw, %bb.bu
  %i.my = load ptr, ptr %34, align 8, !tbaa !105
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 4, ptr noundef %i.mg, ptr noundef nonnull @.str.1, i32 noundef 858, ptr noundef nonnull @__func__._ZN2cv5gimpl16GFluidExecutableC2ERKN3ade5GraphERKNS0_19FluidGraphInputDataERKSt6vectorINS_5Rect_IiEESaISB_EE, ptr noundef %i.my)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.mz = load ptr, ptr %34, align 8, !tbaa !105  ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.mh
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bx
  %i.nb = load i64, ptr %i.mh, align 8, !tbaa !65
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #34
end_hunk_0
begin_hunk_1_@_ZN2cv5gimpl16GFluidExecutable3runERSt6vectorISt4pairINS0_6RcDescENS_7GRunArgEESaIS6_EERS2_IS3_IS4_NS_4util7variantIJPNS_4UMatEPNS_3MatEPNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSN_9OpaqueRefEEEEESaISR_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.al
  %.pn = phi { ptr, i32 } [ %i.if, %bb.al ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ig, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

bb.an:                                            ; preds = %._crit_edge163
  br i1 %.154, label %.loopexit, label %.preheader.split, !llvm.loop !1315

.preheader124:                                    ; preds = %._crit_edge155, %.preheader124
  %.sroa.072.0156 = phi ptr [ %i.in, %.preheader124 ], [ %i.dq, %._crit_edge155 ] ; 2 uses
  %i.im = load ptr, ptr %.sroa.072.0156, align 8, !tbaa !422
  call void @_ZN2cv5gimpl10FluidAgent6doWorkEv(ptr noundef nonnull align 8 dereferenceable(360) %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.072.0156, i64 8 ; 2 uses
  %.not118 = icmp eq ptr %i.in, %i.ds
  br i1 %.not118, label %.loopexit, label %.preheader124

.loopexit:                                        ; preds = %.preheader124, %.preheader.split, %bb.an, %.preheader
  %i.io = load ptr, ptr %1, align 8, !tbaa !1317  ; 2 uses
  %i.ip = load ptr, ptr %i.b, align 8, !tbaa !1317 ; 2 uses
  %.not120165 = icmp eq ptr %i.io, %i.ip
  br i1 %.not120165, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %.loopexit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.ao

._crit_edge169:                                   ; preds = %bb.ao, %.loopexit
  %i.ir = load ptr, ptr %2, align 8, !tbaa !1319  ; 2 uses
  %i.is = load ptr, ptr %i.e, align 8, !tbaa !1319 ; 2 uses
  %.not121170 = icmp eq ptr %i.ir, %i.is
  br i1 %.not121170, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %._crit_edge169
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph168, %bb.ao
  %.sroa.068.0166 = phi ptr [ %i.io, %.lr.ph168 ], [ %i.iu, %bb.ao ] ; 2 uses
  call void @_ZN2cv5gimpl8magazine6unbindERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS6_9OpaqueRefENS_4RMatENS9_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescE(ptr noundef nonnull align 8 dereferenceable(896) %i.iq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.068.0166)
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.068.0166, i64 320 ; 2 uses
  %.not120 = icmp eq ptr %i.iu, %i.ip
  br i1 %.not120, label %._crit_edge169, label %bb.ao

._crit_edge174:                                   ; preds = %bb.ap, %._crit_edge169
  ret void

bb.ap:                                            ; preds = %.lr.ph173, %bb.ap
  %.sroa.064.0171 = phi ptr [ %i.ir, %.lr.ph173 ], [ %i.iv, %bb.ap ] ; 2 uses
  call void @_ZN2cv5gimpl8magazine6unbindERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS6_9OpaqueRefENS_4RMatENS9_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescE(ptr noundef nonnull align 8 dereferenceable(896) %i.it, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.064.0171)
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.064.0171, i64 80 ; 2 uses
  %.not121 = icmp eq ptr %i.iv, %i.is
  br i1 %.not121, label %._crit_edge174, label %bb.ap
}

declare void @_ZN2cv4gapi5fluid6Buffer4Priv5resetEv(ptr noundef nonnull align 8 dereferenceable(188)) local_unnamed_addr #3

declare void @_ZN2cv5gimpl8magazine6unbindERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS6_9OpaqueRefENS_4RMatENS9_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescE(ptr noundef nonnull align 8 dereferenceable(896), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5gimpl24GParallelFluidExecutableC2ERKN3ade5GraphERKNS0_19FluidGraphInputDataERKSt6vectorINS_16GFluidOutputRoisESaISA_EERKSt8functionIFvmSF_IFvmEEEE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2cv5gimpl24GParallelFluidExecutableE, i64 16), ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !150  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvmS_IFvmEEEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !64
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !64
  br label %_ZNSt8functionIFvmS_IFvmEEEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZNSt8functionIFvmS_IFvmEEEEC2ERKS3_.exit:        ; preds = %bb.c, %bb.a
  %i.m = load ptr, ptr %3, align 8, !tbaa !499    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !499  ; 2 uses
  %.not21 = icmp eq ptr %i.m, %i.o
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8functionIFvmS_IFvmEEEEC2ERKS3_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit, %_ZNSt8functionIFvmS_IFvmEEEEC2ERKS3_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit
  %.sroa.016.022 = phi ptr [ %i.m, %.lr.ph ], [ %i.bf, %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit ] ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(1312) ptr @_Znwm(i64 noundef 1312) #31
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5gimpl16GFluidExecutableC2ERKN3ade5GraphERKNS0_19FluidGraphInputDataERKSt6vectorINS_5Rect_IiEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(1312) %i.r, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.022)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !502  ; 6 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !503
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.r, ptr %i.s, align 8, !tbaa !505
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !502
  br label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !506  ; 10 uses
  %i.w = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store ptr %i.r, ptr %i.ah, align 8, !tbaa !505
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc13
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.am = and i64 %i.aj, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %i.v, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.v, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.au = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !505, !alias.scope !1340
  %wide.load45 = load <2 x i64>, ptr %i.au, align 8, !tbaa !505, !alias.scope !1340
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !505, !alias.scope !1341, !noalias !1342
  store <2 x i64> %wide.load45, ptr %i.av, align 8, !tbaa !505, !alias.scope !1341, !noalias !1342
  %5 = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !505, !alias.scope !1340
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !505, !alias.scope !1340
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.preheader47:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader47 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader47 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !505, !alias.scope !1339
  store i64 %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !505, !alias.scope !1338
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !505, !alias.scope !1339
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1337

_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc13 ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !503
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bd) #34
  br label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !506
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !502
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.be, ptr %i.q, align 8, !tbaa !503
  br label %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.o
  br i1 %.not, label %._crit_edge, label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %bb.g, %bb.l
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1312) #34
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !150 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bh, null
  br i1 %.not.i14, label %.body, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %.body unwind label %bb.p      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #35
  unreachable

.body:                                            ; preds = %bb.o, %.loopexit.split-lp, %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn, %bb.o ], [ %i.h, %bb.e ], [ %.pn, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !506    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !505 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN2cv5gimpl16GFluidExecutableEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN2cv5gimpl16GFluidExecutableEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN2cv5gimpl16GFluidExecutableD2Ev(ptr noundef nonnull align 8 dead_on_return(1312) dereferenceable(1312) %i.d) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1312) #34
  br label %_ZSt8_DestroyISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN2cv5gimpl16GFluidExecutableEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !37

_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !506
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !503
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #34
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2cv5gimpl16GFluidExecutableESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN2cv5gimpl24GParallelFluidExecutable7reshapeERN3ade5GraphERKSt6vectorINS_11GCompileArgESaIS6_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 16, ptr %i.a, align 8, !tbaa !107
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !105
  %i.d = load i64, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.34, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !106
  %i.f = load ptr, ptr %3, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv5gimpl24GParallelFluidExecutable7reshapeERN3ade5GraphERKSt6vectorINS_11GCompileArgESaIS6_EE, ptr noundef nonnull @.str.1, i32 noundef 1391) #32
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !105    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5gimpl24GParallelFluidExecutable3runEOSt6vectorISt4pairINS0_6RcDescENS_7GRunArgEESaIS6_EEOS2_IS3_IS4_NS_4util7variantIJPNS_4UMatEPNS_3MatEPNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSN_9OpaqueRefEEEEESaISR_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt8functionIFvmEEC2IZN2cv5gimpl24GParallelFluidExecutable3runEOSt6vectorISt4pairINS4_6RcDescENS3_7GRunArgEESaISA_EEOS6_IS7_IS8_NS3_4util7variantIJPNS3_4UMatEPNS3_3MatEPNS3_4RMatEPNS3_7Scalar_IdEEPNS3_10MediaFrameENS3_6detail9VectorRefENSR_9OpaqueRefEEEEESaISV_EEE3$_0vEEOT_.exit":
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::function.532", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !502
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !506
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.h, align 16, !tbaa !508
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !510
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !512
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERN3ade27ExecutionEngineSetupContextE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i8 0, ptr %i.r, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  %i.s = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.s, ptr %27, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, ptr noundef nonnull align 1 dereferenceable(15) @.str.102, i64 15, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 15, ptr %i.t, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %27, i64 31
  store i8 0, ptr %i.u, align 1, !tbaa !65
  %.val = load ptr, ptr %1, align 8, !tbaa !1550  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.v = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 9 uses
  store ptr %i.v, ptr %24, align 8, !tbaa !103
  %i.w = load i32, ptr %i.p, align 8
  store i32 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 4, ptr %i.x, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i8 0, ptr %i.y, align 4, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 9 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.aa, ptr noundef nonnull align 1 dereferenceable(15) @.str.102, i64 15, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 4 uses
  store i64 15, ptr %i.ab, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %24, i64 63
  store i8 0, ptr %i.ac, align 1, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 2 uses
  store ptr %.val, ptr %i.ad, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %25, ptr noundef nonnull align 8 dereferenceable(272) %.val, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %bb.b unwind label %bb.l, !inline_history !1459

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %24, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 80
  %i.ag = load <2 x ptr>, ptr %25, align 16, !tbaa !555
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !555
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !557
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.al = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc14.i.i.i unwind label %bb.j, !inline_history !1460

.noexc14.i.i.i:                                   ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1554 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ap = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i unwind label %bb.j, !inline_history !1460 ; 11 uses

.noexc15.i.i.i:                                   ; preds = %.noexc14.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEE", i64 16), ptr %i.ap, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !103
  %i.as = load ptr, ptr %24, align 8, !tbaa !105  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.v
  br i1 %i.at, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc15.i.i.i
  %i.au = load i64, ptr %i.x, align 8, !tbaa !106 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc15.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !105
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !65
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !65
  %.pre.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.ay = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.au, %bb.c ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !106
  store ptr %i.v, ptr %24, align 8, !tbaa !105
  store i64 0, ptr %i.x, align 8, !tbaa !106
  store i8 0, ptr %i.v, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !103
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aa
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.be = load i64, ptr %i.ab, align 8, !tbaa !106 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.bg, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !105
  %i.bh = load i64, ptr %i.aa, align 8, !tbaa !65
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !65
  %.pre3.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i, %bb.d
  %i.bi = phi i64 [ %i.be, %bb.d ], [ %.pre3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !106
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !105
  store i64 0, ptr %i.ab, align 8, !tbaa !106
  store i8 0, ptr %i.aa, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.bl = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !64
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.bn = load <2 x ptr>, ptr %i.af, align 8, !tbaa !555
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1557 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.ap, ptr %i.bp, align 8, !tbaa !1560
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i

bb.e:                                             ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !1561 ; 10 uses
  %i.bu = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i unwind label %bb.j, !inline_history !1460

.noexc16.i.i.i:                                   ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #31
          to label %.noexc17.i.i.i unwind label %bb.j, !inline_history !1460 ; 10 uses

.noexc17.i.i.i:                                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store ptr %i.ap, ptr %i.cf, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.noexc17.i.i.i
  %i.cg = add i64 %i.bu, -8
  %i.ch = sub i64 %i.cg, %i.bv                    ; 3 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ck = and i64 %i.ch, -8
  %i.cl = add i64 %i.ck, 8                        ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.bt, i64 %i.cl
  %bound0 = icmp ult ptr %i.ce, %i.cn
  %bound1 = icmp ult ptr %i.bt, %i.cm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ce, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bt, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %next.gep792 = getelementptr i8, ptr %i.bt, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.cs = getelementptr i8, ptr %next.gep792, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep792, align 8, !tbaa !1560, !alias.scope !1564
  %wide.load793 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !1560, !alias.scope !1564
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1560, !alias.scope !1565, !noalias !1566
  store <2 x i64> %wide.load793, ptr %i.ct, align 8, !tbaa !1560, !alias.scope !1565, !noalias !1566
  %42 = getelementptr i8, ptr %next.gep792, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep792, align 8, !tbaa !1560, !alias.scope !1564
  store <2 x ptr> splat (ptr null), ptr %42, align 8, !tbaa !1560, !alias.scope !1564
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967:          ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader967 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1560, !alias.scope !1563
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1560, !alias.scope !1562
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1560, !alias.scope !1563
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1468

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc17.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc17.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i.i.i.i.i.i, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i
  %i.cz = load ptr, ptr %i.bq, align 8, !tbaa !1558
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.db) #34, !inline_history !1469
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i
  store ptr %i.ce, ptr %i.ao, align 8, !tbaa !1561
  store ptr %i.cy, ptr %i.bo, align 8, !tbaa !1557
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.dc, ptr %i.bq, align 8, !tbaa !1558
  %.pre.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.dd = load ptr, ptr %i.ah, align 8, !tbaa !557
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %.pre.i.i.i to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.dg) #34, !inline_history !1459
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %bb.h, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.aa
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i
  %i.dj = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #34, !inline_history !1459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %24, align 8, !tbaa !105  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.v
  br i1 %i.dm, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.dn = load i64, ptr %i.v, align 8, !tbaa !65
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #34, !inline_history !1459
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.dp = load ptr, ptr %25, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i18.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0ED2Ev.exit.i.i.i"
  %i.dq = load ptr, ptr %i.ai, align 16, !tbaa !557
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #34, !inline_history !1459
  br label %bb.m

bb.j:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %bb.f, %.noexc14.i.i.i, %bb.b
  %i.du = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %24) #30, !inline_history !1459
  %i.dv = load ptr, ptr %25, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i19.i.i.i, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr %i.ai, align 16, !tbaa !557
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #34, !inline_history !1459
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %.body

bb.l:                                             ; preds = %bb.a
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #30, !inline_history !1459
  br label %.body

bb.m:                                             ; preds = %bb.i, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_0ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.eb = load ptr, ptr %27, align 8, !tbaa !105  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.s
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ed = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  %i.ef = load ptr, ptr %26, align 8, !tbaa !105  ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.p
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eh = load i64, ptr %i.p, align 8, !tbaa !65
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  %i.ej = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.ej, ptr %28, align 8, !tbaa !103
  store i32 1667594341, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 4, ptr %i.ek, align 8, !tbaa !106
  %i.el = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i8 0, ptr %i.el, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %i.em = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.em, ptr %29, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #30
  store i64 35, ptr %i.o, align 8, !tbaa !107
  %i.en = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc71 unwind label %bb.dx  ; 3 uses

.noexc71:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  store ptr %i.en, ptr %29, align 8, !tbaa !105
  %i.eo = load i64, ptr %i.o, align 8, !tbaa !107 ; 3 uses
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.en, ptr noundef nonnull align 1 dereferenceable(35) @.str.103, i64 35, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !106
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  store i8 0, ptr %i.eq, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  %.val50 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.er = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 12 uses
  store ptr %i.er, ptr %21, align 8, !tbaa !103
  %i.es = load ptr, ptr %28, align 8, !tbaa !105  ; 2 uses
  %i.et = load i64, ptr %i.ek, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  store i64 %i.et, ptr %i.n, align 8, !tbaa !107
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %.noexc.i.i.i.i114, label %._crit_edge.i.i.i.i.i73

.noexc.i.i.i.i114:                                ; preds = %.noexc71
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc115 unwind label %bb.dy, !inline_history !1470 ; 2 uses

.noexc115:                                        ; preds = %.noexc.i.i.i.i114
  store ptr %i.ev, ptr %21, align 8, !tbaa !105
  %i.ew = load i64, ptr %i.n, align 8, !tbaa !107
  store i64 %i.ew, ptr %i.er, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i.i73

._crit_edge.i.i.i.i.i73:                          ; preds = %.noexc115, %.noexc71
  %i.ex = phi ptr [ %i.ev, %.noexc115 ], [ %i.er, %.noexc71 ] ; 2 uses
  switch i64 %i.et, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i74
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERN3ade27ExecutionEngineSetupContextE:bb.a
.noexc.i.i.i113:                                  ; preds = %.noexc.i12.i.i.i110
  store ptr %i.fi, ptr %i.fd, align 8, !tbaa !105
  %i.fj = load i64, ptr %i.m, align 8, !tbaa !107
  store i64 %i.fj, ptr %i.fe, align 8, !tbaa !65
  br label %._crit_edge.i.i11.i.i.i75

._crit_edge.i.i11.i.i.i75:                        ; preds = %.noexc.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i74
  %i.fk = phi ptr [ %i.fi, %.noexc.i.i.i113 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i74 ] ; 2 uses
  switch i64 %i.fg, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i11.i.i.i75
  %i.fl = load i8, ptr %i.ff, align 1, !tbaa !65
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !65
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i11.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %i.ff, i64 %i.fg, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i11.i.i.i75
  %i.fm = load i64, ptr %i.m, align 8, !tbaa !107 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !106
  %i.fo = load ptr, ptr %i.fd, align 8, !tbaa !105
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  store i8 0, ptr %i.fp, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.fq = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  store ptr %.val50, ptr %i.fq, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %22, ptr noundef nonnull align 8 dereferenceable(272) %.val50, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.s unwind label %bb.ad, !inline_history !1471

bb.s:                                             ; preds = %bb.r
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.ft = load <2 x ptr>, ptr %22, align 16, !tbaa !555
  store <2 x ptr> %i.ft, ptr %i.fr, align 8, !tbaa !555
  %i.fu = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 16, !tbaa !557
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.fy = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %.noexc14.i.i.i80 unwind label %bb.ab, !inline_history !1472

.noexc14.i.i.i80:                                 ; preds = %bb.s
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1554 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 2 uses
  %i.gc = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i81 unwind label %bb.ab, !inline_history !1472 ; 11 uses

.noexc15.i.i.i81:                                 ; preds = %.noexc14.i.i.i80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEE", i64 16), ptr %i.gc, align 8, !tbaa !59
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 3 uses
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !103
  %i.gf = load ptr, ptr %21, align 8, !tbaa !105  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.er
  br i1 %i.gg, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82

bb.t:                                             ; preds = %.noexc15.i.i.i81
  %i.gh = load i64, ptr %i.fa, align 8, !tbaa !106 ; 3 uses
  %i.gi = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nuw nsw i64 %i.gh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ge, ptr noundef nonnull align 8 dereferenceable(1) %i.er, i64 %i.gj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82: ; preds = %.noexc15.i.i.i81
  store ptr %i.gf, ptr %i.gd, align 8, !tbaa !105
  %i.gk = load i64, ptr %i.er, align 8, !tbaa !65
  store i64 %i.gk, ptr %i.ge, align 8, !tbaa !65
  %.pre.i.i.i.i.i83 = load i64, ptr %i.fa, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82, %bb.t
  %i.gl = phi i64 [ %.pre.i.i.i.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82 ], [ %i.gh, %bb.t ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !106
  store ptr %i.er, ptr %21, align 8, !tbaa !105
  store i64 0, ptr %i.fa, align 8, !tbaa !106
  store i8 0, ptr %i.er, align 8, !tbaa !65
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 40 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 56 ; 3 uses
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !103
  %i.gp = load ptr, ptr %i.fd, align 8, !tbaa !105 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.fe
  br i1 %i.gq, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i85

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i84
  %i.gr = load i64, ptr %i.fn, align 8, !tbaa !106 ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 16
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nuw nsw i64 %i.gr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.go, ptr noundef nonnull align 8 dereferenceable(1) %i.fe, i64 %i.gt, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i84
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !105
  %i.gu = load i64, ptr %i.fe, align 8, !tbaa !65
  store i64 %i.gu, ptr %i.go, align 8, !tbaa !65
  %.pre3.i.i.i.i.i86 = load i64, ptr %i.fn, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i85, %bb.u
  %i.gv = phi i64 [ %i.gr, %bb.u ], [ %.pre3.i.i.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i85 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !106
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !105
  store i64 0, ptr %i.fn, align 8, !tbaa !106
  store i8 0, ptr %i.fe, align 8, !tbaa !65
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.gy = load <2 x ptr>, ptr %i.fq, align 8, !tbaa !64
  store <2 x ptr> %i.gy, ptr %i.gx, align 8, !tbaa !64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.ha = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !555
  store <2 x ptr> %i.ha, ptr %i.gz, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !1557 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 64 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i87 = icmp eq ptr %i.hc, %i.he
  br i1 %.not.i.i.i.i.i.i87, label %bb.v, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.gc, ptr %i.hc, align 8, !tbaa !1560
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.hf, ptr %i.hb, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i88

bb.v:                                             ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.hg = load ptr, ptr %i.gb, align 8, !tbaa !1561 ; 10 uses
  %i.hh = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64               ; 3 uses
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775800
  br i1 %i.hk, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i95

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i109 unwind label %bb.ab, !inline_history !1472

.noexc16.i.i.i109:                                ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i95: ; preds = %bb.v
  %i.hl = ashr exact i64 %i.hj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i96 = call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i96, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hm, i64 1152921504606846975)
  %i.hp = select i1 %i.hn, i64 1152921504606846975, i64 %i.ho ; 3 uses
  %.not.i.i.i.i.i.i.i.i97 = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i97)
  %i.hq = shl nuw nsw i64 %i.hp, 3
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #31
          to label %.noexc17.i.i.i98 unwind label %bb.ab, !inline_history !1472 ; 10 uses

.noexc17.i.i.i98:                                 ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i95
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hj
  store ptr %i.gc, ptr %i.hs, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i99 = icmp eq ptr %i.hg, %i.hc
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i99, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader:          ; preds = %.noexc17.i.i.i98
  %i.ht = add i64 %i.hh, -8
  %i.hu = sub i64 %i.ht, %i.hi                    ; 3 uses
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %min.iters.check801 = icmp ult i64 %i.hu, 136
  br i1 %min.iters.check801, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965, label %vector.memcheck802

vector.memcheck802:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader
  %i.hx = and i64 %i.hu, -8
  %i.hy = add i64 %i.hx, 8                        ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hr, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hg, i64 %i.hy
  %bound0803 = icmp ult ptr %i.hr, %i.ia
  %bound1804 = icmp ult ptr %i.hg, %i.hz
  %found.conflict805 = and i1 %bound0803, %bound1804
  br i1 %found.conflict805, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965, label %vector.ph806

vector.ph806:                                     ; preds = %vector.memcheck802
  %n.vec807 = and i64 %i.hw, 4611686018427387900  ; 3 uses
  %i.ib = shl i64 %n.vec807, 3                    ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hr, i64 %i.ib  ; 2 uses
  %i.id = getelementptr i8, ptr %i.hg, i64 %i.ib
  br label %vector.body808

vector.body808:                                   ; preds = %vector.body808, %vector.ph806
  %index809 = phi i64 [ 0, %vector.ph806 ], [ %index.next814, %vector.body808 ] ; 2 uses
  %i.ie = shl i64 %index809, 3                    ; 2 uses
  %next.gep810 = getelementptr i8, ptr %i.hr, i64 %i.ie ; 2 uses
  %next.gep811 = getelementptr i8, ptr %i.hg, i64 %i.ie ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %i.if = getelementptr i8, ptr %next.gep811, i64 16
  %wide.load812 = load <2 x i64>, ptr %next.gep811, align 8, !tbaa !1560, !alias.scope !1569
  %wide.load813 = load <2 x i64>, ptr %i.if, align 8, !tbaa !1560, !alias.scope !1569
  %i.ig = getelementptr i8, ptr %next.gep810, i64 16
  store <2 x i64> %wide.load812, ptr %next.gep810, align 8, !tbaa !1560, !alias.scope !1570, !noalias !1571
  store <2 x i64> %wide.load813, ptr %i.ig, align 8, !tbaa !1560, !alias.scope !1570, !noalias !1571
  %43 = getelementptr i8, ptr %next.gep811, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep811, align 8, !tbaa !1560, !alias.scope !1569
  store <2 x ptr> splat (ptr null), ptr %43, align 8, !tbaa !1560, !alias.scope !1569
  %index.next814 = add nuw i64 %index809, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next814, %n.vec807
  br i1 %i.ih, label %middle.block815, label %vector.body808, !llvm.loop !1479

middle.block815:                                  ; preds = %vector.body808
  %cmp.n816 = icmp eq i64 %i.hw, %n.vec807
  br i1 %cmp.n816, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965

.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965:       ; preds = %vector.memcheck802, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader, %middle.block815
  %.012.i.i.i.i.i.i.i.i.i.i101.ph = phi ptr [ %i.hr, %vector.memcheck802 ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader ], [ %i.ic, %middle.block815 ]
  %.0911.i.i.i.i.i.i.i.i.i.i102.ph = phi ptr [ %i.hg, %vector.memcheck802 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader ], [ %i.id, %middle.block815 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i.i.i.i.i100:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965, %.lr.ph.i.i.i.i.i.i.i.i.i.i100
  %.012.i.i.i.i.i.i.i.i.i.i101 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i.i.i.i.i100 ], [ %.012.i.i.i.i.i.i.i.i.i.i101.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i102 = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i.i.i100 ], [ %.0911.i.i.i.i.i.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader965 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %i.ii = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i102, align 8, !tbaa !1560, !alias.scope !1568
  store i64 %i.ii, ptr %.012.i.i.i.i.i.i.i.i.i.i101, align 8, !tbaa !1560, !alias.scope !1567
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i102, align 8, !tbaa !1560, !alias.scope !1568
  %i.ij = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i102, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i101, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i103 = icmp eq ptr %i.ij, %i.hc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i103, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100, !llvm.loop !1480

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i104: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100, %middle.block815, %.noexc17.i.i.i98
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i105 = phi ptr [ %i.hr, %.noexc17.i.i.i98 ], [ %i.ic, %middle.block815 ], [ %i.ik, %.lr.ph.i.i.i.i.i.i.i.i.i.i100 ]
  %i.il = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i105, i64 8
  %.not.i23.i.i.i.i.i.i.i106 = icmp eq ptr %i.hg, null
  br i1 %.not.i23.i.i.i.i.i.i.i106, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i104
  %i.im = load ptr, ptr %i.hd, align 8, !tbaa !1558
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.in, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.io) #34, !inline_history !1481
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i104
  store ptr %i.hr, ptr %i.gb, align 8, !tbaa !1561
  store ptr %i.il, ptr %i.hb, align 8, !tbaa !1557
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hp
  store ptr %i.ip, ptr %i.hd, align 8, !tbaa !1558
  %.pre.i.i.i107 = load ptr, ptr %i.fr, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i108 = icmp eq ptr %.pre.i.i.i107, null
  br i1 %.not.i.i.i.i.i.i.i108, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i88, label %bb.y

bb.y:                                             ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.iq = load ptr, ptr %i.fu, align 8, !tbaa !557
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %.pre.i.i.i107 to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i107, i64 noundef %i.it) #34, !inline_history !1471
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i88

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i88: ; preds = %bb.y, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.iu = load ptr, ptr %i.fd, align 8, !tbaa !105 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.fe
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i88
  %i.iw = load i64, ptr %i.fe, align 8, !tbaa !65
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #34, !inline_history !1471
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i90: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89
  %i.iy = load ptr, ptr %21, align 8, !tbaa !105  ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.er
  br i1 %i.iz, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i90
  %i.ja = load i64, ptr %i.er, align 8, !tbaa !65
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #34, !inline_history !1471
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i91
  %i.jc = load ptr, ptr %22, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i92 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i18.i.i.i92, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1ED2Ev.exit.i.i.i"
  %i.jd = load ptr, ptr %i.fv, align 16, !tbaa !557
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jg) #34, !inline_history !1471
  br label %bb.ae

bb.aa:                                            ; preds = %.noexc.i12.i.i.i110
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %21, align 8, !tbaa !105  ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.er
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111: ; preds = %bb.aa
  %i.jk = load i64, ptr %i.er, align 8, !tbaa !65
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #34, !inline_history !1471
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76

bb.ab:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i95, %bb.w, %.noexc14.i.i.i80, %bb.s
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %21) #30, !inline_history !1471
  %i.jn = load ptr, ptr %22, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i78 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i19.i.i.i78, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i79, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jo = load ptr, ptr %i.fv, align 16, !tbaa !557
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jr) #34, !inline_history !1471
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i79

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i79: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76

bb.ad:                                            ; preds = %bb.r
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #30, !inline_history !1471
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76: ; preds = %bb.aa, %bb.ad, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111
  %.pn.pn.i.i.i77 = phi { ptr, i32 } [ %i.js, %bb.ad ], [ %i.jm, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i79 ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111 ], [ %i.jh, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %.body116

bb.ae:                                            ; preds = %bb.z, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_1ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.jt = load ptr, ptr %29, align 8, !tbaa !105  ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.em
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ae
  %i.jv = load i64, ptr %i.em, align 8, !tbaa !65
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %i.jx = load ptr, ptr %28, align 8, !tbaa !105  ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ej
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.jz = load i64, ptr %i.ej, align 8, !tbaa !65
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  %i.kb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.kb, ptr %30, align 8, !tbaa !103
  store i32 1667594341, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 4, ptr %i.kc, align 8, !tbaa !106
  %i.kd = getelementptr inbounds nuw i8, ptr %30, i64 20
  store i8 0, ptr %i.kd, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  %i.ke = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.ke, ptr %31, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i64 16, ptr %i.l, align 8, !tbaa !107
  %i.kf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc130 unwind label %bb.dz ; 2 uses

.noexc130:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  store ptr %i.kf, ptr %31, align 8, !tbaa !105
  %i.kg = load i64, ptr %i.l, align 8, !tbaa !107 ; 3 uses
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kf, ptr noundef nonnull align 1 dereferenceable(16) @.str.104, i64 16, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !106
  %i.ki = load ptr, ptr %31, align 8, !tbaa !105
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg
  store i8 0, ptr %i.kj, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  %.val51 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.kk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 12 uses
  store ptr %i.kk, ptr %18, align 8, !tbaa !103
  %i.kl = load ptr, ptr %30, align 8, !tbaa !105  ; 2 uses
  %i.km = load i64, ptr %i.kc, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERN3ade27ExecutionEngineSetupContextE:bb.a
.noexc.i.i.i172:                                  ; preds = %.noexc.i12.i.i.i169
  store ptr %i.lb, ptr %i.kw, align 8, !tbaa !105
  %i.lc = load i64, ptr %i.j, align 8, !tbaa !107
  store i64 %i.lc, ptr %i.kx, align 8, !tbaa !65
  br label %._crit_edge.i.i11.i.i.i134

._crit_edge.i.i11.i.i.i134:                       ; preds = %.noexc.i.i.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i133
  %i.ld = phi ptr [ %i.lb, %.noexc.i.i.i172 ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i133 ] ; 2 uses
  switch i64 %i.kz, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i11.i.i.i134
  %i.le = load i8, ptr %i.ky, align 1, !tbaa !65
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !65
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i11.i.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr align 1 %i.ky, i64 %i.kz, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i11.i.i.i134
  %i.lf = load i64, ptr %i.j, align 8, !tbaa !107 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !106
  %i.lh = load ptr, ptr %i.kw, align 8, !tbaa !105
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  store ptr %.val51, ptr %i.lj, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %19, ptr noundef nonnull align 8 dereferenceable(272) %.val51, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ak unwind label %bb.av, !inline_history !1483

bb.ak:                                            ; preds = %bb.aj
  %i.lk = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.lm = load <2 x ptr>, ptr %19, align 16, !tbaa !555
  store <2 x ptr> %i.lm, ptr %i.lk, align 8, !tbaa !555
  %i.ln = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 16, !tbaa !557
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %.val51, i64 216
  %i.lr = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.lq, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %.noexc14.i.i.i139 unwind label %bb.at, !inline_history !1484

.noexc14.i.i.i139:                                ; preds = %bb.ak
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1554 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 48 ; 2 uses
  %i.lv = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i140 unwind label %bb.at, !inline_history !1484 ; 11 uses

.noexc15.i.i.i140:                                ; preds = %.noexc14.i.i.i139
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEE", i64 16), ptr %i.lv, align 8, !tbaa !59
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 24 ; 3 uses
  store ptr %i.lx, ptr %i.lw, align 8, !tbaa !103
  %i.ly = load ptr, ptr %18, align 8, !tbaa !105  ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.kk
  br i1 %i.lz, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i141

bb.al:                                            ; preds = %.noexc15.i.i.i140
  %i.ma = load i64, ptr %i.kt, align 8, !tbaa !106 ; 3 uses
  %i.mb = icmp ult i64 %i.ma, 16
  call void @llvm.assume(i1 %i.mb)
  %i.mc = add nuw nsw i64 %i.ma, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lx, ptr noundef nonnull align 8 dereferenceable(1) %i.kk, i64 %i.mc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i141: ; preds = %.noexc15.i.i.i140
  store ptr %i.ly, ptr %i.lw, align 8, !tbaa !105
  %i.md = load i64, ptr %i.kk, align 8, !tbaa !65
  store i64 %i.md, ptr %i.lx, align 8, !tbaa !65
  %.pre.i.i.i.i.i142 = load i64, ptr %i.kt, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i143: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i141, %bb.al
  %i.me = phi i64 [ %.pre.i.i.i.i.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i141 ], [ %i.ma, %bb.al ]
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !106
  store ptr %i.kk, ptr %18, align 8, !tbaa !105
  store i64 0, ptr %i.kt, align 8, !tbaa !106
  store i8 0, ptr %i.kk, align 8, !tbaa !65
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lv, i64 40 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lv, i64 56 ; 3 uses
  store ptr %i.mh, ptr %i.mg, align 8, !tbaa !103
  %i.mi = load ptr, ptr %i.kw, align 8, !tbaa !105 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.kx
  br i1 %i.mj, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i144

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i143
  %i.mk = load i64, ptr %i.lg, align 8, !tbaa !106 ; 3 uses
  %i.ml = icmp ult i64 %i.mk, 16
  call void @llvm.assume(i1 %i.ml)
  %i.mm = add nuw nsw i64 %i.mk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mh, ptr noundef nonnull align 8 dereferenceable(1) %i.kx, i64 %i.mm, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i143
  store ptr %i.mi, ptr %i.mg, align 8, !tbaa !105
  %i.mn = load i64, ptr %i.kx, align 8, !tbaa !65
  store i64 %i.mn, ptr %i.mh, align 8, !tbaa !65
  %.pre3.i.i.i.i.i145 = load i64, ptr %i.lg, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i144, %bb.am
  %i.mo = phi i64 [ %i.mk, %bb.am ], [ %.pre3.i.i.i.i.i145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i144 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !106
  store ptr %i.kx, ptr %i.kw, align 8, !tbaa !105
  store i64 0, ptr %i.lg, align 8, !tbaa !106
  store i8 0, ptr %i.kx, align 8, !tbaa !65
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lv, i64 72
  %i.mr = load <2 x ptr>, ptr %i.lj, align 8, !tbaa !64
  store <2 x ptr> %i.mr, ptr %i.mq, align 8, !tbaa !64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  %i.mt = load <2 x ptr>, ptr %i.ll, align 8, !tbaa !555
  store <2 x ptr> %i.mt, ptr %i.ms, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i8 0, i64 24, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lt, i64 56 ; 3 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !1557 ; 6 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lt, i64 64 ; 3 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i146 = icmp eq ptr %i.mv, %i.mx
  br i1 %.not.i.i.i.i.i.i146, label %bb.an, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.lv, ptr %i.mv, align 8, !tbaa !1560
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr %i.my, ptr %i.mu, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i147

bb.an:                                            ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.mz = load ptr, ptr %i.lu, align 8, !tbaa !1561 ; 10 uses
  %i.na = ptrtoint ptr %i.mv to i64               ; 2 uses
  %i.nb = ptrtoint ptr %i.mz to i64               ; 3 uses
  %i.nc = sub i64 %i.na, %i.nb                    ; 3 uses
  %i.nd = icmp eq i64 %i.nc, 9223372036854775800
  br i1 %i.nd, label %bb.ao, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i154

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i168 unwind label %bb.at, !inline_history !1484

.noexc16.i.i.i168:                                ; preds = %bb.ao
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i154: ; preds = %bb.an
  %i.ne = ashr exact i64 %i.nc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i155 = call i64 @llvm.umax.i64(i64 %i.ne, i64 1)
  %i.nf = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i155, %i.ne ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %i.ne
  %i.nh = call i64 @llvm.umin.i64(i64 %i.nf, i64 1152921504606846975)
  %i.ni = select i1 %i.ng, i64 1152921504606846975, i64 %i.nh ; 3 uses
  %.not.i.i.i.i.i.i.i.i156 = icmp ne i64 %i.ni, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i156)
  %i.nj = shl nuw nsw i64 %i.ni, 3
  %i.nk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nj) #31
          to label %.noexc17.i.i.i157 unwind label %bb.at, !inline_history !1484 ; 10 uses

.noexc17.i.i.i157:                                ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i154
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nc
  store ptr %i.lv, ptr %i.nl, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i158 = icmp eq ptr %i.mz, %i.mv
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i158, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader:          ; preds = %.noexc17.i.i.i157
  %i.nm = add i64 %i.na, -8
  %i.nn = sub i64 %i.nm, %i.nb                    ; 3 uses
  %i.no = lshr i64 %i.nn, 3
  %i.np = add nuw nsw i64 %i.no, 1                ; 2 uses
  %min.iters.check825 = icmp ult i64 %i.nn, 136
  br i1 %min.iters.check825, label %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963, label %vector.memcheck826

vector.memcheck826:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader
  %i.nq = and i64 %i.nn, -8
  %i.nr = add i64 %i.nq, 8                        ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nk, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.mz, i64 %i.nr
  %bound0827 = icmp ult ptr %i.nk, %i.nt
  %bound1828 = icmp ult ptr %i.mz, %i.ns
  %found.conflict829 = and i1 %bound0827, %bound1828
  br i1 %found.conflict829, label %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963, label %vector.ph830

vector.ph830:                                     ; preds = %vector.memcheck826
  %n.vec831 = and i64 %i.np, 4611686018427387900  ; 3 uses
  %i.nu = shl i64 %n.vec831, 3                    ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nk, i64 %i.nu  ; 2 uses
  %i.nw = getelementptr i8, ptr %i.mz, i64 %i.nu
  br label %vector.body832

vector.body832:                                   ; preds = %vector.body832, %vector.ph830
  %index833 = phi i64 [ 0, %vector.ph830 ], [ %index.next838, %vector.body832 ] ; 2 uses
  %i.nx = shl i64 %index833, 3                    ; 2 uses
  %next.gep834 = getelementptr i8, ptr %i.nk, i64 %i.nx ; 2 uses
  %next.gep835 = getelementptr i8, ptr %i.mz, i64 %i.nx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.ny = getelementptr i8, ptr %next.gep835, i64 16
  %wide.load836 = load <2 x i64>, ptr %next.gep835, align 8, !tbaa !1560, !alias.scope !1574
  %wide.load837 = load <2 x i64>, ptr %i.ny, align 8, !tbaa !1560, !alias.scope !1574
  %i.nz = getelementptr i8, ptr %next.gep834, i64 16
  store <2 x i64> %wide.load836, ptr %next.gep834, align 8, !tbaa !1560, !alias.scope !1575, !noalias !1576
  store <2 x i64> %wide.load837, ptr %i.nz, align 8, !tbaa !1560, !alias.scope !1575, !noalias !1576
  %44 = getelementptr i8, ptr %next.gep835, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep835, align 8, !tbaa !1560, !alias.scope !1574
  store <2 x ptr> splat (ptr null), ptr %44, align 8, !tbaa !1560, !alias.scope !1574
  %index.next838 = add nuw i64 %index833, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next838, %n.vec831
  br i1 %i.oa, label %middle.block839, label %vector.body832, !llvm.loop !1491

middle.block839:                                  ; preds = %vector.body832
  %cmp.n840 = icmp eq i64 %i.np, %n.vec831
  br i1 %cmp.n840, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963

.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963:       ; preds = %vector.memcheck826, %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader, %middle.block839
  %.012.i.i.i.i.i.i.i.i.i.i160.ph = phi ptr [ %i.nk, %vector.memcheck826 ], [ %i.nk, %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader ], [ %i.nv, %middle.block839 ]
  %.0911.i.i.i.i.i.i.i.i.i.i161.ph = phi ptr [ %i.mz, %vector.memcheck826 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader ], [ %i.nw, %middle.block839 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i159

.lr.ph.i.i.i.i.i.i.i.i.i.i159:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963, %.lr.ph.i.i.i.i.i.i.i.i.i.i159
  %.012.i.i.i.i.i.i.i.i.i.i160 = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.i.i.i.i.i159 ], [ %.012.i.i.i.i.i.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i161 = phi ptr [ %i.oc, %.lr.ph.i.i.i.i.i.i.i.i.i.i159 ], [ %.0911.i.i.i.i.i.i.i.i.i.i161.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i159.preheader963 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.ob = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i161, align 8, !tbaa !1560, !alias.scope !1573
  store i64 %i.ob, ptr %.012.i.i.i.i.i.i.i.i.i.i160, align 8, !tbaa !1560, !alias.scope !1572
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i161, align 8, !tbaa !1560, !alias.scope !1573
  %i.oc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i161, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i160, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i162 = icmp eq ptr %i.oc, %i.mv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i162, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i.i.i.i159, !llvm.loop !1492

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i159, %middle.block839, %.noexc17.i.i.i157
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i164 = phi ptr [ %i.nk, %.noexc17.i.i.i157 ], [ %i.nv, %middle.block839 ], [ %i.od, %.lr.ph.i.i.i.i.i.i.i.i.i.i159 ]
  %i.oe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i164, i64 8
  %.not.i23.i.i.i.i.i.i.i165 = icmp eq ptr %i.mz, null
  br i1 %.not.i23.i.i.i.i.i.i.i165, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i163
  %i.of = load ptr, ptr %i.mw, align 8, !tbaa !1558
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.og, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.oh) #34, !inline_history !1493
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.ap, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i163
  store ptr %i.nk, ptr %i.lu, align 8, !tbaa !1561
  store ptr %i.oe, ptr %i.mu, align 8, !tbaa !1557
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ni
  store ptr %i.oi, ptr %i.mw, align 8, !tbaa !1558
  %.pre.i.i.i166 = load ptr, ptr %i.lk, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i167 = icmp eq ptr %.pre.i.i.i166, null
  br i1 %.not.i.i.i.i.i.i.i167, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i147, label %bb.aq

bb.aq:                                            ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.oj = load ptr, ptr %i.ln, align 8, !tbaa !557
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = ptrtoint ptr %.pre.i.i.i166 to i64
  %i.om = sub i64 %i.ok, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i166, i64 noundef %i.om) #34, !inline_history !1483
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i147

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i147: ; preds = %bb.aq, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.on = load ptr, ptr %i.kw, align 8, !tbaa !105 ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.kx
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i148: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i147
  %i.op = load i64, ptr %i.kx, align 8, !tbaa !65
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #34, !inline_history !1483
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i149: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i148
  %i.or = load ptr, ptr %18, align 8, !tbaa !105  ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.kk
  br i1 %i.os, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i149
  %i.ot = load i64, ptr %i.kk, align 8, !tbaa !65
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #34, !inline_history !1483
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i150
  %i.ov = load ptr, ptr %19, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i151 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i18.i.i.i151, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2ED2Ev.exit.i.i.i"
  %i.ow = load ptr, ptr %i.lo, align 16, !tbaa !557
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ov to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef %i.oz) #34, !inline_history !1483
  br label %bb.aw

bb.as:                                            ; preds = %.noexc.i12.i.i.i169
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pb = load ptr, ptr %18, align 8, !tbaa !105  ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.kk
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170: ; preds = %bb.as
  %i.pd = load i64, ptr %i.kk, align 8, !tbaa !65
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #34, !inline_history !1483
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135

bb.at:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i154, %bb.ao, %.noexc14.i.i.i139, %bb.ak
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %18) #30, !inline_history !1483
  %i.pg = load ptr, ptr %19, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i137 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i19.i.i.i137, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i138, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ph = load ptr, ptr %i.lo, align 16, !tbaa !557
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = ptrtoint ptr %i.pg to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.pk) #34, !inline_history !1483
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i138

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i138: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135

bb.av:                                            ; preds = %bb.aj
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #30, !inline_history !1483
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i135: ; preds = %bb.as, %bb.av, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170
  %.pn.pn.i.i.i136 = phi { ptr, i32 } [ %i.pl, %bb.av ], [ %i.pf, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i138 ], [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170 ], [ %i.pa, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body175

bb.aw:                                            ; preds = %bb.ar, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_2ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.pm = load ptr, ptr %31, align 8, !tbaa !105  ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.ke
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.aw
  %i.po = load i64, ptr %i.ke, align 8, !tbaa !65
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  %i.pq = load ptr, ptr %30, align 8, !tbaa !105  ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.kb
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.ps = load i64, ptr %i.kb, align 8, !tbaa !65
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.pu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.pu, ptr %32, align 8, !tbaa !103
  store i32 1667594341, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store i64 4, ptr %i.pv, align 8, !tbaa !106
  %i.pw = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i8 0, ptr %i.pw, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.px = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.px, ptr %33, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  store i64 21, ptr %i.i, align 8, !tbaa !107
  %i.py = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc189 unwind label %bb.eb ; 2 uses

.noexc189:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  store ptr %i.py, ptr %33, align 8, !tbaa !105
  %i.pz = load i64, ptr %i.i, align 8, !tbaa !107 ; 3 uses
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.py, ptr noundef nonnull align 1 dereferenceable(21) @.str.105, i64 21, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i64 %i.pz, ptr %i.qa, align 8, !tbaa !106
  %i.qb = load ptr, ptr %33, align 8, !tbaa !105
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.pz
  store i8 0, ptr %i.qc, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %.val52 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.qd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  store ptr %i.qd, ptr %15, align 8, !tbaa !103
  %i.qe = load ptr, ptr %32, align 8, !tbaa !105  ; 2 uses
  %i.qf = load i64, ptr %i.pv, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERN3ade27ExecutionEngineSetupContextE:bb.a
.noexc.i.i.i231:                                  ; preds = %.noexc.i12.i.i.i228
  store ptr %i.qu, ptr %i.qp, align 8, !tbaa !105
  %i.qv = load i64, ptr %i.g, align 8, !tbaa !107
  store i64 %i.qv, ptr %i.qq, align 8, !tbaa !65
  br label %._crit_edge.i.i11.i.i.i193

._crit_edge.i.i11.i.i.i193:                       ; preds = %.noexc.i.i.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i192
  %i.qw = phi ptr [ %i.qu, %.noexc.i.i.i231 ], [ %i.qq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i192 ] ; 2 uses
  switch i64 %i.qs, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i11.i.i.i193
  %i.qx = load i8, ptr %i.qr, align 1, !tbaa !65
  store i8 %i.qx, ptr %i.qw, align 1, !tbaa !65
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i11.i.i.i193
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qw, ptr align 1 %i.qr, i64 %i.qs, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i11.i.i.i193
  %i.qy = load i64, ptr %i.g, align 8, !tbaa !107 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 4 uses
  store i64 %i.qy, ptr %i.qz, align 8, !tbaa !106
  %i.ra = load ptr, ptr %i.qp, align 8, !tbaa !105
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qy
  store i8 0, ptr %i.rb, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.rc = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  store ptr %.val52, ptr %i.rc, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %16, ptr noundef nonnull align 8 dereferenceable(272) %.val52, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bc unwind label %bb.bn, !inline_history !1495

bb.bc:                                            ; preds = %bb.bb
  %i.rd = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.rf = load <2 x ptr>, ptr %16, align 16, !tbaa !555
  store <2 x ptr> %i.rf, ptr %i.rd, align 8, !tbaa !555
  %i.rg = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.ri = load ptr, ptr %i.rh, align 16, !tbaa !557
  store ptr %i.ri, ptr %i.rg, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %.val52, i64 216
  %i.rk = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.rj, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %.noexc14.i.i.i198 unwind label %bb.bl, !inline_history !1496

.noexc14.i.i.i198:                                ; preds = %bb.bc
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !1554 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 48 ; 2 uses
  %i.ro = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i199 unwind label %bb.bl, !inline_history !1496 ; 11 uses

.noexc15.i.i.i199:                                ; preds = %.noexc14.i.i.i198
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEE", i64 16), ptr %i.ro, align 8, !tbaa !59
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 24 ; 3 uses
  store ptr %i.rq, ptr %i.rp, align 8, !tbaa !103
  %i.rr = load ptr, ptr %15, align 8, !tbaa !105  ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.qd
  br i1 %i.rs, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i200

bb.bd:                                            ; preds = %.noexc15.i.i.i199
  %i.rt = load i64, ptr %i.qm, align 8, !tbaa !106 ; 3 uses
  %i.ru = icmp ult i64 %i.rt, 16
  call void @llvm.assume(i1 %i.ru)
  %i.rv = add nuw nsw i64 %i.rt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rq, ptr noundef nonnull align 8 dereferenceable(1) %i.qd, i64 %i.rv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i200: ; preds = %.noexc15.i.i.i199
  store ptr %i.rr, ptr %i.rp, align 8, !tbaa !105
  %i.rw = load i64, ptr %i.qd, align 8, !tbaa !65
  store i64 %i.rw, ptr %i.rq, align 8, !tbaa !65
  %.pre.i.i.i.i.i201 = load i64, ptr %i.qm, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i202: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i200, %bb.bd
  %i.rx = phi i64 [ %.pre.i.i.i.i.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i200 ], [ %i.rt, %bb.bd ]
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !106
  store ptr %i.qd, ptr %15, align 8, !tbaa !105
  store i64 0, ptr %i.qm, align 8, !tbaa !106
  store i8 0, ptr %i.qd, align 8, !tbaa !65
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ro, i64 40 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 56 ; 3 uses
  store ptr %i.sa, ptr %i.rz, align 8, !tbaa !103
  %i.sb = load ptr, ptr %i.qp, align 8, !tbaa !105 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.qq
  br i1 %i.sc, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i203

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i202
  %i.sd = load i64, ptr %i.qz, align 8, !tbaa !106 ; 3 uses
  %i.se = icmp ult i64 %i.sd, 16
  call void @llvm.assume(i1 %i.se)
  %i.sf = add nuw nsw i64 %i.sd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sa, ptr noundef nonnull align 8 dereferenceable(1) %i.qq, i64 %i.sf, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i202
  store ptr %i.sb, ptr %i.rz, align 8, !tbaa !105
  %i.sg = load i64, ptr %i.qq, align 8, !tbaa !65
  store i64 %i.sg, ptr %i.sa, align 8, !tbaa !65
  %.pre3.i.i.i.i.i204 = load i64, ptr %i.qz, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i203, %bb.be
  %i.sh = phi i64 [ %i.sd, %bb.be ], [ %.pre3.i.i.i.i.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i203 ]
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 48
  store i64 %i.sh, ptr %i.si, align 8, !tbaa !106
  store ptr %i.qq, ptr %i.qp, align 8, !tbaa !105
  store i64 0, ptr %i.qz, align 8, !tbaa !106
  store i8 0, ptr %i.qq, align 8, !tbaa !65
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ro, i64 72
  %i.sk = load <2 x ptr>, ptr %i.rc, align 8, !tbaa !64
  store <2 x ptr> %i.sk, ptr %i.sj, align 8, !tbaa !64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ro, i64 88
  %i.sm = load <2 x ptr>, ptr %i.re, align 8, !tbaa !555
  store <2 x ptr> %i.sm, ptr %i.sl, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rd, i8 0, i64 24, i1 false)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rm, i64 56 ; 3 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !1557 ; 6 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rm, i64 64 ; 3 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i205 = icmp eq ptr %i.so, %i.sq
  br i1 %.not.i.i.i.i.i.i205, label %bb.bf, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.ro, ptr %i.so, align 8, !tbaa !1560
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store ptr %i.sr, ptr %i.sn, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i206

bb.bf:                                            ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.ss = load ptr, ptr %i.rn, align 8, !tbaa !1561 ; 10 uses
  %i.st = ptrtoint ptr %i.so to i64               ; 2 uses
  %i.su = ptrtoint ptr %i.ss to i64               ; 3 uses
  %i.sv = sub i64 %i.st, %i.su                    ; 3 uses
  %i.sw = icmp eq i64 %i.sv, 9223372036854775800
  br i1 %i.sw, label %bb.bg, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i213

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i227 unwind label %bb.bl, !inline_history !1496

.noexc16.i.i.i227:                                ; preds = %bb.bg
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i213: ; preds = %bb.bf
  %i.sx = ashr exact i64 %i.sv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i214 = call i64 @llvm.umax.i64(i64 %i.sx, i64 1)
  %i.sy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i214, %i.sx ; 2 uses
  %i.sz = icmp ult i64 %i.sy, %i.sx
  %i.ta = call i64 @llvm.umin.i64(i64 %i.sy, i64 1152921504606846975)
  %i.tb = select i1 %i.sz, i64 1152921504606846975, i64 %i.ta ; 3 uses
  %.not.i.i.i.i.i.i.i.i215 = icmp ne i64 %i.tb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i215)
  %i.tc = shl nuw nsw i64 %i.tb, 3
  %i.td = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tc) #31
          to label %.noexc17.i.i.i216 unwind label %bb.bl, !inline_history !1496 ; 10 uses

.noexc17.i.i.i216:                                ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i213
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.sv
  store ptr %i.ro, ptr %i.te, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i217 = icmp eq ptr %i.ss, %i.so
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i217, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i222, label %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader:          ; preds = %.noexc17.i.i.i216
  %i.tf = add i64 %i.st, -8
  %i.tg = sub i64 %i.tf, %i.su                    ; 3 uses
  %i.th = lshr i64 %i.tg, 3
  %i.ti = add nuw nsw i64 %i.th, 1                ; 2 uses
  %min.iters.check849 = icmp ult i64 %i.tg, 136
  br i1 %min.iters.check849, label %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961, label %vector.memcheck850

vector.memcheck850:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader
  %i.tj = and i64 %i.tg, -8
  %i.tk = add i64 %i.tj, 8                        ; 2 uses
  %i.tl = getelementptr i8, ptr %i.td, i64 %i.tk
  %i.tm = getelementptr i8, ptr %i.ss, i64 %i.tk
  %bound0851 = icmp ult ptr %i.td, %i.tm
  %bound1852 = icmp ult ptr %i.ss, %i.tl
  %found.conflict853 = and i1 %bound0851, %bound1852
  br i1 %found.conflict853, label %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961, label %vector.ph854

vector.ph854:                                     ; preds = %vector.memcheck850
  %n.vec855 = and i64 %i.ti, 4611686018427387900  ; 3 uses
  %i.tn = shl i64 %n.vec855, 3                    ; 2 uses
  %i.to = getelementptr i8, ptr %i.td, i64 %i.tn  ; 2 uses
  %i.tp = getelementptr i8, ptr %i.ss, i64 %i.tn
  br label %vector.body856

vector.body856:                                   ; preds = %vector.body856, %vector.ph854
  %index857 = phi i64 [ 0, %vector.ph854 ], [ %index.next862, %vector.body856 ] ; 2 uses
  %i.tq = shl i64 %index857, 3                    ; 2 uses
  %next.gep858 = getelementptr i8, ptr %i.td, i64 %i.tq ; 2 uses
  %next.gep859 = getelementptr i8, ptr %i.ss, i64 %i.tq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  %i.tr = getelementptr i8, ptr %next.gep859, i64 16
  %wide.load860 = load <2 x i64>, ptr %next.gep859, align 8, !tbaa !1560, !alias.scope !1579
  %wide.load861 = load <2 x i64>, ptr %i.tr, align 8, !tbaa !1560, !alias.scope !1579
  %i.ts = getelementptr i8, ptr %next.gep858, i64 16
  store <2 x i64> %wide.load860, ptr %next.gep858, align 8, !tbaa !1560, !alias.scope !1580, !noalias !1581
  store <2 x i64> %wide.load861, ptr %i.ts, align 8, !tbaa !1560, !alias.scope !1580, !noalias !1581
  %45 = getelementptr i8, ptr %next.gep859, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep859, align 8, !tbaa !1560, !alias.scope !1579
  store <2 x ptr> splat (ptr null), ptr %45, align 8, !tbaa !1560, !alias.scope !1579
  %index.next862 = add nuw i64 %index857, 4       ; 2 uses
  %i.tt = icmp eq i64 %index.next862, %n.vec855
  br i1 %i.tt, label %middle.block863, label %vector.body856, !llvm.loop !1503

middle.block863:                                  ; preds = %vector.body856
  %cmp.n864 = icmp eq i64 %i.ti, %n.vec855
  br i1 %cmp.n864, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i222, label %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961

.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961:       ; preds = %vector.memcheck850, %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader, %middle.block863
  %.012.i.i.i.i.i.i.i.i.i.i219.ph = phi ptr [ %i.td, %vector.memcheck850 ], [ %i.td, %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader ], [ %i.to, %middle.block863 ]
  %.0911.i.i.i.i.i.i.i.i.i.i220.ph = phi ptr [ %i.ss, %vector.memcheck850 ], [ %i.ss, %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader ], [ %i.tp, %middle.block863 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i218

.lr.ph.i.i.i.i.i.i.i.i.i.i218:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961, %.lr.ph.i.i.i.i.i.i.i.i.i.i218
  %.012.i.i.i.i.i.i.i.i.i.i219 = phi ptr [ %i.tw, %.lr.ph.i.i.i.i.i.i.i.i.i.i218 ], [ %.012.i.i.i.i.i.i.i.i.i.i219.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i220 = phi ptr [ %i.tv, %.lr.ph.i.i.i.i.i.i.i.i.i.i218 ], [ %.0911.i.i.i.i.i.i.i.i.i.i220.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i218.preheader961 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  %i.tu = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i220, align 8, !tbaa !1560, !alias.scope !1578
  store i64 %i.tu, ptr %.012.i.i.i.i.i.i.i.i.i.i219, align 8, !tbaa !1560, !alias.scope !1577
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i220, align 8, !tbaa !1560, !alias.scope !1578
  %i.tv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i220, i64 8 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i219, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i221 = icmp eq ptr %i.tv, %i.so
  br i1 %.not.i.i.i.i.i.i.i.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i222, label %.lr.ph.i.i.i.i.i.i.i.i.i.i218, !llvm.loop !1504

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i222: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i218, %middle.block863, %.noexc17.i.i.i216
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i223 = phi ptr [ %i.td, %.noexc17.i.i.i216 ], [ %i.to, %middle.block863 ], [ %i.tw, %.lr.ph.i.i.i.i.i.i.i.i.i.i218 ]
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i223, i64 8
  %.not.i23.i.i.i.i.i.i.i224 = icmp eq ptr %i.ss, null
  br i1 %.not.i23.i.i.i.i.i.i.i224, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i222
  %i.ty = load ptr, ptr %i.sp, align 8, !tbaa !1558
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = sub i64 %i.tz, %i.su
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.ua) #34, !inline_history !1505
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.bh, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i222
  store ptr %i.td, ptr %i.rn, align 8, !tbaa !1561
  store ptr %i.tx, ptr %i.sn, align 8, !tbaa !1557
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.tb
  store ptr %i.ub, ptr %i.sp, align 8, !tbaa !1558
  %.pre.i.i.i225 = load ptr, ptr %i.rd, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i226 = icmp eq ptr %.pre.i.i.i225, null
  br i1 %.not.i.i.i.i.i.i.i226, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i206, label %bb.bi

bb.bi:                                            ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.uc = load ptr, ptr %i.rg, align 8, !tbaa !557
  %i.ud = ptrtoint ptr %i.uc to i64
  %i.ue = ptrtoint ptr %.pre.i.i.i225 to i64
  %i.uf = sub i64 %i.ud, %i.ue
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i225, i64 noundef %i.uf) #34, !inline_history !1495
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i206

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i206: ; preds = %bb.bi, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.ug = load ptr, ptr %i.qp, align 8, !tbaa !105 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.qq
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i207: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i206
  %i.ui = load i64, ptr %i.qq, align 8, !tbaa !65
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #34, !inline_history !1495
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i208: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i207
  %i.uk = load ptr, ptr %15, align 8, !tbaa !105  ; 2 uses
  %i.ul = icmp eq ptr %i.uk, %i.qd
  br i1 %i.ul, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i208
  %i.um = load i64, ptr %i.qd, align 8, !tbaa !65
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.un) #34, !inline_history !1495
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i209
  %i.uo = load ptr, ptr %16, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i210 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i18.i.i.i210, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3ED2Ev.exit.i.i.i"
  %i.up = load ptr, ptr %i.rh, align 16, !tbaa !557
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %i.uo to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.us) #34, !inline_history !1495
  br label %bb.bo

bb.bk:                                            ; preds = %.noexc.i12.i.i.i228
  %i.ut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uu = load ptr, ptr %15, align 8, !tbaa !105  ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.qd
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i229: ; preds = %bb.bk
  %i.uw = load i64, ptr %i.qd, align 8, !tbaa !65
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.ux) #34, !inline_history !1495
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194

bb.bl:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i213, %bb.bg, %.noexc14.i.i.i198, %bb.bc
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %15) #30, !inline_history !1495
  %i.uz = load ptr, ptr %16, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i196 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i19.i.i.i196, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i197, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.va = load ptr, ptr %i.rh, align 16, !tbaa !557
  %i.vb = ptrtoint ptr %i.va to i64
  %i.vc = ptrtoint ptr %i.uz to i64
  %i.vd = sub i64 %i.vb, %i.vc
  call void @_ZdlPvm(ptr noundef nonnull %i.uz, i64 noundef %i.vd) #34, !inline_history !1495
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i197

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i197: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194

bb.bn:                                            ; preds = %bb.bb
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #30, !inline_history !1495
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194: ; preds = %bb.bk, %bb.bn, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i229
  %.pn.pn.i.i.i195 = phi { ptr, i32 } [ %i.ve, %bb.bn ], [ %i.uy, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i197 ], [ %i.ut, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i229 ], [ %i.ut, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body234

bb.bo:                                            ; preds = %bb.bj, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_3ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.vf = load ptr, ptr %33, align 8, !tbaa !105  ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.px
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.bo
  %i.vh = load i64, ptr %i.px, align 8, !tbaa !65
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  %i.vj = load ptr, ptr %32, align 8, !tbaa !105  ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.pu
  br i1 %i.vk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.vl = load i64, ptr %i.pu, align 8, !tbaa !65
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  %i.vn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  store ptr %i.vn, ptr %34, align 8, !tbaa !103
  store i32 1667594341, ptr %i.vn, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 4, ptr %i.vo, align 8, !tbaa !106
  %i.vp = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i8 0, ptr %i.vp, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  %i.vq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.vq, ptr %35, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.vq, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 12, i1 false)
  %i.vr = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 12, ptr %i.vr, align 8, !tbaa !106
  %i.vs = getelementptr inbounds nuw i8, ptr %35, i64 28
  store i8 0, ptr %i.vs, align 4, !tbaa !65
  %.val53 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.vt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.vt, ptr %12, align 8, !tbaa !103
  %i.vu = load i32, ptr %i.vn, align 8
  store i32 %i.vu, ptr %i.vt, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 4, ptr %i.vv, align 8, !tbaa !106
  %i.vw = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.vw, align 4, !tbaa !65
  %i.vx = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 9 uses
  store ptr %i.vy, ptr %i.vx, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.vy, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 12, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 4 uses
  store i64 12, ptr %i.vz, align 8, !tbaa !106
  %i.wa = getelementptr inbounds nuw i8, ptr %12, i64 60
  store i8 0, ptr %i.wa, align 4, !tbaa !65
  %i.wb = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  store ptr %.val53, ptr %i.wb, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %13, ptr noundef nonnull align 8 dereferenceable(272) %.val53, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.bp unwind label %bb.bz, !inline_history !1506

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i240
  %i.wc = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.we = load <2 x ptr>, ptr %13, align 16, !tbaa !555
  store <2 x ptr> %i.we, ptr %i.wc, align 8, !tbaa !555
  %i.wf = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.wh = load ptr, ptr %i.wg, align 16, !tbaa !557
  store ptr %i.wh, ptr %i.wf, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.wi = getelementptr inbounds nuw i8, ptr %.val53, i64 216
  %i.wj = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.wi, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %.noexc14.i.i.i257 unwind label %bb.bx, !inline_history !1507

.noexc14.i.i.i257:                                ; preds = %bb.bp
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 40
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !1554 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 48 ; 2 uses
  %i.wn = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i258 unwind label %bb.bx, !inline_history !1507 ; 11 uses

.noexc15.i.i.i258:                                ; preds = %.noexc14.i.i.i257
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEE", i64 16), ptr %i.wn, align 8, !tbaa !59
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 24 ; 3 uses
  store ptr %i.wp, ptr %i.wo, align 8, !tbaa !103
  %i.wq = load ptr, ptr %12, align 8, !tbaa !105  ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.vt
  br i1 %i.wr, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i259

bb.bq:                                            ; preds = %.noexc15.i.i.i258
  %i.ws = load i64, ptr %i.vv, align 8, !tbaa !106 ; 3 uses
  %i.wt = icmp ult i64 %i.ws, 16
  call void @llvm.assume(i1 %i.wt)
  %i.wu = add nuw nsw i64 %i.ws, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wp, ptr noundef nonnull align 8 dereferenceable(1) %i.vt, i64 %i.wu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i259: ; preds = %.noexc15.i.i.i258
  store ptr %i.wq, ptr %i.wo, align 8, !tbaa !105
  %i.wv = load i64, ptr %i.vt, align 8, !tbaa !65
  store i64 %i.wv, ptr %i.wp, align 8, !tbaa !65
  %.pre.i.i.i.i.i260 = load i64, ptr %i.vv, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i261: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i259, %bb.bq
  %i.ww = phi i64 [ %.pre.i.i.i.i.i260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i259 ], [ %i.ws, %bb.bq ]
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  store i64 %i.ww, ptr %i.wx, align 8, !tbaa !106
  store ptr %i.vt, ptr %12, align 8, !tbaa !105
  store i64 0, ptr %i.vv, align 8, !tbaa !106
  store i8 0, ptr %i.vt, align 8, !tbaa !65
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wn, i64 40 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wn, i64 56 ; 3 uses
  store ptr %i.wz, ptr %i.wy, align 8, !tbaa !103
  %i.xa = load ptr, ptr %i.vx, align 8, !tbaa !105 ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.vy
  br i1 %i.xb, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i262

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i261
  %i.xc = load i64, ptr %i.vz, align 8, !tbaa !106 ; 3 uses
  %i.xd = icmp ult i64 %i.xc, 16
  call void @llvm.assume(i1 %i.xd)
  %i.xe = add nuw nsw i64 %i.xc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wz, ptr noundef nonnull align 8 dereferenceable(1) %i.vy, i64 %i.xe, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i261
  store ptr %i.xa, ptr %i.wy, align 8, !tbaa !105
  %i.xf = load i64, ptr %i.vy, align 8, !tbaa !65
  store i64 %i.xf, ptr %i.wz, align 8, !tbaa !65
  %.pre3.i.i.i.i.i263 = load i64, ptr %i.vz, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i262, %bb.br
  %i.xg = phi i64 [ %i.xc, %bb.br ], [ %.pre3.i.i.i.i.i263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i262 ]
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wn, i64 48
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !106
  store ptr %i.vy, ptr %i.vx, align 8, !tbaa !105
  store i64 0, ptr %i.vz, align 8, !tbaa !106
  store i8 0, ptr %i.vy, align 8, !tbaa !65
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wn, i64 72
  %i.xj = load <2 x ptr>, ptr %i.wb, align 8, !tbaa !64
  store <2 x ptr> %i.xj, ptr %i.xi, align 8, !tbaa !64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wn, i64 88
  %i.xl = load <2 x ptr>, ptr %i.wd, align 8, !tbaa !555
  store <2 x ptr> %i.xl, ptr %i.xk, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wc, i8 0, i64 24, i1 false)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wl, i64 56 ; 3 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1557 ; 6 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wl, i64 64 ; 3 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i264 = icmp eq ptr %i.xn, %i.xp
  br i1 %.not.i.i.i.i.i.i264, label %bb.bs, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.wn, ptr %i.xn, align 8, !tbaa !1560
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store ptr %i.xq, ptr %i.xm, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i265

bb.bs:                                            ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.xr = load ptr, ptr %i.wm, align 8, !tbaa !1561 ; 10 uses
  %i.xs = ptrtoint ptr %i.xn to i64               ; 2 uses
  %i.xt = ptrtoint ptr %i.xr to i64               ; 3 uses
  %i.xu = sub i64 %i.xs, %i.xt                    ; 3 uses
  %i.xv = icmp eq i64 %i.xu, 9223372036854775800
  br i1 %i.xv, label %bb.bt, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i272

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i286 unwind label %bb.bx, !inline_history !1507

.noexc16.i.i.i286:                                ; preds = %bb.bt
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i272: ; preds = %bb.bs
  %i.xw = ashr exact i64 %i.xu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i273 = call i64 @llvm.umax.i64(i64 %i.xw, i64 1)
  %i.xx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i273, %i.xw ; 2 uses
  %i.xy = icmp ult i64 %i.xx, %i.xw
  %i.xz = call i64 @llvm.umin.i64(i64 %i.xx, i64 1152921504606846975)
  %i.ya = select i1 %i.xy, i64 1152921504606846975, i64 %i.xz ; 3 uses
  %.not.i.i.i.i.i.i.i.i274 = icmp ne i64 %i.ya, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i274)
  %i.yb = shl nuw nsw i64 %i.ya, 3
  %i.yc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yb) #31
          to label %.noexc17.i.i.i275 unwind label %bb.bx, !inline_history !1507 ; 10 uses

.noexc17.i.i.i275:                                ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i272
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.xu
  store ptr %i.wn, ptr %i.yd, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i276 = icmp eq ptr %i.xr, %i.xn
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i276, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i281, label %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader:          ; preds = %.noexc17.i.i.i275
  %i.ye = add i64 %i.xs, -8
  %i.yf = sub i64 %i.ye, %i.xt                    ; 3 uses
  %i.yg = lshr i64 %i.yf, 3
  %i.yh = add nuw nsw i64 %i.yg, 1                ; 2 uses
  %min.iters.check873 = icmp ult i64 %i.yf, 136
  br i1 %min.iters.check873, label %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959, label %vector.memcheck874

vector.memcheck874:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader
  %i.yi = and i64 %i.yf, -8
  %i.yj = add i64 %i.yi, 8                        ; 2 uses
  %i.yk = getelementptr i8, ptr %i.yc, i64 %i.yj
  %i.yl = getelementptr i8, ptr %i.xr, i64 %i.yj
  %bound0875 = icmp ult ptr %i.yc, %i.yl
  %bound1876 = icmp ult ptr %i.xr, %i.yk
  %found.conflict877 = and i1 %bound0875, %bound1876
  br i1 %found.conflict877, label %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959, label %vector.ph878

vector.ph878:                                     ; preds = %vector.memcheck874
  %n.vec879 = and i64 %i.yh, 4611686018427387900  ; 3 uses
  %i.ym = shl i64 %n.vec879, 3                    ; 2 uses
  %i.yn = getelementptr i8, ptr %i.yc, i64 %i.ym  ; 2 uses
  %i.yo = getelementptr i8, ptr %i.xr, i64 %i.ym
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %vector.ph878
  %index881 = phi i64 [ 0, %vector.ph878 ], [ %index.next886, %vector.body880 ] ; 2 uses
  %i.yp = shl i64 %index881, 3                    ; 2 uses
  %next.gep882 = getelementptr i8, ptr %i.yc, i64 %i.yp ; 2 uses
  %next.gep883 = getelementptr i8, ptr %i.xr, i64 %i.yp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.yq = getelementptr i8, ptr %next.gep883, i64 16
  %wide.load884 = load <2 x i64>, ptr %next.gep883, align 8, !tbaa !1560, !alias.scope !1584
  %wide.load885 = load <2 x i64>, ptr %i.yq, align 8, !tbaa !1560, !alias.scope !1584
  %i.yr = getelementptr i8, ptr %next.gep882, i64 16
  store <2 x i64> %wide.load884, ptr %next.gep882, align 8, !tbaa !1560, !alias.scope !1585, !noalias !1586
  store <2 x i64> %wide.load885, ptr %i.yr, align 8, !tbaa !1560, !alias.scope !1585, !noalias !1586
  %46 = getelementptr i8, ptr %next.gep883, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep883, align 8, !tbaa !1560, !alias.scope !1584
  store <2 x ptr> splat (ptr null), ptr %46, align 8, !tbaa !1560, !alias.scope !1584
  %index.next886 = add nuw i64 %index881, 4       ; 2 uses
  %i.ys = icmp eq i64 %index.next886, %n.vec879
  br i1 %i.ys, label %middle.block887, label %vector.body880, !llvm.loop !1514

middle.block887:                                  ; preds = %vector.body880
  %cmp.n888 = icmp eq i64 %i.yh, %n.vec879
  br i1 %cmp.n888, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i281, label %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959

.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959:       ; preds = %vector.memcheck874, %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader, %middle.block887
  %.012.i.i.i.i.i.i.i.i.i.i278.ph = phi ptr [ %i.yc, %vector.memcheck874 ], [ %i.yc, %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader ], [ %i.yn, %middle.block887 ]
  %.0911.i.i.i.i.i.i.i.i.i.i279.ph = phi ptr [ %i.xr, %vector.memcheck874 ], [ %i.xr, %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader ], [ %i.yo, %middle.block887 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i277

.lr.ph.i.i.i.i.i.i.i.i.i.i277:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959, %.lr.ph.i.i.i.i.i.i.i.i.i.i277
  %.012.i.i.i.i.i.i.i.i.i.i278 = phi ptr [ %i.yv, %.lr.ph.i.i.i.i.i.i.i.i.i.i277 ], [ %.012.i.i.i.i.i.i.i.i.i.i278.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i279 = phi ptr [ %i.yu, %.lr.ph.i.i.i.i.i.i.i.i.i.i277 ], [ %.0911.i.i.i.i.i.i.i.i.i.i279.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i277.preheader959 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.yt = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i279, align 8, !tbaa !1560, !alias.scope !1583
  store i64 %i.yt, ptr %.012.i.i.i.i.i.i.i.i.i.i278, align 8, !tbaa !1560, !alias.scope !1582
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i279, align 8, !tbaa !1560, !alias.scope !1583
  %i.yu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i279, i64 8 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i278, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i280 = icmp eq ptr %i.yu, %i.xn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i280, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i281, label %.lr.ph.i.i.i.i.i.i.i.i.i.i277, !llvm.loop !1515

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i281: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i277, %middle.block887, %.noexc17.i.i.i275
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i282 = phi ptr [ %i.yc, %.noexc17.i.i.i275 ], [ %i.yn, %middle.block887 ], [ %i.yv, %.lr.ph.i.i.i.i.i.i.i.i.i.i277 ]
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i282, i64 8
  %.not.i23.i.i.i.i.i.i.i283 = icmp eq ptr %i.xr, null
  br i1 %.not.i23.i.i.i.i.i.i.i283, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i281
  %i.yx = load ptr, ptr %i.xo, align 8, !tbaa !1558
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = sub i64 %i.yy, %i.xt
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.yz) #34, !inline_history !1516
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.bu, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i281
  store ptr %i.yc, ptr %i.wm, align 8, !tbaa !1561
  store ptr %i.yw, ptr %i.xm, align 8, !tbaa !1557
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.ya
  store ptr %i.za, ptr %i.xo, align 8, !tbaa !1558
  %.pre.i.i.i284 = load ptr, ptr %i.wc, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i285 = icmp eq ptr %.pre.i.i.i284, null
  br i1 %.not.i.i.i.i.i.i.i285, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i265, label %bb.bv

bb.bv:                                            ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.zb = load ptr, ptr %i.wf, align 8, !tbaa !557
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %.pre.i.i.i284 to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i284, i64 noundef %i.ze) #34, !inline_history !1506
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i265

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i265: ; preds = %bb.bv, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.zf = load ptr, ptr %i.vx, align 8, !tbaa !105 ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.vy
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i266: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i265
  %i.zh = load i64, ptr %i.vy, align 8, !tbaa !65
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zi) #34, !inline_history !1506
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i267: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i266
  %i.zj = load ptr, ptr %12, align 8, !tbaa !105  ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %i.vt
  br i1 %i.zk, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i267
  %i.zl = load i64, ptr %i.vt, align 8, !tbaa !65
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zm) #34, !inline_history !1506
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i268
  %i.zn = load ptr, ptr %13, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i269 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i18.i.i.i269, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4ED2Ev.exit.i.i.i"
  %i.zo = load ptr, ptr %i.wg, align 16, !tbaa !557
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %i.zn to i64
  %i.zr = sub i64 %i.zp, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef %i.zr) #34, !inline_history !1506
  br label %bb.ca

bb.bx:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i272, %bb.bt, %.noexc14.i.i.i257, %bb.bp
  %i.zs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %12) #30, !inline_history !1506
  %i.zt = load ptr, ptr %13, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i255 = icmp eq ptr %i.zt, null
  br i1 %.not.i.i.i19.i.i.i255, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i256, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.zu = load ptr, ptr %i.wg, align 16, !tbaa !557
  %i.zv = ptrtoint ptr %i.zu to i64
  %i.zw = ptrtoint ptr %i.zt to i64
  %i.zx = sub i64 %i.zv, %i.zw
  call void @_ZdlPvm(ptr noundef nonnull %i.zt, i64 noundef %i.zx) #34, !inline_history !1506
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i256

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i256: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %.body293

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i240
  %i.zy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #30, !inline_history !1506
  br label %.body293

bb.ca:                                            ; preds = %bb.bw, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_4ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.zz = load ptr, ptr %35, align 8, !tbaa !105  ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.vq
  br i1 %i.aaa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.ca
  %i.aab = load i64, ptr %i.vq, align 8, !tbaa !65
  %i.aac = add i64 %i.aab, 1
  call void @_ZdlPvm(ptr noundef %i.zz, i64 noundef %i.aac) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.aad = load ptr, ptr %34, align 8, !tbaa !105 ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.vn
  br i1 %i.aae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.aaf = load i64, ptr %i.vn, align 8, !tbaa !65
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aag) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.aah = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.aah, ptr %36, align 8, !tbaa !103
  store i32 1667594341, ptr %i.aah, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 4, ptr %i.aai, align 8, !tbaa !106
  %i.aaj = getelementptr inbounds nuw i8, ptr %36, i64 20
  store i8 0, ptr %i.aaj, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  %i.aak = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.aak, ptr %37, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aak, ptr noundef nonnull align 1 dereferenceable(9) @.str.107, i64 9, i1 false)
  %i.aal = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 9, ptr %i.aal, align 8, !tbaa !106
  %i.aam = getelementptr inbounds nuw i8, ptr %37, i64 25
  store i8 0, ptr %i.aam, align 1, !tbaa !65
  %.val54 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.aan = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.aan, ptr %9, align 8, !tbaa !103
  %i.aao = load i32, ptr %i.aah, align 8
  store i32 %i.aao, ptr %i.aan, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 4, ptr %i.aap, align 8, !tbaa !106
  %i.aaq = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.aaq, align 4, !tbaa !65
  %i.aar = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 9 uses
  store ptr %i.aas, ptr %i.aar, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aas, ptr noundef nonnull align 1 dereferenceable(9) @.str.107, i64 9, i1 false)
  %i.aat = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  store i64 9, ptr %i.aat, align 8, !tbaa !106
  %i.aau = getelementptr inbounds nuw i8, ptr %9, i64 57
  store i8 0, ptr %i.aau, align 1, !tbaa !65
  %i.aav = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store ptr %.val54, ptr %i.aav, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %10, ptr noundef nonnull align 8 dereferenceable(272) %.val54, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.cb unwind label %bb.cl, !inline_history !1517

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i299
  %i.aaw = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.aay = load <2 x ptr>, ptr %10, align 16, !tbaa !555
  store <2 x ptr> %i.aay, ptr %i.aaw, align 8, !tbaa !555
  %i.aaz = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.abb = load ptr, ptr %i.aba, align 16, !tbaa !557
  store ptr %i.abb, ptr %i.aaz, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.abc = getelementptr inbounds nuw i8, ptr %.val54, i64 216
  %i.abd = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.abc, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %.noexc14.i.i.i316 unwind label %bb.cj, !inline_history !1518

.noexc14.i.i.i316:                                ; preds = %bb.cb
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 40
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !1554 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 48 ; 2 uses
  %i.abh = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i317 unwind label %bb.cj, !inline_history !1518 ; 11 uses

.noexc15.i.i.i317:                                ; preds = %.noexc14.i.i.i316
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEE", i64 16), ptr %i.abh, align 8, !tbaa !59
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 24 ; 3 uses
  store ptr %i.abj, ptr %i.abi, align 8, !tbaa !103
  %i.abk = load ptr, ptr %9, align 8, !tbaa !105  ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.aan
  br i1 %i.abl, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i318

bb.cc:                                            ; preds = %.noexc15.i.i.i317
  %i.abm = load i64, ptr %i.aap, align 8, !tbaa !106 ; 3 uses
  %i.abn = icmp ult i64 %i.abm, 16
  call void @llvm.assume(i1 %i.abn)
  %i.abo = add nuw nsw i64 %i.abm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abj, ptr noundef nonnull align 8 dereferenceable(1) %i.aan, i64 %i.abo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i318: ; preds = %.noexc15.i.i.i317
  store ptr %i.abk, ptr %i.abi, align 8, !tbaa !105
  %i.abp = load i64, ptr %i.aan, align 8, !tbaa !65
  store i64 %i.abp, ptr %i.abj, align 8, !tbaa !65
  %.pre.i.i.i.i.i319 = load i64, ptr %i.aap, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i320: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i318, %bb.cc
  %i.abq = phi i64 [ %.pre.i.i.i.i.i319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i318 ], [ %i.abm, %bb.cc ]
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  store i64 %i.abq, ptr %i.abr, align 8, !tbaa !106
  store ptr %i.aan, ptr %9, align 8, !tbaa !105
  store i64 0, ptr %i.aap, align 8, !tbaa !106
  store i8 0, ptr %i.aan, align 8, !tbaa !65
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abh, i64 40 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abh, i64 56 ; 3 uses
  store ptr %i.abt, ptr %i.abs, align 8, !tbaa !103
  %i.abu = load ptr, ptr %i.aar, align 8, !tbaa !105 ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.aas
  br i1 %i.abv, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i321

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i320
  %i.abw = load i64, ptr %i.aat, align 8, !tbaa !106 ; 3 uses
  %i.abx = icmp ult i64 %i.abw, 16
  call void @llvm.assume(i1 %i.abx)
  %i.aby = add nuw nsw i64 %i.abw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abt, ptr noundef nonnull align 8 dereferenceable(1) %i.aas, i64 %i.aby, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i320
  store ptr %i.abu, ptr %i.abs, align 8, !tbaa !105
  %i.abz = load i64, ptr %i.aas, align 8, !tbaa !65
  store i64 %i.abz, ptr %i.abt, align 8, !tbaa !65
  %.pre3.i.i.i.i.i322 = load i64, ptr %i.aat, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i321, %bb.cd
  %i.aca = phi i64 [ %i.abw, %bb.cd ], [ %.pre3.i.i.i.i.i322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i321 ]
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abh, i64 48
  store i64 %i.aca, ptr %i.acb, align 8, !tbaa !106
  store ptr %i.aas, ptr %i.aar, align 8, !tbaa !105
  store i64 0, ptr %i.aat, align 8, !tbaa !106
  store i8 0, ptr %i.aas, align 8, !tbaa !65
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abh, i64 72
  %i.acd = load <2 x ptr>, ptr %i.aav, align 8, !tbaa !64
  store <2 x ptr> %i.acd, ptr %i.acc, align 8, !tbaa !64
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abh, i64 88
  %i.acf = load <2 x ptr>, ptr %i.aax, align 8, !tbaa !555
  store <2 x ptr> %i.acf, ptr %i.ace, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaw, i8 0, i64 24, i1 false)
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abf, i64 56 ; 3 uses
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !1557 ; 6 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abf, i64 64 ; 3 uses
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i323 = icmp eq ptr %i.ach, %i.acj
  br i1 %.not.i.i.i.i.i.i323, label %bb.ce, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.abh, ptr %i.ach, align 8, !tbaa !1560
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store ptr %i.ack, ptr %i.acg, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i324

bb.ce:                                            ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.acl = load ptr, ptr %i.abg, align 8, !tbaa !1561 ; 10 uses
  %i.acm = ptrtoint ptr %i.ach to i64             ; 2 uses
  %i.acn = ptrtoint ptr %i.acl to i64             ; 3 uses
  %i.aco = sub i64 %i.acm, %i.acn                 ; 3 uses
  %i.acp = icmp eq i64 %i.aco, 9223372036854775800
  br i1 %i.acp, label %bb.cf, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i331

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i345 unwind label %bb.cj, !inline_history !1518

.noexc16.i.i.i345:                                ; preds = %bb.cf
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i331: ; preds = %bb.ce
  %i.acq = ashr exact i64 %i.aco, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i332 = call i64 @llvm.umax.i64(i64 %i.acq, i64 1)
  %i.acr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i332, %i.acq ; 2 uses
  %i.acs = icmp ult i64 %i.acr, %i.acq
  %i.act = call i64 @llvm.umin.i64(i64 %i.acr, i64 1152921504606846975)
  %i.acu = select i1 %i.acs, i64 1152921504606846975, i64 %i.act ; 3 uses
  %.not.i.i.i.i.i.i.i.i333 = icmp ne i64 %i.acu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i333)
  %i.acv = shl nuw nsw i64 %i.acu, 3
  %i.acw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acv) #31
          to label %.noexc17.i.i.i334 unwind label %bb.cj, !inline_history !1518 ; 10 uses

.noexc17.i.i.i334:                                ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i331
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 %i.aco
  store ptr %i.abh, ptr %i.acx, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i335 = icmp eq ptr %i.acl, %i.ach
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i335, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i340, label %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader:          ; preds = %.noexc17.i.i.i334
  %i.acy = add i64 %i.acm, -8
  %i.acz = sub i64 %i.acy, %i.acn                 ; 3 uses
  %i.ada = lshr i64 %i.acz, 3
  %i.adb = add nuw nsw i64 %i.ada, 1              ; 2 uses
  %min.iters.check897 = icmp ult i64 %i.acz, 136
  br i1 %min.iters.check897, label %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957, label %vector.memcheck898

vector.memcheck898:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader
  %i.adc = and i64 %i.acz, -8
  %i.add = add i64 %i.adc, 8                      ; 2 uses
  %i.ade = getelementptr i8, ptr %i.acw, i64 %i.add
  %i.adf = getelementptr i8, ptr %i.acl, i64 %i.add
  %bound0899 = icmp ult ptr %i.acw, %i.adf
  %bound1900 = icmp ult ptr %i.acl, %i.ade
  %found.conflict901 = and i1 %bound0899, %bound1900
  br i1 %found.conflict901, label %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957, label %vector.ph902

vector.ph902:                                     ; preds = %vector.memcheck898
  %n.vec903 = and i64 %i.adb, 4611686018427387900 ; 3 uses
  %i.adg = shl i64 %n.vec903, 3                   ; 2 uses
  %i.adh = getelementptr i8, ptr %i.acw, i64 %i.adg ; 2 uses
  %i.adi = getelementptr i8, ptr %i.acl, i64 %i.adg
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %vector.ph902
  %index905 = phi i64 [ 0, %vector.ph902 ], [ %index.next910, %vector.body904 ] ; 2 uses
  %i.adj = shl i64 %index905, 3                   ; 2 uses
  %next.gep906 = getelementptr i8, ptr %i.acw, i64 %i.adj ; 2 uses
  %next.gep907 = getelementptr i8, ptr %i.acl, i64 %i.adj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.adk = getelementptr i8, ptr %next.gep907, i64 16
  %wide.load908 = load <2 x i64>, ptr %next.gep907, align 8, !tbaa !1560, !alias.scope !1589
  %wide.load909 = load <2 x i64>, ptr %i.adk, align 8, !tbaa !1560, !alias.scope !1589
  %i.adl = getelementptr i8, ptr %next.gep906, i64 16
  store <2 x i64> %wide.load908, ptr %next.gep906, align 8, !tbaa !1560, !alias.scope !1590, !noalias !1591
  store <2 x i64> %wide.load909, ptr %i.adl, align 8, !tbaa !1560, !alias.scope !1590, !noalias !1591
  %47 = getelementptr i8, ptr %next.gep907, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep907, align 8, !tbaa !1560, !alias.scope !1589
  store <2 x ptr> splat (ptr null), ptr %47, align 8, !tbaa !1560, !alias.scope !1589
  %index.next910 = add nuw i64 %index905, 4       ; 2 uses
  %i.adm = icmp eq i64 %index.next910, %n.vec903
  br i1 %i.adm, label %middle.block911, label %vector.body904, !llvm.loop !1525

middle.block911:                                  ; preds = %vector.body904
  %cmp.n912 = icmp eq i64 %i.adb, %n.vec903
  br i1 %cmp.n912, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i340, label %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957

.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957:       ; preds = %vector.memcheck898, %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader, %middle.block911
  %.012.i.i.i.i.i.i.i.i.i.i337.ph = phi ptr [ %i.acw, %vector.memcheck898 ], [ %i.acw, %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader ], [ %i.adh, %middle.block911 ]
  %.0911.i.i.i.i.i.i.i.i.i.i338.ph = phi ptr [ %i.acl, %vector.memcheck898 ], [ %i.acl, %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader ], [ %i.adi, %middle.block911 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i336

.lr.ph.i.i.i.i.i.i.i.i.i.i336:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957, %.lr.ph.i.i.i.i.i.i.i.i.i.i336
  %.012.i.i.i.i.i.i.i.i.i.i337 = phi ptr [ %i.adp, %.lr.ph.i.i.i.i.i.i.i.i.i.i336 ], [ %.012.i.i.i.i.i.i.i.i.i.i337.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i338 = phi ptr [ %i.ado, %.lr.ph.i.i.i.i.i.i.i.i.i.i336 ], [ %.0911.i.i.i.i.i.i.i.i.i.i338.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i336.preheader957 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.adn = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i338, align 8, !tbaa !1560, !alias.scope !1588
  store i64 %i.adn, ptr %.012.i.i.i.i.i.i.i.i.i.i337, align 8, !tbaa !1560, !alias.scope !1587
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i338, align 8, !tbaa !1560, !alias.scope !1588
  %i.ado = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i338, i64 8 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i337, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i339 = icmp eq ptr %i.ado, %i.ach
  br i1 %.not.i.i.i.i.i.i.i.i.i.i339, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i340, label %.lr.ph.i.i.i.i.i.i.i.i.i.i336, !llvm.loop !1526

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i340: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i336, %middle.block911, %.noexc17.i.i.i334
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i341 = phi ptr [ %i.acw, %.noexc17.i.i.i334 ], [ %i.adh, %middle.block911 ], [ %i.adp, %.lr.ph.i.i.i.i.i.i.i.i.i.i336 ]
  %i.adq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i341, i64 8
  %.not.i23.i.i.i.i.i.i.i342 = icmp eq ptr %i.acl, null
  br i1 %.not.i23.i.i.i.i.i.i.i342, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i340
  %i.adr = load ptr, ptr %i.aci, align 8, !tbaa !1558
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = sub i64 %i.ads, %i.acn
  call void @_ZdlPvm(ptr noundef nonnull %i.acl, i64 noundef %i.adt) #34, !inline_history !1527
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.cg, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i340
  store ptr %i.acw, ptr %i.abg, align 8, !tbaa !1561
  store ptr %i.adq, ptr %i.acg, align 8, !tbaa !1557
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %i.acu
  store ptr %i.adu, ptr %i.aci, align 8, !tbaa !1558
  %.pre.i.i.i343 = load ptr, ptr %i.aaw, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i344 = icmp eq ptr %.pre.i.i.i343, null
  br i1 %.not.i.i.i.i.i.i.i344, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i324, label %bb.ch

bb.ch:                                            ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.adv = load ptr, ptr %i.aaz, align 8, !tbaa !557
  %i.adw = ptrtoint ptr %i.adv to i64
  %i.adx = ptrtoint ptr %.pre.i.i.i343 to i64
  %i.ady = sub i64 %i.adw, %i.adx
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i343, i64 noundef %i.ady) #34, !inline_history !1517
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i324

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i324: ; preds = %bb.ch, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.adz = load ptr, ptr %i.aar, align 8, !tbaa !105 ; 2 uses
  %i.aea = icmp eq ptr %i.adz, %i.aas
  br i1 %i.aea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i325: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i324
  %i.aeb = load i64, ptr %i.aas, align 8, !tbaa !65
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #34, !inline_history !1517
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i326: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i325
  %i.aed = load ptr, ptr %9, align 8, !tbaa !105  ; 2 uses
  %i.aee = icmp eq ptr %i.aed, %i.aan
  br i1 %i.aee, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i326
  %i.aef = load i64, ptr %i.aan, align 8, !tbaa !65
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeg) #34, !inline_history !1517
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i327
  %i.aeh = load ptr, ptr %10, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i328 = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i.i18.i.i.i328, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5ED2Ev.exit.i.i.i"
  %i.aei = load ptr, ptr %i.aba, align 16, !tbaa !557
  %i.aej = ptrtoint ptr %i.aei to i64
  %i.aek = ptrtoint ptr %i.aeh to i64
  %i.ael = sub i64 %i.aej, %i.aek
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef %i.ael) #34, !inline_history !1517
  br label %bb.cm

bb.cj:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i331, %bb.cf, %.noexc14.i.i.i316, %bb.cb
  %i.aem = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %9) #30, !inline_history !1517
  %i.aen = load ptr, ptr %10, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i314 = icmp eq ptr %i.aen, null
  br i1 %.not.i.i.i19.i.i.i314, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i315, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aeo = load ptr, ptr %i.aba, align 16, !tbaa !557
  %i.aep = ptrtoint ptr %i.aeo to i64
  %i.aeq = ptrtoint ptr %i.aen to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  call void @_ZdlPvm(ptr noundef nonnull %i.aen, i64 noundef %i.aer) #34, !inline_history !1517
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i315

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i315: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.body352

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i299
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #30, !inline_history !1517
  br label %.body352

bb.cm:                                            ; preds = %bb.ci, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_5ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aet = load ptr, ptr %37, align 8, !tbaa !105 ; 2 uses
  %i.aeu = icmp eq ptr %i.aet, %i.aak
  br i1 %i.aeu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %bb.cm
  %i.aev = load i64, ptr %i.aak, align 8, !tbaa !65
  %i.aew = add i64 %i.aev, 1
  call void @_ZdlPvm(ptr noundef %i.aet, i64 noundef %i.aew) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.aex = load ptr, ptr %36, align 8, !tbaa !105 ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.aah
  br i1 %i.aey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356
  %i.aez = load i64, ptr %i.aah, align 8, !tbaa !65
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aex, i64 noundef %i.afa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  %i.afb = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  store ptr %i.afb, ptr %38, align 8, !tbaa !103
  store i32 1667594341, ptr %i.afb, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  store i64 4, ptr %i.afc, align 8, !tbaa !106
  %i.afd = getelementptr inbounds nuw i8, ptr %38, i64 20
  store i8 0, ptr %i.afd, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  %i.afe = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  store ptr %i.afe, ptr %39, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i64 19, ptr %i.f, align 8, !tbaa !107
  %i.aff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc366 unwind label %bb.ed ; 2 uses

.noexc366:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  store ptr %i.aff, ptr %39, align 8, !tbaa !105
  %i.afg = load i64, ptr %i.f, align 8, !tbaa !107 ; 3 uses
  store i64 %i.afg, ptr %i.afe, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.aff, ptr noundef nonnull align 1 dereferenceable(19) @.str.108, i64 19, i1 false)
  %i.afh = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i64 %i.afg, ptr %i.afh, align 8, !tbaa !106
  %i.afi = load ptr, ptr %39, align 8, !tbaa !105
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 %i.afg
  store i8 0, ptr %i.afj, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  %.val55 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.afk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.afk, ptr %6, align 8, !tbaa !103
  %i.afl = load ptr, ptr %38, align 8, !tbaa !105 ; 2 uses
  %i.afm = load i64, ptr %i.afc, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 %i.afm, ptr %i.e, align 8, !tbaa !107
  %i.afn = icmp ugt i64 %i.afm, 15
  br i1 %i.afn, label %.noexc.i.i.i.i409, label %._crit_edge.i.i.i.i.i368

.noexc.i.i.i.i409:                                ; preds = %.noexc366
  %i.afo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc410 unwind label %bb.ee, !inline_history !1528 ; 2 uses

.noexc410:                                        ; preds = %.noexc.i.i.i.i409
  store ptr %i.afo, ptr %6, align 8, !tbaa !105
  %i.afp = load i64, ptr %i.e, align 8, !tbaa !107
  store i64 %i.afp, ptr %i.afk, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i.i368

._crit_edge.i.i.i.i.i368:                         ; preds = %.noexc410, %.noexc366
  %i.afq = phi ptr [ %i.afo, %.noexc410 ], [ %i.afk, %.noexc366 ] ; 2 uses
  switch i64 %i.afm, label %bb.co [
    i64 1, label %bb.cn
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERN3ade27ExecutionEngineSetupContextE:bb.a
.noexc.i.i.i408:                                  ; preds = %.noexc.i12.i.i.i405
  store ptr %i.agb, ptr %i.afw, align 8, !tbaa !105
  %i.agc = load i64, ptr %i.d, align 8, !tbaa !107
  store i64 %i.agc, ptr %i.afx, align 8, !tbaa !65
  br label %._crit_edge.i.i11.i.i.i370

._crit_edge.i.i11.i.i.i370:                       ; preds = %.noexc.i.i.i408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i369
  %i.agd = phi ptr [ %i.agb, %.noexc.i.i.i408 ], [ %i.afx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i369 ] ; 2 uses
  switch i64 %i.afz, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i11.i.i.i370
  %i.age = load i8, ptr %i.afy, align 1, !tbaa !65
  store i8 %i.age, ptr %i.agd, align 1, !tbaa !65
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i11.i.i.i370
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agd, ptr align 1 %i.afy, i64 %i.afz, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i11.i.i.i370
  %i.agf = load i64, ptr %i.d, align 8, !tbaa !107 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 %i.agf, ptr %i.agg, align 8, !tbaa !106
  %i.agh = load ptr, ptr %i.afw, align 8, !tbaa !105
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.agf
  store i8 0, ptr %i.agi, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.agj = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %.val55, ptr %i.agj, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %7, ptr noundef nonnull align 8 dereferenceable(272) %.val55, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.cs unwind label %bb.dd, !inline_history !1529

bb.cs:                                            ; preds = %bb.cr
  %i.agk = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.agm = load <2 x ptr>, ptr %7, align 16, !tbaa !555
  store <2 x ptr> %i.agm, ptr %i.agk, align 8, !tbaa !555
  %i.agn = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.agp = load ptr, ptr %i.ago, align 16, !tbaa !557
  store ptr %i.agp, ptr %i.agn, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.agq = getelementptr inbounds nuw i8, ptr %.val55, i64 216
  %i.agr = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.agq, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %.noexc14.i.i.i375 unwind label %bb.db, !inline_history !1530

.noexc14.i.i.i375:                                ; preds = %bb.cs
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !1554 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 48 ; 2 uses
  %i.agv = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i376 unwind label %bb.db, !inline_history !1530 ; 11 uses

.noexc15.i.i.i376:                                ; preds = %.noexc14.i.i.i375
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEE", i64 16), ptr %i.agv, align 8, !tbaa !59
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 24 ; 3 uses
  store ptr %i.agx, ptr %i.agw, align 8, !tbaa !103
  %i.agy = load ptr, ptr %6, align 8, !tbaa !105  ; 2 uses
  %i.agz = icmp eq ptr %i.agy, %i.afk
  br i1 %i.agz, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i377

bb.ct:                                            ; preds = %.noexc15.i.i.i376
  %i.aha = load i64, ptr %i.aft, align 8, !tbaa !106 ; 3 uses
  %i.ahb = icmp ult i64 %i.aha, 16
  call void @llvm.assume(i1 %i.ahb)
  %i.ahc = add nuw nsw i64 %i.aha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.agx, ptr noundef nonnull align 8 dereferenceable(1) %i.afk, i64 %i.ahc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i377: ; preds = %.noexc15.i.i.i376
  store ptr %i.agy, ptr %i.agw, align 8, !tbaa !105
  %i.ahd = load i64, ptr %i.afk, align 8, !tbaa !65
  store i64 %i.ahd, ptr %i.agx, align 8, !tbaa !65
  %.pre.i.i.i.i.i378 = load i64, ptr %i.aft, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i379: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i377, %bb.ct
  %i.ahe = phi i64 [ %.pre.i.i.i.i.i378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i377 ], [ %i.aha, %bb.ct ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  store i64 %i.ahe, ptr %i.ahf, align 8, !tbaa !106
  store ptr %i.afk, ptr %6, align 8, !tbaa !105
  store i64 0, ptr %i.aft, align 8, !tbaa !106
  store i8 0, ptr %i.afk, align 8, !tbaa !65
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agv, i64 40 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agv, i64 56 ; 3 uses
  store ptr %i.ahh, ptr %i.ahg, align 8, !tbaa !103
  %i.ahi = load ptr, ptr %i.afw, align 8, !tbaa !105 ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.afx
  br i1 %i.ahj, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i380

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i379
  %i.ahk = load i64, ptr %i.agg, align 8, !tbaa !106 ; 3 uses
  %i.ahl = icmp ult i64 %i.ahk, 16
  call void @llvm.assume(i1 %i.ahl)
  %i.ahm = add nuw nsw i64 %i.ahk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ahh, ptr noundef nonnull align 8 dereferenceable(1) %i.afx, i64 %i.ahm, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i379
  store ptr %i.ahi, ptr %i.ahg, align 8, !tbaa !105
  %i.ahn = load i64, ptr %i.afx, align 8, !tbaa !65
  store i64 %i.ahn, ptr %i.ahh, align 8, !tbaa !65
  %.pre3.i.i.i.i.i381 = load i64, ptr %i.agg, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i380, %bb.cu
  %i.aho = phi i64 [ %i.ahk, %bb.cu ], [ %.pre3.i.i.i.i.i381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i380 ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agv, i64 48
  store i64 %i.aho, ptr %i.ahp, align 8, !tbaa !106
  store ptr %i.afx, ptr %i.afw, align 8, !tbaa !105
  store i64 0, ptr %i.agg, align 8, !tbaa !106
  store i8 0, ptr %i.afx, align 8, !tbaa !65
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agv, i64 72
  %i.ahr = load <2 x ptr>, ptr %i.agj, align 8, !tbaa !64
  store <2 x ptr> %i.ahr, ptr %i.ahq, align 8, !tbaa !64
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agv, i64 88
  %i.aht = load <2 x ptr>, ptr %i.agl, align 8, !tbaa !555
  store <2 x ptr> %i.aht, ptr %i.ahs, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agk, i8 0, i64 24, i1 false)
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agt, i64 56 ; 3 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !1557 ; 6 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agt, i64 64 ; 3 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i382 = icmp eq ptr %i.ahv, %i.ahx
  br i1 %.not.i.i.i.i.i.i382, label %bb.cv, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.agv, ptr %i.ahv, align 8, !tbaa !1560
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  store ptr %i.ahy, ptr %i.ahu, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i383

bb.cv:                                            ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.ahz = load ptr, ptr %i.agu, align 8, !tbaa !1561 ; 10 uses
  %i.aia = ptrtoint ptr %i.ahv to i64             ; 2 uses
  %i.aib = ptrtoint ptr %i.ahz to i64             ; 3 uses
  %i.aic = sub i64 %i.aia, %i.aib                 ; 3 uses
  %i.aid = icmp eq i64 %i.aic, 9223372036854775800
  br i1 %i.aid, label %bb.cw, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i390

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i404 unwind label %bb.db, !inline_history !1530

.noexc16.i.i.i404:                                ; preds = %bb.cw
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i390: ; preds = %bb.cv
  %i.aie = ashr exact i64 %i.aic, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i391 = call i64 @llvm.umax.i64(i64 %i.aie, i64 1)
  %i.aif = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i391, %i.aie ; 2 uses
  %i.aig = icmp ult i64 %i.aif, %i.aie
  %i.aih = call i64 @llvm.umin.i64(i64 %i.aif, i64 1152921504606846975)
  %i.aii = select i1 %i.aig, i64 1152921504606846975, i64 %i.aih ; 3 uses
  %.not.i.i.i.i.i.i.i.i392 = icmp ne i64 %i.aii, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i392)
  %i.aij = shl nuw nsw i64 %i.aii, 3
  %i.aik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aij) #31
          to label %.noexc17.i.i.i393 unwind label %bb.db, !inline_history !1530 ; 10 uses

.noexc17.i.i.i393:                                ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i390
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.aic
  store ptr %i.agv, ptr %i.ail, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i394 = icmp eq ptr %i.ahz, %i.ahv
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i394, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i399, label %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader:          ; preds = %.noexc17.i.i.i393
  %i.aim = add i64 %i.aia, -8
  %i.ain = sub i64 %i.aim, %i.aib                 ; 3 uses
  %i.aio = lshr i64 %i.ain, 3
  %i.aip = add nuw nsw i64 %i.aio, 1              ; 2 uses
  %min.iters.check921 = icmp ult i64 %i.ain, 136
  br i1 %min.iters.check921, label %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955, label %vector.memcheck922

vector.memcheck922:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader
  %i.aiq = and i64 %i.ain, -8
  %i.air = add i64 %i.aiq, 8                      ; 2 uses
  %i.ais = getelementptr i8, ptr %i.aik, i64 %i.air
  %i.ait = getelementptr i8, ptr %i.ahz, i64 %i.air
  %bound0923 = icmp ult ptr %i.aik, %i.ait
  %bound1924 = icmp ult ptr %i.ahz, %i.ais
  %found.conflict925 = and i1 %bound0923, %bound1924
  br i1 %found.conflict925, label %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955, label %vector.ph926

vector.ph926:                                     ; preds = %vector.memcheck922
  %n.vec927 = and i64 %i.aip, 4611686018427387900 ; 3 uses
  %i.aiu = shl i64 %n.vec927, 3                   ; 2 uses
  %i.aiv = getelementptr i8, ptr %i.aik, i64 %i.aiu ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.ahz, i64 %i.aiu
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph926
  %index929 = phi i64 [ 0, %vector.ph926 ], [ %index.next934, %vector.body928 ] ; 2 uses
  %i.aix = shl i64 %index929, 3                   ; 2 uses
  %next.gep930 = getelementptr i8, ptr %i.aik, i64 %i.aix ; 2 uses
  %next.gep931 = getelementptr i8, ptr %i.ahz, i64 %i.aix ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %i.aiy = getelementptr i8, ptr %next.gep931, i64 16
  %wide.load932 = load <2 x i64>, ptr %next.gep931, align 8, !tbaa !1560, !alias.scope !1594
  %wide.load933 = load <2 x i64>, ptr %i.aiy, align 8, !tbaa !1560, !alias.scope !1594
  %i.aiz = getelementptr i8, ptr %next.gep930, i64 16
  store <2 x i64> %wide.load932, ptr %next.gep930, align 8, !tbaa !1560, !alias.scope !1595, !noalias !1596
  store <2 x i64> %wide.load933, ptr %i.aiz, align 8, !tbaa !1560, !alias.scope !1595, !noalias !1596
  %48 = getelementptr i8, ptr %next.gep931, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep931, align 8, !tbaa !1560, !alias.scope !1594
  store <2 x ptr> splat (ptr null), ptr %48, align 8, !tbaa !1560, !alias.scope !1594
  %index.next934 = add nuw i64 %index929, 4       ; 2 uses
  %i.aja = icmp eq i64 %index.next934, %n.vec927
  br i1 %i.aja, label %middle.block935, label %vector.body928, !llvm.loop !1537

middle.block935:                                  ; preds = %vector.body928
  %cmp.n936 = icmp eq i64 %i.aip, %n.vec927
  br i1 %cmp.n936, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i399, label %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955

.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955:       ; preds = %vector.memcheck922, %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader, %middle.block935
  %.012.i.i.i.i.i.i.i.i.i.i396.ph = phi ptr [ %i.aik, %vector.memcheck922 ], [ %i.aik, %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader ], [ %i.aiv, %middle.block935 ]
  %.0911.i.i.i.i.i.i.i.i.i.i397.ph = phi ptr [ %i.ahz, %vector.memcheck922 ], [ %i.ahz, %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader ], [ %i.aiw, %middle.block935 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i395

.lr.ph.i.i.i.i.i.i.i.i.i.i395:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955, %.lr.ph.i.i.i.i.i.i.i.i.i.i395
  %.012.i.i.i.i.i.i.i.i.i.i396 = phi ptr [ %i.ajd, %.lr.ph.i.i.i.i.i.i.i.i.i.i395 ], [ %.012.i.i.i.i.i.i.i.i.i.i396.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i397 = phi ptr [ %i.ajc, %.lr.ph.i.i.i.i.i.i.i.i.i.i395 ], [ %.0911.i.i.i.i.i.i.i.i.i.i397.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i395.preheader955 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %i.ajb = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i397, align 8, !tbaa !1560, !alias.scope !1593
  store i64 %i.ajb, ptr %.012.i.i.i.i.i.i.i.i.i.i396, align 8, !tbaa !1560, !alias.scope !1592
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i397, align 8, !tbaa !1560, !alias.scope !1593
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i397, i64 8 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i396, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i398 = icmp eq ptr %i.ajc, %i.ahv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i398, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i399, label %.lr.ph.i.i.i.i.i.i.i.i.i.i395, !llvm.loop !1538

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i399: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i395, %middle.block935, %.noexc17.i.i.i393
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i400 = phi ptr [ %i.aik, %.noexc17.i.i.i393 ], [ %i.aiv, %middle.block935 ], [ %i.ajd, %.lr.ph.i.i.i.i.i.i.i.i.i.i395 ]
  %i.aje = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i400, i64 8
  %.not.i23.i.i.i.i.i.i.i401 = icmp eq ptr %i.ahz, null
  br i1 %.not.i23.i.i.i.i.i.i.i401, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i399
  %i.ajf = load ptr, ptr %i.ahw, align 8, !tbaa !1558
  %i.ajg = ptrtoint ptr %i.ajf to i64
  %i.ajh = sub i64 %i.ajg, %i.aib
  call void @_ZdlPvm(ptr noundef nonnull %i.ahz, i64 noundef %i.ajh) #34, !inline_history !1539
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.cx, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i399
  store ptr %i.aik, ptr %i.agu, align 8, !tbaa !1561
  store ptr %i.aje, ptr %i.ahu, align 8, !tbaa !1557
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.aik, i64 %i.aii
  store ptr %i.aji, ptr %i.ahw, align 8, !tbaa !1558
  %.pre.i.i.i402 = load ptr, ptr %i.agk, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i403 = icmp eq ptr %.pre.i.i.i402, null
  br i1 %.not.i.i.i.i.i.i.i403, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i383, label %bb.cy

bb.cy:                                            ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.ajj = load ptr, ptr %i.agn, align 8, !tbaa !557
  %i.ajk = ptrtoint ptr %i.ajj to i64
  %i.ajl = ptrtoint ptr %.pre.i.i.i402 to i64
  %i.ajm = sub i64 %i.ajk, %i.ajl
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i402, i64 noundef %i.ajm) #34, !inline_history !1529
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i383

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i383: ; preds = %bb.cy, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.ajn = load ptr, ptr %i.afw, align 8, !tbaa !105 ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %i.afx
  br i1 %i.ajo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i384: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i383
  %i.ajp = load i64, ptr %i.afx, align 8, !tbaa !65
  %i.ajq = add i64 %i.ajp, 1
  call void @_ZdlPvm(ptr noundef %i.ajn, i64 noundef %i.ajq) #34, !inline_history !1529
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i385: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i384
  %i.ajr = load ptr, ptr %6, align 8, !tbaa !105  ; 2 uses
  %i.ajs = icmp eq ptr %i.ajr, %i.afk
  br i1 %i.ajs, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i385
  %i.ajt = load i64, ptr %i.afk, align 8, !tbaa !65
  %i.aju = add i64 %i.ajt, 1
  call void @_ZdlPvm(ptr noundef %i.ajr, i64 noundef %i.aju) #34, !inline_history !1529
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i386
  %i.ajv = load ptr, ptr %7, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i387 = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i.i18.i.i.i387, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6ED2Ev.exit.i.i.i"
  %i.ajw = load ptr, ptr %i.ago, align 16, !tbaa !557
  %i.ajx = ptrtoint ptr %i.ajw to i64
  %i.ajy = ptrtoint ptr %i.ajv to i64
  %i.ajz = sub i64 %i.ajx, %i.ajy
  call void @_ZdlPvm(ptr noundef nonnull %i.ajv, i64 noundef %i.ajz) #34, !inline_history !1529
  br label %bb.de

bb.da:                                            ; preds = %.noexc.i12.i.i.i405
  %i.aka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akb = load ptr, ptr %6, align 8, !tbaa !105  ; 2 uses
  %i.akc = icmp eq ptr %i.akb, %i.afk
  br i1 %i.akc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406: ; preds = %bb.da
  %i.akd = load i64, ptr %i.afk, align 8, !tbaa !65
  %i.ake = add i64 %i.akd, 1
  call void @_ZdlPvm(ptr noundef %i.akb, i64 noundef %i.ake) #34, !inline_history !1529
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i371

bb.db:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i390, %bb.cw, %.noexc14.i.i.i375, %bb.cs
  %i.akf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %6) #30, !inline_history !1529
  %i.akg = load ptr, ptr %7, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i373 = icmp eq ptr %i.akg, null
  br i1 %.not.i.i.i19.i.i.i373, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i374, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.akh = load ptr, ptr %i.ago, align 16, !tbaa !557
  %i.aki = ptrtoint ptr %i.akh to i64
  %i.akj = ptrtoint ptr %i.akg to i64
  %i.akk = sub i64 %i.aki, %i.akj
  call void @_ZdlPvm(ptr noundef nonnull %i.akg, i64 noundef %i.akk) #34, !inline_history !1529
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i374

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i374: ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i371

bb.dd:                                            ; preds = %bb.cr
  %i.akl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !inline_history !1529
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i371: ; preds = %bb.da, %bb.dd, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406
  %.pn.pn.i.i.i372 = phi { ptr, i32 } [ %i.akl, %bb.dd ], [ %i.akf, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i374 ], [ %i.aka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406 ], [ %i.aka, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body411

bb.de:                                            ; preds = %bb.cz, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_6ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.akm = load ptr, ptr %39, align 8, !tbaa !105 ; 2 uses
  %i.akn = icmp eq ptr %i.akm, %i.afe
  br i1 %i.akn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.de
  %i.ako = load i64, ptr %i.afe, align 8, !tbaa !65
  %i.akp = add i64 %i.ako, 1
  call void @_ZdlPvm(ptr noundef %i.akm, i64 noundef %i.akp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  %i.akq = load ptr, ptr %38, align 8, !tbaa !105 ; 2 uses
  %i.akr = icmp eq ptr %i.akq, %i.afb
  br i1 %i.akr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.aks = load i64, ptr %i.afb, align 8, !tbaa !65
  %i.akt = add i64 %i.aks, 1
  call void @_ZdlPvm(ptr noundef %i.akq, i64 noundef %i.akt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  %i.aku = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  store ptr %i.aku, ptr %40, align 8, !tbaa !103
  store i32 1667594341, ptr %i.aku, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store i64 4, ptr %i.akv, align 8, !tbaa !106
  %i.akw = getelementptr inbounds nuw i8, ptr %40, i64 20
  store i8 0, ptr %i.akw, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  %i.akx = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  store ptr %i.akx, ptr %41, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 17, ptr %i.c, align 8, !tbaa !107
  %i.aky = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc425 unwind label %bb.ef ; 2 uses

.noexc425:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  store ptr %i.aky, ptr %41, align 8, !tbaa !105
  %i.akz = load i64, ptr %i.c, align 8, !tbaa !107 ; 3 uses
  store i64 %i.akz, ptr %i.akx, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aky, ptr noundef nonnull align 1 dereferenceable(17) @.str.109, i64 17, i1 false)
  %i.ala = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store i64 %i.akz, ptr %i.ala, align 8, !tbaa !106
  %i.alb = load ptr, ptr %41, align 8, !tbaa !105
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %i.akz
  store i8 0, ptr %i.alc, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.val56 = load ptr, ptr %1, align 8, !tbaa !1550 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ald = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.ald, ptr %3, align 8, !tbaa !103
  %i.ale = load ptr, ptr %40, align 8, !tbaa !105 ; 2 uses
  %i.alf = load i64, ptr %i.akv, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERN3ade27ExecutionEngineSetupContextE:bb.a
  %i.als = load i64, ptr %i.ala, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.als, ptr %i.a, align 8, !tbaa !107
  %i.alt = icmp ugt i64 %i.als, 15
  br i1 %i.alt, label %.noexc.i12.i.i.i464, label %._crit_edge.i.i11.i.i.i429

.noexc.i12.i.i.i464:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i428
  %i.alu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.alp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i467 unwind label %bb.ds, !inline_history !1541 ; 2 uses

.noexc.i.i.i467:                                  ; preds = %.noexc.i12.i.i.i464
  store ptr %i.alu, ptr %i.alp, align 8, !tbaa !105
  %i.alv = load i64, ptr %i.a, align 8, !tbaa !107
  store i64 %i.alv, ptr %i.alq, align 8, !tbaa !65
  br label %._crit_edge.i.i11.i.i.i429

._crit_edge.i.i11.i.i.i429:                       ; preds = %.noexc.i.i.i467, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i428
  %i.alw = phi ptr [ %i.alu, %.noexc.i.i.i467 ], [ %i.alq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i428 ] ; 2 uses
  switch i64 %i.als, label %bb.di [
    i64 1, label %bb.dh
    i64 0, label %bb.dj
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i11.i.i.i429
  %i.alx = load i8, ptr %i.alr, align 1, !tbaa !65
  store i8 %i.alx, ptr %i.alw, align 1, !tbaa !65
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i11.i.i.i429
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alw, ptr align 1 %i.alr, i64 %i.als, i1 false)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %._crit_edge.i.i11.i.i.i429
  %i.aly = load i64, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store i64 %i.aly, ptr %i.alz, align 8, !tbaa !106
  %i.ama = load ptr, ptr %i.alp, align 8, !tbaa !105
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.aly
  store i8 0, ptr %i.amb, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.amc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr %.val56, ptr %i.amc, align 8, !tbaa !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNK3ade15ExecutionEngine13getLazyPassesISt16initializer_listIPKcEEESt6vectorIPNS0_15LazyPassWrapperESaIS8_EERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.960") align 8 %4, ptr noundef nonnull align 8 dereferenceable(272) %.val56, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dk unwind label %bb.dv, !inline_history !1541

bb.dk:                                            ; preds = %bb.dj
  %i.amd = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.amf = load <2 x ptr>, ptr %4, align 16, !tbaa !555
  store <2 x ptr> %i.amf, ptr %i.amd, align 8, !tbaa !555
  %i.amg = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ami = load ptr, ptr %i.amh, align 16, !tbaa !557
  store ptr %i.ami, ptr %i.amg, align 8, !tbaa !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.amj = getelementptr inbounds nuw i8, ptr %.val56, i64 216
  %i.amk = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St14_List_iteratorIS6_IS5_N3ade8PassListINS9_6passes11PassContextEEEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.amj, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %.noexc14.i.i.i434 unwind label %bb.dt, !inline_history !1542

.noexc14.i.i.i434:                                ; preds = %bb.dk
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 40
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !1554 ; 3 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48 ; 2 uses
  %i.amo = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc15.i.i.i435 unwind label %bb.dt, !inline_history !1542 ; 11 uses

.noexc15.i.i.i435:                                ; preds = %.noexc14.i.i.i434
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEE", i64 16), ptr %i.amo, align 8, !tbaa !59
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 8 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 24 ; 3 uses
  store ptr %i.amq, ptr %i.amp, align 8, !tbaa !103
  %i.amr = load ptr, ptr %3, align 8, !tbaa !105  ; 2 uses
  %i.ams = icmp eq ptr %i.amr, %i.ald
  br i1 %i.ams, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i436

bb.dl:                                            ; preds = %.noexc15.i.i.i435
  %i.amt = load i64, ptr %i.alm, align 8, !tbaa !106 ; 3 uses
  %i.amu = icmp ult i64 %i.amt, 16
  call void @llvm.assume(i1 %i.amu)
  %i.amv = add nuw nsw i64 %i.amt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.amq, ptr noundef nonnull align 8 dereferenceable(1) %i.ald, i64 %i.amv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i436: ; preds = %.noexc15.i.i.i435
  store ptr %i.amr, ptr %i.amp, align 8, !tbaa !105
  %i.amw = load i64, ptr %i.ald, align 8, !tbaa !65
  store i64 %i.amw, ptr %i.amq, align 8, !tbaa !65
  %.pre.i.i.i.i.i437 = load i64, ptr %i.alm, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i438: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i436, %bb.dl
  %i.amx = phi i64 [ %.pre.i.i.i.i.i437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i436 ], [ %i.amt, %bb.dl ]
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store i64 %i.amx, ptr %i.amy, align 8, !tbaa !106
  store ptr %i.ald, ptr %3, align 8, !tbaa !105
  store i64 0, ptr %i.alm, align 8, !tbaa !106
  store i8 0, ptr %i.ald, align 8, !tbaa !65
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amo, i64 40 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amo, i64 56 ; 3 uses
  store ptr %i.ana, ptr %i.amz, align 8, !tbaa !103
  %i.anb = load ptr, ptr %i.alp, align 8, !tbaa !105 ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.alq
  br i1 %i.anc, label %bb.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i439

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i438
  %i.and = load i64, ptr %i.alz, align 8, !tbaa !106 ; 3 uses
  %i.ane = icmp ult i64 %i.and, 16
  call void @llvm.assume(i1 %i.ane)
  %i.anf = add nuw nsw i64 %i.and, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ana, ptr noundef nonnull align 8 dereferenceable(1) %i.alq, i64 %i.anf, i1 false)
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEC2ISB_EEOT_.exit.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i438
  store ptr %i.anb, ptr %i.amz, align 8, !tbaa !105
  %i.ang = load i64, ptr %i.alq, align 8, !tbaa !65
  store i64 %i.ang, ptr %i.ana, align 8, !tbaa !65
  %.pre3.i.i.i.i.i440 = load i64, ptr %i.alz, align 8, !tbaa !106
  br label %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEC2ISB_EEOT_.exit.i.i.i.i.i"

"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEC2ISB_EEOT_.exit.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i439, %bb.dm
  %i.anh = phi i64 [ %i.and, %bb.dm ], [ %.pre3.i.i.i.i.i440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i439 ]
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  store i64 %i.anh, ptr %i.ani, align 8, !tbaa !106
  store ptr %i.alq, ptr %i.alp, align 8, !tbaa !105
  store i64 0, ptr %i.alz, align 8, !tbaa !106
  store i8 0, ptr %i.alq, align 8, !tbaa !65
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amo, i64 72
  %i.ank = load <2 x ptr>, ptr %i.amc, align 8, !tbaa !64
  store <2 x ptr> %i.ank, ptr %i.anj, align 8, !tbaa !64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amo, i64 88
  %i.anm = load <2 x ptr>, ptr %i.ame, align 8, !tbaa !555
  store <2 x ptr> %i.anm, ptr %i.anl, align 8, !tbaa !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amd, i8 0, i64 24, i1 false)
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amm, i64 56 ; 3 uses
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !1557 ; 6 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.amm, i64 64 ; 3 uses
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !1558
  %.not.i.i.i.i.i.i441 = icmp eq ptr %i.ano, %i.anq
  br i1 %.not.i.i.i.i.i.i441, label %bb.dn, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i": ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  store ptr %i.amo, ptr %i.ano, align 8, !tbaa !1560
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  store ptr %i.anr, ptr %i.ann, align 8, !tbaa !1557
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i442

bb.dn:                                            ; preds = %"_ZN3ade6detail15PassConceptImplINS_6passes11PassContextENS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEC2ISB_EEOT_.exit.i.i.i.i.i"
  %i.ans = load ptr, ptr %i.amn, align 8, !tbaa !1561 ; 7 uses
  %i.ant = ptrtoint ptr %i.ano to i64             ; 2 uses
  %i.anu = ptrtoint ptr %i.ans to i64             ; 3 uses
  %i.anv = sub i64 %i.ant, %i.anu                 ; 3 uses
  %i.anw = icmp eq i64 %i.anv, 9223372036854775800
  br i1 %i.anw, label %bb.do, label %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i449

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc16.i.i.i463 unwind label %bb.dt, !inline_history !1542

.noexc16.i.i.i463:                                ; preds = %bb.do
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i449: ; preds = %bb.dn
  %i.anx = ashr exact i64 %i.anv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i450 = call i64 @llvm.umax.i64(i64 %i.anx, i64 1)
  %i.any = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i450, %i.anx ; 2 uses
  %i.anz = icmp ult i64 %i.any, %i.anx
  %i.aoa = call i64 @llvm.umin.i64(i64 %i.any, i64 1152921504606846975)
  %i.aob = select i1 %i.anz, i64 1152921504606846975, i64 %i.aoa ; 3 uses
  %.not.i.i.i.i.i.i.i.i451 = icmp ne i64 %i.aob, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i451)
  %i.aoc = shl nuw nsw i64 %i.aob, 3
  %i.aod = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoc) #31
          to label %.noexc17.i.i.i452 unwind label %bb.dt, !inline_history !1542 ; 7 uses

.noexc17.i.i.i452:                                ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i449
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.anv
  store ptr %i.amo, ptr %i.aoe, align 8, !tbaa !1560
  %.not10.i.i.i.i.i.i.i.i.i.i453 = icmp eq ptr %i.ans, %i.ano
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i453, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i458, label %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader:          ; preds = %.noexc17.i.i.i452
  %i.aof = add i64 %i.ant, -8
  %i.aog = sub i64 %i.aof, %i.anu                 ; 2 uses
  %i.aoh = lshr i64 %i.aog, 3
  %i.aoi = add nuw nsw i64 %i.aoh, 1              ; 2 uses
  %min.iters.check940 = icmp ult i64 %i.aog, 24
  br i1 %min.iters.check940, label %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader954, label %vector.ph941

vector.ph941:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader
  %n.vec942 = and i64 %i.aoi, 4611686018427387900 ; 3 uses
  %i.aoj = shl i64 %n.vec942, 3                   ; 2 uses
  %i.aok = getelementptr i8, ptr %i.aod, i64 %i.aoj ; 2 uses
  %i.aol = getelementptr i8, ptr %i.ans, i64 %i.aoj
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %vector.ph941
  %index944 = phi i64 [ 0, %vector.ph941 ], [ %index.next949, %vector.body943 ] ; 2 uses
  %i.aom = shl i64 %index944, 3                   ; 2 uses
  %next.gep945 = getelementptr i8, ptr %i.aod, i64 %i.aom ; 2 uses
  %next.gep946 = getelementptr i8, ptr %i.ans, i64 %i.aom ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.aon = getelementptr i8, ptr %next.gep946, i64 16
  %wide.load947 = load <2 x i64>, ptr %next.gep946, align 8, !tbaa !1560, !alias.scope !1598
  %wide.load948 = load <2 x i64>, ptr %i.aon, align 8, !tbaa !1560, !alias.scope !1598
  %i.aoo = getelementptr i8, ptr %next.gep945, i64 16
  store <2 x i64> %wide.load947, ptr %next.gep945, align 8, !tbaa !1560, !alias.scope !1597
  store <2 x i64> %wide.load948, ptr %i.aoo, align 8, !tbaa !1560, !alias.scope !1597
  %49 = getelementptr i8, ptr %next.gep946, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep946, align 8, !tbaa !1560, !alias.scope !1598
  store <2 x ptr> splat (ptr null), ptr %49, align 8, !tbaa !1560, !alias.scope !1598
  %index.next949 = add nuw i64 %index944, 4       ; 2 uses
  %i.aop = icmp eq i64 %index.next949, %n.vec942
  br i1 %i.aop, label %middle.block950, label %vector.body943, !llvm.loop !1546

middle.block950:                                  ; preds = %vector.body943
  %cmp.n951 = icmp eq i64 %i.aoi, %n.vec942
  br i1 %cmp.n951, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i458, label %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader954

.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader954:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader, %middle.block950
  %.012.i.i.i.i.i.i.i.i.i.i455.ph = phi ptr [ %i.aod, %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader ], [ %i.aok, %middle.block950 ]
  %.0911.i.i.i.i.i.i.i.i.i.i456.ph = phi ptr [ %i.ans, %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader ], [ %i.aol, %middle.block950 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i454

.lr.ph.i.i.i.i.i.i.i.i.i.i454:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader954, %.lr.ph.i.i.i.i.i.i.i.i.i.i454
  %.012.i.i.i.i.i.i.i.i.i.i455 = phi ptr [ %i.aos, %.lr.ph.i.i.i.i.i.i.i.i.i.i454 ], [ %.012.i.i.i.i.i.i.i.i.i.i455.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader954 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i456 = phi ptr [ %i.aor, %.lr.ph.i.i.i.i.i.i.i.i.i.i454 ], [ %.0911.i.i.i.i.i.i.i.i.i.i456.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i454.preheader954 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.aoq = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i456, align 8, !tbaa !1560, !alias.scope !1598
  store i64 %i.aoq, ptr %.012.i.i.i.i.i.i.i.i.i.i455, align 8, !tbaa !1560, !alias.scope !1597
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i.i456, align 8, !tbaa !1560, !alias.scope !1598
  %i.aor = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i456, i64 8 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i455, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i457 = icmp eq ptr %i.aor, %i.ano
  br i1 %.not.i.i.i.i.i.i.i.i.i.i457, label %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i458, label %.lr.ph.i.i.i.i.i.i.i.i.i.i454, !llvm.loop !1547

_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i458: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i454, %middle.block950, %.noexc17.i.i.i452
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i459 = phi ptr [ %i.aod, %.noexc17.i.i.i452 ], [ %i.aok, %middle.block950 ], [ %i.aos, %.lr.ph.i.i.i.i.i.i.i.i.i.i454 ]
  %i.aot = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i459, i64 8
  %.not.i23.i.i.i.i.i.i.i460 = icmp eq ptr %i.ans, null
  br i1 %.not.i23.i.i.i.i.i.i.i460, label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i458
  %i.aou = load ptr, ptr %i.anp, align 8, !tbaa !1558
  %i.aov = ptrtoint ptr %i.aou to i64
  %i.aow = sub i64 %i.aov, %i.anu
  call void @_ZdlPvm(ptr noundef nonnull %i.ans, i64 noundef %i.aow) #34, !inline_history !1548
  br label %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"

"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i": ; preds = %bb.dp, %_ZNSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i.i.i.i458
  store ptr %i.aod, ptr %i.amn, align 8, !tbaa !1561
  store ptr %i.aot, ptr %i.ann, align 8, !tbaa !1557
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %i.aob
  store ptr %i.aox, ptr %i.anp, align 8, !tbaa !1558
  %.pre.i.i.i461 = load ptr, ptr %i.amd, align 8, !tbaa !558 ; 3 uses
  %.not.i.i.i.i.i.i.i462 = icmp eq ptr %.pre.i.i.i461, null
  br i1 %.not.i.i.i.i.i.i.i462, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i442, label %bb.dq

bb.dq:                                            ; preds = %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i"
  %i.aoy = load ptr, ptr %i.amg, align 8, !tbaa !557
  %i.aoz = ptrtoint ptr %i.aoy to i64
  %i.apa = ptrtoint ptr %.pre.i.i.i461 to i64
  %i.apb = sub i64 %i.aoz, %i.apa
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i461, i64 noundef %i.apb) #34, !inline_history !1541
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i442

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i442: ; preds = %bb.dq, %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i.i.i", %"_ZN3ade11PassManagerINS_6passes11PassContextEE7addPassINS_15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.thread.i.i.i"
  %i.apc = load ptr, ptr %i.alp, align 8, !tbaa !105 ; 2 uses
  %i.apd = icmp eq ptr %i.apc, %i.alq
  br i1 %i.apd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i443: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i442
  %i.ape = load i64, ptr %i.alq, align 8, !tbaa !65
  %i.apf = add i64 %i.ape, 1
  call void @_ZdlPvm(ptr noundef %i.apc, i64 noundef %i.apf) #34, !inline_history !1541
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i444: ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit.i.i.i.i442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i443
  %i.apg = load ptr, ptr %3, align 8, !tbaa !105  ; 2 uses
  %i.aph = icmp eq ptr %i.apg, %i.ald
  br i1 %i.aph, label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i444
  %i.api = load i64, ptr %i.ald, align 8, !tbaa !65
  %i.apj = add i64 %i.api, 1
  call void @_ZdlPvm(ptr noundef %i.apg, i64 noundef %i.apj) #34, !inline_history !1541
  br label %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7ED2Ev.exit.i.i.i"

"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7ED2Ev.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i445
  %i.apk = load ptr, ptr %4, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i18.i.i.i446 = icmp eq ptr %i.apk, null
  br i1 %.not.i.i.i18.i.i.i446, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7ED2Ev.exit.i.i.i"
  %i.apl = load ptr, ptr %i.amh, align 16, !tbaa !557
  %i.apm = ptrtoint ptr %i.apl to i64
  %i.apn = ptrtoint ptr %i.apk to i64
  %i.apo = sub i64 %i.apm, %i.apn
  call void @_ZdlPvm(ptr noundef nonnull %i.apk, i64 noundef %i.apo) #34, !inline_history !1541
  br label %bb.dw

bb.ds:                                            ; preds = %.noexc.i12.i.i.i464
  %i.app = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apq = load ptr, ptr %3, align 8, !tbaa !105  ; 2 uses
  %i.apr = icmp eq ptr %i.apq, %i.ald
  br i1 %i.apr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465: ; preds = %bb.ds
  %i.aps = load i64, ptr %i.ald, align 8, !tbaa !65
  %i.apt = add i64 %i.aps, 1
  call void @_ZdlPvm(ptr noundef %i.apq, i64 noundef %i.apt) #34, !inline_history !1541
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i430

bb.dt:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3ade6detail15PassConceptBaseINS1_6passes11PassContextEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i449, %bb.do, %.noexc14.i.i.i434, %bb.dk
  %i.apu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7ED2Ev"(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(104) %3) #30, !inline_history !1541
  %i.apv = load ptr, ptr %4, align 16, !tbaa !558 ; 3 uses
  %.not.i.i.i19.i.i.i432 = icmp eq ptr %i.apv, null
  br i1 %.not.i.i.i19.i.i.i432, label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i433, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.apw = load ptr, ptr %i.amh, align 16, !tbaa !557
  %i.apx = ptrtoint ptr %i.apw to i64
  %i.apy = ptrtoint ptr %i.apv to i64
  %i.apz = sub i64 %i.apx, %i.apy
  call void @_ZdlPvm(ptr noundef nonnull %i.apv, i64 noundef %i.apz) #34, !inline_history !1541
  br label %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i433

_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i433: ; preds = %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i430

bb.dv:                                            ; preds = %bb.dj
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN3ade15ExecutionEngine8PassDescD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #30, !inline_history !1541
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i430: ; preds = %bb.ds, %bb.dv, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465
  %.pn.pn.i.i.i431 = phi { ptr, i32 } [ %i.aqa, %bb.dv ], [ %i.apu, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i433 ], [ %i.app, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i465 ], [ %i.app, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body470

bb.dw:                                            ; preds = %bb.dr, %"_ZN3ade15ExecutionEngine11PassWrapperIZN12_GLOBAL__N_117GFluidBackendImpl29addMetaSensitiveBackendPassesERNS_27ExecutionEngineSetupContextEE3$_7ED2Ev.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aqb = load ptr, ptr %41, align 8, !tbaa !105 ; 2 uses
  %i.aqc = icmp eq ptr %i.aqb, %i.akx
  br i1 %i.aqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.dw
  %i.aqd = load i64, ptr %i.akx, align 8, !tbaa !65
  %i.aqe = add i64 %i.aqd, 1
  call void @_ZdlPvm(ptr noundef %i.aqb, i64 noundef %i.aqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  %i.aqf = load ptr, ptr %40, align 8, !tbaa !105 ; 2 uses
  %i.aqg = icmp eq ptr %i.aqf, %i.aku
  br i1 %i.aqg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474
  %i.aqh = load i64, ptr %i.aku, align 8, !tbaa !65
  %i.aqi = add i64 %i.aqh, 1
  call void @_ZdlPvm(ptr noundef %i.aqf, i64 noundef %i.aqi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  ret void

.body:                                            ; preds = %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i, %bb.l
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ea, %bb.l ], [ %i.du, %_ZNSt6vectorIPN3ade15ExecutionEngine15LazyPassWrapperESaIS3_EED2Ev.exit20.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %.pre564 = load ptr, ptr %27, align 8, !tbaa !105 ; 2 uses
  %i.aqj = icmp eq ptr %.pre564, %i.s
  br i1 %i.aqj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %.body
  %i.aqk = load i64, ptr %i.s, align 8, !tbaa !65
  %i.aql = add i64 %i.aqk, 1
  call void @_ZdlPvm(ptr noundef %.pre564, i64 noundef %i.aql) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  %i.aqm = load ptr, ptr %26, align 8, !tbaa !105 ; 2 uses
  %i.aqn = icmp eq ptr %i.aqm, %i.p
  br i1 %i.aqn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480
  %i.aqo = load i64, ptr %i.p, align 8, !tbaa !65
  %i.aqp = add i64 %i.aqo, 1
  call void @_ZdlPvm(ptr noundef %i.aqm, i64 noundef %i.aqp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.eh

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

end_hunk_7
