Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstallRuntimeDependencySetGenerator?download=true
inline.NumInlined: 641
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN38cmInstallRuntimeDependencySetGenerator23GenerateScriptForConfigERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmScriptGeneratorIndent:.noexc.i

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !53 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !53 ; 2 uses
  %.not401441 = icmp eq ptr %i.hw, %i.hy
  br i1 %.not401441, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  br label %bb.ar

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !52
  switch i32 %i.ii, label %bb.bg [
    i32 0, label %bb.bd
    i32 1, label %bb.bf
  ]

bb.ap:                                            ; preds = %.noexc.i169
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.aq:                                            ; preds = %bb.am
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.il = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.hh
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.aq
  %i.in = load i64, ptr %i.hh, align 8, !tbaa !19
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ap
  %.pn70 = phi { ptr, i32 } [ %i.ij, %bb.ap ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.ik, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.dv

bb.ar:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.sroa.0384.0442 = phi ptr [ %i.hw, %.lr.ph ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.hz, ptr %15, align 8, !tbaa !14
  %i.ip = load ptr, ptr %.sroa.0384.0442, align 8, !tbaa !17 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0384.0442, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.ir, ptr %i.c, align 8, !tbaa !102
  %i.is = icmp ugt i64 %i.ir, 15
  br i1 %i.is, label %.noexc.i179, label %._crit_edge.i.i178

.noexc.i179:                                      ; preds = %bb.ar
  %i.it = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc180 unwind label %bb.ba ; 2 uses

.noexc180:                                        ; preds = %.noexc.i179
  store ptr %i.it, ptr %15, align 8, !tbaa !17
  %i.iu = load i64, ptr %i.c, align 8, !tbaa !102
  store i64 %i.iu, ptr %i.hz, align 8, !tbaa !19
  br label %._crit_edge.i.i178

._crit_edge.i.i178:                               ; preds = %.noexc180, %bb.ar
  %i.iv = phi ptr [ %i.it, %.noexc180 ], [ %i.hz, %bb.ar ] ; 2 uses
  switch i64 %i.ir, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i178
  %i.iw = load i8, ptr %i.ip, align 1, !tbaa !19
  store i8 %i.iw, ptr %i.iv, align 1, !tbaa !19
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iv, ptr align 1 %i.ip, i64 %i.ir, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i178
  %i.ix = load i64, ptr %i.c, align 8, !tbaa !102 ; 2 uses
  store i64 %i.ix, ptr %i.ia, align 8, !tbaa !18
  %i.iy = load ptr, ptr %15, align 8, !tbaa !17
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ix
  store i8 0, ptr %i.iz, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ja = load ptr, ptr %i.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %i.ib, ptr %16, align 8, !tbaa !14
  store i64 0, ptr %i.ic, align 8, !tbaa !18
  store i8 0, ptr %i.ib, align 8, !tbaa !19
  invoke void @_ZN21cmGeneratorExpression8EvaluateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK16cmLocalGeneratorRKS5_PK17cmGeneratorTargetP31cmGeneratorExpressionDAGCheckerSD_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 %15, ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.jb = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.ib
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.av
  %i.jd = load i64, ptr %i.ib, align 8, !tbaa !19
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.jf = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.hz
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.jh = load i64, ptr %i.hz, align 8, !tbaa !19
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  %i.jj = load i64, ptr %i.id, align 8, !tbaa !18 ; 4 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.jl = load ptr, ptr %i.ie, align 8, !tbaa !115 ; 7 uses
  %i.jm = load ptr, ptr %i.if, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.jl, %i.jm
  br i1 %.not.i.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 3 uses
  store ptr %i.jn, ptr %i.jl, align 8, !tbaa !14
  %i.jo = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.ig
  br i1 %i.jp, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188

bb.ay:                                            ; preds = %bb.ax
  %i.jq = icmp ult i64 %i.jj, 16
  call void @llvm.assume(i1 %i.jq)
  %i.jr = add nuw nsw i64 %i.jj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jn, ptr noundef nonnull align 8 dereferenceable(1) %i.ig, i64 %i.jr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188: ; preds = %bb.ax
  store ptr %i.jo, ptr %i.jl, align 8, !tbaa !17
  %i.js = load i64, ptr %i.ig, align 8, !tbaa !19
  store i64 %i.js, ptr %i.jn, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188, %bb.ay
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.jj, ptr %i.jt, align 8, !tbaa !18
  store ptr %i.ig, ptr %14, align 8, !tbaa !17
  store i64 0, ptr %i.id, align 8, !tbaa !18
  store i8 0, ptr %i.ig, align 8, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  store ptr %i.ju, ptr %i.ie, align 8, !tbaa !115
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.az:                                            ; preds = %bb.aw
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.bc

bb.ba:                                            ; preds = %.noexc.i179
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.bb:                                            ; preds = %bb.au
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ib
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bb
  %i.jz = load i64, ptr %i.ib, align 8, !tbaa !19
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.kb = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.hz
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.kd = load i64, ptr %i.hz, align 8, !tbaa !19
  %32 = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %32) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.bc:                                            ; preds = %bb.az
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.ig
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.bc
  %i.kh = load i64, ptr %i.ig, align 8, !tbaa !19
  %33 = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %33) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.ki = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.ig
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.kk = load i64, ptr %i.ig, align 8, !tbaa !19
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0384.0442, i64 32 ; 2 uses
  %.not401 = icmp eq ptr %i.km, %i.hy
  br i1 %.not401, label %._crit_edge, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.ba
  %.pn89 = phi { ptr, i32 } [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %i.jv, %bb.ba ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ke, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.bi

bb.bd:                                            ; preds = %._crit_edge
  %i.kn = add nsw i32 %3, 2
  invoke void @_ZN38cmInstallRuntimeDependencySetGenerator26GenerateAppleLibraryScriptERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 %i.kn)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %._crit_edge
  %i.kp = add nsw i32 %3, 2
  invoke void @_ZN38cmInstallRuntimeDependencySetGenerator28GenerateAppleFrameworkScriptERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 %i.kp)
          to label %bb.bg unwind label %bb.be

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %._crit_edge
  %i.kq = load ptr, ptr %13, align 8, !tbaa !116  ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !115 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kq, %i.ks
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ky, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.kq, %bb.bg ] ; 3 uses
  %i.kt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !19
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ky, %i.ks
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.bg
  %i.kz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.kq, %bb.bg ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !54
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.dt

bb.bi:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %i.ko, %bb.be ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.dv

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !133
  %i.lf = load ptr, ptr %i.gg, align 8, !tbaa !117, !noalias !133 ; 3 uses
  %.not.i.i202 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i202, label %_Z8cmStrCatIRPKcRA5_S0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lf) #18, !noalias !133
  br label %_Z8cmStrCatIRPKcRA5_S0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit

_Z8cmStrCatIRPKcRA5_S0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit: ; preds = %bb.bj, %bb.bk
  %.sroa.414.0.i = phi i64 [ %i.lg, %bb.bk ], [ 0, %bb.bj ]
  store i64 %.sroa.414.0.i, ptr %4, align 8, !tbaa !102, !alias.scope !134, !noalias !133
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.lf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !117, !alias.scope !134, !noalias !133
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.lh, align 8, !tbaa !120, !alias.scope !134, !noalias !133
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 4, ptr %i.li, align 8, !tbaa !102, !alias.scope !135, !noalias !133
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @.str.11, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !117, !alias.scope !135, !noalias !133
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.lj, align 8, !tbaa !120, !alias.scope !135, !noalias !133
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZNK38cmInstallRuntimeDependencySetGenerator14GetDestinationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bl unwind label %bb.bs

bb.bl:                                            ; preds = %_Z8cmStrCatIRPKcRA5_S0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !17
  %i.lm = add nsw i32 %3, 2                       ; 4 uses
  %i.ln = load ptr, ptr %17, align 8, !tbaa !17
  invoke void @_ZN18cmInstallGenerator14AddInstallRuleERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE13cmInstallTypeRKSt6vectorIS6_SaIS6_EEbPKcSG_SG_SG_23cmScriptGeneratorIndentSG_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %19, i1 noundef zeroext false, ptr noundef %i.ll, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i32 %i.lm, ptr noundef %i.ln)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %i.lo = load ptr, ptr %19, align 8, !tbaa !116  ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !115 ; 2 uses
  %.not4.i.i.i203 = icmp eq ptr %i.lo, %i.lq
  br i1 %.not4.i.i.i203, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i211, label %.lr.ph.i.i.i204

.lr.ph.i.i.i204:                                  ; preds = %bb.bm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207
  %.05.i.i.i205 = phi ptr [ %i.lw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207 ], [ %i.lo, %bb.bm ] ; 3 uses
  %i.lr = load ptr, ptr %.05.i.i.i205, align 8, !tbaa !17 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.05.i.i.i205, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206: ; preds = %.lr.ph.i.i.i204
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !19
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207: ; preds = %.lr.ph.i.i.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206
  %i.lw = getelementptr inbounds nuw i8, ptr %.05.i.i.i205, i64 32 ; 2 uses
  %.not.i.i.i208 = icmp eq ptr %i.lw, %i.lq
  br i1 %.not.i.i.i208, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i209, label %.lr.ph.i.i.i204, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i209: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207
  %.pr.i210 = load ptr, ptr %19, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i211

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i211: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i209, %bb.bm
  %i.lx = phi ptr [ %.pr.i210, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i209 ], [ %i.lo, %bb.bm ] ; 3 uses
  %.not.i.i1.i212 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i1.i212, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit214, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i211
  %i.ly = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.lx to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mc) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit214

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit214: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i211, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.md = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %.noexc.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit214
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !19
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #19
  br label %.noexc.i219

.noexc.i219:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.mi = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 112
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.ml = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store ptr %i.ml, ptr %20, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 17, ptr %i.b, align 8, !tbaa !102
  %i.mm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.bo unwind label %bb.bu     ; 2 uses

bb.bo:                                            ; preds = %.noexc.i219
  store ptr %i.mm, ptr %20, align 8, !tbaa !17
  %i.mn = load i64, ptr %i.b, align 8, !tbaa !102 ; 3 uses
  store i64 %i.mn, ptr %i.ml, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.mm, ptr noundef nonnull align 1 dereferenceable(17) @.str.13, i64 17, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !18
  %i.mp = load ptr, ptr %20, align 8, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mn
  store i8 0, ptr %i.mq, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.mr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile17GetSafeDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.mk, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bp unwind label %bb.bv     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !18
  %i.mu = icmp eq i64 %i.mt, 5
  br i1 %i.mu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge2

end_hunk_0
begin_hunk_1_@_ZN38cmInstallRuntimeDependencySetGenerator23GenerateScriptForConfigERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmScriptGeneratorIndent:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.bv:                                            ; preds = %bb.bo
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oi = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.ml
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.bv
  %i.ok = load i64, ptr %i.ml, align 8, !tbaa !19
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.bu
  %.pn74 = phi { ptr, i32 } [ %i.og, %bb.bu ], [ %i.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %i.oh, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.ds

bb.bw:                                            ; preds = %.lr.ph446, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %.sroa.0379.0444 = phi ptr [ %i.nq, %.lr.ph446 ], [ %i.re, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store ptr %i.nt, ptr %23, align 8, !tbaa !14
  %i.om = load ptr, ptr %.sroa.0379.0444, align 8, !tbaa !17 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0379.0444, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.oo, ptr %i.a, align 8, !tbaa !102
  %i.op = icmp ugt i64 %i.oo, 15
  br i1 %i.op, label %.noexc.i232, label %._crit_edge.i.i231

.noexc.i232:                                      ; preds = %bb.bw
  %i.oq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc233 unwind label %bb.ci ; 2 uses

.noexc233:                                        ; preds = %.noexc.i232
  store ptr %i.oq, ptr %23, align 8, !tbaa !17
  %i.or = load i64, ptr %i.a, align 8, !tbaa !102
  store i64 %i.or, ptr %i.nt, align 8, !tbaa !19
  br label %._crit_edge.i.i231

._crit_edge.i.i231:                               ; preds = %.noexc233, %bb.bw
  %i.os = phi ptr [ %i.oq, %.noexc233 ], [ %i.nt, %bb.bw ] ; 2 uses
  switch i64 %i.oo, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i231
  %i.ot = load i8, ptr %i.om, align 1, !tbaa !19
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !19
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i.i231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.om, i64 %i.oo, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %._crit_edge.i.i231
  %i.ou = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  store i64 %i.ou, ptr %i.nu, align 8, !tbaa !18
  %i.ov = load ptr, ptr %23, align 8, !tbaa !17
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ou
  store i8 0, ptr %i.ow, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ox = load ptr, ptr %i.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  store ptr %i.nv, ptr %24, align 8, !tbaa !14
  store i64 0, ptr %i.nw, align 8, !tbaa !18
  store i8 0, ptr %i.nv, align 8, !tbaa !19
  invoke void @_ZN21cmGeneratorExpression8EvaluateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK16cmLocalGeneratorRKS5_PK17cmGeneratorTargetP31cmGeneratorExpressionDAGCheckerSD_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 %23, ptr noundef %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ca unwind label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.oy = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.nv
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.ca
  %i.pa = load i64, ptr %i.nv, align 8, !tbaa !19
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.pc = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.nt
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.pe = load i64, ptr %i.nt, align 8, !tbaa !19
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  %i.pg = load i64, ptr %i.nx, align 8, !tbaa !18 ; 6 uses
  %i.ph = icmp eq i64 %i.pg, 0
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.pi = load i64, ptr %i.no, align 8, !tbaa !18 ; 5 uses
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.pk = load ptr, ptr %21, align 8, !tbaa !17   ; 6 uses
  %i.pl = icmp eq ptr %i.pk, %i.nn
  %i.pm = load ptr, ptr %22, align 8, !tbaa !17   ; 5 uses
  %i.pn = icmp eq ptr %i.pm, %i.ny                ; 2 uses
  br i1 %i.pl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i246: ; preds = %bb.cc
  br i1 %i.pn, label %bb.cd, label %.thread.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i241: ; preds = %bb.cc
  br i1 %i.pn, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i242

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i246
  %i.po = icmp ult i64 %i.pg, 16
  call void @llvm.assume(i1 %i.po)
  %cond = icmp eq i64 %i.pg, 1
  br i1 %cond, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pp = load i8, ptr %i.pm, align 1, !tbaa !19
  store i8 %i.pp, ptr %i.pk, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i244

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pk, ptr align 1 %i.pm, i64 %i.pg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i244: ; preds = %bb.cf, %bb.ce
  %i.pq = load i64, ptr %i.nx, align 8, !tbaa !18 ; 2 uses
  store i64 %i.pq, ptr %i.no, align 8, !tbaa !18
  %i.pr = load ptr, ptr %21, align 8, !tbaa !17
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pq
  store i8 0, ptr %i.ps, align 1, !tbaa !19
  %.pre.i245 = load ptr, ptr %22, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit248

.thread.i247:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i246
  store ptr %i.pm, ptr %21, align 8, !tbaa !17
  store i64 %i.pg, ptr %i.no, align 8, !tbaa !18
  %i.pt = load i64, ptr %i.ny, align 8, !tbaa !19
  store i64 %i.pt, ptr %i.nn, align 8, !tbaa !19
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i242: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i241
  %i.pu = load i64, ptr %i.nn, align 8, !tbaa !19
  store ptr %i.pm, ptr %21, align 8, !tbaa !17
  store i64 %i.pg, ptr %i.no, align 8, !tbaa !18
  %i.pv = load i64, ptr %i.ny, align 8, !tbaa !19
  store i64 %i.pv, ptr %i.nn, align 8, !tbaa !19
  %.not.i243 = icmp eq ptr %i.pk, null
  br i1 %.not.i243, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i242
  store ptr %i.pk, ptr %22, align 8, !tbaa !17
  store i64 %i.pu, ptr %i.ny, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit248

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i242, %.thread.i247
  store ptr %i.ny, ptr %22, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i244, %bb.cg, %bb.ch
  %i.pw = phi ptr [ %i.pk, %bb.cg ], [ %i.ny, %bb.ch ], [ %.pre.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i244 ]
  store i64 0, ptr %i.nx, align 8, !tbaa !18
  store i8 0, ptr %i.pw, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.ci:                                            ; preds = %.noexc.i232
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.cj:                                            ; preds = %bb.bz
  %i.py = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pz = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.nv
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.cj
  %i.qb = load i64, ptr %i.nv, align 8, !tbaa !19
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.qd = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.nt
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.qf = load i64, ptr %i.nt, align 8, !tbaa !19
  %34 = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %34) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.ck:                                            ; preds = %bb.cb
  %i.qg = add i64 %i.pi, 1                        ; 3 uses
  %i.qh = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.nn
  br i1 %i.qi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i258: ; preds = %bb.ck
  %i.qj = icmp ult i64 %i.pi, 16
  call void @llvm.assume(i1 %i.qj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255: ; preds = %bb.ck
  %i.qk = load i64, ptr %i.nn, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i256: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i258
  %i.ql = phi i64 [ %i.qk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i258 ]
  %i.qm = icmp ugt i64 %i.qg, %i.ql
  br i1 %i.qm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i256
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.pi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc259 unwind label %.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %bb.cl
  %.pre.i.i257 = load ptr, ptr %21, align 8, !tbaa !17
  br label %bb.cm

bb.cm:                                            ; preds = %.noexc259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i256
  %i.qn = phi ptr [ %.pre.i.i257, %.noexc259 ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i256 ]
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.pi
  store i8 58, ptr %i.qo, align 1, !tbaa !19
  store i64 %i.qg, ptr %i.no, align 8, !tbaa !18
  %i.qp = load ptr, ptr %21, align 8, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qg
  store i8 0, ptr %i.qq, align 1, !tbaa !19
  %i.qr = load i64, ptr %i.nx, align 8, !tbaa !18 ; 2 uses
  %i.qs = load i64, ptr %i.no, align 8, !tbaa !18
  %i.qt = sub i64 4611686018427387903, %i.qs
  %i.qu = icmp ult i64 %i.qt, %i.qr
  br i1 %i.qu, label %bb.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #20
          to label %.noexc261 unwind label %.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp

.noexc261:                                        ; preds = %bb.cn
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.cm
  %i.qv = load ptr, ptr %22, align 8, !tbaa !17
  %i.qw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.qv, i64 noundef %i.qr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.cl, %bb.cn
  %lpad.loopexit.split-lp634 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qx = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.ny
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp
  %i.qz = load i64, ptr %i.ny, align 8, !tbaa !19
  %35 = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %35) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.ra = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.ny
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.rc = load i64, ptr %i.ny, align 8, !tbaa !19
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0379.0444, i64 32 ; 2 uses
  %.not402 = icmp eq ptr %i.re, %i.ns
  br i1 %.not402, label %._crit_edge447, label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ci
  %.pn85 = phi { ptr, i32 } [ %i.py, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %i.px, %bb.ci ], [ %lpad.loopexit.split-lp634, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %i.py, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %lpad.loopexit.split-lp634, %.loopexit.split-lp409.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.loopexit.split-lp

._crit_edge447:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %bb.br
  %i.rf = icmp sgt i32 %3, -2                     ; 3 uses
  br i1 %i.rf, label %.lr.ph.i.i269, label %_ZlsRSo23cmScriptGeneratorIndent.exit273

.lr.ph.i.i269:                                    ; preds = %._crit_edge447, %.noexc272
  %.03.i.i270 = phi i32 [ %i.rh, %.noexc272 ], [ 0, %._crit_edge447 ]
  %i.rg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %.noexc272 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc272:                                        ; preds = %.lr.ph.i.i269
  %i.rh = add nuw nsw i32 %.03.i.i270, 1          ; 2 uses
  %exitcond.not.i271 = icmp eq i32 %i.rh, %i.lm
  br i1 %exitcond.not.i271, label %_ZlsRSo23cmScriptGeneratorIndent.exit273, label %.lr.ph.i.i269, !llvm.loop !0

_ZlsRSo23cmScriptGeneratorIndent.exit273:         ; preds = %.noexc272, %._crit_edge447
  %i.ri = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275: ; preds = %_ZlsRSo23cmScriptGeneratorIndent.exit273
  %i.rj = load ptr, ptr %i.gg, align 8, !tbaa !59 ; 3 uses
  %.not.i276 = icmp eq ptr %i.rj, null
  br i1 %.not.i276, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275
  %i.rk = load ptr, ptr %1, align 8, !tbaa !29
  %i.rl = getelementptr i8, ptr %i.rk, i64 -24
  %i.rm = load i64, ptr %i.rl, align 8
  %i.rn = getelementptr inbounds i8, ptr %1, i64 %i.rm ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !114
  %i.rq = or i32 %i.rp, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rn, i32 noundef %i.rq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275
  %i.rr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rj) #18
  %i.rs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.rj, i64 noundef %i.rr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279: ; preds = %bb.co, %bb.cp
  %i.rt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit281: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279
  %i.ru = load ptr, ptr %i.gg, align 8, !tbaa !59 ; 3 uses
  %.not.i282 = icmp eq ptr %i.ru, null
  br i1 %.not.i282, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit281
  %i.rv = load ptr, ptr %1, align 8, !tbaa !29
  %i.rw = getelementptr i8, ptr %i.rv, i64 -24
  %i.rx = load i64, ptr %i.rw, align 8
  %i.ry = getelementptr inbounds i8, ptr %1, i64 %i.rx ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !114
  %i.sb = or i32 %i.sa, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ry, i32 noundef %i.sb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit281
  %i.sc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ru) #18
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ru, i64 noundef %i.sc)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285: ; preds = %bb.cq, %bb.cr
  %i.se = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285
  %i.sf = load i64, ptr %i.no, align 8, !tbaa !18
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %bb.cs, label %bb.dc

bb.cs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287
  br i1 %i.rf, label %.lr.ph.i.i288, label %_ZlsRSo23cmScriptGeneratorIndent.exit292

.lr.ph.i.i288:                                    ; preds = %bb.cs, %.noexc291
  %.03.i.i289 = phi i32 [ %i.si, %.noexc291 ], [ 0, %bb.cs ]
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc291:                                        ; preds = %.lr.ph.i.i288
  %i.si = add nuw nsw i32 %.03.i.i289, 1          ; 2 uses
  %exitcond.not.i290 = icmp eq i32 %i.si, %i.lm
  br i1 %exitcond.not.i290, label %_ZlsRSo23cmScriptGeneratorIndent.exit292, label %.lr.ph.i.i288, !llvm.loop !0

_ZlsRSo23cmScriptGeneratorIndent.exit292:         ; preds = %.noexc291, %bb.cs
  %i.sj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294: ; preds = %_ZlsRSo23cmScriptGeneratorIndent.exit292
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  invoke void @_ZNK38cmInstallRuntimeDependencySetGenerator14GetDestinationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ct unwind label %bb.cy

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  invoke void @_ZN18cmInstallGenerator28ConvertToAbsoluteDestinationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN18cmInstallGenerator14GetDestDirPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.cv unwind label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.sk = load ptr, ptr %25, align 8, !tbaa !17
  %i.sl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !18
  %i.sn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.sk, i64 noundef %i.sm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296 unwind label %bb.db ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296: ; preds = %bb.cv
  %i.so = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull @.str.19, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296
  %i.sp = load ptr, ptr %i.gg, align 8, !tbaa !59 ; 3 uses
  %.not.i299 = icmp eq ptr %i.sp, null
  br i1 %.not.i299, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298
  %i.sq = load ptr, ptr %i.sn, align 8, !tbaa !29
  %i.sr = getelementptr i8, ptr %i.sq, i64 -24
  %i.ss = load i64, ptr %i.sr, align 8
  %i.st = getelementptr inbounds i8, ptr %i.sn, i64 %i.ss ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 32
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !114
  %i.sw = or i32 %i.sv, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.st, i32 noundef %i.sw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302 unwind label %bb.db

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298
  %i.sx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sp) #18
  %i.sy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull %i.sp, i64 noundef %i.sx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302: ; preds = %bb.cw, %bb.cx
  %i.sz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull @.str.20, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302
  %i.ta = load ptr, ptr %25, align 8, !tbaa !17   ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !19
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.te) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  %i.tf = load ptr, ptr %26, align 8, !tbaa !17   ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !19
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.tj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  %i.tk = load ptr, ptr %27, align 8, !tbaa !17   ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  %i.tn = load i64, ptr %i.tl, align 8, !tbaa !19
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.to) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.dq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i323, %.lr.ph.i.i288, %.lr.ph.i.i269, %_ZlsRSo23cmScriptGeneratorIndent.exit327, %_ZlsRSo23cmScriptGeneratorIndent.exit292, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285, %bb.cr, %bb.cq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279, %bb.cp, %bb.co, %_ZlsRSo23cmScriptGeneratorIndent.exit273
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

bb.cz:                                            ; preds = %bb.ct
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
end_hunk_1
