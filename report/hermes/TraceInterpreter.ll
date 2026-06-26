inline.NumInlined: 3334
inline.NumDeleted: 1601
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.kc, align 8, !tbaa !187
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !189
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !94
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #35, !inline_history !280
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !94
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #35, !inline_history !280
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i731 = icmp eq i8 %i.kn, 0
  br i1 %.not.i.i.i731, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.kf, %bb.bb ], [ %i.kp, %bb.bc ]
  %i.kq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.kq, label %bb.bd, label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #35
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ax, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %.critedge710

bb.be:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit730
  %i.kr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.aw
  %.pn676 = phi { ptr, i32 } [ %i.kr, %bb.be ], [ %i.jv, %bb.aw ]
  call void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.zn

bb.bg:                                            ; preds = %bb.s
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %.sroa.0229.0.copyload = load i32, ptr %i.ks, align 8, !tbaa !498 ; 2 uses
  %.sroa.2231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %.sroa.2231.0.copyload = load i64, ptr %.sroa.2231.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 %.sroa.0229.0.copyload, ptr %6, align 8
  store i64 %.sroa.2231.0.copyload, ptr %i.cf, align 8
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc732 unwind label %bb.bk

.noexc732:                                        ; preds = %bb.bg
  %.off.i.i = add i32 %.sroa.0229.0.copyload, -4
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %bb.bh, label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit

bb.bh:                                            ; preds = %.noexc732
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %.sroa.2231.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.cn)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit unwind label %bb.bk

_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit: ; preds = %bb.bh, %.noexc732
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit, %bb.s
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter11checkMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.kt)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ku = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  %i.kv = call ptr @__dynamic_cast(ptr nonnull %i.ku, ptr nonnull @_ZTIN8facebook3jsi7RuntimeE, ptr nonnull @_ZTIN8facebook6hermes7tracing14TracingRuntimeE, i64 0) #35 ; 2 uses
  %.not668 = icmp eq ptr %i.kv, null
  br i1 %.not668, label %.critedge710, label %bb.bm

bb.bk:                                            ; preds = %bb.bh, %bb.bg
  %i.kw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zn

bb.bl:                                            ; preds = %bb.bi
  %i.kx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zn

bb.bm:                                            ; preds = %bb.bj
  %i.ky = load ptr, ptr %i.fu, align 8, !tbaa !94
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = invoke noundef i32 %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.fu)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %.not669 = icmp eq i32 %i.lb, 1
  br i1 %.not669, label %.critedge710, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN8facebook6hermes7tracing14TracingRuntime9addMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.kt)
          to label %.critedge710 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.lc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zn

bb.bq:                                            ; preds = %bb.s
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.lf = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !94
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 304
  %i.li = load ptr, ptr %i.lh, align 8
  invoke void %i.li(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.lf)
          to label %bb.br unwind label %bb.bs, !inline_history !500

bb.br:                                            ; preds = %bb.bq
  %i.lj = load ptr, ptr %5, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  store i32 7, ptr %14, align 8, !tbaa !69
  store ptr %i.lj, ptr %i.ce, align 8, !tbaa !96
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.cn)
          to label %_ZN8facebook3jsi7PointerD2Ev.exit unwind label %bb.bt

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.br
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %.critedge710

bb.bs:                                            ; preds = %bb.bq
  %i.lk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit737

bb.bt:                                            ; preds = %bb.br
  %i.ll = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit737

_ZN8facebook3jsi7PointerD2Ev.exit737:             ; preds = %bb.bt, %bb.bs
  %.pn665.pn = phi { ptr, i32 } [ %i.lk, %bb.bs ], [ %i.ll, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %bb.zn

bb.bu:                                            ; preds = %bb.s
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.lo = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %.sroa.0219.0.copyload = load i32, ptr %i.lp, align 8, !tbaa !498 ; 2 uses
  %.sroa.2221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.2221.0.copyload = load i64, ptr %.sroa.2221.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  switch i32 %.sroa.0219.0.copyload, label %bb.bz [
    i32 0, label %bb.bv
    i32 1, label %bb.bw
    i32 3, label %bb.bx
    i32 2, label %bb.by
  ]

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %17, align 8, !tbaa !69, !alias.scope !506
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.bw:                                            ; preds = %bb.bu
  store i32 1, ptr %17, align 8, !tbaa !69, !alias.scope !509
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.bx:                                            ; preds = %bb.bu
  store i32 3, ptr %17, align 8, !tbaa !69, !alias.scope !503
  store i64 %.sroa.2221.0.copyload, ptr %i.cc, align 8, !tbaa !74, !alias.scope !503
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.by:                                            ; preds = %bb.bu
  %i.lq = trunc i64 %.sroa.2221.0.copyload to i8
  %153 = and i8 %i.lq, 1
  store i32 2, ptr %17, align 8, !tbaa !69, !alias.scope !503
  store i8 %153, ptr %i.cc, align 8, !tbaa !74, !alias.scope !503
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.bz:                                            ; preds = %bb.bu
  %.off.i.i738 = add i32 %.sroa.0219.0.copyload, -4
  %switch.i.i739 = icmp ult i32 %.off.i.i738, 5
  call void @llvm.assume(i1 %switch.i.i739)
  %i.lr = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !512
  %.not.not.i.i.i.i = icmp eq i64 %i.lr, 0
  br i1 %.not.not.i.i.i.i, label %.preheader2554, label %bb.ca

.preheader2554:                                   ; preds = %bb.bz, %.preheader2554
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %.preheader2554 ], [ %i.v, %bb.bz ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !119, !noalias !512, !nonnull !68, !noundef !68 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !107, !noalias !512
  %i.lu = icmp eq i64 %.sroa.2221.0.copyload, %i.lt
  br i1 %i.lu, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.preheader2554, !llvm.loop !515

bb.ca:                                            ; preds = %bb.bz
  %i.lv = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !512 ; 2 uses
  %i.lw = urem i64 %.sroa.2221.0.copyload, %i.lv  ; 2 uses
  %i.lx = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !512
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lw
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !121, !noalias !512, !nonnull !68, !noundef !68
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !119, !noalias !512 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !107, !noalias !512
  %i.md = icmp eq i64 %.sroa.2221.0.copyload, %i.mc
  br i1 %i.md, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ca, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i ], [ %i.ma, %bb.ca ]
  %i.me = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !119, !noalias !512, !nonnull !68, !noundef !68 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !107, !noalias !512 ; 2 uses
  %i.mh = urem i64 %i.mg, %i.lv
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.mh, %i.lw
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.mi = icmp eq i64 %.sroa.2221.0.copyload, %i.mg
  br i1 %i.mi, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader2554, %bb.ca
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %.preheader2554 ], [ %i.ma, %bb.ca ], [ %i.me, %.lr.ph.i.i.i.i.i.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef nonnull align 8 dereferenceable(16) %i.mj)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit unwind label %bb.ce

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit: ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i
  %i.mk = load ptr, ptr %i.lo, align 8, !tbaa !94, !noalias !516
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 336
  %i.mm = load ptr, ptr %i.ml, align 8, !noalias !516
  invoke void %i.mm(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.cb unwind label %bb.cf, !inline_history !519

bb.cb:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit
  store i32 7, ptr %15, align 8, !tbaa !69
  %i.mn = load ptr, ptr %16, align 8, !tbaa !96
  store ptr %i.mn, ptr %i.cd, align 8, !tbaa !96
  store ptr null, ptr %16, align 8, !tbaa !96
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.ln, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef %i.cn)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  %i.mo = load ptr, ptr %16, align 8, !tbaa !96   ; 3 uses
  %.not.i742 = icmp eq ptr %i.mo, null
  br i1 %.not.i742, label %_ZN8facebook3jsi7PointerD2Ev.exit743, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !94
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mo) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit743

_ZN8facebook3jsi7PointerD2Ev.exit743:             ; preds = %bb.cc, %bb.cd
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %.critedge710

bb.ce:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i
  %i.mr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ci

bb.cf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit
  %i.ms = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit745

bb.cg:                                            ; preds = %bb.cb
  %i.mt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  %i.mu = load ptr, ptr %16, align 8, !tbaa !96   ; 3 uses
  %.not.i744 = icmp eq ptr %i.mu, null
  br i1 %.not.i744, label %_ZN8facebook3jsi7PointerD2Ev.exit745, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !94
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.mu) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit745

_ZN8facebook3jsi7PointerD2Ev.exit745:             ; preds = %bb.ch, %bb.cg, %bb.cf
  %.pn661.pn = phi { ptr, i32 } [ %i.ms, %bb.cf ], [ %i.mt, %bb.cg ], [ %i.mt, %bb.ch ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #35
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit745, %bb.ce
  %.pn661.pn.pn = phi { ptr, i32 } [ %.pn661.pn, %_ZN8facebook3jsi7PointerD2Ev.exit745 ], [ %i.mr, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.zn

bb.cj:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  store i32 0, ptr %18, align 8, !tbaa !69
  %i.mx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !520
  switch i32 %i.my, label %.critedge.thread [
    i32 0, label %bb.ck
    i32 1, label %bb.db
  ]

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  %i.mz = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 3 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !523
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !94, !noalias !524
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 216
  %i.ne = load ptr, ptr %i.nd, align 8, !noalias !524
  invoke void %i.ne(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::BigInt") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i64 noundef %i.nb)
          to label %bb.cl unwind label %bb.cu, !inline_history !527

bb.cl:                                            ; preds = %bb.ck
  store i32 5, ptr %19, align 8, !tbaa !69
  %i.nf = load ptr, ptr %20, align 8, !tbaa !96
  store ptr %i.nf, ptr %i.cb, align 8, !tbaa !96
  store ptr null, ptr %20, align 8, !tbaa !96
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #35
  %i.ng = load ptr, ptr %20, align 8, !tbaa !96   ; 3 uses
  %.not.i747 = icmp eq ptr %i.ng, null
  br i1 %.not.i747, label %_ZN8facebook3jsi7PointerD2Ev.exit748, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !94
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(8) %i.ng) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit748

_ZN8facebook3jsi7PointerD2Ev.exit748:             ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.nj = load i8, ptr %i.w, align 1, !tbaa !10, !range !67, !noundef !68
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.cn, label %.critedge.thread

bb.cn:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit748
  %i.nl = load i64, ptr %i.na, align 8, !tbaa !523
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #35
  %i.nm = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNKR8facebook3jsi5Value8asBigIntERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::BigInt") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.nm)
          to label %bb.co unwind label %bb.cv

bb.co:                                            ; preds = %bb.cn
  %i.nn = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !94
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 248
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = invoke noundef i64 %i.nq(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cp unwind label %bb.cw, !inline_history !528

bb.cp:                                            ; preds = %bb.co
  %.not1867 = icmp eq i64 %i.nl, %i.nr
  %i.ns = load ptr, ptr %21, align 8, !tbaa !96   ; 3 uses
  %.not.i750 = icmp eq ptr %i.ns, null
  br i1 %.not.i750, label %.critedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !94
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.ns) #35, !inline_history !99
  br label %.critedge

.critedge:                                        ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br i1 %.not1867, label %.critedge.thread, label %bb.cr

bb.cr:                                            ; preds = %.critedge
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 10)
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  call void @_ZdlPvm(ptr noundef %.pre3066.a, i64 noundef %i.aai) #36
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.aaj = load ptr, ptr %47, align 8, !tbaa !96  ; 3 uses
  %.not.i906 = icmp eq ptr %i.aaj, null
  br i1 %.not.i906, label %_ZN8facebook3jsi7PointerD2Ev.exit907, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !94
  %i.aal = load ptr, ptr %i.aak, align 8
  call void %i.aal(ptr noundef nonnull align 8 dereferenceable(8) %i.aaj) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit907

_ZN8facebook3jsi7PointerD2Ev.exit907:             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #35
  br i1 %i.aad, label %bb.gc, label %.critedge685.thread

bb.gc:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit907
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit909 unwind label %.loopexit.split-lp1929 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit909: ; preds = %bb.gc
  %i.aan = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit911 unwind label %.loopexit.split-lp1929, !inline_history !72 ; 0 uses

_ZNSolsEPFRSoS_E.exit911:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit909
  %i.aao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit913 unwind label %.loopexit.split-lp1929 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit913: ; preds = %_ZNSolsEPFRSoS_E.exit911
  %i.aap = load i64, ptr %i.n, align 8, !tbaa !73
  %i.aaq = add i64 %i.aap, -1
  %i.aar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.aaq)
          to label %_ZNSolsEm.exit915 unwind label %.loopexit.split-lp1929

_ZNSolsEm.exit915:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit913
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.aar)
          to label %_ZNSolsEPFRSoS_E.exit917 unwind label %.loopexit.split-lp1929, !inline_history !72 ; 0 uses

_ZNSolsEPFRSoS_E.exit917:                         ; preds = %_ZNSolsEm.exit915
  call void @abort() #34
  unreachable

bb.gd:                                            ; preds = %bb.fv
  %i.aat = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #35
  br label %bb.gj

bb.ge:                                            ; preds = %bb.fy
  %i.aau = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit921

bb.gf:                                            ; preds = %bb.fz
  %i.aav = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aaw = load ptr, ptr %47, align 8, !tbaa !96  ; 3 uses
  %.not.i920 = icmp eq ptr %i.aaw, null
  br i1 %.not.i920, label %_ZN8facebook3jsi7PointerD2Ev.exit921, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !94
  %i.aay = load ptr, ptr %i.aax, align 8
  call void %i.aay(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit921

_ZN8facebook3jsi7PointerD2Ev.exit921:             ; preds = %bb.gg, %bb.gf, %bb.ge
  %.pn623 = phi { ptr, i32 } [ %i.aau, %bb.ge ], [ %i.aav, %bb.gf ], [ %i.aav, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #35
  br label %bb.gj

bb.gh:                                            ; preds = %bb.ei
  unreachable

.critedge685.thread:                              ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit902, %_ZN8facebook3jsi7PointerD2Ev.exit858, %_ZN8facebook3jsi7PointerD2Ev.exit818, %_ZN8facebook3jsi7PointerD2Ev.exit907, %.critedge689, %.critedge685
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !586
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.aba, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef %i.cn)
          to label %bb.gi unwind label %.loopexit1928

bb.gi:                                            ; preds = %.critedge685.thread
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %.critedge710

bb.gj:                                            ; preds = %.loopexit1928, %.loopexit.split-lp1929, %_ZN8facebook3jsi7PointerD2Ev.exit921, %_ZN8facebook3jsi7PointerD2Ev.exit894, %_ZN8facebook3jsi7PointerD2Ev.exit850, %bb.gd, %_ZN8facebook3jsi7PointerD2Ev.exit899, %bb.fn, %_ZN8facebook3jsi7PointerD2Ev.exit855, %bb.eu
  %.pn639 = phi { ptr, i32 } [ %i.yk, %bb.fn ], [ %.pn636.pn, %_ZN8facebook3jsi7PointerD2Ev.exit855 ], [ %.pn634, %_ZN8facebook3jsi7PointerD2Ev.exit850 ], [ %i.aat, %bb.gd ], [ %i.vk, %bb.eu ], [ %.pn629.pn, %_ZN8facebook3jsi7PointerD2Ev.exit899 ], [ %.pn627, %_ZN8facebook3jsi7PointerD2Ev.exit894 ], [ %.pn623, %_ZN8facebook3jsi7PointerD2Ev.exit921 ], [ %lpad.loopexit1930, %.loopexit1928 ], [ %lpad.loopexit.split-lp1931, %.loopexit.split-lp1929 ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.zn

switch.lookup:                                    ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #35
  %i.abb = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !587, !noalias !589 ; 3 uses
  %i.abd = load ptr, ptr %0, align 8, !tbaa !452, !noalias !589, !nonnull !68, !align !453 ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !94, !noalias !589
  %i.abf = zext nneg i32 %i.abc to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv, i64 %i.abf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.abg = zext nneg i32 %i.abc to i64
  %switch.gep4273 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv.51, i64 %i.abg
  %switch.load4274 = load i8, ptr %switch.gep4273, align 1
  %switch.ext4275 = zext i8 %switch.load4274 to i64
  %switch.idx.cast = zext i32 %i.abc to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast, 3
  %i.abh = getelementptr inbounds nuw i8, ptr %i.fu, i64 %switch.ext
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !213, !noalias !589
  %i.abj = getelementptr inbounds nuw i8, ptr %i.fu, i64 %switch.ext4275
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !107, !noalias !589
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abe, i64 %switch.idx.mult
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 152
  %i.abn = load ptr, ptr %i.abm, align 8, !noalias !589
  invoke void %i.abn(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::PropNameID") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8) %i.abd, ptr noundef %i.abi, i64 noundef %i.abk)
          to label %"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit" unwind label %bb.gm, !inline_history !592

"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit": ; preds = %switch.lookup
  %i.abo = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !593
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.abp, ptr noundef nonnull align 8 dereferenceable(8) %48, i64 noundef %i.cn)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit"
  %i.abq = load ptr, ptr %48, align 8, !tbaa !96  ; 3 uses
  %.not.i923 = icmp eq ptr %i.abq, null
  br i1 %.not.i923, label %_ZN8facebook3jsi7PointerD2Ev.exit924, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !94
  %i.abs = load ptr, ptr %i.abr, align 8
  call void %i.abs(ptr noundef nonnull align 8 dereferenceable(8) %i.abq) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit924

_ZN8facebook3jsi7PointerD2Ev.exit924:             ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  br label %.critedge710

bb.gm:                                            ; preds = %switch.lookup
  %i.abt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit926

bb.gn:                                            ; preds = %"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit"
  %i.abu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.abv = load ptr, ptr %48, align 8, !tbaa !96  ; 3 uses
  %.not.i925 = icmp eq ptr %i.abv, null
  br i1 %.not.i925, label %_ZN8facebook3jsi7PointerD2Ev.exit926, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !94
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(8) %i.abv) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit926

_ZN8facebook3jsi7PointerD2Ev.exit926:             ; preds = %bb.go, %bb.gn, %bb.gm
  %.pn619 = phi { ptr, i32 } [ %i.abt, %bb.gm ], [ %i.abu, %bb.gn ], [ %i.abu, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  br label %bb.zn

bb.gp:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  %i.aby = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %.sroa.0159.0.copyload = load i32, ptr %i.aby, align 8, !tbaa !498 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.2161.0.copyload = load i64, ptr %.sroa.2161.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  switch i32 %.sroa.0159.0.copyload, label %bb.gu [
    i32 0, label %bb.gq
    i32 1, label %bb.gr
    i32 3, label %bb.gs
    i32 2, label %bb.gt
  ]

bb.gq:                                            ; preds = %bb.gp
  store i32 0, ptr %49, align 8, !tbaa !69, !alias.scope !597
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread

bb.gr:                                            ; preds = %bb.gp
  store i32 1, ptr %49, align 8, !tbaa !69, !alias.scope !600
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread

bb.gs:                                            ; preds = %bb.gp
  store i32 3, ptr %49, align 8, !tbaa !69, !alias.scope !594
  store i64 %.sroa.2161.0.copyload, ptr %i.bp, align 8, !tbaa !74, !alias.scope !594
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread

bb.gt:                                            ; preds = %bb.gp
  %i.abz = trunc i64 %.sroa.2161.0.copyload to i8
  %154 = and i8 %i.abz, 1
  store i32 2, ptr %49, align 8, !tbaa !69, !alias.scope !594
  store i8 %154, ptr %i.bp, align 8, !tbaa !74, !alias.scope !594
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread

bb.gu:                                            ; preds = %bb.gp
  %.off.i.i927 = add i32 %.sroa.0159.0.copyload, -4
  %switch.i.i928 = icmp ult i32 %.off.i.i927, 5
  call void @llvm.assume(i1 %switch.i.i928)
  %i.aca = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !603
  %.not.not.i.i.i.i929 = icmp eq i64 %i.aca, 0
  br i1 %.not.not.i.i.i.i929, label %.preheader2558, label %bb.gv

.preheader2558:                                   ; preds = %bb.gu, %.preheader2558
  %.sroa.06.0.in.i.i.i.i935 = phi ptr [ %.sroa.06.0.i.i.i.i936, %.preheader2558 ], [ %i.v, %bb.gu ]
  %.sroa.06.0.i.i.i.i936 = load ptr, ptr %.sroa.06.0.in.i.i.i.i935, align 8, !tbaa !119, !noalias !603, !nonnull !68, !noundef !68 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i936, i64 8
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !107, !noalias !603
  %i.acd = icmp eq i64 %.sroa.2161.0.copyload, %i.acc
  br i1 %i.acd, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i933, label %.preheader2558, !llvm.loop !515

bb.gv:                                            ; preds = %bb.gu
  %i.ace = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !603 ; 2 uses
  %i.acf = urem i64 %.sroa.2161.0.copyload, %i.ace ; 2 uses
  %i.acg = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !603
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.acf
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !121, !noalias !603, !nonnull !68, !noundef !68
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !119, !noalias !603 ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !107, !noalias !603
  %i.acm = icmp eq i64 %.sroa.2161.0.copyload, %i.acl
  br i1 %i.acm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i933, label %.lr.ph.i.i.i.i.i.i930

.lr.ph.i.i.i.i.i.i930:                            ; preds = %bb.gv, %.lr.ph.i.i.i.i.i.i930
  %.020.i.i.i.i.i.i931 = phi ptr [ %i.acn, %.lr.ph.i.i.i.i.i.i930 ], [ %i.acj, %bb.gv ]
  %i.acn = load ptr, ptr %.020.i.i.i.i.i.i931, align 8, !tbaa !119, !noalias !603, !nonnull !68, !noundef !68 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !107, !noalias !603 ; 2 uses
  %i.acq = urem i64 %i.acp, %i.ace
  %.not19.i.i.i.i.i.i932 = icmp eq i64 %i.acq, %i.acf
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i932)
  %i.acr = icmp eq i64 %.sroa.2161.0.copyload, %i.acp
  br i1 %i.acr, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i933, label %.lr.ph.i.i.i.i.i.i930, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i933: ; preds = %.lr.ph.i.i.i.i.i.i930, %.preheader2558, %bb.gv
  %.sroa.06.1.i.i.i.i934 = phi ptr [ %.sroa.06.0.i.i.i.i936, %.preheader2558 ], [ %i.acj, %bb.gv ], [ %i.acn, %.lr.ph.i.i.i.i.i.i930 ]
  %i.acs = load ptr, ptr %0, align 8, !tbaa !452, !noalias !603, !nonnull !68, !align !453
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i934, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.acs, ptr noundef nonnull align 8 dereferenceable(16) %i.act)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938 unwind label %bb.he

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread: ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %.pre3064 = load ptr, ptr %i.bp, align 8, !tbaa !74, !noalias !606
  br label %bb.gy

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i933
  %.pr = load i32, ptr %49, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %i.acu = icmp eq i32 %.pr, 4
  %.pre3065 = load ptr, ptr %i.bp, align 8, !tbaa !74, !noalias !68 ; 2 uses
  br i1 %i.acu, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938
  %i.acv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !94, !noalias !609
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 112
  %i.acy = load ptr, ptr %i.acx, align 8, !noalias !609
  %i.acz = invoke noundef ptr %i.acy(ptr noundef nonnull align 8 dereferenceable(8) %i.acv, ptr noundef %.pre3065)
          to label %bb.gx unwind label %bb.hf, !inline_history !612

bb.gx:                                            ; preds = %bb.gw
  store ptr %i.acz, ptr %51, align 8, !tbaa !96, !alias.scope !609
  %i.ada = load ptr, ptr %i.acv, align 8, !tbaa !94, !noalias !613
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 184
  %i.adc = load ptr, ptr %i.adb, align 8, !noalias !613
  invoke void %i.adc(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::PropNameID") align 8 %50, ptr noundef nonnull align 8 dereferenceable(8) %i.acv, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %.critedge715 unwind label %bb.hj, !inline_history !616

bb.gy:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread, %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938
  %i.add = phi ptr [ %.pre3064, %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938.thread ], [ %.pre3065, %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit938 ]
  %i.ade = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !94, !noalias !606
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 128
  %i.adh = load ptr, ptr %i.adg, align 8, !noalias !606
  %i.adi = invoke noundef ptr %i.adh(ptr noundef nonnull align 8 dereferenceable(8) %i.ade, ptr noundef %i.add)
          to label %bb.gz unwind label %bb.hg, !inline_history !617

bb.gz:                                            ; preds = %bb.gy
  store ptr %i.adi, ptr %52, align 8, !tbaa !96, !alias.scope !606
  %i.adj = load ptr, ptr %i.ade, align 8, !tbaa !94, !noalias !618
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 176
  %i.adl = load ptr, ptr %i.adk, align 8, !noalias !618
  invoke void %i.adl(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::PropNameID") align 8 %50, ptr noundef nonnull align 8 dereferenceable(8) %i.ade, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %.critedge695 unwind label %bb.hh, !inline_history !621

.critedge695:                                     ; preds = %bb.gz
  %i.adm = load ptr, ptr %52, align 8, !tbaa !96  ; 3 uses
  %.not.i943 = icmp eq ptr %i.adm, null
  br i1 %.not.i943, label %_ZN8facebook3jsi7PointerD2Ev.exit944, label %bb.ha

bb.ha:                                            ; preds = %.critedge695
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !94
  %i.ado = load ptr, ptr %i.adn, align 8
  call void %i.ado(ptr noundef nonnull align 8 dereferenceable(8) %i.adm) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit944

_ZN8facebook3jsi7PointerD2Ev.exit944:             ; preds = %.critedge695, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #35
  br label %.critedge698

.critedge715:                                     ; preds = %bb.gx
  %i.adp = load ptr, ptr %51, align 8, !tbaa !96  ; 3 uses
  %.not.i945 = icmp eq ptr %i.adp, null
  br i1 %.not.i945, label %_ZN8facebook3jsi7PointerD2Ev.exit946, label %bb.hb

bb.hb:                                            ; preds = %.critedge715
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !94
  %i.adr = load ptr, ptr %i.adq, align 8
  call void %i.adr(ptr noundef nonnull align 8 dereferenceable(8) %i.adp) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit946

_ZN8facebook3jsi7PointerD2Ev.exit946:             ; preds = %.critedge715, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %.critedge698

.critedge698:                                     ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit944, %_ZN8facebook3jsi7PointerD2Ev.exit946
  %i.ads = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !622
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.adt, ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %i.cn)
          to label %bb.hc unwind label %bb.hm

bb.hc:                                            ; preds = %.critedge698
  %i.adu = load ptr, ptr %50, align 8, !tbaa !96  ; 3 uses
  %.not.i947 = icmp eq ptr %i.adu, null
  br i1 %.not.i947, label %_ZN8facebook3jsi7PointerD2Ev.exit948, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !94
  %i.adw = load ptr, ptr %i.adv, align 8
  call void %i.adw(ptr noundef nonnull align 8 dereferenceable(8) %i.adu) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit948

_ZN8facebook3jsi7PointerD2Ev.exit948:             ; preds = %bb.hc, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  br label %.critedge710

bb.he:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i933
  %i.adx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ho

bb.hf:                                            ; preds = %bb.gw
  %i.ady = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.hl

bb.hg:                                            ; preds = %bb.gy
  %i.adz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit952

bb.hh:                                            ; preds = %bb.gz
  %i.aea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aeb = load ptr, ptr %52, align 8, !tbaa !96  ; 3 uses
  %.not.i949 = icmp eq ptr %i.aeb, null
  br i1 %.not.i949, label %_ZN8facebook3jsi7PointerD2Ev.exit952, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !94
  %i.aed = load ptr, ptr %i.aec, align 8
  call void %i.aed(ptr noundef nonnull align 8 dereferenceable(8) %i.aeb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit952

bb.hj:                                            ; preds = %bb.gx
  %i.aee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aef = load ptr, ptr %51, align 8, !tbaa !96  ; 3 uses
  %.not.i951 = icmp eq ptr %i.aef, null
  br i1 %.not.i951, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !94
  %i.aeh = load ptr, ptr %i.aeg, align 8
  call void %i.aeh(ptr noundef nonnull align 8 dereferenceable(8) %i.aef) #35, !inline_history !99
  br label %bb.hl

_ZN8facebook3jsi7PointerD2Ev.exit952:             ; preds = %bb.hi, %bb.hh, %bb.hg
  %.pn611 = phi { ptr, i32 } [ %i.adz, %bb.hg ], [ %i.aea, %bb.hh ], [ %i.aea, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit954
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a

bb.jh:                                            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_6StringE.exit
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !94
  %i.ald = load ptr, ptr %i.alc, align 8
  call void %i.ald(ptr noundef nonnull align 8 dereferenceable(8) %i.alb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1018

_ZN8facebook3jsi7PointerD2Ev.exit1018:            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_6StringE.exit, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %bb.kh

bb.ji:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1000
  %i.ale = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.jk

bb.jj:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1005
  %i.alf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #35
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn587 = phi { ptr, i32 } [ %i.alf, %bb.jj ], [ %i.ale, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #35
  br label %bb.kl

bb.jl:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1010
  %i.alg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.jn

bb.jm:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1015
  %i.alh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #35
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %.pn593 = phi { ptr, i32 } [ %i.alh, %bb.jm ], [ %i.alg, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1020

bb.jo:                                            ; preds = %bb.jg
  %i.ali = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #35
  %i.alj = load ptr, ptr %64, align 8, !tbaa !96  ; 3 uses
  %.not.i1019 = icmp eq ptr %i.alj, null
  br i1 %.not.i1019, label %_ZN8facebook3jsi7PointerD2Ev.exit1020, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !94
  %i.all = load ptr, ptr %i.alk, align 8
  call void %i.all(ptr noundef nonnull align 8 dereferenceable(8) %i.alj) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1020

_ZN8facebook3jsi7PointerD2Ev.exit1020:            ; preds = %bb.jp, %bb.jo, %bb.jn
  %.pn595 = phi { ptr, i32 } [ %.pn593, %bb.jn ], [ %i.ali, %bb.jo ], [ %i.ali, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %bb.kj

bb.jq:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #35
  %i.alm = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.aln = load i64, ptr %i.alm, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.alo = load i64, ptr %i.z, align 8, !tbaa !628, !noalias !654
  %.not.not.i.i.i1021 = icmp eq i64 %i.alo, 0
  br i1 %.not.not.i.i.i1021, label %.preheader2568, label %bb.jr

.preheader2568:                                   ; preds = %bb.jq, %.preheader2568
  %.sroa.06.0.in.i.i.i1027 = phi ptr [ %.sroa.06.0.i.i.i1028, %.preheader2568 ], [ %i.ab, %bb.jq ]
  %.sroa.06.0.i.i.i1028 = load ptr, ptr %.sroa.06.0.in.i.i.i1027, align 8, !tbaa !119, !noalias !654, !nonnull !68, !noundef !68 ; 3 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1028, i64 8
  %i.alq = load i64, ptr %i.alp, align 8, !tbaa !107, !noalias !654
  %i.alr = icmp eq i64 %i.aln, %i.alq
  br i1 %i.alr, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1025, label %.preheader2568, !llvm.loop !629

bb.jr:                                            ; preds = %bb.jq
  %i.als = load i64, ptr %i.aa, align 8, !tbaa !90, !noalias !654 ; 2 uses
  %i.alt = urem i64 %i.aln, %i.als                ; 2 uses
  %i.alu = load ptr, ptr %i.s, align 8, !tbaa !89, !noalias !654
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.alt
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !121, !noalias !654, !nonnull !68, !noundef !68
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !119, !noalias !654 ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !107, !noalias !654
  %i.ama = icmp eq i64 %i.aln, %i.alz
  br i1 %i.ama, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1025, label %.lr.ph.i.i.i.i.i1022

.lr.ph.i.i.i.i.i1022:                             ; preds = %bb.jr, %.lr.ph.i.i.i.i.i1022
  %.020.i.i.i.i.i1023 = phi ptr [ %i.amb, %.lr.ph.i.i.i.i.i1022 ], [ %i.alx, %bb.jr ]
  %i.amb = load ptr, ptr %.020.i.i.i.i.i1023, align 8, !tbaa !119, !noalias !654, !nonnull !68, !noundef !68 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !107, !noalias !654 ; 2 uses
  %i.ame = urem i64 %i.amd, %i.als
  %.not19.i.i.i.i.i1024 = icmp eq i64 %i.ame, %i.alt
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1024)
  %i.amf = icmp eq i64 %i.aln, %i.amd
  br i1 %i.amf, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1025, label %.lr.ph.i.i.i.i.i1022, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1025: ; preds = %.lr.ph.i.i.i.i.i1022, %.preheader2568, %bb.jr
  %.sroa.06.1.i.i.i1026 = phi ptr [ %.sroa.06.0.i.i.i1028, %.preheader2568 ], [ %i.alx, %bb.jr ], [ %i.amb, %.lr.ph.i.i.i.i.i1022 ]
  %i.amg = load ptr, ptr %0, align 8, !tbaa !452, !noalias !654, !nonnull !68, !align !453 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1026, i64 16
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !96, !noalias !654
  %i.amj = load ptr, ptr %i.amg, align 8, !tbaa !94, !noalias !654
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 144
  %i.aml = load ptr, ptr %i.amk, align 8, !noalias !654
  %i.amm = invoke noundef ptr %i.aml(ptr noundef nonnull align 8 dereferenceable(8) %i.amg, ptr noundef %i.ami)
          to label %bb.js unwind label %bb.ju, !inline_history !631

bb.js:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1025
  store ptr %i.amm, ptr %67, align 8, !tbaa !96, !alias.scope !654
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #35
  %i.amn = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !94, !noalias !657
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 384
  %i.amq = load ptr, ptr %i.amp, align 8, !noalias !657
  invoke void %i.amq(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %68, ptr noundef nonnull align 8 dereferenceable(8) %i.amn, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit unwind label %bb.jv, !inline_history !660

_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit: ; preds = %bb.js
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %68) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  %i.amr = load ptr, ptr %67, align 8, !tbaa !96  ; 3 uses
  %.not.i1032 = icmp eq ptr %i.amr, null
  br i1 %.not.i1032, label %_ZN8facebook3jsi7PointerD2Ev.exit1033, label %bb.jt

bb.jt:                                            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !94
  %i.amt = load ptr, ptr %i.ams, align 8
  call void %i.amt(ptr noundef nonnull align 8 dereferenceable(8) %i.amr) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1033

_ZN8facebook3jsi7PointerD2Ev.exit1033:            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #35
  br label %bb.kh

bb.ju:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1025
  %i.amu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1035

bb.jv:                                            ; preds = %bb.js
  %i.amv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  %i.amw = load ptr, ptr %67, align 8, !tbaa !96  ; 3 uses
  %.not.i1034 = icmp eq ptr %i.amw, null
  br i1 %.not.i1034, label %_ZN8facebook3jsi7PointerD2Ev.exit1035, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !94
  %i.amy = load ptr, ptr %i.amx, align 8
  call void %i.amy(ptr noundef nonnull align 8 dereferenceable(8) %i.amw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1035

_ZN8facebook3jsi7PointerD2Ev.exit1035:            ; preds = %bb.jw, %bb.jv, %bb.ju
  %.pn591 = phi { ptr, i32 } [ %i.amu, %bb.ju ], [ %i.amv, %bb.jv ], [ %i.amv, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #35
  br label %bb.kj

bb.jx:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #35
  %.sroa.2133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.2133.0.copyload = load i64, ptr %.sroa.2133.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  switch i32 %i.ajz, label %bb.kc [
    i32 0, label %bb.jy
    i32 1, label %bb.jz
    i32 3, label %bb.ka
    i32 2, label %bb.kb
  ]

bb.jy:                                            ; preds = %bb.jx
  store i32 0, ptr %69, align 8, !tbaa !69, !alias.scope !664
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047

bb.jz:                                            ; preds = %bb.jx
  store i32 1, ptr %69, align 8, !tbaa !69, !alias.scope !667
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047

bb.ka:                                            ; preds = %bb.jx
  store i32 3, ptr %69, align 8, !tbaa !69, !alias.scope !661
  store i64 %.sroa.2133.0.copyload, ptr %i.bl, align 8, !tbaa !74, !alias.scope !661
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047

bb.kb:                                            ; preds = %bb.jx
  %i.amz = trunc i64 %.sroa.2133.0.copyload to i8
  %155 = and i8 %i.amz, 1
  store i32 2, ptr %69, align 8, !tbaa !69, !alias.scope !661
  store i8 %155, ptr %i.bl, align 8, !tbaa !74, !alias.scope !661
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047

bb.kc:                                            ; preds = %bb.jx
  %.off.i.i1036 = add i32 %i.ajz, -4
  %switch.i.i1037 = icmp ult i32 %.off.i.i1036, 5
  call void @llvm.assume(i1 %switch.i.i1037)
  %i.ana = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !670
  %.not.not.i.i.i.i1038 = icmp eq i64 %i.ana, 0
  br i1 %.not.not.i.i.i.i1038, label %.preheader2564, label %bb.kd

.preheader2564:                                   ; preds = %bb.kc, %.preheader2564
  %.sroa.06.0.in.i.i.i.i1044 = phi ptr [ %.sroa.06.0.i.i.i.i1045, %.preheader2564 ], [ %i.v, %bb.kc ]
  %.sroa.06.0.i.i.i.i1045 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1044, align 8, !tbaa !119, !noalias !670, !nonnull !68, !noundef !68 ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1045, i64 8
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !107, !noalias !670
  %i.and = icmp eq i64 %.sroa.2133.0.copyload, %i.anc
  br i1 %i.and, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1042, label %.preheader2564, !llvm.loop !515

bb.kd:                                            ; preds = %bb.kc
  %i.ane = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !670 ; 2 uses
  %i.anf = urem i64 %.sroa.2133.0.copyload, %i.ane ; 2 uses
  %i.ang = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !670
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ang, i64 %i.anf
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !121, !noalias !670, !nonnull !68, !noundef !68
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !119, !noalias !670 ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !107, !noalias !670
  %i.anm = icmp eq i64 %.sroa.2133.0.copyload, %i.anl
  br i1 %i.anm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1042, label %.lr.ph.i.i.i.i.i.i1039

.lr.ph.i.i.i.i.i.i1039:                           ; preds = %bb.kd, %.lr.ph.i.i.i.i.i.i1039
  %.020.i.i.i.i.i.i1040 = phi ptr [ %i.ann, %.lr.ph.i.i.i.i.i.i1039 ], [ %i.anj, %bb.kd ]
  %i.ann = load ptr, ptr %.020.i.i.i.i.i.i1040, align 8, !tbaa !119, !noalias !670, !nonnull !68, !noundef !68 ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !107, !noalias !670 ; 2 uses
  %i.anq = urem i64 %i.anp, %i.ane
  %.not19.i.i.i.i.i.i1041 = icmp eq i64 %i.anq, %i.anf
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1041)
  %i.anr = icmp eq i64 %.sroa.2133.0.copyload, %i.anp
  br i1 %i.anr, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1042, label %.lr.ph.i.i.i.i.i.i1039, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1042: ; preds = %.lr.ph.i.i.i.i.i.i1039, %.preheader2564, %bb.kd
  %.sroa.06.1.i.i.i.i1043 = phi ptr [ %.sroa.06.0.i.i.i.i1045, %.preheader2564 ], [ %i.anj, %bb.kd ], [ %i.ann, %.lr.ph.i.i.i.i.i.i1039 ]
  %i.ans = load ptr, ptr %0, align 8, !tbaa !452, !noalias !670, !nonnull !68, !align !453
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1043, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.ans, ptr noundef nonnull align 8 dereferenceable(16) %i.ant)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047 unwind label %bb.ke

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047: ; preds = %bb.kb, %bb.ka, %bb.jz, %bb.jy, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1042
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #35
  %i.anu = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !94, !noalias !673
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 400
  %i.anx = load ptr, ptr %i.anw, align 8, !noalias !673
  invoke void %i.anx(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %70, ptr noundef nonnull align 8 dereferenceable(8) %i.anu, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(16) %69)
          to label %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.kf, !inline_history !676

_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %70) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %bb.kh

bb.ke:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1042
  %i.any = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.kg

bb.kf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1047
  %i.anz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #35
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  %.pn589 = phi { ptr, i32 } [ %i.anz, %bb.kf ], [ %i.any, %bb.ke ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %bb.kj

bb.kh:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1033, %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_5ValueE.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1018
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %61) #35
  %i.aoa = load ptr, ptr %62, align 8, !tbaa !96  ; 3 uses
  %.not.i1049 = icmp eq ptr %i.aoa, null
  br i1 %.not.i1049, label %_ZN8facebook3jsi7PointerD2Ev.exit1050, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !94
  %i.aoc = load ptr, ptr %i.aob, align 8
  call void %i.aoc(ptr noundef nonnull align 8 dereferenceable(8) %i.aoa) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1050

_ZN8facebook3jsi7PointerD2Ev.exit1050:            ; preds = %bb.kh, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  br label %.critedge710

bb.kj:                                            ; preds = %bb.kg, %_ZN8facebook3jsi7PointerD2Ev.exit1035, %_ZN8facebook3jsi7PointerD2Ev.exit1020
  %.pn595.pn = phi { ptr, i32 } [ %.pn595, %_ZN8facebook3jsi7PointerD2Ev.exit1020 ], [ %.pn591, %_ZN8facebook3jsi7PointerD2Ev.exit1035 ], [ %.pn589, %bb.kg ]
  %i.aod = load ptr, ptr %62, align 8, !tbaa !96  ; 3 uses
  %.not.i1051 = icmp eq ptr %i.aod, null
  br i1 %.not.i1051, label %_ZN8facebook3jsi7PointerD2Ev.exit1052, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !94
  %i.aof = load ptr, ptr %i.aoe, align 8
  call void %i.aof(ptr noundef nonnull align 8 dereferenceable(8) %i.aod) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1052

_ZN8facebook3jsi7PointerD2Ev.exit1052:            ; preds = %bb.kj, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #35
  br label %bb.kl

bb.kl:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1052, %bb.jk
  %.pn595.pn.pn = phi { ptr, i32 } [ %.pn595.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1052 ], [ %.pn587, %bb.jk ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  br label %bb.zn

bb.km:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #35
  %i.aog = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !677 ; 4 uses
  %i.aoi = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !679
  %.not.not.i.i.i1053 = icmp eq i64 %i.aoi, 0
  br i1 %.not.not.i.i.i1053, label %.preheader2584.a, label %bb.kn

.preheader2584.a:                                 ; preds = %bb.km, %.preheader2584.a
  %.sroa.06.0.in.i.i.i1059 = phi ptr [ %.sroa.06.0.i.i.i1060, %.preheader2584.a ], [ %i.v, %bb.km ]
  %.sroa.06.0.i.i.i1060 = load ptr, ptr %.sroa.06.0.in.i.i.i1059, align 8, !tbaa !119, !noalias !679, !nonnull !68, !noundef !68 ; 3 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1060, i64 8
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !107, !noalias !679
  %i.aol = icmp eq i64 %i.aoh, %i.aok
  br i1 %i.aol, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1057, label %.preheader2584.a, !llvm.loop !515

bb.kn:                                            ; preds = %bb.km
  %i.aom = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !679 ; 2 uses
  %i.aon = urem i64 %i.aoh, %i.aom                ; 2 uses
  %i.aoo = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !679
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %i.aon
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !121, !noalias !679, !nonnull !68, !noundef !68
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !119, !noalias !679 ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !107, !noalias !679
  %i.aou = icmp eq i64 %i.aoh, %i.aot
  br i1 %i.aou, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1057, label %.lr.ph.i.i.i.i.i1054

.lr.ph.i.i.i.i.i1054:                             ; preds = %bb.kn, %.lr.ph.i.i.i.i.i1054
  %.020.i.i.i.i.i1055 = phi ptr [ %i.aov, %.lr.ph.i.i.i.i.i1054 ], [ %i.aor, %bb.kn ]
  %i.aov = load ptr, ptr %.020.i.i.i.i.i1055, align 8, !tbaa !119, !noalias !679, !nonnull !68, !noundef !68 ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !107, !noalias !679 ; 2 uses
  %i.aoy = urem i64 %i.aox, %i.aom
  %.not19.i.i.i.i.i1056 = icmp eq i64 %i.aoy, %i.aon
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1056)
  %i.aoz = icmp eq i64 %i.aoh, %i.aox
  br i1 %i.aoz, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1057, label %.lr.ph.i.i.i.i.i1054, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1057: ; preds = %.lr.ph.i.i.i.i.i1054, %.preheader2584.a, %bb.kn
  %.sroa.06.1.i.i.i1058 = phi ptr [ %.sroa.06.0.i.i.i1060, %.preheader2584.a ], [ %i.aor, %bb.kn ], [ %i.aov, %.lr.ph.i.i.i.i.i1054 ]
  %i.apa = load ptr, ptr %0, align 8, !tbaa !452, !noalias !679, !nonnull !68, !align !453
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1058, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.apa, ptr noundef nonnull align 8 dereferenceable(16) %i.apb)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1062 unwind label %bb.kz

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1062: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1057
  %i.apc = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %71, ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.apc)
          to label %bb.ko unwind label %bb.la

bb.ko:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1062
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  %i.apd = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !7 ; 3 uses
  switch i32 %i.ape, label %bb.ly [
    i32 5, label %bb.kp
    i32 6, label %bb.lj
  ]

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #35
  %i.apf = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !74 ; 4 uses
  %i.aph = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !682
  %.not.not.i.i.i1063 = icmp eq i64 %i.aph, 0
  br i1 %.not.not.i.i.i1063, label %.preheader2578, label %bb.kq

.preheader2578:                                   ; preds = %bb.kp, %.preheader2578
  %.sroa.06.0.in.i.i.i1069 = phi ptr [ %.sroa.06.0.i.i.i1070, %.preheader2578 ], [ %i.v, %bb.kp ]
  %.sroa.06.0.i.i.i1070 = load ptr, ptr %.sroa.06.0.in.i.i.i1069, align 8, !tbaa !119, !noalias !682, !nonnull !68, !noundef !68 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1070, i64 8
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !107, !noalias !682
  %i.apk = icmp eq i64 %i.apg, %i.apj
  br i1 %i.apk, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1067, label %.preheader2578, !llvm.loop !515

bb.kq:                                            ; preds = %bb.kp
  %i.apl = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !682 ; 2 uses
  %i.apm = urem i64 %i.apg, %i.apl                ; 2 uses
  %i.apn = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !682
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apm
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !121, !noalias !682, !nonnull !68, !noundef !68
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !119, !noalias !682 ; 3 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  %i.aps = load i64, ptr %i.apr, align 8, !tbaa !107, !noalias !682
  %i.apt = icmp eq i64 %i.apg, %i.aps
  br i1 %i.apt, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1067, label %.lr.ph.i.i.i.i.i1064

.lr.ph.i.i.i.i.i1064:                             ; preds = %bb.kq, %.lr.ph.i.i.i.i.i1064
  %.020.i.i.i.i.i1065 = phi ptr [ %i.apu, %.lr.ph.i.i.i.i.i1064 ], [ %i.apq, %bb.kq ]
  %i.apu = load ptr, ptr %.020.i.i.i.i.i1065, align 8, !tbaa !119, !noalias !682, !nonnull !68, !noundef !68 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 8
  %i.apw = load i64, ptr %i.apv, align 8, !tbaa !107, !noalias !682 ; 2 uses
  %i.apx = urem i64 %i.apw, %i.apl
  %.not19.i.i.i.i.i1066 = icmp eq i64 %i.apx, %i.apm
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1066)
  %i.apy = icmp eq i64 %i.apg, %i.apw
  br i1 %i.apy, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1067, label %.lr.ph.i.i.i.i.i1064, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1067: ; preds = %.lr.ph.i.i.i.i.i1064, %.preheader2578, %bb.kq
  %.sroa.06.1.i.i.i1068 = phi ptr [ %.sroa.06.0.i.i.i1070, %.preheader2578 ], [ %i.apq, %bb.kq ], [ %i.apu, %.lr.ph.i.i.i.i.i1064 ]
  %i.apz = load ptr, ptr %0, align 8, !tbaa !452, !noalias !682, !nonnull !68, !align !453
  %i.aqa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1068, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.apz, ptr noundef nonnull align 8 dereferenceable(16) %i.aqa)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1072 unwind label %bb.lc

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1072: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1067
  %i.aqb = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asStringERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.aqb)
          to label %bb.kr unwind label %bb.ld

bb.kr:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1072
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %74) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  %i.aqc = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #35
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %.sroa.0119.0.copyload = load i32, ptr %i.aqd, align 8, !tbaa !498 ; 2 uses
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %.sroa.2121.0.copyload = load i64, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  switch i32 %.sroa.0119.0.copyload, label %bb.kw [
    i32 0, label %bb.ks
    i32 1, label %bb.kt
    i32 3, label %bb.ku
    i32 2, label %bb.kv
  ]

bb.ks:                                            ; preds = %bb.kr
  store i32 0, ptr %75, align 8, !tbaa !69, !alias.scope !688
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084

bb.kt:                                            ; preds = %bb.kr
  store i32 1, ptr %75, align 8, !tbaa !69, !alias.scope !691
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084

bb.ku:                                            ; preds = %bb.kr
  store i32 3, ptr %75, align 8, !tbaa !69, !alias.scope !685
  store i64 %.sroa.2121.0.copyload, ptr %i.bi, align 8, !tbaa !74, !alias.scope !685
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084

bb.kv:                                            ; preds = %bb.kr
  %i.aqe = trunc i64 %.sroa.2121.0.copyload to i8
  %156 = and i8 %i.aqe, 1
  store i32 2, ptr %75, align 8, !tbaa !69, !alias.scope !685
  store i8 %156, ptr %i.bi, align 8, !tbaa !74, !alias.scope !685
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084

bb.kw:                                            ; preds = %bb.kr
  %.off.i.i1073 = add i32 %.sroa.0119.0.copyload, -4
  %switch.i.i1074 = icmp ult i32 %.off.i.i1073, 5
  call void @llvm.assume(i1 %switch.i.i1074)
  %i.aqf = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !694
  %.not.not.i.i.i.i1075 = icmp eq i64 %i.aqf, 0
  br i1 %.not.not.i.i.i.i1075, label %.preheader2576, label %bb.kx

.preheader2576:                                   ; preds = %bb.kw, %.preheader2576
  %.sroa.06.0.in.i.i.i.i1081 = phi ptr [ %.sroa.06.0.i.i.i.i1082, %.preheader2576 ], [ %i.v, %bb.kw ]
  %.sroa.06.0.i.i.i.i1082 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1081, align 8, !tbaa !119, !noalias !694, !nonnull !68, !noundef !68 ; 3 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1082, i64 8
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !107, !noalias !694
  %i.aqi = icmp eq i64 %.sroa.2121.0.copyload, %i.aqh
  br i1 %i.aqi, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1079, label %.preheader2576, !llvm.loop !515

bb.kx:                                            ; preds = %bb.kw
  %i.aqj = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !694 ; 2 uses
  %i.aqk = urem i64 %.sroa.2121.0.copyload, %i.aqj ; 2 uses
  %i.aql = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !694
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.aql, i64 %i.aqk
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !121, !noalias !694, !nonnull !68, !noundef !68
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !119, !noalias !694 ; 3 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 8
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !107, !noalias !694
  %i.aqr = icmp eq i64 %.sroa.2121.0.copyload, %i.aqq
  br i1 %i.aqr, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1079, label %.lr.ph.i.i.i.i.i.i1076

.lr.ph.i.i.i.i.i.i1076:                           ; preds = %bb.kx, %.lr.ph.i.i.i.i.i.i1076
  %.020.i.i.i.i.i.i1077 = phi ptr [ %i.aqs, %.lr.ph.i.i.i.i.i.i1076 ], [ %i.aqo, %bb.kx ]
  %i.aqs = load ptr, ptr %.020.i.i.i.i.i.i1077, align 8, !tbaa !119, !noalias !694, !nonnull !68, !noundef !68 ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !107, !noalias !694 ; 2 uses
  %i.aqv = urem i64 %i.aqu, %i.aqj
  %.not19.i.i.i.i.i.i1078 = icmp eq i64 %i.aqv, %i.aqk
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1078)
  %i.aqw = icmp eq i64 %.sroa.2121.0.copyload, %i.aqu
  br i1 %i.aqw, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1079, label %.lr.ph.i.i.i.i.i.i1076, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1079: ; preds = %.lr.ph.i.i.i.i.i.i1076, %.preheader2576, %bb.kx
  %.sroa.06.1.i.i.i.i1080 = phi ptr [ %.sroa.06.0.i.i.i.i1082, %.preheader2576 ], [ %i.aqo, %bb.kx ], [ %i.aqs, %.lr.ph.i.i.i.i.i.i1076 ]
  %i.aqx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1080, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(8) %i.aqc, ptr noundef nonnull align 8 dereferenceable(16) %i.aqx)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084 unwind label %bb.lf

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084: ; preds = %bb.kv, %bb.ku, %bb.kt, %bb.ks, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1079
  %i.aqy = load ptr, ptr %i.aqc, align 8, !tbaa !94
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 440
  %i.ara = load ptr, ptr %i.aqz, align 8
  invoke void %i.ara(ptr noundef nonnull align 8 dereferenceable(8) %i.aqc, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(16) %75)
          to label %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit unwind label %bb.lg, !inline_history !697

_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #35
  %i.arb = load ptr, ptr %73, align 8, !tbaa !96  ; 3 uses
  %.not.i1086 = icmp eq ptr %i.arb, null
  br i1 %.not.i1086, label %_ZN8facebook3jsi7PointerD2Ev.exit1087, label %bb.ky

bb.ky:                                            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !94
  %i.ard = load ptr, ptr %i.arc, align 8
  call void %i.ard(ptr noundef nonnull align 8 dereferenceable(8) %i.arb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1087

_ZN8facebook3jsi7PointerD2Ev.exit1087:            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #35
  br label %bb.mq

bb.kz:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1057
  %i.are = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lb

bb.la:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1062
  %i.arf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #35
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %.pn572 = phi { ptr, i32 } [ %i.arf, %bb.la ], [ %i.are, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1145

bb.lc:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1067
  %i.arg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.le

bb.ld:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1072
  %i.arh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %74) #35
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.pn580 = phi { ptr, i32 } [ %i.arh, %bb.ld ], [ %i.arg, %bb.lc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1089

bb.lf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1079
  %i.ari = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lh

bb.lg:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1084
  %i.arj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #35
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.pn582 = phi { ptr, i32 } [ %i.arj, %bb.lg ], [ %i.ari, %bb.lf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #35
  %i.ark = load ptr, ptr %73, align 8, !tbaa !96  ; 3 uses
  %.not.i1088 = icmp eq ptr %i.ark, null
  br i1 %.not.i1088, label %_ZN8facebook3jsi7PointerD2Ev.exit1089, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !94
  %i.arm = load ptr, ptr %i.arl, align 8
  call void %i.arm(ptr noundef nonnull align 8 dereferenceable(8) %i.ark) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1089

_ZN8facebook3jsi7PointerD2Ev.exit1089:            ; preds = %bb.li, %bb.lh, %bb.le
  %.pn582.pn = phi { ptr, i32 } [ %.pn580, %bb.le ], [ %.pn582, %bb.lh ], [ %.pn582, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #35
  br label %bb.ms

bb.lj:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #35
  %i.arn = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.aro = load i64, ptr %i.arn, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.arp = load i64, ptr %i.z, align 8, !tbaa !628, !noalias !698
  %.not.not.i.i.i1090 = icmp eq i64 %i.arp, 0
  br i1 %.not.not.i.i.i1090, label %.preheader2582, label %bb.lk

.preheader2582:                                   ; preds = %bb.lj, %.preheader2582
  %.sroa.06.0.in.i.i.i1096 = phi ptr [ %.sroa.06.0.i.i.i1097, %.preheader2582 ], [ %i.ab, %bb.lj ]
  %.sroa.06.0.i.i.i1097 = load ptr, ptr %.sroa.06.0.in.i.i.i1096, align 8, !tbaa !119, !noalias !698, !nonnull !68, !noundef !68 ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1097, i64 8
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !107, !noalias !698
  %i.ars = icmp eq i64 %i.aro, %i.arr
  br i1 %i.ars, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1094, label %.preheader2582, !llvm.loop !629

bb.lk:                                            ; preds = %bb.lj
  %i.art = load i64, ptr %i.aa, align 8, !tbaa !90, !noalias !698 ; 2 uses
  %i.aru = urem i64 %i.aro, %i.art                ; 2 uses
  %i.arv = load ptr, ptr %i.s, align 8, !tbaa !89, !noalias !698
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %i.aru
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !121, !noalias !698, !nonnull !68, !noundef !68
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !119, !noalias !698 ; 3 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !107, !noalias !698
  %i.asb = icmp eq i64 %i.aro, %i.asa
  br i1 %i.asb, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1094, label %.lr.ph.i.i.i.i.i1091

.lr.ph.i.i.i.i.i1091:                             ; preds = %bb.lk, %.lr.ph.i.i.i.i.i1091
  %.020.i.i.i.i.i1092 = phi ptr [ %i.asc, %.lr.ph.i.i.i.i.i1091 ], [ %i.ary, %bb.lk ]
  %i.asc = load ptr, ptr %.020.i.i.i.i.i1092, align 8, !tbaa !119, !noalias !698, !nonnull !68, !noundef !68 ; 3 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  %i.ase = load i64, ptr %i.asd, align 8, !tbaa !107, !noalias !698 ; 2 uses
  %i.asf = urem i64 %i.ase, %i.art
  %.not19.i.i.i.i.i1093 = icmp eq i64 %i.asf, %i.aru
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1093)
  %i.asg = icmp eq i64 %i.aro, %i.ase
  br i1 %i.asg, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1094, label %.lr.ph.i.i.i.i.i1091, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1094: ; preds = %.lr.ph.i.i.i.i.i1091, %.preheader2582, %bb.lk
  %.sroa.06.1.i.i.i1095 = phi ptr [ %.sroa.06.0.i.i.i1097, %.preheader2582 ], [ %i.ary, %bb.lk ], [ %i.asc, %.lr.ph.i.i.i.i.i1091 ]
  %i.ash = load ptr, ptr %0, align 8, !tbaa !452, !noalias !698, !nonnull !68, !align !453 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1095, i64 16
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !96, !noalias !698
  %i.ask = load ptr, ptr %i.ash, align 8, !tbaa !94, !noalias !698
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 144
  %i.asm = load ptr, ptr %i.asl, align 8, !noalias !698
  %i.asn = invoke noundef ptr %i.asm(ptr noundef nonnull align 8 dereferenceable(8) %i.ash, ptr noundef %i.asj)
          to label %bb.ll unwind label %bb.lt, !inline_history !631

bb.ll:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1094
  store ptr %i.asn, ptr %76, align 8, !tbaa !96, !alias.scope !698
  %i.aso = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #35
  %i.asp = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %.sroa.0116.0.copyload = load i32, ptr %i.asp, align 8, !tbaa !498 ; 2 uses
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %.sroa.2118.0.copyload = load i64, ptr %.sroa.2118.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  switch i32 %.sroa.0116.0.copyload, label %bb.lq [
    i32 0, label %bb.lm
    i32 1, label %bb.ln
    i32 3, label %bb.lo
    i32 2, label %bb.lp
  ]

bb.lm:                                            ; preds = %bb.ll
  store i32 0, ptr %77, align 8, !tbaa !69, !alias.scope !704
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111

bb.ln:                                            ; preds = %bb.ll
  store i32 1, ptr %77, align 8, !tbaa !69, !alias.scope !707
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111

bb.lo:                                            ; preds = %bb.ll
  store i32 3, ptr %77, align 8, !tbaa !69, !alias.scope !701
  store i64 %.sroa.2118.0.copyload, ptr %i.bh, align 8, !tbaa !74, !alias.scope !701
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111

bb.lp:                                            ; preds = %bb.ll
  %i.asq = trunc i64 %.sroa.2118.0.copyload to i8
  %157 = and i8 %i.asq, 1
  store i32 2, ptr %77, align 8, !tbaa !69, !alias.scope !701
  store i8 %157, ptr %i.bh, align 8, !tbaa !74, !alias.scope !701
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111

bb.lq:                                            ; preds = %bb.ll
  %.off.i.i1100 = add i32 %.sroa.0116.0.copyload, -4
  %switch.i.i1101 = icmp ult i32 %.off.i.i1100, 5
  call void @llvm.assume(i1 %switch.i.i1101)
  %i.asr = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !710
  %.not.not.i.i.i.i1102 = icmp eq i64 %i.asr, 0
  br i1 %.not.not.i.i.i.i1102, label %.preheader2580, label %bb.lr

.preheader2580:                                   ; preds = %bb.lq, %.preheader2580
  %.sroa.06.0.in.i.i.i.i1108 = phi ptr [ %.sroa.06.0.i.i.i.i1109, %.preheader2580 ], [ %i.v, %bb.lq ]
  %.sroa.06.0.i.i.i.i1109 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1108, align 8, !tbaa !119, !noalias !710, !nonnull !68, !noundef !68 ; 3 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1109, i64 8
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !107, !noalias !710
  %i.asu = icmp eq i64 %.sroa.2118.0.copyload, %i.ast
  br i1 %i.asu, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1106, label %.preheader2580, !llvm.loop !515

bb.lr:                                            ; preds = %bb.lq
  %i.asv = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !710 ; 2 uses
  %i.asw = urem i64 %.sroa.2118.0.copyload, %i.asv ; 2 uses
  %i.asx = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !710
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.asx, i64 %i.asw
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !121, !noalias !710, !nonnull !68, !noundef !68
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !119, !noalias !710 ; 3 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !107, !noalias !710
  %i.atd = icmp eq i64 %.sroa.2118.0.copyload, %i.atc
  br i1 %i.atd, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1106, label %.lr.ph.i.i.i.i.i.i1103

.lr.ph.i.i.i.i.i.i1103:                           ; preds = %bb.lr, %.lr.ph.i.i.i.i.i.i1103
  %.020.i.i.i.i.i.i1104 = phi ptr [ %i.ate, %.lr.ph.i.i.i.i.i.i1103 ], [ %i.ata, %bb.lr ]
  %i.ate = load ptr, ptr %.020.i.i.i.i.i.i1104, align 8, !tbaa !119, !noalias !710, !nonnull !68, !noundef !68 ; 3 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 8
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !107, !noalias !710 ; 2 uses
  %i.ath = urem i64 %i.atg, %i.asv
  %.not19.i.i.i.i.i.i1105 = icmp eq i64 %i.ath, %i.asw
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1105)
  %i.ati = icmp eq i64 %.sroa.2118.0.copyload, %i.atg
  br i1 %i.ati, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1106, label %.lr.ph.i.i.i.i.i.i1103, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1106: ; preds = %.lr.ph.i.i.i.i.i.i1103, %.preheader2580, %bb.lr
  %.sroa.06.1.i.i.i.i1107 = phi ptr [ %.sroa.06.0.i.i.i.i1109, %.preheader2580 ], [ %i.ata, %bb.lr ], [ %i.ate, %.lr.ph.i.i.i.i.i.i1103 ]
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1107, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(8) %i.aso, ptr noundef nonnull align 8 dereferenceable(16) %i.atj)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111 unwind label %bb.lu

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111: ; preds = %bb.lp, %bb.lo, %bb.ln, %bb.lm, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1106
  %i.atk = load ptr, ptr %i.aso, align 8, !tbaa !94
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 432
  %i.atm = load ptr, ptr %i.atl, align 8
  invoke void %i.atm(ptr noundef nonnull align 8 dereferenceable(8) %i.aso, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull align 8 dereferenceable(16) %77)
          to label %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit unwind label %bb.lv, !inline_history !713

_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #35
  %i.atn = load ptr, ptr %76, align 8, !tbaa !96  ; 3 uses
  %.not.i1113 = icmp eq ptr %i.atn, null
  br i1 %.not.i1113, label %_ZN8facebook3jsi7PointerD2Ev.exit1114, label %bb.ls

bb.ls:                                            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !94
  %i.atp = load ptr, ptr %i.ato, align 8
  call void %i.atp(ptr noundef nonnull align 8 dereferenceable(8) %i.atn) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1114

_ZN8facebook3jsi7PointerD2Ev.exit1114:            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit, %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #35
  br label %bb.mq

bb.lt:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1094
  %i.atq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1116

bb.lu:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1106
  %i.atr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lw

bb.lv:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1111
  %i.ats = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #35
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %.pn577 = phi { ptr, i32 } [ %i.ats, %bb.lv ], [ %i.atr, %bb.lu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #35
  %i.att = load ptr, ptr %76, align 8, !tbaa !96  ; 3 uses
  %.not.i1115 = icmp eq ptr %i.att, null
  br i1 %.not.i1115, label %_ZN8facebook3jsi7PointerD2Ev.exit1116, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !94
  %i.atv = load ptr, ptr %i.atu, align 8
  call void %i.atv(ptr noundef nonnull align 8 dereferenceable(8) %i.att) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1116

_ZN8facebook3jsi7PointerD2Ev.exit1116:            ; preds = %bb.lx, %bb.lw, %bb.lt
  %.pn577.pn = phi { ptr, i32 } [ %i.atq, %bb.lt ], [ %.pn577, %bb.lw ], [ %.pn577, %bb.lx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #35
  br label %bb.ms

bb.ly:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #35
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.2115.0.copyload = load i64, ptr %.sroa.2115.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  switch i32 %i.ape, label %bb.md [
    i32 0, label %bb.lz
    i32 1, label %bb.ma
    i32 3, label %bb.mb
    i32 2, label %bb.mc
  ]

bb.lz:                                            ; preds = %bb.ly
  store i32 0, ptr %78, align 8, !tbaa !69, !alias.scope !717
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128

bb.ma:                                            ; preds = %bb.ly
  store i32 1, ptr %78, align 8, !tbaa !69, !alias.scope !720
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128

bb.mb:                                            ; preds = %bb.ly
  store i32 3, ptr %78, align 8, !tbaa !69, !alias.scope !714
  store i64 %.sroa.2115.0.copyload, ptr %i.bj, align 8, !tbaa !74, !alias.scope !714
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128

bb.mc:                                            ; preds = %bb.ly
  %i.atw = trunc i64 %.sroa.2115.0.copyload to i8
  %158 = and i8 %i.atw, 1
  store i32 2, ptr %78, align 8, !tbaa !69, !alias.scope !714
  store i8 %158, ptr %i.bj, align 8, !tbaa !74, !alias.scope !714
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128

bb.md:                                            ; preds = %bb.ly
  %.off.i.i1117 = add i32 %i.ape, -4
  %switch.i.i1118 = icmp ult i32 %.off.i.i1117, 5
  call void @llvm.assume(i1 %switch.i.i1118)
  %i.atx = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !723
  %.not.not.i.i.i.i1119 = icmp eq i64 %i.atx, 0
  br i1 %.not.not.i.i.i.i1119, label %.preheader2574, label %bb.me

.preheader2574:                                   ; preds = %bb.md, %.preheader2574
  %.sroa.06.0.in.i.i.i.i1125 = phi ptr [ %.sroa.06.0.i.i.i.i1126, %.preheader2574 ], [ %i.v, %bb.md ]
  %.sroa.06.0.i.i.i.i1126 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1125, align 8, !tbaa !119, !noalias !723, !nonnull !68, !noundef !68 ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1126, i64 8
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !107, !noalias !723
  %i.aua = icmp eq i64 %.sroa.2115.0.copyload, %i.atz
  br i1 %i.aua, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1123, label %.preheader2574, !llvm.loop !515

bb.me:                                            ; preds = %bb.md
  %i.aub = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !723 ; 2 uses
  %i.auc = urem i64 %.sroa.2115.0.copyload, %i.aub ; 2 uses
  %i.aud = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !723
  %i.aue = getelementptr inbounds nuw [8 x i8], ptr %i.aud, i64 %i.auc
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !121, !noalias !723, !nonnull !68, !noundef !68
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !119, !noalias !723 ; 3 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 8
  %i.aui = load i64, ptr %i.auh, align 8, !tbaa !107, !noalias !723
  %i.auj = icmp eq i64 %.sroa.2115.0.copyload, %i.aui
  br i1 %i.auj, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1123, label %.lr.ph.i.i.i.i.i.i1120

.lr.ph.i.i.i.i.i.i1120:                           ; preds = %bb.me, %.lr.ph.i.i.i.i.i.i1120
  %.020.i.i.i.i.i.i1121 = phi ptr [ %i.auk, %.lr.ph.i.i.i.i.i.i1120 ], [ %i.aug, %bb.me ]
  %i.auk = load ptr, ptr %.020.i.i.i.i.i.i1121, align 8, !tbaa !119, !noalias !723, !nonnull !68, !noundef !68 ; 3 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !107, !noalias !723 ; 2 uses
  %i.aun = urem i64 %i.aum, %i.aub
  %.not19.i.i.i.i.i.i1122 = icmp eq i64 %i.aun, %i.auc
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1122)
  %i.auo = icmp eq i64 %.sroa.2115.0.copyload, %i.aum
  br i1 %i.auo, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1123, label %.lr.ph.i.i.i.i.i.i1120, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1123: ; preds = %.lr.ph.i.i.i.i.i.i1120, %.preheader2574, %bb.me
  %.sroa.06.1.i.i.i.i1124 = phi ptr [ %.sroa.06.0.i.i.i.i1126, %.preheader2574 ], [ %i.aug, %bb.me ], [ %i.auk, %.lr.ph.i.i.i.i.i.i1120 ]
  %i.aup = load ptr, ptr %0, align 8, !tbaa !452, !noalias !723, !nonnull !68, !align !453
  %i.auq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1124, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(8) %i.aup, ptr noundef nonnull align 8 dereferenceable(16) %i.auq)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128 unwind label %bb.ml

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128: ; preds = %bb.mc, %bb.mb, %bb.ma, %bb.lz, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1123
  %i.aur = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #35
  %i.aus = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %.sroa.0110.0.copyload = load i32, ptr %i.aus, align 8, !tbaa !498 ; 2 uses
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %.sroa.2112.0.copyload = load i64, ptr %.sroa.2112.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  switch i32 %.sroa.0110.0.copyload, label %bb.mj [
    i32 0, label %bb.mf
    i32 1, label %bb.mg
    i32 3, label %bb.mh
    i32 2, label %bb.mi
  ]

bb.mf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128
  store i32 0, ptr %79, align 8, !tbaa !69, !alias.scope !729
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140

bb.mg:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128
  store i32 1, ptr %79, align 8, !tbaa !69, !alias.scope !732
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140

bb.mh:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128
  store i32 3, ptr %79, align 8, !tbaa !69, !alias.scope !726
  store i64 %.sroa.2112.0.copyload, ptr %i.bk, align 8, !tbaa !74, !alias.scope !726
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140

bb.mi:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128
  %i.aut = trunc i64 %.sroa.2112.0.copyload to i8
  %159 = and i8 %i.aut, 1
  store i32 2, ptr %79, align 8, !tbaa !69, !alias.scope !726
  store i8 %159, ptr %i.bk, align 8, !tbaa !74, !alias.scope !726
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140

bb.mj:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1128
  %.off.i.i1129 = add i32 %.sroa.0110.0.copyload, -4
  %switch.i.i1130 = icmp ult i32 %.off.i.i1129, 5
  call void @llvm.assume(i1 %switch.i.i1130)
  %i.auu = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !735
  %.not.not.i.i.i.i1131 = icmp eq i64 %i.auu, 0
  br i1 %.not.not.i.i.i.i1131, label %.preheader2572, label %bb.mk

.preheader2572:                                   ; preds = %bb.mj, %.preheader2572
  %.sroa.06.0.in.i.i.i.i1137 = phi ptr [ %.sroa.06.0.i.i.i.i1138, %.preheader2572 ], [ %i.v, %bb.mj ]
  %.sroa.06.0.i.i.i.i1138 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1137, align 8, !tbaa !119, !noalias !735, !nonnull !68, !noundef !68 ; 3 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1138, i64 8
  %i.auw = load i64, ptr %i.auv, align 8, !tbaa !107, !noalias !735
  %i.aux = icmp eq i64 %.sroa.2112.0.copyload, %i.auw
  br i1 %i.aux, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1135, label %.preheader2572, !llvm.loop !515

bb.mk:                                            ; preds = %bb.mj
  %i.auy = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !735 ; 2 uses
  %i.auz = urem i64 %.sroa.2112.0.copyload, %i.auy ; 2 uses
  %i.ava = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !735
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %i.auz
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !121, !noalias !735, !nonnull !68, !noundef !68
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !119, !noalias !735 ; 3 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %i.avf = load i64, ptr %i.ave, align 8, !tbaa !107, !noalias !735
  %i.avg = icmp eq i64 %.sroa.2112.0.copyload, %i.avf
  br i1 %i.avg, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1135, label %.lr.ph.i.i.i.i.i.i1132

.lr.ph.i.i.i.i.i.i1132:                           ; preds = %bb.mk, %.lr.ph.i.i.i.i.i.i1132
  %.020.i.i.i.i.i.i1133 = phi ptr [ %i.avh, %.lr.ph.i.i.i.i.i.i1132 ], [ %i.avd, %bb.mk ]
  %i.avh = load ptr, ptr %.020.i.i.i.i.i.i1133, align 8, !tbaa !119, !noalias !735, !nonnull !68, !noundef !68 ; 3 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  %i.avj = load i64, ptr %i.avi, align 8, !tbaa !107, !noalias !735 ; 2 uses
  %i.avk = urem i64 %i.avj, %i.auy
  %.not19.i.i.i.i.i.i1134 = icmp eq i64 %i.avk, %i.auz
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1134)
  %i.avl = icmp eq i64 %.sroa.2112.0.copyload, %i.avj
  br i1 %i.avl, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1135, label %.lr.ph.i.i.i.i.i.i1132, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1135: ; preds = %.lr.ph.i.i.i.i.i.i1132, %.preheader2572, %bb.mk
  %.sroa.06.1.i.i.i.i1136 = phi ptr [ %.sroa.06.0.i.i.i.i1138, %.preheader2572 ], [ %i.avd, %bb.mk ], [ %i.avh, %.lr.ph.i.i.i.i.i.i1132 ]
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1136, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(8) %i.aur, ptr noundef nonnull align 8 dereferenceable(16) %i.avm)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140 unwind label %bb.mm

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140: ; preds = %bb.mi, %bb.mh, %bb.mg, %bb.mf, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1135
  %i.avn = load ptr, ptr %i.aur, align 8, !tbaa !94
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 448
  %i.avp = load ptr, ptr %i.avo, align 8
  invoke void %i.avp(ptr noundef nonnull align 8 dereferenceable(8) %i.aur, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %79)
          to label %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKS3_OT_.exit unwind label %bb.mn, !inline_history !738

_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKS3_OT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #35
  br label %bb.mq

bb.ml:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1123
  %i.avq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mp

bb.mm:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1135
  %i.avr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mo

bb.mn:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1140
  %i.avs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #35
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %.pn574 = phi { ptr, i32 } [ %i.avs, %bb.mn ], [ %i.avr, %bb.mm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #35
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.ml
  %.pn574.pn = phi { ptr, i32 } [ %.pn574, %bb.mo ], [ %i.avq, %bb.ml ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #35
  br label %bb.ms

bb.mq:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1114, %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKS3_OT_.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1087
  %i.avt = load ptr, ptr %71, align 8, !tbaa !96  ; 3 uses
  %.not.i1142 = icmp eq ptr %i.avt, null
  br i1 %.not.i1142, label %_ZN8facebook3jsi7PointerD2Ev.exit1143, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !94
  %i.avv = load ptr, ptr %i.avu, align 8
  call void %i.avv(ptr noundef nonnull align 8 dereferenceable(8) %i.avt) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1143

_ZN8facebook3jsi7PointerD2Ev.exit1143:            ; preds = %bb.mq, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  br label %.critedge710

bb.ms:                                            ; preds = %bb.mp, %_ZN8facebook3jsi7PointerD2Ev.exit1116, %_ZN8facebook3jsi7PointerD2Ev.exit1089
  %.pn582.pn.pn = phi { ptr, i32 } [ %.pn582.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1089 ], [ %.pn577.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1116 ], [ %.pn574.pn, %bb.mp ] ; 2 uses
  %i.avw = load ptr, ptr %71, align 8, !tbaa !96  ; 3 uses
  %.not.i1144 = icmp eq ptr %i.avw, null
  br i1 %.not.i1144, label %_ZN8facebook3jsi7PointerD2Ev.exit1145, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !94
  %i.avy = load ptr, ptr %i.avx, align 8
  call void %i.avy(ptr noundef nonnull align 8 dereferenceable(8) %i.avw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1145

_ZN8facebook3jsi7PointerD2Ev.exit1145:            ; preds = %bb.mt, %bb.ms, %bb.lb
  %.pn582.pn.pn.pn = phi { ptr, i32 } [ %.pn572, %bb.lb ], [ %.pn582.pn.pn, %bb.ms ], [ %.pn582.pn.pn, %bb.mt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  br label %bb.zn

bb.mu:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #35
  %i.avz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !739 ; 4 uses
  %i.awb = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !741
  %.not.not.i.i.i1146 = icmp eq i64 %i.awb, 0
  br i1 %.not.not.i.i.i1146, label %.preheader2588, label %bb.mv

.preheader2588:                                   ; preds = %bb.mu, %.preheader2588
  %.sroa.06.0.in.i.i.i1152 = phi ptr [ %.sroa.06.0.i.i.i1153, %.preheader2588 ], [ %i.v, %bb.mu ]
  %.sroa.06.0.i.i.i1153 = load ptr, ptr %.sroa.06.0.in.i.i.i1152, align 8, !tbaa !119, !noalias !741, !nonnull !68, !noundef !68 ; 3 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1153, i64 8
  %i.awd = load i64, ptr %i.awc, align 8, !tbaa !107, !noalias !741
  %i.awe = icmp eq i64 %i.awa, %i.awd
  br i1 %i.awe, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1150, label %.preheader2588, !llvm.loop !515

bb.mv:                                            ; preds = %bb.mu
  %i.awf = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !741 ; 2 uses
  %i.awg = urem i64 %i.awa, %i.awf                ; 2 uses
  %i.awh = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !741
  %i.awi = getelementptr inbounds nuw [8 x i8], ptr %i.awh, i64 %i.awg
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !121, !noalias !741, !nonnull !68, !noundef !68
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !119, !noalias !741 ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 8
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !107, !noalias !741
  %i.awn = icmp eq i64 %i.awa, %i.awm
  br i1 %i.awn, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1150, label %.lr.ph.i.i.i.i.i1147

.lr.ph.i.i.i.i.i1147:                             ; preds = %bb.mv, %.lr.ph.i.i.i.i.i1147
  %.020.i.i.i.i.i1148 = phi ptr [ %i.awo, %.lr.ph.i.i.i.i.i1147 ], [ %i.awk, %bb.mv ]
  %i.awo = load ptr, ptr %.020.i.i.i.i.i1148, align 8, !tbaa !119, !noalias !741, !nonnull !68, !noundef !68 ; 3 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awq = load i64, ptr %i.awp, align 8, !tbaa !107, !noalias !741 ; 2 uses
  %i.awr = urem i64 %i.awq, %i.awf
  %.not19.i.i.i.i.i1149 = icmp eq i64 %i.awr, %i.awg
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1149)
  %i.aws = icmp eq i64 %i.awa, %i.awq
  br i1 %i.aws, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1150, label %.lr.ph.i.i.i.i.i1147, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1150: ; preds = %.lr.ph.i.i.i.i.i1147, %.preheader2588, %bb.mv
  %.sroa.06.1.i.i.i1151 = phi ptr [ %.sroa.06.0.i.i.i1153, %.preheader2588 ], [ %i.awk, %bb.mv ], [ %i.awo, %.lr.ph.i.i.i.i.i1147 ]
  %i.awt = load ptr, ptr %0, align 8, !tbaa !452, !noalias !741, !nonnull !68, !align !453
  %i.awu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1151, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull align 8 dereferenceable(8) %i.awt, ptr noundef nonnull align 8 dereferenceable(16) %i.awu)
          to label %bb.mw unwind label %bb.ne

bb.mw:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1150
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.awv = load ptr, ptr %i.bf, align 8, !tbaa !74, !noalias !744
  store ptr null, ptr %i.bf, align 8, !tbaa !74, !noalias !744
  store ptr %i.awv, ptr %80, align 8, !tbaa !96, !alias.scope !744
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %81) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #35
  %i.aww = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #35
  %i.awx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %.sroa.0105.0.copyload = load i32, ptr %i.awx, align 8, !tbaa !498 ; 2 uses
  %.sroa.2107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.2107.0.copyload = load i64, ptr %.sroa.2107.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  switch i32 %.sroa.0105.0.copyload, label %bb.nb [
    i32 0, label %bb.mx
    i32 1, label %bb.my
    i32 3, label %bb.mz
    i32 2, label %bb.na
  ]

bb.mx:                                            ; preds = %bb.mw
  store i32 0, ptr %82, align 8, !tbaa !69, !alias.scope !750
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167

bb.my:                                            ; preds = %bb.mw
  store i32 1, ptr %82, align 8, !tbaa !69, !alias.scope !753
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167

bb.mz:                                            ; preds = %bb.mw
  store i32 3, ptr %82, align 8, !tbaa !69, !alias.scope !747
  store i64 %.sroa.2107.0.copyload, ptr %i.bg, align 8, !tbaa !74, !alias.scope !747
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167

bb.na:                                            ; preds = %bb.mw
  %i.awy = trunc i64 %.sroa.2107.0.copyload to i8
  %160 = and i8 %i.awy, 1
  store i32 2, ptr %82, align 8, !tbaa !69, !alias.scope !747
  store i8 %160, ptr %i.bg, align 8, !tbaa !74, !alias.scope !747
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167

bb.nb:                                            ; preds = %bb.mw
  %.off.i.i1156 = add i32 %.sroa.0105.0.copyload, -4
  %switch.i.i1157 = icmp ult i32 %.off.i.i1156, 5
  call void @llvm.assume(i1 %switch.i.i1157)
  %i.awz = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !756
  %.not.not.i.i.i.i1158 = icmp eq i64 %i.awz, 0
  br i1 %.not.not.i.i.i.i1158, label %.preheader2586, label %bb.nc

.preheader2586:                                   ; preds = %bb.nb, %.preheader2586
  %.sroa.06.0.in.i.i.i.i1164 = phi ptr [ %.sroa.06.0.i.i.i.i1165, %.preheader2586 ], [ %i.v, %bb.nb ]
  %.sroa.06.0.i.i.i.i1165 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1164, align 8, !tbaa !119, !noalias !756, !nonnull !68, !noundef !68 ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1165, i64 8
  %i.axb = load i64, ptr %i.axa, align 8, !tbaa !107, !noalias !756
  %i.axc = icmp eq i64 %.sroa.2107.0.copyload, %i.axb
  br i1 %i.axc, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1162, label %.preheader2586, !llvm.loop !515

bb.nc:                                            ; preds = %bb.nb
  %i.axd = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !756 ; 2 uses
  %i.axe = urem i64 %.sroa.2107.0.copyload, %i.axd ; 2 uses
  %i.axf = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !756
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.axf, i64 %i.axe
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !121, !noalias !756, !nonnull !68, !noundef !68
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !119, !noalias !756 ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !107, !noalias !756
  %i.axl = icmp eq i64 %.sroa.2107.0.copyload, %i.axk
  br i1 %i.axl, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1162, label %.lr.ph.i.i.i.i.i.i1159

.lr.ph.i.i.i.i.i.i1159:                           ; preds = %bb.nc, %.lr.ph.i.i.i.i.i.i1159
  %.020.i.i.i.i.i.i1160 = phi ptr [ %i.axm, %.lr.ph.i.i.i.i.i.i1159 ], [ %i.axi, %bb.nc ]
  %i.axm = load ptr, ptr %.020.i.i.i.i.i.i1160, align 8, !tbaa !119, !noalias !756, !nonnull !68, !noundef !68 ; 3 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axo = load i64, ptr %i.axn, align 8, !tbaa !107, !noalias !756 ; 2 uses
  %i.axp = urem i64 %i.axo, %i.axd
  %.not19.i.i.i.i.i.i1161 = icmp eq i64 %i.axp, %i.axe
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1161)
  %i.axq = icmp eq i64 %.sroa.2107.0.copyload, %i.axo
  br i1 %i.axq, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1162, label %.lr.ph.i.i.i.i.i.i1159, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1162: ; preds = %.lr.ph.i.i.i.i.i.i1159, %.preheader2586, %bb.nc
  %.sroa.06.1.i.i.i.i1163 = phi ptr [ %.sroa.06.0.i.i.i.i1165, %.preheader2586 ], [ %i.axi, %bb.nc ], [ %i.axm, %.lr.ph.i.i.i.i.i.i1159 ]
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1163, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %82, ptr noundef nonnull align 8 dereferenceable(8) %i.aww, ptr noundef nonnull align 8 dereferenceable(16) %i.axr)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167 unwind label %bb.nf

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167: ; preds = %bb.na, %bb.mz, %bb.my, %bb.mx, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1162
  %i.axs = load ptr, ptr %i.aww, align 8, !tbaa !94
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 368
  %i.axu = load ptr, ptr %i.axt, align 8
  invoke void %i.axu(ptr noundef nonnull align 8 dereferenceable(8) %i.aww, ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef nonnull align 8 dereferenceable(16) %82)
          to label %_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.ng, !inline_history !759

_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %82) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #35
  %i.axv = load ptr, ptr %80, align 8, !tbaa !96  ; 3 uses
  %.not.i1169 = icmp eq ptr %i.axv, null
  br i1 %.not.i1169, label %_ZN8facebook3jsi7PointerD2Ev.exit1170, label %bb.nd

bb.nd:                                            ; preds = %_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !94
  %i.axx = load ptr, ptr %i.axw, align 8
  call void %i.axx(ptr noundef nonnull align 8 dereferenceable(8) %i.axv) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1170

_ZN8facebook3jsi7PointerD2Ev.exit1170:            ; preds = %_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit, %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #35
  br label %.critedge710

bb.ne:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1150
  %i.axy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1172

bb.nf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1162
  %i.axz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.nh

bb.ng:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1167
  %i.aya = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %82) #35
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.pn569 = phi { ptr, i32 } [ %i.aya, %bb.ng ], [ %i.axz, %bb.nf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #35
  %i.ayb = load ptr, ptr %80, align 8, !tbaa !96  ; 3 uses
  %.not.i1171 = icmp eq ptr %i.ayb, null
  br i1 %.not.i1171, label %_ZN8facebook3jsi7PointerD2Ev.exit1172, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !94
  %i.ayd = load ptr, ptr %i.ayc, align 8
  call void %i.ayd(ptr noundef nonnull align 8 dereferenceable(8) %i.ayb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1172

_ZN8facebook3jsi7PointerD2Ev.exit1172:            ; preds = %bb.ni, %bb.nh, %bb.ne
  %.pn569.pn = phi { ptr, i32 } [ %i.axy, %bb.ne ], [ %.pn569, %bb.nh ], [ %.pn569, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #35
  br label %bb.zn

bb.nj:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #35
  %i.aye = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ayf = load i64, ptr %i.aye, align 8, !tbaa !760 ; 4 uses
  %i.ayg = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !762
  %.not.not.i.i.i1173 = icmp eq i64 %i.ayg, 0
  br i1 %.not.not.i.i.i1173, label %.preheader2590, label %bb.nk

.preheader2590:                                   ; preds = %bb.nj, %.preheader2590
  %.sroa.06.0.in.i.i.i1179 = phi ptr [ %.sroa.06.0.i.i.i1180, %.preheader2590 ], [ %i.v, %bb.nj ]
  %.sroa.06.0.i.i.i1180 = load ptr, ptr %.sroa.06.0.in.i.i.i1179, align 8, !tbaa !119, !noalias !762, !nonnull !68, !noundef !68 ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1180, i64 8
  %i.ayi = load i64, ptr %i.ayh, align 8, !tbaa !107, !noalias !762
  %i.ayj = icmp eq i64 %i.ayf, %i.ayi
  br i1 %i.ayj, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1177, label %.preheader2590, !llvm.loop !515

bb.nk:                                            ; preds = %bb.nj
  %i.ayk = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !762 ; 2 uses
  %i.ayl = urem i64 %i.ayf, %i.ayk                ; 2 uses
  %i.aym = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !762
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %i.aym, i64 %i.ayl
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !121, !noalias !762, !nonnull !68, !noundef !68
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !119, !noalias !762 ; 3 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  %i.ayr = load i64, ptr %i.ayq, align 8, !tbaa !107, !noalias !762
  %i.ays = icmp eq i64 %i.ayf, %i.ayr
  br i1 %i.ays, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1177, label %.lr.ph.i.i.i.i.i1174

.lr.ph.i.i.i.i.i1174:                             ; preds = %bb.nk, %.lr.ph.i.i.i.i.i1174
  %.020.i.i.i.i.i1175 = phi ptr [ %i.ayt, %.lr.ph.i.i.i.i.i1174 ], [ %i.ayp, %bb.nk ]
  %i.ayt = load ptr, ptr %.020.i.i.i.i.i1175, align 8, !tbaa !119, !noalias !762, !nonnull !68, !noundef !68 ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !107, !noalias !762 ; 2 uses
  %i.ayw = urem i64 %i.ayv, %i.ayk
  %.not19.i.i.i.i.i1176 = icmp eq i64 %i.ayw, %i.ayl
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1176)
  %i.ayx = icmp eq i64 %i.ayf, %i.ayv
  br i1 %i.ayx, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1177, label %.lr.ph.i.i.i.i.i1174, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1177: ; preds = %.lr.ph.i.i.i.i.i1174, %.preheader2590, %bb.nk
  %.sroa.06.1.i.i.i1178 = phi ptr [ %.sroa.06.0.i.i.i1180, %.preheader2590 ], [ %i.ayp, %bb.nk ], [ %i.ayt, %.lr.ph.i.i.i.i.i1174 ]
  %i.ayy = load ptr, ptr %0, align 8, !tbaa !452, !noalias !762, !nonnull !68, !align !453
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1178, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(8) %i.ayy, ptr noundef nonnull align 8 dereferenceable(16) %i.ayz)
          to label %bb.nl unwind label %bb.nn

bb.nl:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1177
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.aza = load ptr, ptr %i.be, align 8, !tbaa !74, !noalias !765
  store ptr null, ptr %i.be, align 8, !tbaa !74, !noalias !765
  store ptr %i.aza, ptr %83, align 8, !tbaa !96, !alias.scope !765
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %84) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #35
  %i.azb = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !94, !noalias !768
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 376
  %i.aze = load ptr, ptr %i.azd, align 8, !noalias !768
  invoke void %i.aze(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %85, ptr noundef nonnull align 8 dereferenceable(8) %i.azb, ptr noundef nonnull align 8 dereferenceable(8) %83)
          to label %_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit unwind label %bb.no, !inline_history !771

_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit: ; preds = %bb.nl
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %85) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %85) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #35
  %i.azf = load ptr, ptr %83, align 8, !tbaa !96  ; 3 uses
  %.not.i1184 = icmp eq ptr %i.azf, null
  br i1 %.not.i1184, label %_ZN8facebook3jsi7PointerD2Ev.exit1185, label %bb.nm

bb.nm:                                            ; preds = %_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !94
  %i.azh = load ptr, ptr %i.azg, align 8
  call void %i.azh(ptr noundef nonnull align 8 dereferenceable(8) %i.azf) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1185

_ZN8facebook3jsi7PointerD2Ev.exit1185:            ; preds = %_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit, %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #35
  br label %.critedge710

bb.nn:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1177
  %i.azi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1187

bb.no:                                            ; preds = %bb.nl
  %i.azj = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  %i.bbn = invoke noundef zeroext i1 %i.bbm(ptr noundef nonnull align 8 dereferenceable(8) %i.bbj, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit unwind label %bb.od, !inline_history !780 ; 0 uses

_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit: ; preds = %bb.nv
  %i.bbo = load ptr, ptr %88, align 8, !tbaa !96  ; 3 uses
  %.not.i1209 = icmp eq ptr %i.bbo, null
  br i1 %.not.i1209, label %_ZN8facebook3jsi7PointerD2Ev.exit1210, label %bb.nw

bb.nw:                                            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !94
  %i.bbq = load ptr, ptr %i.bbp, align 8
  call void %i.bbq(ptr noundef nonnull align 8 dereferenceable(8) %i.bbo) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1210

_ZN8facebook3jsi7PointerD2Ev.exit1210:            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #35
  br label %bb.ow

bb.nx:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1192
  %i.bbr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.nz

bb.ny:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1197
  %i.bbs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %87) #35
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %.pn551 = phi { ptr, i32 } [ %i.bbs, %bb.ny ], [ %i.bbr, %bb.nx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1244

bb.oa:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1202
  %i.bbt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.oc

bb.ob:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1207
  %i.bbu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %89) #35
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %.pn557 = phi { ptr, i32 } [ %i.bbu, %bb.ob ], [ %i.bbt, %bb.oa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1212

bb.od:                                            ; preds = %bb.nv
  %i.bbv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bbw = load ptr, ptr %88, align 8, !tbaa !96  ; 3 uses
  %.not.i1211 = icmp eq ptr %i.bbw, null
  br i1 %.not.i1211, label %_ZN8facebook3jsi7PointerD2Ev.exit1212, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !94
  %i.bby = load ptr, ptr %i.bbx, align 8
  call void %i.bby(ptr noundef nonnull align 8 dereferenceable(8) %i.bbw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1212

_ZN8facebook3jsi7PointerD2Ev.exit1212:            ; preds = %bb.oe, %bb.od, %bb.oc
  %.pn559 = phi { ptr, i32 } [ %.pn557, %bb.oc ], [ %i.bbv, %bb.od ], [ %i.bbv, %bb.oe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #35
  br label %bb.oy

bb.of:                                            ; preds = %bb.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #35
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.bca = load i64, ptr %i.bbz, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.bcb = load i64, ptr %i.z, align 8, !tbaa !628, !noalias !781
  %.not.not.i.i.i1213 = icmp eq i64 %i.bcb, 0
  br i1 %.not.not.i.i.i1213, label %.preheader2596, label %bb.og

.preheader2596:                                   ; preds = %bb.of, %.preheader2596
  %.sroa.06.0.in.i.i.i1219 = phi ptr [ %.sroa.06.0.i.i.i1220, %.preheader2596 ], [ %i.ab, %bb.of ]
  %.sroa.06.0.i.i.i1220 = load ptr, ptr %.sroa.06.0.in.i.i.i1219, align 8, !tbaa !119, !noalias !781, !nonnull !68, !noundef !68 ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1220, i64 8
  %i.bcd = load i64, ptr %i.bcc, align 8, !tbaa !107, !noalias !781
  %i.bce = icmp eq i64 %i.bca, %i.bcd
  br i1 %i.bce, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1217, label %.preheader2596, !llvm.loop !629

bb.og:                                            ; preds = %bb.of
  %i.bcf = load i64, ptr %i.aa, align 8, !tbaa !90, !noalias !781 ; 2 uses
  %i.bcg = urem i64 %i.bca, %i.bcf                ; 2 uses
  %i.bch = load ptr, ptr %i.s, align 8, !tbaa !89, !noalias !781
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.bch, i64 %i.bcg
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !121, !noalias !781, !nonnull !68, !noundef !68
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !119, !noalias !781 ; 3 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  %i.bcm = load i64, ptr %i.bcl, align 8, !tbaa !107, !noalias !781
  %i.bcn = icmp eq i64 %i.bca, %i.bcm
  br i1 %i.bcn, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1217, label %.lr.ph.i.i.i.i.i1214

.lr.ph.i.i.i.i.i1214:                             ; preds = %bb.og, %.lr.ph.i.i.i.i.i1214
  %.020.i.i.i.i.i1215 = phi ptr [ %i.bco, %.lr.ph.i.i.i.i.i1214 ], [ %i.bck, %bb.og ]
  %i.bco = load ptr, ptr %.020.i.i.i.i.i1215, align 8, !tbaa !119, !noalias !781, !nonnull !68, !noundef !68 ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !107, !noalias !781 ; 2 uses
  %i.bcr = urem i64 %i.bcq, %i.bcf
  %.not19.i.i.i.i.i1216 = icmp eq i64 %i.bcr, %i.bcg
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1216)
  %i.bcs = icmp eq i64 %i.bca, %i.bcq
  br i1 %i.bcs, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1217, label %.lr.ph.i.i.i.i.i1214, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1217: ; preds = %.lr.ph.i.i.i.i.i1214, %.preheader2596, %bb.og
  %.sroa.06.1.i.i.i1218 = phi ptr [ %.sroa.06.0.i.i.i1220, %.preheader2596 ], [ %i.bck, %bb.og ], [ %i.bco, %.lr.ph.i.i.i.i.i1214 ]
  %i.bct = load ptr, ptr %0, align 8, !tbaa !452, !noalias !781, !nonnull !68, !align !453 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1218, i64 16
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !96, !noalias !781
  %i.bcw = load ptr, ptr %i.bct, align 8, !tbaa !94, !noalias !781
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 144
  %i.bcy = load ptr, ptr %i.bcx, align 8, !noalias !781
  %i.bcz = invoke noundef ptr %i.bcy(ptr noundef nonnull align 8 dereferenceable(8) %i.bct, ptr noundef %i.bcv)
          to label %bb.oh unwind label %bb.oj, !inline_history !631

bb.oh:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1217
  store ptr %i.bcz, ptr %90, align 8, !tbaa !96, !alias.scope !781
  %i.bda = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !94
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 408
  %i.bdd = load ptr, ptr %i.bdc, align 8
  %i.bde = invoke noundef zeroext i1 %i.bdd(ptr noundef nonnull align 8 dereferenceable(8) %i.bda, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit unwind label %bb.ok, !inline_history !784 ; 0 uses

_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit: ; preds = %bb.oh
  %i.bdf = load ptr, ptr %90, align 8, !tbaa !96  ; 3 uses
  %.not.i1224 = icmp eq ptr %i.bdf, null
  br i1 %.not.i1224, label %_ZN8facebook3jsi7PointerD2Ev.exit1225, label %bb.oi

bb.oi:                                            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !94
  %i.bdh = load ptr, ptr %i.bdg, align 8
  call void %i.bdh(ptr noundef nonnull align 8 dereferenceable(8) %i.bdf) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1225

_ZN8facebook3jsi7PointerD2Ev.exit1225:            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit, %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #35
  br label %bb.ow

bb.oj:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1217
  %i.bdi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1227

bb.ok:                                            ; preds = %bb.oh
  %i.bdj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bdk = load ptr, ptr %90, align 8, !tbaa !96  ; 3 uses
  %.not.i1226 = icmp eq ptr %i.bdk, null
  br i1 %.not.i1226, label %_ZN8facebook3jsi7PointerD2Ev.exit1227, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !94
  %i.bdm = load ptr, ptr %i.bdl, align 8
  call void %i.bdm(ptr noundef nonnull align 8 dereferenceable(8) %i.bdk) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1227

_ZN8facebook3jsi7PointerD2Ev.exit1227:            ; preds = %bb.ol, %bb.ok, %bb.oj
  %.pn555 = phi { ptr, i32 } [ %i.bdi, %bb.oj ], [ %i.bdj, %bb.ok ], [ %i.bdj, %bb.ol ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #35
  br label %bb.oy

bb.om:                                            ; preds = %bb.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #35
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.297.0.copyload = load i64, ptr %.sroa.297.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  switch i32 %i.bal, label %bb.or [
    i32 0, label %bb.on
    i32 1, label %bb.oo
    i32 3, label %bb.op
    i32 2, label %bb.oq
  ]

bb.on:                                            ; preds = %bb.om
  store i32 0, ptr %91, align 8, !tbaa !69, !alias.scope !788
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239

bb.oo:                                            ; preds = %bb.om
  store i32 1, ptr %91, align 8, !tbaa !69, !alias.scope !791
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239

bb.op:                                            ; preds = %bb.om
  store i32 3, ptr %91, align 8, !tbaa !69, !alias.scope !785
  store i64 %.sroa.297.0.copyload, ptr %i.bd, align 8, !tbaa !74, !alias.scope !785
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239

bb.oq:                                            ; preds = %bb.om
  %i.bdn = trunc i64 %.sroa.297.0.copyload to i8
  %161 = and i8 %i.bdn, 1
  store i32 2, ptr %91, align 8, !tbaa !69, !alias.scope !785
  store i8 %161, ptr %i.bd, align 8, !tbaa !74, !alias.scope !785
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239

bb.or:                                            ; preds = %bb.om
  %.off.i.i1228 = add i32 %i.bal, -4
  %switch.i.i1229 = icmp ult i32 %.off.i.i1228, 5
  call void @llvm.assume(i1 %switch.i.i1229)
  %i.bdo = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !794
  %.not.not.i.i.i.i1230 = icmp eq i64 %i.bdo, 0
  br i1 %.not.not.i.i.i.i1230, label %.preheader2592, label %bb.os

.preheader2592:                                   ; preds = %bb.or, %.preheader2592
  %.sroa.06.0.in.i.i.i.i1236 = phi ptr [ %.sroa.06.0.i.i.i.i1237, %.preheader2592 ], [ %i.v, %bb.or ]
  %.sroa.06.0.i.i.i.i1237 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1236, align 8, !tbaa !119, !noalias !794, !nonnull !68, !noundef !68 ; 3 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1237, i64 8
  %i.bdq = load i64, ptr %i.bdp, align 8, !tbaa !107, !noalias !794
  %i.bdr = icmp eq i64 %.sroa.297.0.copyload, %i.bdq
  br i1 %i.bdr, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1234, label %.preheader2592, !llvm.loop !515

bb.os:                                            ; preds = %bb.or
  %i.bds = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !794 ; 2 uses
  %i.bdt = urem i64 %.sroa.297.0.copyload, %i.bds ; 2 uses
  %i.bdu = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !794
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.bdu, i64 %i.bdt
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !121, !noalias !794, !nonnull !68, !noundef !68
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !119, !noalias !794 ; 3 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8
  %i.bdz = load i64, ptr %i.bdy, align 8, !tbaa !107, !noalias !794
  %i.bea = icmp eq i64 %.sroa.297.0.copyload, %i.bdz
  br i1 %i.bea, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1234, label %.lr.ph.i.i.i.i.i.i1231

.lr.ph.i.i.i.i.i.i1231:                           ; preds = %bb.os, %.lr.ph.i.i.i.i.i.i1231
  %.020.i.i.i.i.i.i1232 = phi ptr [ %i.beb, %.lr.ph.i.i.i.i.i.i1231 ], [ %i.bdx, %bb.os ]
  %i.beb = load ptr, ptr %.020.i.i.i.i.i.i1232, align 8, !tbaa !119, !noalias !794, !nonnull !68, !noundef !68 ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 8
  %i.bed = load i64, ptr %i.bec, align 8, !tbaa !107, !noalias !794 ; 2 uses
  %i.bee = urem i64 %i.bed, %i.bds
  %.not19.i.i.i.i.i.i1233 = icmp eq i64 %i.bee, %i.bdt
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1233)
  %i.bef = icmp eq i64 %.sroa.297.0.copyload, %i.bed
  br i1 %i.bef, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1234, label %.lr.ph.i.i.i.i.i.i1231, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1234: ; preds = %.lr.ph.i.i.i.i.i.i1231, %.preheader2592, %bb.os
  %.sroa.06.1.i.i.i.i1235 = phi ptr [ %.sroa.06.0.i.i.i.i1237, %.preheader2592 ], [ %i.bdx, %bb.os ], [ %i.beb, %.lr.ph.i.i.i.i.i.i1231 ]
  %i.beg = load ptr, ptr %0, align 8, !tbaa !452, !noalias !794, !nonnull !68, !align !453
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1235, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(8) %i.beg, ptr noundef nonnull align 8 dereferenceable(16) %i.beh)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239 unwind label %bb.ot

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239: ; preds = %bb.oq, %bb.op, %bb.oo, %bb.on, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1234
  %i.bei = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !94
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 424
  %i.bel = load ptr, ptr %i.bek, align 8
  %i.bem = invoke noundef zeroext i1 %i.bel(ptr noundef nonnull align 8 dereferenceable(8) %i.bei, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(16) %91)
          to label %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.ou, !inline_history !797 ; 0 uses

_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #35
  br label %bb.ow

bb.ot:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1234
  %i.ben = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ov

bb.ou:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1239
  %i.beo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #35
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.pn553 = phi { ptr, i32 } [ %i.beo, %bb.ou ], [ %i.ben, %bb.ot ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #35
  br label %bb.oy

bb.ow:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1225, %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_5ValueE.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1210
  %i.bep = load ptr, ptr %86, align 8, !tbaa !96  ; 3 uses
  %.not.i1241 = icmp eq ptr %i.bep, null
  br i1 %.not.i1241, label %_ZN8facebook3jsi7PointerD2Ev.exit1242, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !94
  %i.ber = load ptr, ptr %i.beq, align 8
  call void %i.ber(ptr noundef nonnull align 8 dereferenceable(8) %i.bep) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1242

_ZN8facebook3jsi7PointerD2Ev.exit1242:            ; preds = %bb.ow, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #35
  br label %.critedge710

bb.oy:                                            ; preds = %bb.ov, %_ZN8facebook3jsi7PointerD2Ev.exit1227, %_ZN8facebook3jsi7PointerD2Ev.exit1212
  %.pn559.pn = phi { ptr, i32 } [ %.pn559, %_ZN8facebook3jsi7PointerD2Ev.exit1212 ], [ %.pn555, %_ZN8facebook3jsi7PointerD2Ev.exit1227 ], [ %.pn553, %bb.ov ] ; 2 uses
  %i.bes = load ptr, ptr %86, align 8, !tbaa !96  ; 3 uses
  %.not.i1243 = icmp eq ptr %i.bes, null
  br i1 %.not.i1243, label %_ZN8facebook3jsi7PointerD2Ev.exit1244, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !94
  %i.beu = load ptr, ptr %i.bet, align 8
  call void %i.beu(ptr noundef nonnull align 8 dereferenceable(8) %i.bes) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1244

_ZN8facebook3jsi7PointerD2Ev.exit1244:            ; preds = %bb.oz, %bb.oy, %bb.nz
  %.pn559.pn.pn = phi { ptr, i32 } [ %.pn551, %bb.nz ], [ %.pn559.pn, %bb.oy ], [ %.pn559.pn, %bb.oz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #35
  br label %bb.zn

bb.pa:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #35
  %i.bev = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.bew = load i64, ptr %i.bev, align 8, !tbaa !798 ; 4 uses
  %i.bex = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !800
  %.not.not.i.i.i1245 = icmp eq i64 %i.bex, 0
  br i1 %.not.not.i.i.i1245, label %.preheader2606, label %bb.pb

.preheader2606:                                   ; preds = %bb.pa, %.preheader2606
  %.sroa.06.0.in.i.i.i1251 = phi ptr [ %.sroa.06.0.i.i.i1252, %.preheader2606 ], [ %i.v, %bb.pa ]
  %.sroa.06.0.i.i.i1252 = load ptr, ptr %.sroa.06.0.in.i.i.i1251, align 8, !tbaa !119, !noalias !800, !nonnull !68, !noundef !68 ; 3 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1252, i64 8
  %i.bez = load i64, ptr %i.bey, align 8, !tbaa !107, !noalias !800
  %i.bfa = icmp eq i64 %i.bew, %i.bez
  br i1 %i.bfa, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1249, label %.preheader2606, !llvm.loop !515

bb.pb:                                            ; preds = %bb.pa
  %i.bfb = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !800 ; 2 uses
  %i.bfc = urem i64 %i.bew, %i.bfb                ; 2 uses
  %i.bfd = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !800
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr %i.bfd, i64 %i.bfc
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !121, !noalias !800, !nonnull !68, !noundef !68
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !119, !noalias !800 ; 3 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 8
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !107, !noalias !800
  %i.bfj = icmp eq i64 %i.bew, %i.bfi
  br i1 %i.bfj, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1249, label %.lr.ph.i.i.i.i.i1246

.lr.ph.i.i.i.i.i1246:                             ; preds = %bb.pb, %.lr.ph.i.i.i.i.i1246
  %.020.i.i.i.i.i1247 = phi ptr [ %i.bfk, %.lr.ph.i.i.i.i.i1246 ], [ %i.bfg, %bb.pb ]
  %i.bfk = load ptr, ptr %.020.i.i.i.i.i1247, align 8, !tbaa !119, !noalias !800, !nonnull !68, !noundef !68 ; 3 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  %i.bfm = load i64, ptr %i.bfl, align 8, !tbaa !107, !noalias !800 ; 2 uses
  %i.bfn = urem i64 %i.bfm, %i.bfb
  %.not19.i.i.i.i.i1248 = icmp eq i64 %i.bfn, %i.bfc
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1248)
  %i.bfo = icmp eq i64 %i.bew, %i.bfm
  br i1 %i.bfo, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1249, label %.lr.ph.i.i.i.i.i1246, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1249: ; preds = %.lr.ph.i.i.i.i.i1246, %.preheader2606, %bb.pb
  %.sroa.06.1.i.i.i1250 = phi ptr [ %.sroa.06.0.i.i.i1252, %.preheader2606 ], [ %i.bfg, %bb.pb ], [ %i.bfk, %.lr.ph.i.i.i.i.i1246 ]
  %i.bfp = load ptr, ptr %0, align 8, !tbaa !452, !noalias !800, !nonnull !68, !align !453
  %i.bfq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1250, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull align 8 dereferenceable(8) %i.bfp, ptr noundef nonnull align 8 dereferenceable(16) %i.bfq)
          to label %bb.pc unwind label %bb.ph

bb.pc:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1249
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.bfr = load ptr, ptr %i.bb, align 8, !tbaa !74, !noalias !803
  store ptr null, ptr %i.bb, align 8, !tbaa !74, !noalias !803
  store ptr %i.bfr, ptr %92, align 8, !tbaa !96, !alias.scope !803
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %93) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #35
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.bft = load i32, ptr %i.bfs, align 8, !tbaa !7 ; 3 uses
  switch i32 %i.bft, label %bb.pu [
    i32 5, label %bb.pd
    i32 6, label %bb.pn
  ]

bb.pd:                                            ; preds = %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #35
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.bfv = load i64, ptr %i.bfu, align 8, !tbaa !74 ; 4 uses
  %i.bfw = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !806
  %.not.not.i.i.i1255 = icmp eq i64 %i.bfw, 0
  br i1 %.not.not.i.i.i1255, label %.preheader2602, label %bb.pe

.preheader2602:                                   ; preds = %bb.pd, %.preheader2602
  %.sroa.06.0.in.i.i.i1261 = phi ptr [ %.sroa.06.0.i.i.i1262, %.preheader2602 ], [ %i.v, %bb.pd ]
  %.sroa.06.0.i.i.i1262 = load ptr, ptr %.sroa.06.0.in.i.i.i1261, align 8, !tbaa !119, !noalias !806, !nonnull !68, !noundef !68 ; 3 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1262, i64 8
  %i.bfy = load i64, ptr %i.bfx, align 8, !tbaa !107, !noalias !806
  %i.bfz = icmp eq i64 %i.bfv, %i.bfy
  br i1 %i.bfz, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1259, label %.preheader2602, !llvm.loop !515

bb.pe:                                            ; preds = %bb.pd
  %i.bga = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !806 ; 2 uses
  %i.bgb = urem i64 %i.bfv, %i.bga                ; 2 uses
  %i.bgc = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !806
  %i.bgd = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %i.bgb
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !121, !noalias !806, !nonnull !68, !noundef !68
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !119, !noalias !806 ; 3 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 8
  %i.bgh = load i64, ptr %i.bgg, align 8, !tbaa !107, !noalias !806
  %i.bgi = icmp eq i64 %i.bfv, %i.bgh
  br i1 %i.bgi, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1259, label %.lr.ph.i.i.i.i.i1256
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  invoke void @_ZNO8facebook3jsi5Value8asStringERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %94, ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(8) %i.bgq)
          to label %bb.pf unwind label %bb.pj

bb.pf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1264
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #35
  %i.bgr = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !94
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 464
  %i.bgu = load ptr, ptr %i.bgt, align 8
  invoke void %i.bgu(ptr noundef nonnull align 8 dereferenceable(8) %i.bgr, ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit unwind label %bb.pl, !inline_history !809

_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit: ; preds = %bb.pf
  %i.bgv = load ptr, ptr %94, align 8, !tbaa !96  ; 3 uses
  %.not.i1266 = icmp eq ptr %i.bgv, null
  br i1 %.not.i1266, label %_ZN8facebook3jsi7PointerD2Ev.exit1267, label %bb.pg

bb.pg:                                            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !94
  %i.bgx = load ptr, ptr %i.bgw, align 8
  call void %i.bgx(ptr noundef nonnull align 8 dereferenceable(8) %i.bgv) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1267

_ZN8facebook3jsi7PointerD2Ev.exit1267:            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit, %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #35
  br label %bb.qe

bb.ph:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1249
  %i.bgy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1301

bb.pi:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1259
  %i.bgz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.pk

bb.pj:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1264
  %i.bha = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #35
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi
  %.pn545 = phi { ptr, i32 } [ %i.bha, %bb.pj ], [ %i.bgz, %bb.pi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1269

bb.pl:                                            ; preds = %bb.pf
  %i.bhb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bhc = load ptr, ptr %94, align 8, !tbaa !96  ; 3 uses
  %.not.i1268 = icmp eq ptr %i.bhc, null
  br i1 %.not.i1268, label %_ZN8facebook3jsi7PointerD2Ev.exit1269, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !94
  %i.bhe = load ptr, ptr %i.bhd, align 8
  call void %i.bhe(ptr noundef nonnull align 8 dereferenceable(8) %i.bhc) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1269

_ZN8facebook3jsi7PointerD2Ev.exit1269:            ; preds = %bb.pm, %bb.pl, %bb.pk
  %.pn547 = phi { ptr, i32 } [ %.pn545, %bb.pk ], [ %i.bhb, %bb.pl ], [ %i.bhb, %bb.pm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #35
  br label %bb.qg

bb.pn:                                            ; preds = %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #35
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.bhg = load i64, ptr %i.bhf, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.bhh = load i64, ptr %i.z, align 8, !tbaa !628, !noalias !810
  %.not.not.i.i.i1270 = icmp eq i64 %i.bhh, 0
  br i1 %.not.not.i.i.i1270, label %.preheader2604, label %bb.po

.preheader2604:                                   ; preds = %bb.pn, %.preheader2604
  %.sroa.06.0.in.i.i.i1276 = phi ptr [ %.sroa.06.0.i.i.i1277, %.preheader2604 ], [ %i.ab, %bb.pn ]
  %.sroa.06.0.i.i.i1277 = load ptr, ptr %.sroa.06.0.in.i.i.i1276, align 8, !tbaa !119, !noalias !810, !nonnull !68, !noundef !68 ; 3 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1277, i64 8
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !107, !noalias !810
  %i.bhk = icmp eq i64 %i.bhg, %i.bhj
  br i1 %i.bhk, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1274, label %.preheader2604, !llvm.loop !629

bb.po:                                            ; preds = %bb.pn
  %i.bhl = load i64, ptr %i.aa, align 8, !tbaa !90, !noalias !810 ; 2 uses
  %i.bhm = urem i64 %i.bhg, %i.bhl                ; 2 uses
  %i.bhn = load ptr, ptr %i.s, align 8, !tbaa !89, !noalias !810
  %i.bho = getelementptr inbounds nuw [8 x i8], ptr %i.bhn, i64 %i.bhm
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !121, !noalias !810, !nonnull !68, !noundef !68
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !119, !noalias !810 ; 3 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bhs = load i64, ptr %i.bhr, align 8, !tbaa !107, !noalias !810
  %i.bht = icmp eq i64 %i.bhg, %i.bhs
  br i1 %i.bht, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1274, label %.lr.ph.i.i.i.i.i1271

.lr.ph.i.i.i.i.i1271:                             ; preds = %bb.po, %.lr.ph.i.i.i.i.i1271
  %.020.i.i.i.i.i1272 = phi ptr [ %i.bhu, %.lr.ph.i.i.i.i.i1271 ], [ %i.bhq, %bb.po ]
  %i.bhu = load ptr, ptr %.020.i.i.i.i.i1272, align 8, !tbaa !119, !noalias !810, !nonnull !68, !noundef !68 ; 3 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8
  %i.bhw = load i64, ptr %i.bhv, align 8, !tbaa !107, !noalias !810 ; 2 uses
  %i.bhx = urem i64 %i.bhw, %i.bhl
  %.not19.i.i.i.i.i1273 = icmp eq i64 %i.bhx, %i.bhm
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1273)
  %i.bhy = icmp eq i64 %i.bhg, %i.bhw
  br i1 %i.bhy, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1274, label %.lr.ph.i.i.i.i.i1271, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1274: ; preds = %.lr.ph.i.i.i.i.i1271, %.preheader2604, %bb.po
  %.sroa.06.1.i.i.i1275 = phi ptr [ %.sroa.06.0.i.i.i1277, %.preheader2604 ], [ %i.bhq, %bb.po ], [ %i.bhu, %.lr.ph.i.i.i.i.i1271 ]
  %i.bhz = load ptr, ptr %0, align 8, !tbaa !452, !noalias !810, !nonnull !68, !align !453 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1275, i64 16
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !96, !noalias !810
  %i.bic = load ptr, ptr %i.bhz, align 8, !tbaa !94, !noalias !810
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 144
  %i.bie = load ptr, ptr %i.bid, align 8, !noalias !810
  %i.bif = invoke noundef ptr %i.bie(ptr noundef nonnull align 8 dereferenceable(8) %i.bhz, ptr noundef %i.bib)
          to label %bb.pp unwind label %bb.pr, !inline_history !631

bb.pp:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1274
  store ptr %i.bif, ptr %96, align 8, !tbaa !96, !alias.scope !810
  %i.big = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !94
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 456
  %i.bij = load ptr, ptr %i.bii, align 8
  invoke void %i.bij(ptr noundef nonnull align 8 dereferenceable(8) %i.big, ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit unwind label %bb.ps, !inline_history !813

_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit: ; preds = %bb.pp
  %i.bik = load ptr, ptr %96, align 8, !tbaa !96  ; 3 uses
  %.not.i1281 = icmp eq ptr %i.bik, null
  br i1 %.not.i1281, label %_ZN8facebook3jsi7PointerD2Ev.exit1282, label %bb.pq

bb.pq:                                            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !94
  %i.bim = load ptr, ptr %i.bil, align 8
  call void %i.bim(ptr noundef nonnull align 8 dereferenceable(8) %i.bik) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1282

_ZN8facebook3jsi7PointerD2Ev.exit1282:            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #35
  br label %bb.qe

bb.pr:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1274
  %i.bin = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1284

bb.ps:                                            ; preds = %bb.pp
  %i.bio = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bip = load ptr, ptr %96, align 8, !tbaa !96  ; 3 uses
  %.not.i1283 = icmp eq ptr %i.bip, null
  br i1 %.not.i1283, label %_ZN8facebook3jsi7PointerD2Ev.exit1284, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !94
  %i.bir = load ptr, ptr %i.biq, align 8
  call void %i.bir(ptr noundef nonnull align 8 dereferenceable(8) %i.bip) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1284

_ZN8facebook3jsi7PointerD2Ev.exit1284:            ; preds = %bb.pt, %bb.ps, %bb.pr
  %.pn543 = phi { ptr, i32 } [ %i.bin, %bb.pr ], [ %i.bio, %bb.ps ], [ %i.bio, %bb.pt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #35
  br label %bb.qg

bb.pu:                                            ; preds = %bb.pc
  %i.bis = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #35
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.288.0.copyload = load i64, ptr %.sroa.288.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  switch i32 %i.bft, label %bb.pz [
    i32 0, label %bb.pv
    i32 1, label %bb.pw
    i32 3, label %bb.px
    i32 2, label %bb.py
  ]

bb.pv:                                            ; preds = %bb.pu
  store i32 0, ptr %97, align 8, !tbaa !69, !alias.scope !817
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296

bb.pw:                                            ; preds = %bb.pu
  store i32 1, ptr %97, align 8, !tbaa !69, !alias.scope !820
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296

bb.px:                                            ; preds = %bb.pu
  store i32 3, ptr %97, align 8, !tbaa !69, !alias.scope !814
  store i64 %.sroa.288.0.copyload, ptr %i.bc, align 8, !tbaa !74, !alias.scope !814
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296

bb.py:                                            ; preds = %bb.pu
  %i.bit = trunc i64 %.sroa.288.0.copyload to i8
  %162 = and i8 %i.bit, 1
  store i32 2, ptr %97, align 8, !tbaa !69, !alias.scope !814
  store i8 %162, ptr %i.bc, align 8, !tbaa !74, !alias.scope !814
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296

bb.pz:                                            ; preds = %bb.pu
  %.off.i.i1285 = add i32 %i.bft, -4
  %switch.i.i1286 = icmp ult i32 %.off.i.i1285, 5
  call void @llvm.assume(i1 %switch.i.i1286)
  %i.biu = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !823
  %.not.not.i.i.i.i1287 = icmp eq i64 %i.biu, 0
  br i1 %.not.not.i.i.i.i1287, label %.preheader2600, label %bb.qa

.preheader2600:                                   ; preds = %bb.pz, %.preheader2600
  %.sroa.06.0.in.i.i.i.i1293 = phi ptr [ %.sroa.06.0.i.i.i.i1294, %.preheader2600 ], [ %i.v, %bb.pz ]
  %.sroa.06.0.i.i.i.i1294 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1293, align 8, !tbaa !119, !noalias !823, !nonnull !68, !noundef !68 ; 3 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1294, i64 8
  %i.biw = load i64, ptr %i.biv, align 8, !tbaa !107, !noalias !823
  %i.bix = icmp eq i64 %.sroa.288.0.copyload, %i.biw
  br i1 %i.bix, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1291, label %.preheader2600, !llvm.loop !515

bb.qa:                                            ; preds = %bb.pz
  %i.biy = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !823 ; 2 uses
  %i.biz = urem i64 %.sroa.288.0.copyload, %i.biy ; 2 uses
  %i.bja = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !823
  %i.bjb = getelementptr inbounds nuw [8 x i8], ptr %i.bja, i64 %i.biz
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !121, !noalias !823, !nonnull !68, !noundef !68
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !119, !noalias !823 ; 3 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 8
  %i.bjf = load i64, ptr %i.bje, align 8, !tbaa !107, !noalias !823
  %i.bjg = icmp eq i64 %.sroa.288.0.copyload, %i.bjf
  br i1 %i.bjg, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1291, label %.lr.ph.i.i.i.i.i.i1288

.lr.ph.i.i.i.i.i.i1288:                           ; preds = %bb.qa, %.lr.ph.i.i.i.i.i.i1288
  %.020.i.i.i.i.i.i1289 = phi ptr [ %i.bjh, %.lr.ph.i.i.i.i.i.i1288 ], [ %i.bjd, %bb.qa ]
  %i.bjh = load ptr, ptr %.020.i.i.i.i.i.i1289, align 8, !tbaa !119, !noalias !823, !nonnull !68, !noundef !68 ; 3 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 8
  %i.bjj = load i64, ptr %i.bji, align 8, !tbaa !107, !noalias !823 ; 2 uses
  %i.bjk = urem i64 %i.bjj, %i.biy
  %.not19.i.i.i.i.i.i1290 = icmp eq i64 %i.bjk, %i.biz
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1290)
  %i.bjl = icmp eq i64 %.sroa.288.0.copyload, %i.bjj
  br i1 %i.bjl, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1291, label %.lr.ph.i.i.i.i.i.i1288, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1291: ; preds = %.lr.ph.i.i.i.i.i.i1288, %.preheader2600, %bb.qa
  %.sroa.06.1.i.i.i.i1292 = phi ptr [ %.sroa.06.0.i.i.i.i1294, %.preheader2600 ], [ %i.bjd, %bb.qa ], [ %i.bjh, %.lr.ph.i.i.i.i.i.i1288 ]
  %i.bjm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1292, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(8) %i.bis, ptr noundef nonnull align 8 dereferenceable(16) %i.bjm)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296 unwind label %bb.qb

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296: ; preds = %bb.py, %bb.px, %bb.pw, %bb.pv, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1291
  %i.bjn = load ptr, ptr %i.bis, align 8, !tbaa !94
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 472
  %i.bjp = load ptr, ptr %i.bjo, align 8
  invoke void %i.bjp(ptr noundef nonnull align 8 dereferenceable(8) %i.bis, ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(16) %97)
          to label %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.qc, !inline_history !826

_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %97) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #35
  br label %bb.qe

bb.qb:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1291
  %i.bjq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.qd

bb.qc:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1296
  %i.bjr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %97) #35
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.qb
  %.pn541 = phi { ptr, i32 } [ %i.bjr, %bb.qc ], [ %i.bjq, %bb.qb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #35
  br label %bb.qg

bb.qe:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1282, %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_5ValueE.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1267
  %i.bjs = load ptr, ptr %92, align 8, !tbaa !96  ; 3 uses
  %.not.i1298 = icmp eq ptr %i.bjs, null
  br i1 %.not.i1298, label %_ZN8facebook3jsi7PointerD2Ev.exit1299, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !94
  %i.bju = load ptr, ptr %i.bjt, align 8
  call void %i.bju(ptr noundef nonnull align 8 dereferenceable(8) %i.bjs) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1299

_ZN8facebook3jsi7PointerD2Ev.exit1299:            ; preds = %bb.qe, %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #35
  br label %.critedge710

bb.qg:                                            ; preds = %bb.qd, %_ZN8facebook3jsi7PointerD2Ev.exit1284, %_ZN8facebook3jsi7PointerD2Ev.exit1269
  %.pn547.pn = phi { ptr, i32 } [ %.pn547, %_ZN8facebook3jsi7PointerD2Ev.exit1269 ], [ %.pn543, %_ZN8facebook3jsi7PointerD2Ev.exit1284 ], [ %.pn541, %bb.qd ] ; 2 uses
  %i.bjv = load ptr, ptr %92, align 8, !tbaa !96  ; 3 uses
  %.not.i1300 = icmp eq ptr %i.bjv, null
  br i1 %.not.i1300, label %_ZN8facebook3jsi7PointerD2Ev.exit1301, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !94
  %i.bjx = load ptr, ptr %i.bjw, align 8
  call void %i.bjx(ptr noundef nonnull align 8 dereferenceable(8) %i.bjv) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1301

_ZN8facebook3jsi7PointerD2Ev.exit1301:            ; preds = %bb.qh, %bb.qg, %bb.ph
  %.pn547.pn.pn = phi { ptr, i32 } [ %i.bgy, %bb.ph ], [ %.pn547.pn, %bb.qg ], [ %.pn547.pn, %bb.qh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #35
  br label %bb.zn

bb.qi:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #35
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.bjz = load i64, ptr %i.bjy, align 8, !tbaa !827 ; 4 uses
  %i.bka = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !829
  %.not.not.i.i.i1302 = icmp eq i64 %i.bka, 0
  br i1 %.not.not.i.i.i1302, label %.preheader2608, label %bb.qj

.preheader2608:                                   ; preds = %bb.qi, %.preheader2608
  %.sroa.06.0.in.i.i.i1308 = phi ptr [ %.sroa.06.0.i.i.i1309, %.preheader2608 ], [ %i.v, %bb.qi ]
  %.sroa.06.0.i.i.i1309 = load ptr, ptr %.sroa.06.0.in.i.i.i1308, align 8, !tbaa !119, !noalias !829, !nonnull !68, !noundef !68 ; 3 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1309, i64 8
  %i.bkc = load i64, ptr %i.bkb, align 8, !tbaa !107, !noalias !829
  %i.bkd = icmp eq i64 %i.bjz, %i.bkc
  br i1 %i.bkd, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1306, label %.preheader2608, !llvm.loop !515

bb.qj:                                            ; preds = %bb.qi
  %i.bke = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !829 ; 2 uses
  %i.bkf = urem i64 %i.bjz, %i.bke                ; 2 uses
  %i.bkg = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !829
  %i.bkh = getelementptr inbounds nuw [8 x i8], ptr %i.bkg, i64 %i.bkf
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !121, !noalias !829, !nonnull !68, !noundef !68
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !119, !noalias !829 ; 3 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 8
  %i.bkl = load i64, ptr %i.bkk, align 8, !tbaa !107, !noalias !829
  %i.bkm = icmp eq i64 %i.bjz, %i.bkl
  br i1 %i.bkm, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1306, label %.lr.ph.i.i.i.i.i1303

.lr.ph.i.i.i.i.i1303:                             ; preds = %bb.qj, %.lr.ph.i.i.i.i.i1303
  %.020.i.i.i.i.i1304 = phi ptr [ %i.bkn, %.lr.ph.i.i.i.i.i1303 ], [ %i.bkj, %bb.qj ]
  %i.bkn = load ptr, ptr %.020.i.i.i.i.i1304, align 8, !tbaa !119, !noalias !829, !nonnull !68, !noundef !68 ; 3 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8
  %i.bkp = load i64, ptr %i.bko, align 8, !tbaa !107, !noalias !829 ; 2 uses
  %i.bkq = urem i64 %i.bkp, %i.bke
  %.not19.i.i.i.i.i1305 = icmp eq i64 %i.bkq, %i.bkf
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1305)
  %i.bkr = icmp eq i64 %i.bjz, %i.bkp
  br i1 %i.bkr, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1306, label %.lr.ph.i.i.i.i.i1303, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1306: ; preds = %.lr.ph.i.i.i.i.i1303, %.preheader2608, %bb.qj
  %.sroa.06.1.i.i.i1307 = phi ptr [ %.sroa.06.0.i.i.i1309, %.preheader2608 ], [ %i.bkj, %bb.qj ], [ %i.bkn, %.lr.ph.i.i.i.i.i1303 ]
  %i.bks = load ptr, ptr %0, align 8, !tbaa !452, !noalias !829, !nonnull !68, !align !453
  %i.bkt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1307, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %100, ptr noundef nonnull align 8 dereferenceable(8) %i.bks, ptr noundef nonnull align 8 dereferenceable(16) %i.bkt)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1311 unwind label %bb.qo

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1311: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1306
  %i.bku = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %99, ptr noundef nonnull align 8 dereferenceable(16) %100, ptr noundef nonnull align 8 dereferenceable(8) %i.bku)
          to label %bb.qk unwind label %bb.qp

bb.qk:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1311
  %i.bkv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !94, !noalias !832
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 520
  %i.bky = load ptr, ptr %i.bkx, align 8, !noalias !832
  invoke void %i.bky(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Array") align 8 %98, ptr noundef nonnull align 8 dereferenceable(8) %i.bkv, ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit unwind label %bb.qq, !inline_history !835

_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit: ; preds = %bb.qk
  %i.bkz = load ptr, ptr %99, align 8, !tbaa !96  ; 3 uses
  %.not.i1313 = icmp eq ptr %i.bkz, null
  br i1 %.not.i1313, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !94
  %i.blb = load ptr, ptr %i.bla, align 8
  call void %i.blb(ptr noundef nonnull align 8 dereferenceable(8) %i.bkz) #35, !inline_history !99
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #35
  store i32 7, ptr %101, align 8, !tbaa !69
  %i.blc = load ptr, ptr %98, align 8, !tbaa !96
  store ptr %i.blc, ptr %i.ba, align 8, !tbaa !96
  store ptr null, ptr %98, align 8, !tbaa !96
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %101) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %101) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #35
  %i.bld = load ptr, ptr %98, align 8, !tbaa !96  ; 3 uses
  %.not.i1315 = icmp eq ptr %i.bld, null
  br i1 %.not.i1315, label %_ZN8facebook3jsi7PointerD2Ev.exit1316, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !94
end_hunk_4
begin_hunk_5_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1335: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1330
  %i.bmt = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %105, ptr noundef nonnull align 8 dereferenceable(16) %106, ptr noundef nonnull align 8 dereferenceable(8) %i.bmt)
          to label %bb.qz unwind label %bb.re

bb.qz:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1335
  %i.bmu = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object7asArrayERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Array") align 8 %104, ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %i.bmu)
          to label %bb.ra unwind label %bb.rf

bb.ra:                                            ; preds = %bb.qz
  %i.bmv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.bmx = load i64, ptr %i.bmw, align 8, !tbaa !845
  %i.bmy = load ptr, ptr %i.bmv, align 8, !tbaa !94, !noalias !846
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 584
  %i.bna = load ptr, ptr %i.bmz, align 8, !noalias !846
  invoke void %i.bna(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %103, ptr noundef nonnull align 8 dereferenceable(8) %i.bmv, ptr noundef nonnull align 8 dereferenceable(8) %104, i64 noundef %i.bmx)
          to label %_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit unwind label %bb.rg, !inline_history !849

_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit: ; preds = %bb.ra
  %i.bnb = load ptr, ptr %104, align 8, !tbaa !96 ; 3 uses
  %.not.i1337 = icmp eq ptr %i.bnb, null
  br i1 %.not.i1337, label %_ZN8facebook3jsi7PointerD2Ev.exit1338, label %bb.rb

bb.rb:                                            ; preds = %_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !94
  %i.bnd = load ptr, ptr %i.bnc, align 8
  call void %i.bnd(ptr noundef nonnull align 8 dereferenceable(8) %i.bnb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1338

_ZN8facebook3jsi7PointerD2Ev.exit1338:            ; preds = %_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit, %bb.rb
  %i.bne = load ptr, ptr %105, align 8, !tbaa !96 ; 3 uses
  %.not.i1339 = icmp eq ptr %i.bne, null
  br i1 %.not.i1339, label %_ZN8facebook3jsi7PointerD2Ev.exit1340, label %bb.rc

bb.rc:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1338
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !94
  %i.bng = load ptr, ptr %i.bnf, align 8
  call void %i.bng(ptr noundef nonnull align 8 dereferenceable(8) %i.bne) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1340

_ZN8facebook3jsi7PointerD2Ev.exit1340:            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1338, %bb.rc
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %103) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #35
  br label %.critedge710

bb.rd:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1330
  %i.bnh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.rj

bb.re:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1335
  %i.bni = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1344

bb.rf:                                            ; preds = %bb.qz
  %i.bnj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1342

bb.rg:                                            ; preds = %bb.ra
  %i.bnk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bnl = load ptr, ptr %104, align 8, !tbaa !96 ; 3 uses
  %.not.i1341 = icmp eq ptr %i.bnl, null
  br i1 %.not.i1341, label %_ZN8facebook3jsi7PointerD2Ev.exit1342, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !94
  %i.bnn = load ptr, ptr %i.bnm, align 8
  call void %i.bnn(ptr noundef nonnull align 8 dereferenceable(8) %i.bnl) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1342

_ZN8facebook3jsi7PointerD2Ev.exit1342:            ; preds = %bb.rh, %bb.rg, %bb.rf
  %.pn527 = phi { ptr, i32 } [ %i.bnj, %bb.rf ], [ %i.bnk, %bb.rg ], [ %i.bnk, %bb.rh ] ; 2 uses
  %i.bno = load ptr, ptr %105, align 8, !tbaa !96 ; 3 uses
  %.not.i1343 = icmp eq ptr %i.bno, null
  br i1 %.not.i1343, label %_ZN8facebook3jsi7PointerD2Ev.exit1344, label %bb.ri

bb.ri:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1342
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !94
  %i.bnq = load ptr, ptr %i.bnp, align 8
  call void %i.bnq(ptr noundef nonnull align 8 dereferenceable(8) %i.bno) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1344

_ZN8facebook3jsi7PointerD2Ev.exit1344:            ; preds = %bb.ri, %_ZN8facebook3jsi7PointerD2Ev.exit1342, %bb.re
  %.pn527.pn = phi { ptr, i32 } [ %i.bni, %bb.re ], [ %.pn527, %_ZN8facebook3jsi7PointerD2Ev.exit1342 ], [ %.pn527, %bb.ri ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #35
  br label %bb.rj

bb.rj:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1344, %bb.rd
  %.pn527.pn.pn = phi { ptr, i32 } [ %.pn527.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1344 ], [ %i.bnh, %bb.rd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #35
  br label %bb.zn

bb.rk:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #35
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.bns = load i64, ptr %i.bnr, align 8, !tbaa !850 ; 4 uses
  %i.bnt = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !852
  %.not.not.i.i.i1345 = icmp eq i64 %i.bnt, 0
  br i1 %.not.not.i.i.i1345, label %.preheader2614, label %bb.rl

.preheader2614:                                   ; preds = %bb.rk, %.preheader2614
  %.sroa.06.0.in.i.i.i1351 = phi ptr [ %.sroa.06.0.i.i.i1352, %.preheader2614 ], [ %i.v, %bb.rk ]
  %.sroa.06.0.i.i.i1352 = load ptr, ptr %.sroa.06.0.in.i.i.i1351, align 8, !tbaa !119, !noalias !852, !nonnull !68, !noundef !68 ; 3 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1352, i64 8
  %i.bnv = load i64, ptr %i.bnu, align 8, !tbaa !107, !noalias !852
  %i.bnw = icmp eq i64 %i.bns, %i.bnv
  br i1 %i.bnw, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1349, label %.preheader2614, !llvm.loop !515

bb.rl:                                            ; preds = %bb.rk
  %i.bnx = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !852 ; 2 uses
  %i.bny = urem i64 %i.bns, %i.bnx                ; 2 uses
  %i.bnz = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !852
  %i.boa = getelementptr inbounds nuw [8 x i8], ptr %i.bnz, i64 %i.bny
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !121, !noalias !852, !nonnull !68, !noundef !68
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !119, !noalias !852 ; 3 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 8
  %i.boe = load i64, ptr %i.bod, align 8, !tbaa !107, !noalias !852
  %i.bof = icmp eq i64 %i.bns, %i.boe
  br i1 %i.bof, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1349, label %.lr.ph.i.i.i.i.i1346

.lr.ph.i.i.i.i.i1346:                             ; preds = %bb.rl, %.lr.ph.i.i.i.i.i1346
  %.020.i.i.i.i.i1347 = phi ptr [ %i.bog, %.lr.ph.i.i.i.i.i1346 ], [ %i.boc, %bb.rl ]
  %i.bog = load ptr, ptr %.020.i.i.i.i.i1347, align 8, !tbaa !119, !noalias !852, !nonnull !68, !noundef !68 ; 3 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 8
  %i.boi = load i64, ptr %i.boh, align 8, !tbaa !107, !noalias !852 ; 2 uses
  %i.boj = urem i64 %i.boi, %i.bnx
  %.not19.i.i.i.i.i1348 = icmp eq i64 %i.boj, %i.bny
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1348)
  %i.bok = icmp eq i64 %i.bns, %i.boi
  br i1 %i.bok, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1349, label %.lr.ph.i.i.i.i.i1346, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1349: ; preds = %.lr.ph.i.i.i.i.i1346, %.preheader2614, %bb.rl
  %.sroa.06.1.i.i.i1350 = phi ptr [ %.sroa.06.0.i.i.i1352, %.preheader2614 ], [ %i.boc, %bb.rl ], [ %i.bog, %.lr.ph.i.i.i.i.i1346 ]
  %i.bol = load ptr, ptr %0, align 8, !tbaa !452, !noalias !852, !nonnull !68, !align !453
  %i.bom = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1350, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 8 dereferenceable(8) %i.bol, ptr noundef nonnull align 8 dereferenceable(16) %i.bom)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1354 unwind label %bb.rw

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1354: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1349
  %i.bon = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %108, ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 8 dereferenceable(8) %i.bon)
          to label %bb.rm unwind label %bb.rx

bb.rm:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1354
  %i.boo = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object7asArrayERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Array") align 8 %107, ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %i.boo)
          to label %bb.rn unwind label %bb.ry

bb.rn:                                            ; preds = %bb.rm
  %i.bop = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.bor = load i64, ptr %i.boq, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #35
  %i.bos = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.sroa.075.0.copyload = load i32, ptr %i.bos, align 8, !tbaa !498 ; 2 uses
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %.sroa.277.0.copyload = load i64, ptr %.sroa.277.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  switch i32 %.sroa.075.0.copyload, label %bb.rs [
    i32 0, label %bb.ro
    i32 1, label %bb.rp
    i32 3, label %bb.rq
    i32 2, label %bb.rr
  ]

bb.ro:                                            ; preds = %bb.rn
  store i32 0, ptr %110, align 8, !tbaa !69, !alias.scope !859
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366

bb.rp:                                            ; preds = %bb.rn
  store i32 1, ptr %110, align 8, !tbaa !69, !alias.scope !862
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366

bb.rq:                                            ; preds = %bb.rn
  store i32 3, ptr %110, align 8, !tbaa !69, !alias.scope !856
  store i64 %.sroa.277.0.copyload, ptr %i.ay, align 8, !tbaa !74, !alias.scope !856
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366

bb.rr:                                            ; preds = %bb.rn
  %i.bot = trunc i64 %.sroa.277.0.copyload to i8
  %163 = and i8 %i.bot, 1
  store i32 2, ptr %110, align 8, !tbaa !69, !alias.scope !856
  store i8 %163, ptr %i.ay, align 8, !tbaa !74, !alias.scope !856
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366

bb.rs:                                            ; preds = %bb.rn
  %.off.i.i1355 = add i32 %.sroa.075.0.copyload, -4
  %switch.i.i1356 = icmp ult i32 %.off.i.i1355, 5
  call void @llvm.assume(i1 %switch.i.i1356)
  %i.bou = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !865
  %.not.not.i.i.i.i1357 = icmp eq i64 %i.bou, 0
  br i1 %.not.not.i.i.i.i1357, label %.preheader2612, label %bb.rt

.preheader2612:                                   ; preds = %bb.rs, %.preheader2612
  %.sroa.06.0.in.i.i.i.i1363 = phi ptr [ %.sroa.06.0.i.i.i.i1364, %.preheader2612 ], [ %i.v, %bb.rs ]
  %.sroa.06.0.i.i.i.i1364 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1363, align 8, !tbaa !119, !noalias !865, !nonnull !68, !noundef !68 ; 3 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1364, i64 8
  %i.bow = load i64, ptr %i.bov, align 8, !tbaa !107, !noalias !865
  %i.box = icmp eq i64 %.sroa.277.0.copyload, %i.bow
  br i1 %i.box, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1361, label %.preheader2612, !llvm.loop !515

bb.rt:                                            ; preds = %bb.rs
  %i.boy = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !865 ; 2 uses
  %i.boz = urem i64 %.sroa.277.0.copyload, %i.boy ; 2 uses
  %i.bpa = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !865
  %i.bpb = getelementptr inbounds nuw [8 x i8], ptr %i.bpa, i64 %i.boz
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !121, !noalias !865, !nonnull !68, !noundef !68
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !119, !noalias !865 ; 3 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 8
  %i.bpf = load i64, ptr %i.bpe, align 8, !tbaa !107, !noalias !865
  %i.bpg = icmp eq i64 %.sroa.277.0.copyload, %i.bpf
  br i1 %i.bpg, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1361, label %.lr.ph.i.i.i.i.i.i1358

.lr.ph.i.i.i.i.i.i1358:                           ; preds = %bb.rt, %.lr.ph.i.i.i.i.i.i1358
  %.020.i.i.i.i.i.i1359 = phi ptr [ %i.bph, %.lr.ph.i.i.i.i.i.i1358 ], [ %i.bpd, %bb.rt ]
  %i.bph = load ptr, ptr %.020.i.i.i.i.i.i1359, align 8, !tbaa !119, !noalias !865, !nonnull !68, !noundef !68 ; 3 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  %i.bpj = load i64, ptr %i.bpi, align 8, !tbaa !107, !noalias !865 ; 2 uses
  %i.bpk = urem i64 %i.bpj, %i.boy
  %.not19.i.i.i.i.i.i1360 = icmp eq i64 %i.bpk, %i.boz
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1360)
  %i.bpl = icmp eq i64 %.sroa.277.0.copyload, %i.bpj
  br i1 %i.bpl, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1361, label %.lr.ph.i.i.i.i.i.i1358, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1361: ; preds = %.lr.ph.i.i.i.i.i.i1358, %.preheader2612, %bb.rt
  %.sroa.06.1.i.i.i.i1362 = phi ptr [ %.sroa.06.0.i.i.i.i1364, %.preheader2612 ], [ %i.bpd, %bb.rt ], [ %i.bph, %.lr.ph.i.i.i.i.i.i1358 ]
  %i.bpm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1362, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef nonnull align 8 dereferenceable(8) %i.bop, ptr noundef nonnull align 8 dereferenceable(16) %i.bpm)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366 unwind label %bb.rz

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366: ; preds = %bb.rr, %bb.rq, %bb.rp, %bb.ro, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1361
  %i.bpn = load ptr, ptr %i.bop, align 8, !tbaa !94
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 592
  %i.bpp = load ptr, ptr %i.bpo, align 8
  invoke void %i.bpp(ptr noundef nonnull align 8 dereferenceable(8) %i.bop, ptr noundef nonnull align 8 dereferenceable(8) %107, i64 noundef %i.bor, ptr noundef nonnull align 8 dereferenceable(16) %110)
          to label %_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit unwind label %bb.sa, !inline_history !868

_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %110) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #35
  %i.bpq = load ptr, ptr %107, align 8, !tbaa !96 ; 3 uses
  %.not.i1368 = icmp eq ptr %i.bpq, null
  br i1 %.not.i1368, label %_ZN8facebook3jsi7PointerD2Ev.exit1369, label %bb.ru

bb.ru:                                            ; preds = %_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !94
  %i.bps = load ptr, ptr %i.bpr, align 8
  call void %i.bps(ptr noundef nonnull align 8 dereferenceable(8) %i.bpq) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1369

_ZN8facebook3jsi7PointerD2Ev.exit1369:            ; preds = %_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit, %bb.ru
  %i.bpt = load ptr, ptr %108, align 8, !tbaa !96 ; 3 uses
  %.not.i1370 = icmp eq ptr %i.bpt, null
  br i1 %.not.i1370, label %_ZN8facebook3jsi7PointerD2Ev.exit1371, label %bb.rv

bb.rv:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1369
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !94
  %i.bpv = load ptr, ptr %i.bpu, align 8
  call void %i.bpv(ptr noundef nonnull align 8 dereferenceable(8) %i.bpt) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1371

_ZN8facebook3jsi7PointerD2Ev.exit1371:            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1369, %bb.rv
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %109) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #35
  br label %.critedge710

bb.rw:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1349
  %i.bpw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.se

bb.rx:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1354
  %i.bpx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1375

bb.ry:                                            ; preds = %bb.rm
  %i.bpy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1373

bb.rz:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1361
  %i.bpz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.sb

bb.sa:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1366
  %i.bqa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %110) #35
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.rz
  %.pn522 = phi { ptr, i32 } [ %i.bqa, %bb.sa ], [ %i.bpz, %bb.rz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #35
  %i.bqb = load ptr, ptr %107, align 8, !tbaa !96 ; 3 uses
  %.not.i1372 = icmp eq ptr %i.bqb, null
  br i1 %.not.i1372, label %_ZN8facebook3jsi7PointerD2Ev.exit1373, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !94
  %i.bqd = load ptr, ptr %i.bqc, align 8
  call void %i.bqd(ptr noundef nonnull align 8 dereferenceable(8) %i.bqb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1373

_ZN8facebook3jsi7PointerD2Ev.exit1373:            ; preds = %bb.sc, %bb.sb, %bb.ry
  %.pn522.pn = phi { ptr, i32 } [ %i.bpy, %bb.ry ], [ %.pn522, %bb.sb ], [ %.pn522, %bb.sc ] ; 2 uses
  %i.bqe = load ptr, ptr %108, align 8, !tbaa !96 ; 3 uses
  %.not.i1374 = icmp eq ptr %i.bqe, null
  br i1 %.not.i1374, label %_ZN8facebook3jsi7PointerD2Ev.exit1375, label %bb.sd

bb.sd:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1373
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !94
  %i.bqg = load ptr, ptr %i.bqf, align 8
  call void %i.bqg(ptr noundef nonnull align 8 dereferenceable(8) %i.bqe) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1375

_ZN8facebook3jsi7PointerD2Ev.exit1375:            ; preds = %bb.sd, %_ZN8facebook3jsi7PointerD2Ev.exit1373, %bb.rx
  %.pn522.pn.pn = phi { ptr, i32 } [ %i.bpx, %bb.rx ], [ %.pn522.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1373 ], [ %.pn522.pn, %bb.sd ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %109) #35
  br label %bb.se

bb.se:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1375, %bb.rw
  %.pn522.pn.pn.pn = phi { ptr, i32 } [ %.pn522.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1375 ], [ %i.bpw, %bb.rw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #35
  br label %bb.zn

bb.sf:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #35
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.bqi = load i64, ptr %i.bqh, align 8, !tbaa !869 ; 4 uses
  %i.bqj = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !876
  %.not.not.i.i.i1376 = icmp eq i64 %i.bqj, 0
  br i1 %.not.not.i.i.i1376, label %.preheader2618, label %bb.sg

.preheader2618:                                   ; preds = %bb.sf, %.preheader2618
  %.sroa.06.0.in.i.i.i1382 = phi ptr [ %.sroa.06.0.i.i.i1383, %.preheader2618 ], [ %i.v, %bb.sf ]
  %.sroa.06.0.i.i.i1383 = load ptr, ptr %.sroa.06.0.in.i.i.i1382, align 8, !tbaa !119, !noalias !876, !nonnull !68, !noundef !68 ; 3 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1383, i64 8
  %i.bql = load i64, ptr %i.bqk, align 8, !tbaa !107, !noalias !876
  %i.bqm = icmp eq i64 %i.bqi, %i.bql
  br i1 %i.bqm, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1380, label %.preheader2618, !llvm.loop !515

bb.sg:                                            ; preds = %bb.sf
  %i.bqn = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !876 ; 2 uses
  %i.bqo = urem i64 %i.bqi, %i.bqn                ; 2 uses
  %i.bqp = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !876
  %i.bqq = getelementptr inbounds nuw [8 x i8], ptr %i.bqp, i64 %i.bqo
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !121, !noalias !876, !nonnull !68, !noundef !68
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !119, !noalias !876 ; 3 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 8
  %i.bqu = load i64, ptr %i.bqt, align 8, !tbaa !107, !noalias !876
  %i.bqv = icmp eq i64 %i.bqi, %i.bqu
  br i1 %i.bqv, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1380, label %.lr.ph.i.i.i.i.i1377

.lr.ph.i.i.i.i.i1377:                             ; preds = %bb.sg, %.lr.ph.i.i.i.i.i1377
  %.020.i.i.i.i.i1378 = phi ptr [ %i.bqw, %.lr.ph.i.i.i.i.i1377 ], [ %i.bqs, %bb.sg ]
  %i.bqw = load ptr, ptr %.020.i.i.i.i.i1378, align 8, !tbaa !119, !noalias !876, !nonnull !68, !noundef !68 ; 3 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 8
  %i.bqy = load i64, ptr %i.bqx, align 8, !tbaa !107, !noalias !876 ; 2 uses
  %i.bqz = urem i64 %i.bqy, %i.bqn
  %.not19.i.i.i.i.i1379 = icmp eq i64 %i.bqz, %i.bqo
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1379)
  %i.bra = icmp eq i64 %i.bqi, %i.bqy
  br i1 %i.bra, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1380, label %.lr.ph.i.i.i.i.i1377, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1380: ; preds = %.lr.ph.i.i.i.i.i1377, %.preheader2618, %bb.sg
  %.sroa.06.1.i.i.i1381 = phi ptr [ %.sroa.06.0.i.i.i1383, %.preheader2618 ], [ %i.bqs, %bb.sg ], [ %i.bqw, %.lr.ph.i.i.i.i.i1377 ]
  %i.brb = load ptr, ptr %0, align 8, !tbaa !452, !noalias !876, !nonnull !68, !align !453
  %i.brc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1381, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(8) %i.brb, ptr noundef nonnull align 8 dereferenceable(16) %i.brc)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1385 unwind label %bb.sk

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1385: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1380
  %i.brd = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %112, ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(8) %i.brd)
          to label %bb.sh unwind label %bb.sl

bb.sh:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1385
  %i.bre = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object10asFunctionERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Function") align 8 %111, ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef nonnull align 8 dereferenceable(8) %i.bre)
          to label %bb.si unwind label %bb.sm

bb.si:                                            ; preds = %bb.sh
  %i.brf = load ptr, ptr %112, align 8, !tbaa !96 ; 3 uses
  %.not.i1386 = icmp eq ptr %i.brf, null
  br i1 %.not.i1386, label %_ZN8facebook3jsi7PointerD2Ev.exit1387, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !94
  %i.brh = load ptr, ptr %i.brg, align 8
  call void %i.brh(ptr noundef nonnull align 8 dereferenceable(8) %i.brf) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1387

_ZN8facebook3jsi7PointerD2Ev.exit1387:            ; preds = %bb.si, %bb.sj
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, i8 0, i64 24, i1 false)
  %i.bri = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !879 ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !879 ; 2 uses
  %.not18652546 = icmp eq ptr %i.brj, %i.brl
  br i1 %.not18652546, label %._crit_edge2549, label %.lr.ph2548

._crit_edge2549.loopexit:                         ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.pre3063 = load ptr, ptr %114, align 8, !tbaa !880
  br label %._crit_edge2549

._crit_edge2549:                                  ; preds = %._crit_edge2549.loopexit, %_ZN8facebook3jsi7PointerD2Ev.exit1387
  %i.brm = phi ptr [ %.pre3063, %._crit_edge2549.loopexit ], [ null, %_ZN8facebook3jsi7PointerD2Ev.exit1387 ] ; 3 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.bro = load i32, ptr %i.brn, align 8, !tbaa !7
  %i.brp = icmp eq i32 %i.bro, 0
  br i1 %i.brp, label %bb.ta, label %bb.tc

bb.sk:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1380
  %i.brq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.so

bb.sl:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1385
  %i.brr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1389

bb.sm:                                            ; preds = %bb.sh
  %i.brs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.brt = load ptr, ptr %112, align 8, !tbaa !96 ; 3 uses
  %.not.i1388 = icmp eq ptr %i.brt, null
  br i1 %.not.i1388, label %_ZN8facebook3jsi7PointerD2Ev.exit1389, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !94
  %i.brv = load ptr, ptr %i.bru, align 8
  call void %i.brv(ptr noundef nonnull align 8 dereferenceable(8) %i.brt) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1389

_ZN8facebook3jsi7PointerD2Ev.exit1389:            ; preds = %bb.sn, %bb.sm, %bb.sl
  %.pn510 = phi { ptr, i32 } [ %i.brr, %bb.sl ], [ %i.brs, %bb.sm ], [ %i.brs, %bb.sn ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #35
  br label %bb.so

bb.so:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1389, %bb.sk
  %.pn510.pn = phi { ptr, i32 } [ %.pn510, %_ZN8facebook3jsi7PointerD2Ev.exit1389 ], [ %i.brq, %bb.sk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1427

.lr.ph2548:                                       ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1387, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.sroa.01796.02547 = phi ptr [ %i.bsv, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ %i.brj, %_ZN8facebook3jsi7PointerD2Ev.exit1387 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #35
  %.sroa.065.0.copyload = load i32, ptr %.sroa.01796.02547, align 8, !tbaa !498 ; 2 uses
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01796.02547, i64 8
  %.sroa.267.0.copyload = load i64, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  switch i32 %.sroa.065.0.copyload, label %bb.st [
    i32 0, label %bb.sp
    i32 1, label %bb.sq
    i32 3, label %bb.sr
    i32 2, label %bb.ss
  ]

bb.sp:                                            ; preds = %.lr.ph2548
  store i32 0, ptr %115, align 8, !tbaa !69, !alias.scope !886
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401

bb.sq:                                            ; preds = %.lr.ph2548
  store i32 1, ptr %115, align 8, !tbaa !69, !alias.scope !889
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401

bb.sr:                                            ; preds = %.lr.ph2548
  store i32 3, ptr %115, align 8, !tbaa !69, !alias.scope !883
  store i64 %.sroa.267.0.copyload, ptr %i.au, align 8, !tbaa !74, !alias.scope !883
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401

bb.ss:                                            ; preds = %.lr.ph2548
  %i.brw = trunc i64 %.sroa.267.0.copyload to i8
  %164 = and i8 %i.brw, 1
  store i32 2, ptr %115, align 8, !tbaa !69, !alias.scope !883
  store i8 %164, ptr %i.au, align 8, !tbaa !74, !alias.scope !883
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401

bb.st:                                            ; preds = %.lr.ph2548
  %.off.i.i1390 = add i32 %.sroa.065.0.copyload, -4
  %switch.i.i1391 = icmp ult i32 %.off.i.i1390, 5
  call void @llvm.assume(i1 %switch.i.i1391)
  %i.brx = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !892
  %.not.not.i.i.i.i1392 = icmp eq i64 %i.brx, 0
  br i1 %.not.not.i.i.i.i1392, label %.preheader, label %bb.su

.preheader:                                       ; preds = %bb.st, %.preheader
  %.sroa.06.0.in.i.i.i.i1398 = phi ptr [ %.sroa.06.0.i.i.i.i1399, %.preheader ], [ %i.v, %bb.st ]
  %.sroa.06.0.i.i.i.i1399 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1398, align 8, !tbaa !119, !noalias !892, !nonnull !68, !noundef !68 ; 3 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1399, i64 8
  %i.brz = load i64, ptr %i.bry, align 8, !tbaa !107, !noalias !892
  %i.bsa = icmp eq i64 %.sroa.267.0.copyload, %i.brz
  br i1 %i.bsa, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1396, label %.preheader, !llvm.loop !515

bb.su:                                            ; preds = %bb.st
  %i.bsb = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !892 ; 2 uses
  %i.bsc = urem i64 %.sroa.267.0.copyload, %i.bsb ; 2 uses
  %i.bsd = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !892
  %i.bse = getelementptr inbounds nuw [8 x i8], ptr %i.bsd, i64 %i.bsc
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !121, !noalias !892, !nonnull !68, !noundef !68
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !119, !noalias !892 ; 3 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 8
  %i.bsi = load i64, ptr %i.bsh, align 8, !tbaa !107, !noalias !892
  %i.bsj = icmp eq i64 %.sroa.267.0.copyload, %i.bsi
  br i1 %i.bsj, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1396, label %.lr.ph.i.i.i.i.i.i1393

.lr.ph.i.i.i.i.i.i1393:                           ; preds = %bb.su, %.lr.ph.i.i.i.i.i.i1393
  %.020.i.i.i.i.i.i1394 = phi ptr [ %i.bsk, %.lr.ph.i.i.i.i.i.i1393 ], [ %i.bsg, %bb.su ]
  %i.bsk = load ptr, ptr %.020.i.i.i.i.i.i1394, align 8, !tbaa !119, !noalias !892, !nonnull !68, !noundef !68 ; 3 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !107, !noalias !892 ; 2 uses
  %i.bsn = urem i64 %i.bsm, %i.bsb
  %.not19.i.i.i.i.i.i1395 = icmp eq i64 %i.bsn, %i.bsc
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1395)
  %i.bso = icmp eq i64 %.sroa.267.0.copyload, %i.bsm
  br i1 %i.bso, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1396, label %.lr.ph.i.i.i.i.i.i1393, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1396: ; preds = %.lr.ph.i.i.i.i.i.i1393, %.preheader, %bb.su
  %.sroa.06.1.i.i.i.i1397 = phi ptr [ %.sroa.06.0.i.i.i.i1399, %.preheader ], [ %i.bsg, %bb.su ], [ %i.bsk, %.lr.ph.i.i.i.i.i.i1393 ]
  %i.bsp = load ptr, ptr %0, align 8, !tbaa !452, !noalias !892, !nonnull !68, !align !453
  %i.bsq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1397, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %115, ptr noundef nonnull align 8 dereferenceable(8) %i.bsp, ptr noundef nonnull align 8 dereferenceable(16) %i.bsq)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401 unwind label %bb.sx

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401: ; preds = %bb.ss, %bb.sr, %bb.sq, %bb.sp, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1396
  %i.bsr = load ptr, ptr %i.av, align 8, !tbaa !895 ; 3 uses
  %i.bss = load ptr, ptr %i.aw, align 8, !tbaa !896
  %.not.i1402 = icmp eq ptr %i.bsr, %i.bss
  br i1 %.not.i1402, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bsr, ptr noundef nonnull align 8 dereferenceable(16) %115) #35
  %i.bst = load ptr, ptr %i.av, align 8, !tbaa !895
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 16
  store ptr %i.bsu, ptr %i.av, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.sw:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1401
  invoke void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr %i.bsr, ptr noundef nonnull align 8 dereferenceable(16) %115)
          to label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.sy

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.sw, %bb.sv
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %115) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #35
  %i.bsv = getelementptr inbounds nuw i8, ptr %.sroa.01796.02547, i64 16 ; 2 uses
  %.not1865 = icmp eq ptr %i.bsv, %i.brl
  br i1 %.not1865, label %._crit_edge2549.loopexit, label %.lr.ph2548

bb.sx:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1396
  %i.bsw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.sz

bb.sy:                                            ; preds = %bb.sw
  %i.bsx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %115) #35
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %bb.sx
  %.pn518 = phi { ptr, i32 } [ %i.bsx, %bb.sy ], [ %i.bsw, %bb.sx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #35
  br label %bb.tq

bb.ta:                                            ; preds = %._crit_edge2549
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #35
  %i.bsy = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bsz = load ptr, ptr %i.av, align 8, !tbaa !895
  %i.bta = ptrtoint ptr %i.bsz to i64
  %i.btb = ptrtoint ptr %i.brm to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !897
  store i32 0, ptr %3, align 8, !tbaa !69, !alias.scope !900, !noalias !897
  %i.bte = load ptr, ptr %i.bsy, align 8, !tbaa !94, !noalias !897
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 608
  %i.btg = load ptr, ptr %i.btf, align 8, !noalias !897
  invoke void %i.btg(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %116, ptr noundef nonnull align 8 dereferenceable(8) %i.bsy, ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.brm, i64 noundef %i.btd)
          to label %bb.tb unwind label %.body1404

.body1404:                                        ; preds = %bb.ta
  %i.bth = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #35
  br label %bb.tq

bb.tb:                                            ; preds = %bb.ta
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !897
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %116) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %116) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #35
  br label %bb.tn

bb.tc:                                            ; preds = %._crit_edge2549
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #35
  %i.bti = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #35
  %i.btj = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.btk = load i64, ptr %i.btj, align 8, !tbaa !74 ; 4 uses
  %i.btl = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !903
  %.not.not.i.i.i1406 = icmp eq i64 %i.btl, 0
  br i1 %.not.not.i.i.i1406, label %.preheader2616, label %bb.td

.preheader2616:                                   ; preds = %bb.tc, %.preheader2616
  %.sroa.06.0.in.i.i.i1412 = phi ptr [ %.sroa.06.0.i.i.i1413, %.preheader2616 ], [ %i.v, %bb.tc ]
  %.sroa.06.0.i.i.i1413 = load ptr, ptr %.sroa.06.0.in.i.i.i1412, align 8, !tbaa !119, !noalias !903, !nonnull !68, !noundef !68 ; 3 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1413, i64 8
  %i.btn = load i64, ptr %i.btm, align 8, !tbaa !107, !noalias !903
  %i.bto = icmp eq i64 %i.btk, %i.btn
  br i1 %i.bto, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1410, label %.preheader2616, !llvm.loop !515

bb.td:                                            ; preds = %bb.tc
  %i.btp = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !903 ; 2 uses
  %i.btq = urem i64 %i.btk, %i.btp                ; 2 uses
  %i.btr = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !903
  %i.bts = getelementptr inbounds nuw [8 x i8], ptr %i.btr, i64 %i.btq
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !121, !noalias !903, !nonnull !68, !noundef !68
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !119, !noalias !903 ; 3 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 8
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !107, !noalias !903
  %i.btx = icmp eq i64 %i.btk, %i.btw
  br i1 %i.btx, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1410, label %.lr.ph.i.i.i.i.i1407

.lr.ph.i.i.i.i.i1407:                             ; preds = %bb.td, %.lr.ph.i.i.i.i.i1407
  %.020.i.i.i.i.i1408 = phi ptr [ %i.bty, %.lr.ph.i.i.i.i.i1407 ], [ %i.btu, %bb.td ]
  %i.bty = load ptr, ptr %.020.i.i.i.i.i1408, align 8, !tbaa !119, !noalias !903, !nonnull !68, !noundef !68 ; 3 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bty, i64 8
  %i.bua = load i64, ptr %i.btz, align 8, !tbaa !107, !noalias !903 ; 2 uses
  %i.bub = urem i64 %i.bua, %i.btp
  %.not19.i.i.i.i.i1409 = icmp eq i64 %i.bub, %i.btq
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1409)
  %i.buc = icmp eq i64 %i.btk, %i.bua
  br i1 %i.buc, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1410, label %.lr.ph.i.i.i.i.i1407, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1410: ; preds = %.lr.ph.i.i.i.i.i1407, %.preheader2616, %bb.td
  %.sroa.06.1.i.i.i1411 = phi ptr [ %.sroa.06.0.i.i.i1413, %.preheader2616 ], [ %i.btu, %bb.td ], [ %i.bty, %.lr.ph.i.i.i.i.i1407 ]
  %i.bud = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1411, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(8) %i.bti, ptr noundef nonnull align 8 dereferenceable(16) %i.bud)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1415 unwind label %bb.tj

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1415: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1410
  %i.bue = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %118, ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(8) %i.bue)
          to label %bb.te unwind label %bb.tk

bb.te:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1415
  %i.buf = load ptr, ptr %i.av, align 8, !tbaa !895
  %i.bug = load ptr, ptr %114, align 8, !tbaa !880
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !906
  store i32 7, ptr %2, align 8, !tbaa !69, !noalias !906
  %i.buh = load ptr, ptr %118, align 8, !tbaa !96, !noalias !906
  %i.bui = load ptr, ptr %i.bti, align 8, !tbaa !94, !noalias !906
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 136
  %i.buk = load ptr, ptr %i.buj, align 8, !noalias !906
  %i.bul = invoke noundef ptr %i.buk(ptr noundef nonnull align 8 dereferenceable(8) %i.bti, ptr noundef %i.buh)
          to label %_ZN8facebook3jsi5ValueC2ERNS0_7RuntimeERKNS0_6ObjectE.exit.i unwind label %bb.tf, !noalias !906

bb.tf:                                            ; preds = %bb.te
  %i.bum = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35, !noalias !906
  br label %.body1416

_ZN8facebook3jsi5ValueC2ERNS0_7RuntimeERKNS0_6ObjectE.exit.i: ; preds = %bb.te
  %i.bun = ptrtoint ptr %i.buf to i64
  %i.buo = ptrtoint ptr %i.bug to i64
  %i.bup = sub i64 %i.bun, %i.buo
end_hunk_5
begin_hunk_6_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  %.not.i1424 = icmp eq ptr %i.bvl, null
  br i1 %.not.i1424, label %_ZN8facebook3jsi7PointerD2Ev.exit1425, label %bb.tp

bb.tp:                                            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit
  %i.bvm = load ptr, ptr %i.bvl, align 8, !tbaa !94
  %i.bvn = load ptr, ptr %i.bvm, align 8
  call void %i.bvn(ptr noundef nonnull align 8 dereferenceable(8) %i.bvl) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1425

_ZN8facebook3jsi7PointerD2Ev.exit1425:            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit, %bb.tp
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #35
  br label %.critedge710

bb.tq:                                            ; preds = %.body1404, %bb.tm, %bb.sz
  %.pn518.pn = phi { ptr, i32 } [ %.pn518, %bb.sz ], [ %i.bth, %.body1404 ], [ %.pn513.pn, %bb.tm ] ; 2 uses
  call void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %114) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #35
  %i.bvo = load ptr, ptr %111, align 8, !tbaa !96 ; 3 uses
  %.not.i1426 = icmp eq ptr %i.bvo, null
  br i1 %.not.i1426, label %_ZN8facebook3jsi7PointerD2Ev.exit1427, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !94
  %i.bvq = load ptr, ptr %i.bvp, align 8
  call void %i.bvq(ptr noundef nonnull align 8 dereferenceable(8) %i.bvo) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1427

_ZN8facebook3jsi7PointerD2Ev.exit1427:            ; preds = %bb.tr, %bb.tq, %bb.so
  %.pn518.pn.pn = phi { ptr, i32 } [ %.pn510.pn, %bb.so ], [ %.pn518.pn, %bb.tq ], [ %.pn518.pn, %bb.tr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #35
  br label %bb.zn

bb.ts:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #35
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.bvs = load i64, ptr %i.bvr, align 8, !tbaa !869 ; 4 uses
  %i.bvt = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !910
  %.not.not.i.i.i1428 = icmp eq i64 %i.bvt, 0
  br i1 %.not.not.i.i.i1428, label %.preheader2620, label %bb.tt

.preheader2620:                                   ; preds = %bb.ts, %.preheader2620
  %.sroa.06.0.in.i.i.i1434 = phi ptr [ %.sroa.06.0.i.i.i1435, %.preheader2620 ], [ %i.v, %bb.ts ]
  %.sroa.06.0.i.i.i1435 = load ptr, ptr %.sroa.06.0.in.i.i.i1434, align 8, !tbaa !119, !noalias !910, !nonnull !68, !noundef !68 ; 3 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1435, i64 8
  %i.bvv = load i64, ptr %i.bvu, align 8, !tbaa !107, !noalias !910
  %i.bvw = icmp eq i64 %i.bvs, %i.bvv
  br i1 %i.bvw, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1432, label %.preheader2620, !llvm.loop !515

bb.tt:                                            ; preds = %bb.ts
  %i.bvx = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !910 ; 2 uses
  %i.bvy = urem i64 %i.bvs, %i.bvx                ; 2 uses
  %i.bvz = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !910
  %i.bwa = getelementptr inbounds nuw [8 x i8], ptr %i.bvz, i64 %i.bvy
  %i.bwb = load ptr, ptr %i.bwa, align 8, !tbaa !121, !noalias !910, !nonnull !68, !noundef !68
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !119, !noalias !910 ; 3 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 8
  %i.bwe = load i64, ptr %i.bwd, align 8, !tbaa !107, !noalias !910
  %i.bwf = icmp eq i64 %i.bvs, %i.bwe
  br i1 %i.bwf, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1432, label %.lr.ph.i.i.i.i.i1429

.lr.ph.i.i.i.i.i1429:                             ; preds = %bb.tt, %.lr.ph.i.i.i.i.i1429
  %.020.i.i.i.i.i1430 = phi ptr [ %i.bwg, %.lr.ph.i.i.i.i.i1429 ], [ %i.bwc, %bb.tt ]
  %i.bwg = load ptr, ptr %.020.i.i.i.i.i1430, align 8, !tbaa !119, !noalias !910, !nonnull !68, !noundef !68 ; 3 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwg, i64 8
  %i.bwi = load i64, ptr %i.bwh, align 8, !tbaa !107, !noalias !910 ; 2 uses
  %i.bwj = urem i64 %i.bwi, %i.bvx
  %.not19.i.i.i.i.i1431 = icmp eq i64 %i.bwj, %i.bvy
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1431)
  %i.bwk = icmp eq i64 %i.bvs, %i.bwi
  br i1 %i.bwk, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1432, label %.lr.ph.i.i.i.i.i1429, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1432: ; preds = %.lr.ph.i.i.i.i.i1429, %.preheader2620, %bb.tt
  %.sroa.06.1.i.i.i1433 = phi ptr [ %.sroa.06.0.i.i.i1435, %.preheader2620 ], [ %i.bwc, %bb.tt ], [ %i.bwg, %.lr.ph.i.i.i.i.i1429 ]
  %i.bwl = load ptr, ptr %0, align 8, !tbaa !452, !noalias !910, !nonnull !68, !align !453
  %i.bwm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1433, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull align 8 dereferenceable(8) %i.bwl, ptr noundef nonnull align 8 dereferenceable(16) %i.bwm)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1437 unwind label %bb.tx

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1437: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1432
  %i.bwn = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %121, ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull align 8 dereferenceable(8) %i.bwn)
          to label %bb.tu unwind label %bb.ty

bb.tu:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1437
  %i.bwo = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object10asFunctionERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Function") align 8 %120, ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %i.bwo)
          to label %bb.tv unwind label %bb.tz

bb.tv:                                            ; preds = %bb.tu
  %i.bwp = load ptr, ptr %121, align 8, !tbaa !96 ; 3 uses
  %.not.i1438 = icmp eq ptr %i.bwp, null
  br i1 %.not.i1438, label %_ZN8facebook3jsi7PointerD2Ev.exit1439, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.bwq = load ptr, ptr %i.bwp, align 8, !tbaa !94
  %i.bwr = load ptr, ptr %i.bwq, align 8
  call void %i.bwr(ptr noundef nonnull align 8 dereferenceable(8) %i.bwp) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1439

_ZN8facebook3jsi7PointerD2Ev.exit1439:            ; preds = %bb.tv, %bb.tw
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  %i.bws = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.bwt = load ptr, ptr %i.bws, align 8, !tbaa !879 ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.bwv = load ptr, ptr %i.bwu, align 8, !tbaa !879 ; 2 uses
  %.not18642544 = icmp eq ptr %i.bwt, %i.bwv
  br i1 %.not18642544, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1458
  %.pre3061 = load ptr, ptr %123, align 8, !tbaa !880
  %.pre3062 = load ptr, ptr %i.as, align 8, !tbaa !895
  %i.bww = ptrtoint ptr %.pre3062 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8facebook3jsi7PointerD2Ev.exit1439
  %i.bwx = phi i64 [ %i.bww, %._crit_edge.loopexit ], [ 0, %_ZN8facebook3jsi7PointerD2Ev.exit1439 ]
  %i.bwy = phi ptr [ %.pre3061, %._crit_edge.loopexit ], [ null, %_ZN8facebook3jsi7PointerD2Ev.exit1439 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #35
  %i.bwz = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bxa = ptrtoint ptr %i.bwy to i64
  %i.bxb = sub i64 %i.bwx, %i.bxa
  %i.bxc = ashr exact i64 %i.bxb, 4
  %i.bxd = load ptr, ptr %i.bwz, align 8, !tbaa !94, !noalias !913
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxd, i64 616
  %i.bxf = load ptr, ptr %i.bxe, align 8, !noalias !913
  invoke void %i.bxf(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %125, ptr noundef nonnull align 8 dereferenceable(8) %i.bwz, ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %i.bwy, i64 noundef %i.bxc)
          to label %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit unwind label %bb.up, !inline_history !916

bb.tx:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1432
  %i.bxg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ub

bb.ty:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1437
  %i.bxh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1442

bb.tz:                                            ; preds = %bb.tu
  %i.bxi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bxj = load ptr, ptr %121, align 8, !tbaa !96 ; 3 uses
  %.not.i1441 = icmp eq ptr %i.bxj, null
  br i1 %.not.i1441, label %_ZN8facebook3jsi7PointerD2Ev.exit1442, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.bxk = load ptr, ptr %i.bxj, align 8, !tbaa !94
  %i.bxl = load ptr, ptr %i.bxk, align 8
  call void %i.bxl(ptr noundef nonnull align 8 dereferenceable(8) %i.bxj) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1442

_ZN8facebook3jsi7PointerD2Ev.exit1442:            ; preds = %bb.ua, %bb.tz, %bb.ty
  %.pn503 = phi { ptr, i32 } [ %i.bxh, %bb.ty ], [ %i.bxi, %bb.tz ], [ %i.bxi, %bb.ua ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #35
  br label %bb.ub

bb.ub:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1442, %bb.tx
  %.pn503.pn = phi { ptr, i32 } [ %.pn503, %_ZN8facebook3jsi7PointerD2Ev.exit1442 ], [ %i.bxg, %bb.tx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1471

.lr.ph:                                           ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1439, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1458
  %.sroa.01792.02545 = phi ptr [ %i.byl, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1458 ], [ %i.bwt, %_ZN8facebook3jsi7PointerD2Ev.exit1439 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #35
  %.sroa.055.0.copyload = load i32, ptr %.sroa.01792.02545, align 8, !tbaa !498 ; 2 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01792.02545, i64 8
  %.sroa.257.0.copyload = load i64, ptr %.sroa.257.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  switch i32 %.sroa.055.0.copyload, label %bb.ug [
    i32 0, label %bb.uc
    i32 1, label %bb.ud
    i32 3, label %bb.ue
    i32 2, label %bb.uf
  ]

bb.uc:                                            ; preds = %.lr.ph
  store i32 0, ptr %124, align 8, !tbaa !69, !alias.scope !920
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454

bb.ud:                                            ; preds = %.lr.ph
  store i32 1, ptr %124, align 8, !tbaa !69, !alias.scope !923
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454

bb.ue:                                            ; preds = %.lr.ph
  store i32 3, ptr %124, align 8, !tbaa !69, !alias.scope !917
  store i64 %.sroa.257.0.copyload, ptr %i.ar, align 8, !tbaa !74, !alias.scope !917
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454

bb.uf:                                            ; preds = %.lr.ph
  %i.bxm = trunc i64 %.sroa.257.0.copyload to i8
  %165 = and i8 %i.bxm, 1
  store i32 2, ptr %124, align 8, !tbaa !69, !alias.scope !917
  store i8 %165, ptr %i.ar, align 8, !tbaa !74, !alias.scope !917
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454

bb.ug:                                            ; preds = %.lr.ph
  %.off.i.i1443 = add i32 %.sroa.055.0.copyload, -4
  %switch.i.i1444 = icmp ult i32 %.off.i.i1443, 5
  call void @llvm.assume(i1 %switch.i.i1444)
  %i.bxn = load i64, ptr %i.t, align 8, !tbaa !486, !noalias !926
  %.not.not.i.i.i.i1445 = icmp eq i64 %i.bxn, 0
  br i1 %.not.not.i.i.i.i1445, label %.preheader2551, label %bb.uh

.preheader2551:                                   ; preds = %bb.ug, %.preheader2551
  %.sroa.06.0.in.i.i.i.i1451 = phi ptr [ %.sroa.06.0.i.i.i.i1452, %.preheader2551 ], [ %i.v, %bb.ug ]
  %.sroa.06.0.i.i.i.i1452 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1451, align 8, !tbaa !119, !noalias !926, !nonnull !68, !noundef !68 ; 3 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1452, i64 8
  %i.bxp = load i64, ptr %i.bxo, align 8, !tbaa !107, !noalias !926
  %i.bxq = icmp eq i64 %.sroa.257.0.copyload, %i.bxp
  br i1 %i.bxq, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1449, label %.preheader2551, !llvm.loop !515

bb.uh:                                            ; preds = %bb.ug
  %i.bxr = load i64, ptr %i.u, align 8, !tbaa !88, !noalias !926 ; 2 uses
  %i.bxs = urem i64 %.sroa.257.0.copyload, %i.bxr ; 2 uses
  %i.bxt = load ptr, ptr %i.r, align 8, !tbaa !87, !noalias !926
  %i.bxu = getelementptr inbounds nuw [8 x i8], ptr %i.bxt, i64 %i.bxs
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !121, !noalias !926, !nonnull !68, !noundef !68
  %i.bxw = load ptr, ptr %i.bxv, align 8, !tbaa !119, !noalias !926 ; 3 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 8
  %i.bxy = load i64, ptr %i.bxx, align 8, !tbaa !107, !noalias !926
  %i.bxz = icmp eq i64 %.sroa.257.0.copyload, %i.bxy
  br i1 %i.bxz, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1449, label %.lr.ph.i.i.i.i.i.i1446

.lr.ph.i.i.i.i.i.i1446:                           ; preds = %bb.uh, %.lr.ph.i.i.i.i.i.i1446
  %.020.i.i.i.i.i.i1447 = phi ptr [ %i.bya, %.lr.ph.i.i.i.i.i.i1446 ], [ %i.bxw, %bb.uh ]
  %i.bya = load ptr, ptr %.020.i.i.i.i.i.i1447, align 8, !tbaa !119, !noalias !926, !nonnull !68, !noundef !68 ; 3 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 8
  %i.byc = load i64, ptr %i.byb, align 8, !tbaa !107, !noalias !926 ; 2 uses
  %i.byd = urem i64 %i.byc, %i.bxr
  %.not19.i.i.i.i.i.i1448 = icmp eq i64 %i.byd, %i.bxs
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1448)
  %i.bye = icmp eq i64 %.sroa.257.0.copyload, %i.byc
  br i1 %i.bye, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1449, label %.lr.ph.i.i.i.i.i.i1446, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1449: ; preds = %.lr.ph.i.i.i.i.i.i1446, %.preheader2551, %bb.uh
  %.sroa.06.1.i.i.i.i1450 = phi ptr [ %.sroa.06.0.i.i.i.i1452, %.preheader2551 ], [ %i.bxw, %bb.uh ], [ %i.bya, %.lr.ph.i.i.i.i.i.i1446 ]
  %i.byf = load ptr, ptr %0, align 8, !tbaa !452, !noalias !926, !nonnull !68, !align !453
  %i.byg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1450, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(8) %i.byf, ptr noundef nonnull align 8 dereferenceable(16) %i.byg)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454 unwind label %bb.uk

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454: ; preds = %bb.uf, %bb.ue, %bb.ud, %bb.uc, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1449
  %i.byh = load ptr, ptr %i.as, align 8, !tbaa !895 ; 3 uses
  %i.byi = load ptr, ptr %i.at, align 8, !tbaa !896
  %.not.i1455 = icmp eq ptr %i.byh, %i.byi
  br i1 %.not.i1455, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.byh, ptr noundef nonnull align 8 dereferenceable(16) %124) #35
  %i.byj = load ptr, ptr %i.as, align 8, !tbaa !895
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byj, i64 16
  store ptr %i.byk, ptr %i.as, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1458

bb.uj:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1454
  invoke void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %123, ptr %i.byh, ptr noundef nonnull align 8 dereferenceable(16) %124)
          to label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1458 unwind label %bb.ul

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1458: ; preds = %bb.uj, %bb.ui
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %124) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #35
  %i.byl = getelementptr inbounds nuw i8, ptr %.sroa.01792.02545, i64 16 ; 2 uses
  %.not1864 = icmp eq ptr %i.byl, %i.bwv
  br i1 %.not1864, label %._crit_edge.loopexit, label %.lr.ph

bb.uk:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1449
  %i.bym = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.um

bb.ul:                                            ; preds = %bb.uj
  %i.byn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %124) #35
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.uk
  %.pn506 = phi { ptr, i32 } [ %i.byn, %bb.ul ], [ %i.bym, %bb.uk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #35
  br label %bb.uq

_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit: ; preds = %._crit_edge
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %125) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %125) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #35
  %i.byo = load ptr, ptr %123, align 8, !tbaa !880 ; 3 uses
  %i.byp = load ptr, ptr %i.as, align 8, !tbaa !895 ; 2 uses
  %.not4.i.i.i1459 = icmp eq ptr %i.byo, %i.byp
  br i1 %.not4.i.i.i1459, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1465, label %.lr.ph.i.i.i1460

.lr.ph.i.i.i1460:                                 ; preds = %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit, %.lr.ph.i.i.i1460
  %.05.i.i.i1461 = phi ptr [ %i.byq, %.lr.ph.i.i.i1460 ], [ %i.byo, %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit ] ; 2 uses
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i1461) #35
  %i.byq = getelementptr inbounds nuw i8, ptr %.05.i.i.i1461, i64 16 ; 2 uses
  %.not.i.i.i1462 = icmp eq ptr %i.byq, %i.byp
  br i1 %.not.i.i.i1462, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1463, label %.lr.ph.i.i.i1460, !llvm.loop !909

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1463: ; preds = %.lr.ph.i.i.i1460
  %.pr.i1464 = load ptr, ptr %123, align 8, !tbaa !880
  br label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1465

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1465: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1463, %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit
  %i.byr = phi ptr [ %.pr.i1464, %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1463 ], [ %i.byo, %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit ] ; 3 uses
  %.not.i.i1.i1466 = icmp eq ptr %i.byr, null
  br i1 %.not.i.i1.i1466, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1467, label %bb.un

bb.un:                                            ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1465
  %i.bys = load ptr, ptr %i.at, align 8, !tbaa !896
  %i.byt = ptrtoint ptr %i.bys to i64
  %i.byu = ptrtoint ptr %i.byr to i64
  %i.byv = sub i64 %i.byt, %i.byu
  call void @_ZdlPvm(ptr noundef nonnull %i.byr, i64 noundef %i.byv) #36
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1467

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1467: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1465, %bb.un
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #35
  %i.byw = load ptr, ptr %120, align 8, !tbaa !96 ; 3 uses
  %.not.i1468 = icmp eq ptr %i.byw, null
  br i1 %.not.i1468, label %_ZN8facebook3jsi7PointerD2Ev.exit1469, label %bb.uo

bb.uo:                                            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1467
  %i.byx = load ptr, ptr %i.byw, align 8, !tbaa !94
  %i.byy = load ptr, ptr %i.byx, align 8
  call void %i.byy(ptr noundef nonnull align 8 dereferenceable(8) %i.byw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1469

_ZN8facebook3jsi7PointerD2Ev.exit1469:            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1467, %bb.uo
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #35
  br label %.critedge710

bb.up:                                            ; preds = %._crit_edge
  %i.byz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #35
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.um
  %.pn506.pn = phi { ptr, i32 } [ %.pn506, %bb.um ], [ %i.byz, %bb.up ] ; 2 uses
  call void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %123) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #35
  %i.bza = load ptr, ptr %120, align 8, !tbaa !96 ; 3 uses
  %.not.i1470 = icmp eq ptr %i.bza, null
  br i1 %.not.i1470, label %_ZN8facebook3jsi7PointerD2Ev.exit1471, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.bzb = load ptr, ptr %i.bza, align 8, !tbaa !94
  %i.bzc = load ptr, ptr %i.bzb, align 8
  call void %i.bzc(ptr noundef nonnull align 8 dereferenceable(8) %i.bza) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1471

_ZN8facebook3jsi7PointerD2Ev.exit1471:            ; preds = %bb.ur, %bb.uq, %bb.ub
  %.pn506.pn.pn = phi { ptr, i32 } [ %.pn503.pn, %bb.ub ], [ %.pn506.pn, %bb.uq ], [ %.pn506.pn, %bb.ur ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #35
  br label %bb.zn

bb.us:                                            ; preds = %bb.s
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %.sroa.0.0.copyload = load i32, ptr %i.bzd, align 8, !tbaa !498 ; 2 uses
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %.sroa.251.0.copyload = load i64, ptr %.sroa.251.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 %.sroa.0.0.copyload, ptr %1, align 8
  store i64 %.sroa.251.0.copyload, ptr %i.aq, align 8
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc1474 unwind label %bb.uu

.noexc1474:                                       ; preds = %bb.us
  %.off.i.i1472 = add i32 %.sroa.0.0.copyload, -4
  %switch.i.i1473 = icmp ult i32 %.off.i.i1472, 5
  br i1 %switch.i.i1473, label %bb.ut, label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1476

bb.ut:                                            ; preds = %.noexc1474
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %.sroa.251.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.cn)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1476 unwind label %bb.uu

_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1476: ; preds = %bb.ut, %.noexc1474
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.critedge710

bb.uu:                                            ; preds = %bb.ut, %bb.us
  %i.bze = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zn

bb.uv:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #35
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
end_hunk_6
begin_hunk_7_@_ZN8facebook6hermes7tracing16TraceInterpreter11checkMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bw, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !92 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !92
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !144
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = load <2 x i64>, ptr %i.ci, align 8, !tbaa !74
  store <2 x i64> %i.cj, ptr %i.ch, align 8, !tbaa !74
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ck = load i64, ptr %i.bu, align 8, !tbaa !74
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !144
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !tbaa !74
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !tbaa !74
  %.not.i7 = icmp eq ptr %i.bt, null
  br i1 %.not.i7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bt, ptr %5, align 8, !tbaa !144
  store i64 %i.ck, ptr %i.bx, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bx, ptr %5, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %i.co = phi ptr [ %i.bt, %bb.r ], [ %i.bx, %bb.s ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !92
  store i8 0, ptr %i.co, align 1, !tbaa !74
  %i.cq = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !74
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  store i8 1, ptr %i.a, align 8, !tbaa !93
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #35 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !91
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !144  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !144
  %i.o = load i64, ptr %i.i, align 8, !tbaa !74
  store i64 %i.o, ptr %i.g, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !92
  store ptr %i.i, ptr %i.f, align 8, !tbaa !144
  store i64 0, ptr %i.q, align 8, !tbaa !92
  store i8 0, ptr %i.i, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !92
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !144
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !91
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !144
  %i.q = load i64, ptr %i.k, align 8, !tbaa !74
  store i64 %i.q, ptr %i.i, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !92
  store ptr %i.k, ptr %i.h, align 8, !tbaa !144
  store i64 0, ptr %i.s, align 8, !tbaa !92
  store i8 0, ptr %i.k, align 8, !tbaa !74
  ret void
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %1, i32 %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1006
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !69, !alias.scope !1009
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !74
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.b = trunc i64 %3 to i8
  %4 = and i8 %i.b, 1
  store i32 2, ptr %0, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %4, ptr %i.c, align 8, !tbaa !74
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %.off.i = add i32 %2, -4
  %switch.i = icmp ult i32 %.off.i, 5
  tail call void @llvm.assume(i1 %switch.i)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.e = load i64, ptr %i.d, align 8, !tbaa !486, !noalias !1012
  %.not.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 496
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.f, %bb.g ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !119, !noalias !1012, !nonnull !68, !noundef !68 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !107, !noalias !1012
  %i.i = icmp eq i64 %3, %i.h
  br i1 %i.i, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit, label %bb.h, !llvm.loop !515

bb.i:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.l = load i64, ptr %i.k, align 8, !tbaa !88, !noalias !1012 ; 2 uses
  %i.m = urem i64 %3, %i.l                        ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !87, !noalias !1012
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !121, !noalias !1012, !nonnull !68, !noundef !68
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !119, !noalias !1012 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107, !noalias !1012
  %i.t = icmp eq i64 %3, %i.s
  br i1 %i.t, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.i ]
  %i.u = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !119, !noalias !1012, !nonnull !68, !noundef !68 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !107, !noalias !1012 ; 2 uses
  %i.x = urem i64 %i.w, %i.l
  %.not19.i.i.i.i.i = icmp eq i64 %i.x, %i.m
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.y = icmp eq i64 %3, %i.w
  br i1 %i.y, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.h, %bb.i
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.h ], [ %i.q, %bb.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !452, !noalias !1012, !nonnull !68, !align !453
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  tail call void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.b = load i64, ptr %i.a, align 8, !tbaa !486
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 496
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !119, !nonnull !68, !noundef !68 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp eq i64 %2, %i.e
  br i1 %i.f, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.c, !llvm.loop !515

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.j = urem i64 %2, %i.i                        ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121, !nonnull !68, !noundef !68
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !107
  %i.q = icmp eq i64 %2, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.n, %bb.d ]
  %i.r = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !119, !nonnull !68, !noundef !68 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = urem i64 %i.t, %i.i
  %.not19.i.i.i.i = icmp eq i64 %i.u, %i.j
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.v = icmp eq i64 %2, %i.t
  br i1 %i.v, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !452, !nonnull !68, !align !453
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  tail call void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
  ret void
}

declare void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::PropNameID") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.b = load i64, ptr %i.a, align 8, !tbaa !628
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 552
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !119, !nonnull !68, !noundef !68 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp eq i64 %2, %i.e
  br i1 %i.f, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.c, !llvm.loop !629

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.i = load i64, ptr %i.h, align 8, !tbaa !90   ; 2 uses
  %i.j = urem i64 %2, %i.i                        ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121, !nonnull !68, !noundef !68
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !107
  %i.q = icmp eq i64 %2, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.n, %bb.d ]
  %i.r = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !119, !nonnull !68, !noundef !68 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = urem i64 %i.t, %i.i
  %.not19.i.i.i.i = icmp eq i64 %i.u, %i.j
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.v = icmp eq i64 %2, %i.t
  br i1 %i.v, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.y), !inline_history !1015
  store ptr %i.ac, ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter15eraseRefsBeforeEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !483  ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !140
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.y, %bb.c ]
  %i.o = phi i64 [ %i.d, %.lr.ph ], [ %i.w, %bb.c ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !484
  %i.r = icmp ult i64 %i.q, %1
  br i1 %i.r, label %bb.c, label %.critedge
end_hunk_7
begin_hunk_8_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNSA_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0E9_M_invokeERKSt9_Any_dataS4_S6_OS7_Om"(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree nonnull readonly align 8 captures(none) %5) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  %7 = alloca %"class.facebook::jsi::Value", align 8 ; 7 uses
  %8 = alloca %"class.facebook::jsi::Value", align 8 ; 8 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !1085  ; 13 uses
  %.val5 = load ptr, ptr %4, align 8, !tbaa !1087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 640 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !1097 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !482, !noalias !1097, !nonnull !68, !align !453 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103, !noalias !1097
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !106, !noalias !1097 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i.i.i = icmp ult i64 %i.b, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1098
  br label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110, !noalias !1097 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.o, align 8, !tbaa !498, !noalias !1097
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.211.0.copyload.i.i.i = load i64, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !74, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1097
  %i.p = load ptr, ptr %.val, align 8, !tbaa !452, !noalias !1097, !nonnull !68, !align !453
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !1097, !inline_history !1101

.noexc.i.i.i:                                     ; preds = %bb.c
  %.off.i.i.i.i.i.i = add i32 %.sroa.09.0.copyload.i.i.i, -4
  %switch.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i, 5
  br i1 %switch.i.i.i.i.i.i, label %bb.d, label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %.val, i64 noundef %.sroa.211.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i unwind label %bb.e, !noalias !1097, !inline_history !1101

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35, !noalias !1097, !inline_history !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1097
  br label %.body.i.i.i

_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i: ; preds = %bb.d, %.noexc.i.i.i
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35, !noalias !1097, !inline_history !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1097
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1102, !noalias !1097
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1103, !noalias !1097 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not5.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.j, %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv(ptr noundef nonnull align 8 dereferenceable(648) %.val)
          to label %bb.n unwind label %bb.f, !noalias !1097, !inline_history !1101

bb.f:                                             ; preds = %._crit_edge.i.i.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i

bb.g:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %i.x = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.ad, %bb.j ]
  %.0274.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.0274.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.y, align 8, !tbaa !498, !noalias !1097 ; 2 uses
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.25.0.copyload.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !tbaa !74, !noalias !1097 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35, !noalias !1097
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.val5, i64 %.0274.i.i.i
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.h unwind label %bb.k, !noalias !1097, !inline_history !1101

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1097
  store i32 %.sroa.03.0.copyload.i.i.i, ptr %6, align 8, !noalias !1097
  store i64 %.sroa.25.0.copyload.i.i.i, ptr %i.v, align 8, !noalias !1097
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %.val, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc30.i.i.i unwind label %bb.l, !noalias !1097, !inline_history !1101

.noexc30.i.i.i:                                   ; preds = %bb.h
  %.off.i.i.i.i.i = add i32 %.sroa.03.0.copyload.i.i.i, -4
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 5
  br i1 %switch.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc30.i.i.i
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %.val, i64 noundef %.sroa.25.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.aa)
          to label %bb.j unwind label %bb.l, !noalias !1097, !inline_history !1101

bb.j:                                             ; preds = %bb.i, %.noexc30.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1097
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35, !noalias !1097, !inline_history !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !1097
  %i.ab = add nuw i64 %.0274.i.i.i, 1             ; 2 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !1102, !noalias !1097
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !1103, !noalias !1097 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 4
  %i.ai = icmp ult i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge.i.i.i, !llvm.loop !1104

bb.k:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35, !noalias !1097, !inline_history !1101
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !1097
  br label %.body.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !482, !noalias !1097, !nonnull !68, !align !453
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !1097
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !106, !noalias !1097
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !110, !noalias !1097 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.as, align 8, !tbaa !498, !noalias !1097 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.21.0.copyload.i.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !74, !noalias !1097 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  switch i32 %.sroa.0.0.copyload.i.i.i, label %bb.s [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 3, label %bb.q
    i32 2, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1108
  br label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.p:                                             ; preds = %bb.n
  store i32 1, ptr %0, align 8, !tbaa !69, !alias.scope !1111
  br label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.q:                                             ; preds = %bb.n
  store i32 3, ptr %0, align 8, !tbaa !69, !alias.scope !1114
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.21.0.copyload.i.i.i, ptr %i.at, align 8, !tbaa !74, !alias.scope !1114
  br label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.r:                                             ; preds = %bb.n
  %i.au = trunc i64 %.sroa.21.0.copyload.i.i.i to i8
  %9 = and i8 %i.au, 1
  store i32 2, ptr %0, align 8, !tbaa !69, !alias.scope !1114
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %9, ptr %i.av, align 8, !tbaa !74, !alias.scope !1114
  br label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.s:                                             ; preds = %bb.n
  %.off.i.i32.i.i.i = add i32 %.sroa.0.0.copyload.i.i.i, -4
  %switch.i.i33.i.i.i = icmp ult i32 %.off.i.i32.i.i.i, 5
  call void @llvm.assume(i1 %switch.i.i33.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 504
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !486, !noalias !1115
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 496
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.sroa.06.0.in.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.t ], [ %.sroa.06.0.i.i.i.i.i.i.i, %bb.u ]
  %.sroa.06.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i.i, align 8, !tbaa !119, !noalias !1115, !nonnull !68, !noundef !68 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !107, !noalias !1115
  %i.bb = icmp eq i64 %.sroa.21.0.copyload.i.i.i, %i.ba
  br i1 %i.bb, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i.i.i.i, label %bb.u, !llvm.loop !515

bb.v:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 480
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 488
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88, !noalias !1115 ; 2 uses
  %i.bf = urem i64 %.sroa.21.0.copyload.i.i.i, %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !87, !noalias !1115
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !121, !noalias !1115, !nonnull !68, !noundef !68
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !119, !noalias !1115 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107, !noalias !1115
  %i.bm = icmp eq i64 %.sroa.21.0.copyload.i.i.i, %i.bl
  br i1 %i.bm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.020.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.v ]
  %i.bn = load ptr, ptr %.020.i.i.i.i.i.i.i.i.i, align 8, !tbaa !119, !noalias !1115, !nonnull !68, !noundef !68 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !107, !noalias !1115 ; 2 uses
  %i.bq = urem i64 %i.bp, %i.be
  %.not19.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, %i.bf
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i.i.i.i)
  %i.br = icmp eq i64 %.sroa.21.0.copyload.i.i.i, %i.bp
  br i1 %i.br, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.u, %bb.v
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i.i, %bb.u ], [ %i.bj, %bb.v ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bs = load ptr, ptr %.val, align 8, !tbaa !452, !noalias !1115, !nonnull !68, !align !453
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit" unwind label %bb.w, !inline_history !1101

bb.w:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.w, %bb.m, %bb.f, %bb.e
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.m ], [ %i.bu, %bb.w ], [ %i.w, %bb.f ], [ %i.q, %bb.e ] ; 3 uses
  %.125.i.i.i = extractvalue { ptr, i32 } %.pn.pn.i.i.i, 1
  %i.bv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.bw = icmp eq i32 %.125.i.i.i, %i.bv
  br i1 %i.bw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.body.i.i.i
  %.1.i.i.i = extractvalue { ptr, i32 } %.pn.pn.i.i.i, 0
  %i.bx = call ptr @__cxa_begin_catch(ptr %.1.i.i.i) #35, !inline_history !1101
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %.val, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 0, i8 0) #38
          to label %bb.y unwind label %bb.z, !inline_history !1101

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab, !inline_history !1101

bb.aa:                                            ; preds = %bb.z, %.body.i.i.i
  %.merged.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %.body.i.i.i ], [ %i.by, %bb.z ]
  resume { ptr, i32 } %.merged.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #34, !inline_history !1101
  unreachable

"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.b, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNSA_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #29 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS3_10SynthTrace24CreateHostFunctionRecordERKNS1_3jsi10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS1_10SynthTrace24CreateHostFunctionRecordERKNS_3jsi10PropNameIDEE3$_0", ptr %0, align 8, !tbaa !1118
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS3_10SynthTrace24CreateHostFunctionRecordERKNS1_3jsi10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !213
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS3_10SynthTrace24CreateHostFunctionRecordERKNS1_3jsi10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !461
  store i64 %.val.i, ptr %0, align 8, !tbaa !461
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS3_10SynthTrace24CreateHostFunctionRecordERKNS1_3jsi10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS3_10SynthTrace24CreateHostFunctionRecordERKNS1_3jsi10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #35, !inline_history !1120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1036 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #35
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi10HostObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN8facebook3jsi10HostObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObject3getERNS_3jsi7RuntimeERKNS4_10PropNameIDE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::jsi::PropNameID", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !482, !nonnull !68, !align !453 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %.not = icmp ult i64 %i.d, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1124
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !96
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t)
          to label %bb.d unwind label %bb.q, !inline_history !1015

bb.d:                                             ; preds = %bb.c
  store ptr %i.x, ptr %4, align 8, !tbaa !96
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !73
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %i.b, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %4, align 8, !tbaa !96    ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv(ptr noundef nonnull align 8 dereferenceable(648) %i.ae)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !482, !nonnull !68, !align !453
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 640
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !73
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !110 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.0.0.copyload = load i32, ptr %i.ap, align 8, !tbaa !498 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  switch i32 %.sroa.0.0.copyload, label %bb.l [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 3, label %bb.j
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1132
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.i:                                             ; preds = %bb.g
  store i32 1, ptr %0, align 8, !tbaa !69, !alias.scope !1135
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.j:                                             ; preds = %bb.g
  store i32 3, ptr %0, align 8, !tbaa !69, !alias.scope !1129
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.21.0.copyload, ptr %i.aq, align 8, !tbaa !74, !alias.scope !1129
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.k:                                             ; preds = %bb.g
  %i.ar = trunc i64 %.sroa.21.0.copyload to i8
  %5 = and i8 %i.ar, 1
  store i32 2, ptr %0, align 8, !tbaa !69, !alias.scope !1129
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %5, ptr %i.as, align 8, !tbaa !74, !alias.scope !1129
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.l:                                             ; preds = %bb.g
  %.off.i.i = add i32 %.sroa.0.0.copyload, -4
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  call void @llvm.assume(i1 %switch.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  %i.au = load i64, ptr %i.at, align 8, !tbaa !486, !noalias !1138
  %.not.not.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.not.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 496
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.av, %bb.m ], [ %.sroa.06.0.i.i.i.i, %bb.n ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !119, !noalias !1138, !nonnull !68, !noundef !68 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !107, !noalias !1138
  %i.ay = icmp eq i64 %.sroa.21.0.copyload, %i.ax
  br i1 %i.ay, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %bb.n, !llvm.loop !515

bb.o:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 488
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !88, !noalias !1138 ; 2 uses
  %i.bc = urem i64 %.sroa.21.0.copyload, %i.bb    ; 2 uses
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !87, !noalias !1138
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !121, !noalias !1138, !nonnull !68, !noundef !68
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119, !noalias !1138 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !107, !noalias !1138
  %i.bj = icmp eq i64 %.sroa.21.0.copyload, %i.bi
  br i1 %i.bj, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %bb.o ]
  %i.bk = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !119, !noalias !1138, !nonnull !68, !noundef !68 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !107, !noalias !1138 ; 2 uses
  %i.bn = urem i64 %i.bm, %i.bb
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bn, %i.bc
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.bo = icmp eq i64 %.sroa.21.0.copyload, %i.bm
  br i1 %i.bo, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.n, %bb.o
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.n ], [ %i.bg, %bb.o ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !452, !noalias !1138, !nonnull !68, !align !453
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit unwind label %bb.t

bb.p:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.u

bb.q:                                             ; preds = %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit17

bb.r:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !96    ; 3 uses
  %.not.i16 = icmp eq ptr %i.bu, null
  br i1 %.not.i16, label %_ZN8facebook3jsi7PointerD2Ev.exit17, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !94
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit17

_ZN8facebook3jsi7PointerD2Ev.exit17:              ; preds = %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %i.bt, %bb.r ], [ %i.bt, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.u

bb.t:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN8facebook3jsi7PointerD2Ev.exit17, %bb.p
  %.pn14 = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %i.br, %bb.p ], [ %.pn, %_ZN8facebook3jsi7PointerD2Ev.exit17 ] ; 3 uses
  %.111 = extractvalue { ptr, i32 } %.pn14, 1
  %i.by = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.bz = icmp eq i32 %.111, %i.by
  br i1 %i.bz, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.1 = extractvalue { ptr, i32 } %.pn14, 0
  %i.ca = call ptr @__cxa_begin_catch(ptr %.1) #35
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 0, i8 0) #38
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, %bb.b
  ret void

bb.y:                                             ; preds = %bb.x, %bb.u
  %.merged = phi { ptr, i32 } [ %.pn14, %bb.u ], [ %i.cc, %bb.x ]
  resume { ptr, i32 } %.merged

bb.z:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObject3setERNS_3jsi7RuntimeERKNS4_10PropNameIDERKNS4_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  %5 = alloca %"class.facebook::jsi::PropNameID", align 8 ; 7 uses
  %6 = alloca %"class.facebook::jsi::Value", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !482, !nonnull !68, !align !453 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %.not = icmp ult i64 %i.d, %i.n
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !96
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t)
          to label %bb.c unwind label %bb.j, !inline_history !1015

bb.c:                                             ; preds = %bb.b
  store ptr %i.x, ptr %5, align 8, !tbaa !96
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !73
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %i.b, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.aa)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %5, align 8, !tbaa !96    ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.0.0.copyload = load i32, ptr %i.af, align 8, !tbaa !498 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
end_hunk_8
