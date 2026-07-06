inline.NumInlined: 3334
inline.NumDeleted: 1601
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.kd, align 8, !tbaa !187
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 0, ptr %i.kh, align 4, !tbaa !189
  %i.ki = load ptr, ptr %i.kc, align 8, !tbaa !94
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #35, !inline_history !280
  %i.kl = load ptr, ptr %i.kc, align 8, !tbaa !94
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #35, !inline_history !280
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i729 = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i729, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kp = add nsw i32 %i.kg, -1
  store i32 %i.kp, ptr %i.kd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.kq = atomicrmw volatile add ptr %i.kd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i = phi i32 [ %i.kg, %bb.ba ], [ %i.kq, %bb.bb ]
  %i.kr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.kr, label %bb.bc, label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #35
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %.critedge710

bb.bd:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit728
  %i.ks = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.av
  %.pn676 = phi { ptr, i32 } [ %i.ks, %bb.bd ], [ %i.jw, %bb.av ]
  call void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.zm

bb.bf:                                            ; preds = %bb.r
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %.sroa.0229.0.copyload = load i32, ptr %i.kt, align 8, !tbaa !498 ; 2 uses
  %.sroa.2231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %.sroa.2231.0.copyload = load i64, ptr %.sroa.2231.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 %.sroa.0229.0.copyload, ptr %6, align 8
  store i64 %.sroa.2231.0.copyload, ptr %i.ch, align 8
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc730 unwind label %bb.bj

.noexc730:                                        ; preds = %bb.bf
  %.off.i.i = add i32 %.sroa.0229.0.copyload, -4
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %bb.bg, label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit

bb.bg:                                            ; preds = %.noexc730
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %.sroa.2231.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.cp)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit unwind label %bb.bj

_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit: ; preds = %bb.bg, %.noexc730
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit, %bb.r
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter11checkMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ku)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.kv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  %i.kw = call ptr @__dynamic_cast(ptr nonnull %i.kv, ptr nonnull @_ZTIN8facebook3jsi7RuntimeE, ptr nonnull @_ZTIN8facebook6hermes7tracing14TracingRuntimeE, i64 0) #35 ; 2 uses
  %.not668 = icmp eq ptr %i.kw, null
  br i1 %.not668, label %.critedge710, label %bb.bl

bb.bj:                                            ; preds = %bb.bg, %bb.bf
  %i.kx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zm

bb.bk:                                            ; preds = %bb.bh
  %i.ky = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zm

bb.bl:                                            ; preds = %bb.bi
  %i.kz = load ptr, ptr %i.fv, align 8, !tbaa !94
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef i32 %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.fv)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.not669 = icmp eq i32 %i.lc, 1
  br i1 %.not669, label %.critedge710, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN8facebook6hermes7tracing14TracingRuntime9addMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %i.kw, ptr noundef nonnull align 8 dereferenceable(32) %i.ku)
          to label %.critedge710 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.ld = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zm

bb.bp:                                            ; preds = %bb.r
  %i.le = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.lg = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !94
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 304
  %i.lj = load ptr, ptr %i.li, align 8
  invoke void %i.lj(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.lg)
          to label %bb.bq unwind label %bb.br, !inline_history !500

bb.bq:                                            ; preds = %bb.bp
  %i.lk = load ptr, ptr %5, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  store i32 7, ptr %14, align 8, !tbaa !69
  store ptr %i.lk, ptr %i.cg, align 8, !tbaa !96
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.cp)
          to label %_ZN8facebook3jsi7PointerD2Ev.exit unwind label %bb.bs

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.bq
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %.critedge710

bb.br:                                            ; preds = %bb.bp
  %i.ll = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit735

bb.bs:                                            ; preds = %bb.bq
  %i.lm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit735

_ZN8facebook3jsi7PointerD2Ev.exit735:             ; preds = %bb.bs, %bb.br
  %.pn665.pn = phi { ptr, i32 } [ %i.ll, %bb.br ], [ %i.lm, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %bb.zm

bb.bt:                                            ; preds = %bb.r
  %i.ln = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.lp = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %.sroa.0219.0.copyload = load i32, ptr %i.lq, align 8, !tbaa !498 ; 2 uses
  %.sroa.2221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.2221.0.copyload = load i64, ptr %.sroa.2221.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  switch i32 %.sroa.0219.0.copyload, label %bb.by [
    i32 0, label %bb.bu
    i32 1, label %bb.bv
    i32 3, label %bb.bw
    i32 2, label %bb.bx
  ]

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %17, align 8, !tbaa !69, !alias.scope !506
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.bv:                                            ; preds = %bb.bt
  store i32 1, ptr %17, align 8, !tbaa !69, !alias.scope !509
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.bw:                                            ; preds = %bb.bt
  store i32 3, ptr %17, align 8, !tbaa !69, !alias.scope !503
  store i64 %.sroa.2221.0.copyload, ptr %i.ce, align 8, !tbaa !74, !alias.scope !503
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.bx:                                            ; preds = %bb.bt
  %i.lr = trunc i64 %.sroa.2221.0.copyload to i8
  store i32 2, ptr %17, align 8, !tbaa !69, !alias.scope !503
  store i8 %i.lr, ptr %i.ce, align 8, !tbaa !74, !alias.scope !503
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit

bb.by:                                            ; preds = %bb.bt
  %.off.i.i736 = add i32 %.sroa.0219.0.copyload, -4
  %switch.i.i737 = icmp ult i32 %.off.i.i736, 5
  call void @llvm.assume(i1 %switch.i.i737)
  %i.ls = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !512
  %.not.not.i.i.i.i = icmp eq i64 %i.ls, 0
  br i1 %.not.not.i.i.i.i, label %.preheader2550, label %bb.bz

.preheader2550:                                   ; preds = %bb.by, %.preheader2550
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %.preheader2550 ], [ %i.x, %bb.by ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !119, !noalias !512, !nonnull !68, !noundef !68 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !107, !noalias !512
  %i.lv = icmp eq i64 %.sroa.2221.0.copyload, %i.lu
  br i1 %i.lv, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.preheader2550, !llvm.loop !515

bb.bz:                                            ; preds = %bb.by
  %i.lw = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !512 ; 2 uses
  %i.lx = urem i64 %.sroa.2221.0.copyload, %i.lw  ; 2 uses
  %i.ly = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !512
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lx
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !121, !noalias !512, !nonnull !68, !noundef !68
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !119, !noalias !512 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !107, !noalias !512
  %i.me = icmp eq i64 %.sroa.2221.0.copyload, %i.md
  br i1 %i.me, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bz, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i ], [ %i.mb, %bb.bz ]
  %i.mf = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !119, !noalias !512, !nonnull !68, !noundef !68 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !107, !noalias !512 ; 2 uses
  %i.mi = urem i64 %i.mh, %i.lw
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.mi, %i.lx
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.mj = icmp eq i64 %.sroa.2221.0.copyload, %i.mh
  br i1 %i.mj, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader2550, %bb.bz
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %.preheader2550 ], [ %i.mb, %bb.bz ], [ %i.mf, %.lr.ph.i.i.i.i.i.i ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %i.mk)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit unwind label %bb.cd

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit: ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i
  %i.ml = load ptr, ptr %i.lp, align 8, !tbaa !94, !noalias !516
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 336
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !516
  invoke void %i.mn(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ca unwind label %bb.ce, !inline_history !519

bb.ca:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit
  store i32 7, ptr %15, align 8, !tbaa !69
  %i.mo = load ptr, ptr %16, align 8, !tbaa !96
  store ptr %i.mo, ptr %i.cf, align 8, !tbaa !96
  store ptr null, ptr %16, align 8, !tbaa !96
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.lo, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef %i.cp)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  %i.mp = load ptr, ptr %16, align 8, !tbaa !96   ; 3 uses
  %.not.i740 = icmp eq ptr %i.mp, null
  br i1 %.not.i740, label %_ZN8facebook3jsi7PointerD2Ev.exit741, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !94
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %i.mp) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit741

_ZN8facebook3jsi7PointerD2Ev.exit741:             ; preds = %bb.cb, %bb.cc
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %.critedge710

bb.cd:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i
  %i.ms = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ch

bb.ce:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit
  %i.mt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit743

bb.cf:                                            ; preds = %bb.ca
  %i.mu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  %i.mv = load ptr, ptr %16, align 8, !tbaa !96   ; 3 uses
  %.not.i742 = icmp eq ptr %i.mv, null
  br i1 %.not.i742, label %_ZN8facebook3jsi7PointerD2Ev.exit743, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !94
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(8) %i.mv) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit743

_ZN8facebook3jsi7PointerD2Ev.exit743:             ; preds = %bb.cg, %bb.cf, %bb.ce
  %.pn661.pn = phi { ptr, i32 } [ %i.mt, %bb.ce ], [ %i.mu, %bb.cf ], [ %i.mu, %bb.cg ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #35
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit743, %bb.cd
  %.pn661.pn.pn = phi { ptr, i32 } [ %.pn661.pn, %_ZN8facebook3jsi7PointerD2Ev.exit743 ], [ %i.ms, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.zm

bb.ci:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  store i32 0, ptr %18, align 8, !tbaa !69
  %i.my = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !520
  switch i32 %i.mz, label %.critedge.thread [
    i32 0, label %bb.cj
    i32 1, label %bb.da
  ]

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  %i.na = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.fv, i64 32 ; 3 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !523
  %i.nd = load ptr, ptr %i.na, align 8, !tbaa !94, !noalias !524
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 216
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !524
  invoke void %i.nf(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::BigInt") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.na, i64 noundef %i.nc)
          to label %bb.ck unwind label %bb.ct, !inline_history !527

bb.ck:                                            ; preds = %bb.cj
  store i32 5, ptr %19, align 8, !tbaa !69
  %i.ng = load ptr, ptr %20, align 8, !tbaa !96
  store ptr %i.ng, ptr %i.cd, align 8, !tbaa !96
  store ptr null, ptr %20, align 8, !tbaa !96
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #35
  %i.nh = load ptr, ptr %20, align 8, !tbaa !96   ; 3 uses
  %.not.i745 = icmp eq ptr %i.nh, null
  br i1 %.not.i745, label %_ZN8facebook3jsi7PointerD2Ev.exit746, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !94
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %i.nh) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit746

_ZN8facebook3jsi7PointerD2Ev.exit746:             ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.nk = load i8, ptr %i.y, align 1, !tbaa !10, !range !67, !noundef !68
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.cm, label %.critedge.thread

bb.cm:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit746
  %i.nm = load i64, ptr %i.nb, align 8, !tbaa !523
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #35
  %i.nn = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNKR8facebook3jsi5Value8asBigIntERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::BigInt") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.nn)
          to label %bb.cn unwind label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  %i.no = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !94
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 248
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = invoke noundef i64 %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.co unwind label %bb.cv, !inline_history !528

bb.co:                                            ; preds = %bb.cn
  %.not1862 = icmp eq i64 %i.nm, %i.ns
  %i.nt = load ptr, ptr %21, align 8, !tbaa !96   ; 3 uses
  %.not.i748 = icmp eq ptr %i.nt, null
  br i1 %.not.i748, label %.critedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !94
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(8) %i.nt) #35, !inline_history !99
  br label %.critedge

.critedge:                                        ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br i1 %.not1862, label %.critedge.thread, label %bb.cq

bb.cq:                                            ; preds = %.critedge
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 10)
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  call void @_ZdlPvm(ptr noundef %.pre3063.a, i64 noundef %i.aaj) #36
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.aak = load ptr, ptr %47, align 8, !tbaa !96  ; 3 uses
  %.not.i904 = icmp eq ptr %i.aak, null
  br i1 %.not.i904, label %_ZN8facebook3jsi7PointerD2Ev.exit905, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !94
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.aak) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit905

_ZN8facebook3jsi7PointerD2Ev.exit905:             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #35
  br i1 %i.aae, label %bb.gb, label %.critedge685.thread

bb.gb:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit905
  %i.aan = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit907 unwind label %.loopexit.split-lp1922 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit907: ; preds = %bb.gb
  %i.aao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit909 unwind label %.loopexit.split-lp1922, !inline_history !72 ; 0 uses

_ZNSolsEPFRSoS_E.exit909:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit907
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit911 unwind label %.loopexit.split-lp1922 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit911: ; preds = %_ZNSolsEPFRSoS_E.exit909
  %i.aaq = load i64, ptr %i.n, align 8, !tbaa !73
  %i.aar = add i64 %i.aaq, -1
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.aar)
          to label %_ZNSolsEm.exit913 unwind label %.loopexit.split-lp1922

_ZNSolsEm.exit913:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit911
  %i.aat = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.aas)
          to label %_ZNSolsEPFRSoS_E.exit915 unwind label %.loopexit.split-lp1922, !inline_history !72 ; 0 uses

_ZNSolsEPFRSoS_E.exit915:                         ; preds = %_ZNSolsEm.exit913
  call void @abort() #34
  unreachable

bb.gc:                                            ; preds = %bb.fu
  %i.aau = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #35
  br label %bb.gi

bb.gd:                                            ; preds = %bb.fx
  %i.aav = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit919

bb.ge:                                            ; preds = %bb.fy
  %i.aaw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aax = load ptr, ptr %47, align 8, !tbaa !96  ; 3 uses
  %.not.i918 = icmp eq ptr %i.aax, null
  br i1 %.not.i918, label %_ZN8facebook3jsi7PointerD2Ev.exit919, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !94
  %i.aaz = load ptr, ptr %i.aay, align 8
  call void %i.aaz(ptr noundef nonnull align 8 dereferenceable(8) %i.aax) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit919

_ZN8facebook3jsi7PointerD2Ev.exit919:             ; preds = %bb.gf, %bb.ge, %bb.gd
  %.pn623 = phi { ptr, i32 } [ %i.aav, %bb.gd ], [ %i.aaw, %bb.ge ], [ %i.aaw, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #35
  br label %bb.gi

bb.gg:                                            ; preds = %bb.eh
  unreachable

.critedge685.thread:                              ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit900, %_ZN8facebook3jsi7PointerD2Ev.exit856, %_ZN8facebook3jsi7PointerD2Ev.exit816, %_ZN8facebook3jsi7PointerD2Ev.exit905, %.critedge689, %.critedge685
  %i.aba = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !586
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.abb, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef %i.cp)
          to label %bb.gh unwind label %.loopexit1921

bb.gh:                                            ; preds = %.critedge685.thread
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %.critedge710

bb.gi:                                            ; preds = %.loopexit1921, %.loopexit.split-lp1922, %_ZN8facebook3jsi7PointerD2Ev.exit919, %_ZN8facebook3jsi7PointerD2Ev.exit892, %_ZN8facebook3jsi7PointerD2Ev.exit848, %bb.gc, %_ZN8facebook3jsi7PointerD2Ev.exit897, %bb.fm, %_ZN8facebook3jsi7PointerD2Ev.exit853, %bb.et
  %.pn639 = phi { ptr, i32 } [ %i.yl, %bb.fm ], [ %.pn636.pn, %_ZN8facebook3jsi7PointerD2Ev.exit853 ], [ %.pn634, %_ZN8facebook3jsi7PointerD2Ev.exit848 ], [ %i.aau, %bb.gc ], [ %i.vl, %bb.et ], [ %.pn629.pn, %_ZN8facebook3jsi7PointerD2Ev.exit897 ], [ %.pn627, %_ZN8facebook3jsi7PointerD2Ev.exit892 ], [ %.pn623, %_ZN8facebook3jsi7PointerD2Ev.exit919 ], [ %lpad.loopexit1923, %.loopexit1921 ], [ %lpad.loopexit.split-lp1924, %.loopexit.split-lp1922 ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.zm

switch.lookup:                                    ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #35
  %i.abc = getelementptr inbounds nuw i8, ptr %i.fv, i64 88
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !587, !noalias !589 ; 3 uses
  %i.abe = load ptr, ptr %0, align 8, !tbaa !452, !noalias !589, !nonnull !68, !align !453 ; 2 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !94, !noalias !589
  %i.abg = zext nneg i32 %i.abd to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv, i64 %i.abg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.abh = zext nneg i32 %i.abd to i64
  %switch.gep4104 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv.51, i64 %i.abh
  %switch.load4105 = load i8, ptr %switch.gep4104, align 1
  %switch.ext4106 = zext i8 %switch.load4105 to i64
  %switch.idx.cast = zext i32 %i.abd to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast, 3
  %i.abi = getelementptr inbounds nuw i8, ptr %i.fv, i64 %switch.ext
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !213, !noalias !589
  %i.abk = getelementptr inbounds nuw i8, ptr %i.fv, i64 %switch.ext4106
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !107, !noalias !589
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abf, i64 %switch.idx.mult
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 152
  %i.abo = load ptr, ptr %i.abn, align 8, !noalias !589
  invoke void %i.abo(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::PropNameID") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8) %i.abe, ptr noundef %i.abj, i64 noundef %i.abl)
          to label %"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit" unwind label %bb.gl, !inline_history !592

"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit": ; preds = %switch.lookup
  %i.abp = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !593
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.abq, ptr noundef nonnull align 8 dereferenceable(8) %48, i64 noundef %i.cp)
          to label %bb.gj unwind label %bb.gm

bb.gj:                                            ; preds = %"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit"
  %i.abr = load ptr, ptr %48, align 8, !tbaa !96  ; 3 uses
  %.not.i921 = icmp eq ptr %i.abr, null
  br i1 %.not.i921, label %_ZN8facebook3jsi7PointerD2Ev.exit922, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !94
  %i.abt = load ptr, ptr %i.abs, align 8
  call void %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abr) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit922

_ZN8facebook3jsi7PointerD2Ev.exit922:             ; preds = %bb.gj, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  br label %.critedge710

bb.gl:                                            ; preds = %switch.lookup
  %i.abu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit924

bb.gm:                                            ; preds = %"_ZZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEvENK3$_0clEv.exit"
  %i.abv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.abw = load ptr, ptr %48, align 8, !tbaa !96  ; 3 uses
  %.not.i923 = icmp eq ptr %i.abw, null
  br i1 %.not.i923, label %_ZN8facebook3jsi7PointerD2Ev.exit924, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !94
  %i.aby = load ptr, ptr %i.abx, align 8
  call void %i.aby(ptr noundef nonnull align 8 dereferenceable(8) %i.abw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit924

_ZN8facebook3jsi7PointerD2Ev.exit924:             ; preds = %bb.gn, %bb.gm, %bb.gl
  %.pn619 = phi { ptr, i32 } [ %i.abu, %bb.gl ], [ %i.abv, %bb.gm ], [ %i.abv, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  br label %bb.zm

bb.go:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  %i.abz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %.sroa.0159.0.copyload = load i32, ptr %i.abz, align 8, !tbaa !498 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.2161.0.copyload = load i64, ptr %.sroa.2161.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  switch i32 %.sroa.0159.0.copyload, label %bb.gt [
    i32 0, label %bb.gp
    i32 1, label %bb.gq
    i32 3, label %bb.gr
    i32 2, label %bb.gs
  ]

bb.gp:                                            ; preds = %bb.go
  store i32 0, ptr %49, align 8, !tbaa !69, !alias.scope !597
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread

bb.gq:                                            ; preds = %bb.go
  store i32 1, ptr %49, align 8, !tbaa !69, !alias.scope !600
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread

bb.gr:                                            ; preds = %bb.go
  store i32 3, ptr %49, align 8, !tbaa !69, !alias.scope !594
  store i64 %.sroa.2161.0.copyload, ptr %i.br, align 8, !tbaa !74, !alias.scope !594
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread

bb.gs:                                            ; preds = %bb.go
  %i.aca = trunc i64 %.sroa.2161.0.copyload to i8
  store i32 2, ptr %49, align 8, !tbaa !69, !alias.scope !594
  store i8 %i.aca, ptr %i.br, align 8, !tbaa !74, !alias.scope !594
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread

bb.gt:                                            ; preds = %bb.go
  %.off.i.i925 = add i32 %.sroa.0159.0.copyload, -4
  %switch.i.i926 = icmp ult i32 %.off.i.i925, 5
  call void @llvm.assume(i1 %switch.i.i926)
  %i.acb = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !603
  %.not.not.i.i.i.i927 = icmp eq i64 %i.acb, 0
  br i1 %.not.not.i.i.i.i927, label %.preheader2554, label %bb.gu

.preheader2554:                                   ; preds = %bb.gt, %.preheader2554
  %.sroa.06.0.in.i.i.i.i933 = phi ptr [ %.sroa.06.0.i.i.i.i934, %.preheader2554 ], [ %i.x, %bb.gt ]
  %.sroa.06.0.i.i.i.i934 = load ptr, ptr %.sroa.06.0.in.i.i.i.i933, align 8, !tbaa !119, !noalias !603, !nonnull !68, !noundef !68 ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i934, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !107, !noalias !603
  %i.ace = icmp eq i64 %.sroa.2161.0.copyload, %i.acd
  br i1 %i.ace, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i931, label %.preheader2554, !llvm.loop !515

bb.gu:                                            ; preds = %bb.gt
  %i.acf = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !603 ; 2 uses
  %i.acg = urem i64 %.sroa.2161.0.copyload, %i.acf ; 2 uses
  %i.ach = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !603
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.acg
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !121, !noalias !603, !nonnull !68, !noundef !68
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !119, !noalias !603 ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !107, !noalias !603
  %i.acn = icmp eq i64 %.sroa.2161.0.copyload, %i.acm
  br i1 %i.acn, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i931, label %.lr.ph.i.i.i.i.i.i928

.lr.ph.i.i.i.i.i.i928:                            ; preds = %bb.gu, %.lr.ph.i.i.i.i.i.i928
  %.020.i.i.i.i.i.i929 = phi ptr [ %i.aco, %.lr.ph.i.i.i.i.i.i928 ], [ %i.ack, %bb.gu ]
  %i.aco = load ptr, ptr %.020.i.i.i.i.i.i929, align 8, !tbaa !119, !noalias !603, !nonnull !68, !noundef !68 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !107, !noalias !603 ; 2 uses
  %i.acr = urem i64 %i.acq, %i.acf
  %.not19.i.i.i.i.i.i930 = icmp eq i64 %i.acr, %i.acg
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i930)
  %i.acs = icmp eq i64 %.sroa.2161.0.copyload, %i.acq
  br i1 %i.acs, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i931, label %.lr.ph.i.i.i.i.i.i928, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i931: ; preds = %.lr.ph.i.i.i.i.i.i928, %.preheader2554, %bb.gu
  %.sroa.06.1.i.i.i.i932 = phi ptr [ %.sroa.06.0.i.i.i.i934, %.preheader2554 ], [ %i.ack, %bb.gu ], [ %i.aco, %.lr.ph.i.i.i.i.i.i928 ]
  %i.act = load ptr, ptr %0, align 8, !tbaa !452, !noalias !603, !nonnull !68, !align !453
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i932, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.act, ptr noundef nonnull align 8 dereferenceable(16) %i.acu)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936 unwind label %bb.hd

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread: ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %.pre3061 = load ptr, ptr %i.br, align 8, !tbaa !74, !noalias !606
  br label %bb.gx

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i931
  %.pr = load i32, ptr %49, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %i.acv = icmp eq i32 %.pr, 4
  %.pre3062 = load ptr, ptr %i.br, align 8, !tbaa !74, !noalias !68 ; 2 uses
  br i1 %i.acv, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936
  %i.acw = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !94, !noalias !609
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 112
  %i.acz = load ptr, ptr %i.acy, align 8, !noalias !609
  %i.ada = invoke noundef ptr %i.acz(ptr noundef nonnull align 8 dereferenceable(8) %i.acw, ptr noundef %.pre3062)
          to label %bb.gw unwind label %bb.he, !inline_history !612

bb.gw:                                            ; preds = %bb.gv
  store ptr %i.ada, ptr %51, align 8, !tbaa !96, !alias.scope !609
  %i.adb = load ptr, ptr %i.acw, align 8, !tbaa !94, !noalias !613
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 184
  %i.add = load ptr, ptr %i.adc, align 8, !noalias !613
  invoke void %i.add(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::PropNameID") align 8 %50, ptr noundef nonnull align 8 dereferenceable(8) %i.acw, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %.critedge713 unwind label %bb.hi, !inline_history !616

bb.gx:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread, %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936
  %i.ade = phi ptr [ %.pre3061, %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936.thread ], [ %.pre3062, %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit936 ]
  %i.adf = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !94, !noalias !606
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 128
  %i.adi = load ptr, ptr %i.adh, align 8, !noalias !606
  %i.adj = invoke noundef ptr %i.adi(ptr noundef nonnull align 8 dereferenceable(8) %i.adf, ptr noundef %i.ade)
          to label %bb.gy unwind label %bb.hf, !inline_history !617

bb.gy:                                            ; preds = %bb.gx
  store ptr %i.adj, ptr %52, align 8, !tbaa !96, !alias.scope !606
  %i.adk = load ptr, ptr %i.adf, align 8, !tbaa !94, !noalias !618
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 176
  %i.adm = load ptr, ptr %i.adl, align 8, !noalias !618
  invoke void %i.adm(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::PropNameID") align 8 %50, ptr noundef nonnull align 8 dereferenceable(8) %i.adf, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %.critedge695 unwind label %bb.hg, !inline_history !621

.critedge695:                                     ; preds = %bb.gy
  %i.adn = load ptr, ptr %52, align 8, !tbaa !96  ; 3 uses
  %.not.i941 = icmp eq ptr %i.adn, null
  br i1 %.not.i941, label %_ZN8facebook3jsi7PointerD2Ev.exit942, label %bb.gz

bb.gz:                                            ; preds = %.critedge695
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !94
  %i.adp = load ptr, ptr %i.ado, align 8
  call void %i.adp(ptr noundef nonnull align 8 dereferenceable(8) %i.adn) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit942

_ZN8facebook3jsi7PointerD2Ev.exit942:             ; preds = %.critedge695, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #35
  br label %.critedge698

.critedge713:                                     ; preds = %bb.gw
  %i.adq = load ptr, ptr %51, align 8, !tbaa !96  ; 3 uses
  %.not.i943 = icmp eq ptr %i.adq, null
  br i1 %.not.i943, label %_ZN8facebook3jsi7PointerD2Ev.exit944, label %bb.ha

bb.ha:                                            ; preds = %.critedge713
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !94
  %i.ads = load ptr, ptr %i.adr, align 8
  call void %i.ads(ptr noundef nonnull align 8 dereferenceable(8) %i.adq) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit944

_ZN8facebook3jsi7PointerD2Ev.exit944:             ; preds = %.critedge713, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %.critedge698

.critedge698:                                     ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit942, %_ZN8facebook3jsi7PointerD2Ev.exit944
  %i.adt = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !622
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.adu, ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %i.cp)
          to label %bb.hb unwind label %bb.hl

bb.hb:                                            ; preds = %.critedge698
  %i.adv = load ptr, ptr %50, align 8, !tbaa !96  ; 3 uses
  %.not.i945 = icmp eq ptr %i.adv, null
  br i1 %.not.i945, label %_ZN8facebook3jsi7PointerD2Ev.exit946, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !94
  %i.adx = load ptr, ptr %i.adw, align 8
  call void %i.adx(ptr noundef nonnull align 8 dereferenceable(8) %i.adv) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit946

_ZN8facebook3jsi7PointerD2Ev.exit946:             ; preds = %bb.hb, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  br label %.critedge710

bb.hd:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i931
  %i.ady = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.hn

bb.he:                                            ; preds = %bb.gv
  %i.adz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.hk

bb.hf:                                            ; preds = %bb.gx
  %i.aea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit950

bb.hg:                                            ; preds = %bb.gy
  %i.aeb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aec = load ptr, ptr %52, align 8, !tbaa !96  ; 3 uses
  %.not.i947 = icmp eq ptr %i.aec, null
  br i1 %.not.i947, label %_ZN8facebook3jsi7PointerD2Ev.exit950, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !94
  %i.aee = load ptr, ptr %i.aed, align 8
  call void %i.aee(ptr noundef nonnull align 8 dereferenceable(8) %i.aec) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit950

bb.hi:                                            ; preds = %bb.gw
  %i.aef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aeg = load ptr, ptr %51, align 8, !tbaa !96  ; 3 uses
  %.not.i949 = icmp eq ptr %i.aeg, null
  br i1 %.not.i949, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !94
  %i.aei = load ptr, ptr %i.aeh, align 8
  call void %i.aei(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg) #35, !inline_history !99
  br label %bb.hk

_ZN8facebook3jsi7PointerD2Ev.exit950:             ; preds = %bb.hh, %bb.hg, %bb.hf
  %.pn611 = phi { ptr, i32 } [ %i.aea, %bb.hf ], [ %i.aeb, %bb.hg ], [ %i.aeb, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit952
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a

bb.jg:                                            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_6StringE.exit
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !94
  %i.ale = load ptr, ptr %i.ald, align 8
  call void %i.ale(ptr noundef nonnull align 8 dereferenceable(8) %i.alc) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1016

_ZN8facebook3jsi7PointerD2Ev.exit1016:            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_6StringE.exit, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %bb.kg

bb.jh:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i998
  %i.alf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.jj

bb.ji:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1003
  %i.alg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #35
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %.pn587 = phi { ptr, i32 } [ %i.alg, %bb.ji ], [ %i.alf, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #35
  br label %bb.kk

bb.jk:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1008
  %i.alh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.jm

bb.jl:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1013
  %i.ali = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #35
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.pn593 = phi { ptr, i32 } [ %i.ali, %bb.jl ], [ %i.alh, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1018

bb.jn:                                            ; preds = %bb.jf
  %i.alj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #35
  %i.alk = load ptr, ptr %64, align 8, !tbaa !96  ; 3 uses
  %.not.i1017 = icmp eq ptr %i.alk, null
  br i1 %.not.i1017, label %_ZN8facebook3jsi7PointerD2Ev.exit1018, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !94
  %i.alm = load ptr, ptr %i.all, align 8
  call void %i.alm(ptr noundef nonnull align 8 dereferenceable(8) %i.alk) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1018

_ZN8facebook3jsi7PointerD2Ev.exit1018:            ; preds = %bb.jo, %bb.jn, %bb.jm
  %.pn595 = phi { ptr, i32 } [ %.pn593, %bb.jm ], [ %i.alj, %bb.jn ], [ %i.alj, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %bb.ki

bb.jp:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #35
  %i.aln = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.alp = load i64, ptr %i.ab, align 8, !tbaa !628, !noalias !654
  %.not.not.i.i.i1019 = icmp eq i64 %i.alp, 0
  br i1 %.not.not.i.i.i1019, label %.preheader2564, label %bb.jq

.preheader2564:                                   ; preds = %bb.jp, %.preheader2564
  %.sroa.06.0.in.i.i.i1025 = phi ptr [ %.sroa.06.0.i.i.i1026, %.preheader2564 ], [ %i.ad, %bb.jp ]
  %.sroa.06.0.i.i.i1026 = load ptr, ptr %.sroa.06.0.in.i.i.i1025, align 8, !tbaa !119, !noalias !654, !nonnull !68, !noundef !68 ; 3 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1026, i64 8
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !107, !noalias !654
  %i.als = icmp eq i64 %i.alo, %i.alr
  br i1 %i.als, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1023, label %.preheader2564, !llvm.loop !629

bb.jq:                                            ; preds = %bb.jp
  %i.alt = load i64, ptr %i.ac, align 8, !tbaa !90, !noalias !654 ; 2 uses
  %i.alu = urem i64 %i.alo, %i.alt                ; 2 uses
  %i.alv = load ptr, ptr %i.u, align 8, !tbaa !89, !noalias !654
  %i.alw = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %i.alu
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !121, !noalias !654, !nonnull !68, !noundef !68
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !119, !noalias !654 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !107, !noalias !654
  %i.amb = icmp eq i64 %i.alo, %i.ama
  br i1 %i.amb, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1023, label %.lr.ph.i.i.i.i.i1020

.lr.ph.i.i.i.i.i1020:                             ; preds = %bb.jq, %.lr.ph.i.i.i.i.i1020
  %.020.i.i.i.i.i1021 = phi ptr [ %i.amc, %.lr.ph.i.i.i.i.i1020 ], [ %i.aly, %bb.jq ]
  %i.amc = load ptr, ptr %.020.i.i.i.i.i1021, align 8, !tbaa !119, !noalias !654, !nonnull !68, !noundef !68 ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !107, !noalias !654 ; 2 uses
  %i.amf = urem i64 %i.ame, %i.alt
  %.not19.i.i.i.i.i1022 = icmp eq i64 %i.amf, %i.alu
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1022)
  %i.amg = icmp eq i64 %i.alo, %i.ame
  br i1 %i.amg, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1023, label %.lr.ph.i.i.i.i.i1020, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1023: ; preds = %.lr.ph.i.i.i.i.i1020, %.preheader2564, %bb.jq
  %.sroa.06.1.i.i.i1024 = phi ptr [ %.sroa.06.0.i.i.i1026, %.preheader2564 ], [ %i.aly, %bb.jq ], [ %i.amc, %.lr.ph.i.i.i.i.i1020 ]
  %i.amh = load ptr, ptr %0, align 8, !tbaa !452, !noalias !654, !nonnull !68, !align !453 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1024, i64 16
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !96, !noalias !654
  %i.amk = load ptr, ptr %i.amh, align 8, !tbaa !94, !noalias !654
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 144
  %i.amm = load ptr, ptr %i.aml, align 8, !noalias !654
  %i.amn = invoke noundef ptr %i.amm(ptr noundef nonnull align 8 dereferenceable(8) %i.amh, ptr noundef %i.amj)
          to label %bb.jr unwind label %bb.jt, !inline_history !631

bb.jr:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1023
  store ptr %i.amn, ptr %67, align 8, !tbaa !96, !alias.scope !654
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #35
  %i.amo = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !94, !noalias !657
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 384
  %i.amr = load ptr, ptr %i.amq, align 8, !noalias !657
  invoke void %i.amr(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %68, ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit unwind label %bb.ju, !inline_history !660

_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit: ; preds = %bb.jr
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %68) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  %i.ams = load ptr, ptr %67, align 8, !tbaa !96  ; 3 uses
  %.not.i1030 = icmp eq ptr %i.ams, null
  br i1 %.not.i1030, label %_ZN8facebook3jsi7PointerD2Ev.exit1031, label %bb.js

bb.js:                                            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !94
  %i.amu = load ptr, ptr %i.amt, align 8
  call void %i.amu(ptr noundef nonnull align 8 dereferenceable(8) %i.ams) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1031

_ZN8facebook3jsi7PointerD2Ev.exit1031:            ; preds = %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #35
  br label %bb.kg

bb.jt:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1023
  %i.amv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1033

bb.ju:                                            ; preds = %bb.jr
  %i.amw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  %i.amx = load ptr, ptr %67, align 8, !tbaa !96  ; 3 uses
  %.not.i1032 = icmp eq ptr %i.amx, null
  br i1 %.not.i1032, label %_ZN8facebook3jsi7PointerD2Ev.exit1033, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !94
  %i.amz = load ptr, ptr %i.amy, align 8
  call void %i.amz(ptr noundef nonnull align 8 dereferenceable(8) %i.amx) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1033

_ZN8facebook3jsi7PointerD2Ev.exit1033:            ; preds = %bb.jv, %bb.ju, %bb.jt
  %.pn591 = phi { ptr, i32 } [ %i.amv, %bb.jt ], [ %i.amw, %bb.ju ], [ %i.amw, %bb.jv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #35
  br label %bb.ki

bb.jw:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #35
  %.sroa.2133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.2133.0.copyload = load i64, ptr %.sroa.2133.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  switch i32 %i.aka, label %bb.kb [
    i32 0, label %bb.jx
    i32 1, label %bb.jy
    i32 3, label %bb.jz
    i32 2, label %bb.ka
  ]

bb.jx:                                            ; preds = %bb.jw
  store i32 0, ptr %69, align 8, !tbaa !69, !alias.scope !664
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045

bb.jy:                                            ; preds = %bb.jw
  store i32 1, ptr %69, align 8, !tbaa !69, !alias.scope !667
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045

bb.jz:                                            ; preds = %bb.jw
  store i32 3, ptr %69, align 8, !tbaa !69, !alias.scope !661
  store i64 %.sroa.2133.0.copyload, ptr %i.bn, align 8, !tbaa !74, !alias.scope !661
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045

bb.ka:                                            ; preds = %bb.jw
  %i.ana = trunc i64 %.sroa.2133.0.copyload to i8
  store i32 2, ptr %69, align 8, !tbaa !69, !alias.scope !661
  store i8 %i.ana, ptr %i.bn, align 8, !tbaa !74, !alias.scope !661
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045

bb.kb:                                            ; preds = %bb.jw
  %.off.i.i1034 = add i32 %i.aka, -4
  %switch.i.i1035 = icmp ult i32 %.off.i.i1034, 5
  call void @llvm.assume(i1 %switch.i.i1035)
  %i.anb = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !670
  %.not.not.i.i.i.i1036 = icmp eq i64 %i.anb, 0
  br i1 %.not.not.i.i.i.i1036, label %.preheader2560, label %bb.kc

.preheader2560:                                   ; preds = %bb.kb, %.preheader2560
  %.sroa.06.0.in.i.i.i.i1042 = phi ptr [ %.sroa.06.0.i.i.i.i1043, %.preheader2560 ], [ %i.x, %bb.kb ]
  %.sroa.06.0.i.i.i.i1043 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1042, align 8, !tbaa !119, !noalias !670, !nonnull !68, !noundef !68 ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1043, i64 8
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !107, !noalias !670
  %i.ane = icmp eq i64 %.sroa.2133.0.copyload, %i.and
  br i1 %i.ane, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1040, label %.preheader2560, !llvm.loop !515

bb.kc:                                            ; preds = %bb.kb
  %i.anf = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !670 ; 2 uses
  %i.ang = urem i64 %.sroa.2133.0.copyload, %i.anf ; 2 uses
  %i.anh = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !670
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.anh, i64 %i.ang
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !121, !noalias !670, !nonnull !68, !noundef !68
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !119, !noalias !670 ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !107, !noalias !670
  %i.ann = icmp eq i64 %.sroa.2133.0.copyload, %i.anm
  br i1 %i.ann, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1040, label %.lr.ph.i.i.i.i.i.i1037

.lr.ph.i.i.i.i.i.i1037:                           ; preds = %bb.kc, %.lr.ph.i.i.i.i.i.i1037
  %.020.i.i.i.i.i.i1038 = phi ptr [ %i.ano, %.lr.ph.i.i.i.i.i.i1037 ], [ %i.ank, %bb.kc ]
  %i.ano = load ptr, ptr %.020.i.i.i.i.i.i1038, align 8, !tbaa !119, !noalias !670, !nonnull !68, !noundef !68 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !107, !noalias !670 ; 2 uses
  %i.anr = urem i64 %i.anq, %i.anf
  %.not19.i.i.i.i.i.i1039 = icmp eq i64 %i.anr, %i.ang
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1039)
  %i.ans = icmp eq i64 %.sroa.2133.0.copyload, %i.anq
  br i1 %i.ans, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1040, label %.lr.ph.i.i.i.i.i.i1037, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1040: ; preds = %.lr.ph.i.i.i.i.i.i1037, %.preheader2560, %bb.kc
  %.sroa.06.1.i.i.i.i1041 = phi ptr [ %.sroa.06.0.i.i.i.i1043, %.preheader2560 ], [ %i.ank, %bb.kc ], [ %i.ano, %.lr.ph.i.i.i.i.i.i1037 ]
  %i.ant = load ptr, ptr %0, align 8, !tbaa !452, !noalias !670, !nonnull !68, !align !453
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1041, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.ant, ptr noundef nonnull align 8 dereferenceable(16) %i.anu)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045 unwind label %bb.kd

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045: ; preds = %bb.ka, %bb.jz, %bb.jy, %bb.jx, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1040
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #35
  %i.anv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !94, !noalias !673
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 400
  %i.any = load ptr, ptr %i.anx, align 8, !noalias !673
  invoke void %i.any(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %70, ptr noundef nonnull align 8 dereferenceable(8) %i.anv, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(16) %69)
          to label %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.ke, !inline_history !676

_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %70) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %bb.kg

bb.kd:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1040
  %i.anz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.kf

bb.ke:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1045
  %i.aoa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #35
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.pn589 = phi { ptr, i32 } [ %i.aoa, %bb.ke ], [ %i.anz, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %bb.ki

bb.kg:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1031, %_ZNK8facebook3jsi6Object11getPropertyERNS0_7RuntimeERKNS0_5ValueE.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1016
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %61) #35
  %i.aob = load ptr, ptr %62, align 8, !tbaa !96  ; 3 uses
  %.not.i1047 = icmp eq ptr %i.aob, null
  br i1 %.not.i1047, label %_ZN8facebook3jsi7PointerD2Ev.exit1048, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !94
  %i.aod = load ptr, ptr %i.aoc, align 8
  call void %i.aod(ptr noundef nonnull align 8 dereferenceable(8) %i.aob) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1048

_ZN8facebook3jsi7PointerD2Ev.exit1048:            ; preds = %bb.kg, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  br label %.critedge710

bb.ki:                                            ; preds = %bb.kf, %_ZN8facebook3jsi7PointerD2Ev.exit1033, %_ZN8facebook3jsi7PointerD2Ev.exit1018
  %.pn595.pn = phi { ptr, i32 } [ %.pn595, %_ZN8facebook3jsi7PointerD2Ev.exit1018 ], [ %.pn591, %_ZN8facebook3jsi7PointerD2Ev.exit1033 ], [ %.pn589, %bb.kf ]
  %i.aoe = load ptr, ptr %62, align 8, !tbaa !96  ; 3 uses
  %.not.i1049 = icmp eq ptr %i.aoe, null
  br i1 %.not.i1049, label %_ZN8facebook3jsi7PointerD2Ev.exit1050, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !94
  %i.aog = load ptr, ptr %i.aof, align 8
  call void %i.aog(ptr noundef nonnull align 8 dereferenceable(8) %i.aoe) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1050

_ZN8facebook3jsi7PointerD2Ev.exit1050:            ; preds = %bb.ki, %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #35
  br label %bb.kk

bb.kk:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1050, %bb.jj
  %.pn595.pn.pn = phi { ptr, i32 } [ %.pn595.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1050 ], [ %.pn587, %bb.jj ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  br label %bb.zm

bb.kl:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #35
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !677 ; 4 uses
  %i.aoj = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !679
  %.not.not.i.i.i1051 = icmp eq i64 %i.aoj, 0
  br i1 %.not.not.i.i.i1051, label %.preheader2580.a, label %bb.km

.preheader2580.a:                                 ; preds = %bb.kl, %.preheader2580.a
  %.sroa.06.0.in.i.i.i1057 = phi ptr [ %.sroa.06.0.i.i.i1058, %.preheader2580.a ], [ %i.x, %bb.kl ]
  %.sroa.06.0.i.i.i1058 = load ptr, ptr %.sroa.06.0.in.i.i.i1057, align 8, !tbaa !119, !noalias !679, !nonnull !68, !noundef !68 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1058, i64 8
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !107, !noalias !679
  %i.aom = icmp eq i64 %i.aoi, %i.aol
  br i1 %i.aom, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1055, label %.preheader2580.a, !llvm.loop !515

bb.km:                                            ; preds = %bb.kl
  %i.aon = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !679 ; 2 uses
  %i.aoo = urem i64 %i.aoi, %i.aon                ; 2 uses
  %i.aop = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !679
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.aop, i64 %i.aoo
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !121, !noalias !679, !nonnull !68, !noundef !68
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !119, !noalias !679 ; 3 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !107, !noalias !679
  %i.aov = icmp eq i64 %i.aoi, %i.aou
  br i1 %i.aov, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1055, label %.lr.ph.i.i.i.i.i1052

.lr.ph.i.i.i.i.i1052:                             ; preds = %bb.km, %.lr.ph.i.i.i.i.i1052
  %.020.i.i.i.i.i1053 = phi ptr [ %i.aow, %.lr.ph.i.i.i.i.i1052 ], [ %i.aos, %bb.km ]
  %i.aow = load ptr, ptr %.020.i.i.i.i.i1053, align 8, !tbaa !119, !noalias !679, !nonnull !68, !noundef !68 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.aoy = load i64, ptr %i.aox, align 8, !tbaa !107, !noalias !679 ; 2 uses
  %i.aoz = urem i64 %i.aoy, %i.aon
  %.not19.i.i.i.i.i1054 = icmp eq i64 %i.aoz, %i.aoo
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1054)
  %i.apa = icmp eq i64 %i.aoi, %i.aoy
  br i1 %i.apa, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1055, label %.lr.ph.i.i.i.i.i1052, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1055: ; preds = %.lr.ph.i.i.i.i.i1052, %.preheader2580.a, %bb.km
  %.sroa.06.1.i.i.i1056 = phi ptr [ %.sroa.06.0.i.i.i1058, %.preheader2580.a ], [ %i.aos, %bb.km ], [ %i.aow, %.lr.ph.i.i.i.i.i1052 ]
  %i.apb = load ptr, ptr %0, align 8, !tbaa !452, !noalias !679, !nonnull !68, !align !453
  %i.apc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1056, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.apb, ptr noundef nonnull align 8 dereferenceable(16) %i.apc)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1060 unwind label %bb.ky

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1060: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1055
  %i.apd = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %71, ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.apd)
          to label %bb.kn unwind label %bb.kz

bb.kn:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1060
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  %i.ape = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !7 ; 3 uses
  switch i32 %i.apf, label %bb.lx [
    i32 5, label %bb.ko
    i32 6, label %bb.li
  ]

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #35
  %i.apg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !74 ; 4 uses
  %i.api = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !682
  %.not.not.i.i.i1061 = icmp eq i64 %i.api, 0
  br i1 %.not.not.i.i.i1061, label %.preheader2574, label %bb.kp

.preheader2574:                                   ; preds = %bb.ko, %.preheader2574
  %.sroa.06.0.in.i.i.i1067 = phi ptr [ %.sroa.06.0.i.i.i1068, %.preheader2574 ], [ %i.x, %bb.ko ]
  %.sroa.06.0.i.i.i1068 = load ptr, ptr %.sroa.06.0.in.i.i.i1067, align 8, !tbaa !119, !noalias !682, !nonnull !68, !noundef !68 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1068, i64 8
  %i.apk = load i64, ptr %i.apj, align 8, !tbaa !107, !noalias !682
  %i.apl = icmp eq i64 %i.aph, %i.apk
  br i1 %i.apl, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1065, label %.preheader2574, !llvm.loop !515

bb.kp:                                            ; preds = %bb.ko
  %i.apm = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !682 ; 2 uses
  %i.apn = urem i64 %i.aph, %i.apm                ; 2 uses
  %i.apo = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !682
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.apo, i64 %i.apn
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !121, !noalias !682, !nonnull !68, !noundef !68
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !119, !noalias !682 ; 3 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !107, !noalias !682
  %i.apu = icmp eq i64 %i.aph, %i.apt
  br i1 %i.apu, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1065, label %.lr.ph.i.i.i.i.i1062

.lr.ph.i.i.i.i.i1062:                             ; preds = %bb.kp, %.lr.ph.i.i.i.i.i1062
  %.020.i.i.i.i.i1063 = phi ptr [ %i.apv, %.lr.ph.i.i.i.i.i1062 ], [ %i.apr, %bb.kp ]
  %i.apv = load ptr, ptr %.020.i.i.i.i.i1063, align 8, !tbaa !119, !noalias !682, !nonnull !68, !noundef !68 ; 3 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !107, !noalias !682 ; 2 uses
  %i.apy = urem i64 %i.apx, %i.apm
  %.not19.i.i.i.i.i1064 = icmp eq i64 %i.apy, %i.apn
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1064)
  %i.apz = icmp eq i64 %i.aph, %i.apx
  br i1 %i.apz, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1065, label %.lr.ph.i.i.i.i.i1062, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1065: ; preds = %.lr.ph.i.i.i.i.i1062, %.preheader2574, %bb.kp
  %.sroa.06.1.i.i.i1066 = phi ptr [ %.sroa.06.0.i.i.i1068, %.preheader2574 ], [ %i.apr, %bb.kp ], [ %i.apv, %.lr.ph.i.i.i.i.i1062 ]
  %i.aqa = load ptr, ptr %0, align 8, !tbaa !452, !noalias !682, !nonnull !68, !align !453
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1066, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.aqa, ptr noundef nonnull align 8 dereferenceable(16) %i.aqb)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1070 unwind label %bb.lb

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1070: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1065
  %i.aqc = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asStringERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.aqc)
          to label %bb.kq unwind label %bb.lc

bb.kq:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1070
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %74) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  %i.aqd = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #35
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %.sroa.0119.0.copyload = load i32, ptr %i.aqe, align 8, !tbaa !498 ; 2 uses
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %.sroa.2121.0.copyload = load i64, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  switch i32 %.sroa.0119.0.copyload, label %bb.kv [
    i32 0, label %bb.kr
    i32 1, label %bb.ks
    i32 3, label %bb.kt
    i32 2, label %bb.ku
  ]

bb.kr:                                            ; preds = %bb.kq
  store i32 0, ptr %75, align 8, !tbaa !69, !alias.scope !688
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082

bb.ks:                                            ; preds = %bb.kq
  store i32 1, ptr %75, align 8, !tbaa !69, !alias.scope !691
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082

bb.kt:                                            ; preds = %bb.kq
  store i32 3, ptr %75, align 8, !tbaa !69, !alias.scope !685
  store i64 %.sroa.2121.0.copyload, ptr %i.bk, align 8, !tbaa !74, !alias.scope !685
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082

bb.ku:                                            ; preds = %bb.kq
  %i.aqf = trunc i64 %.sroa.2121.0.copyload to i8
  store i32 2, ptr %75, align 8, !tbaa !69, !alias.scope !685
  store i8 %i.aqf, ptr %i.bk, align 8, !tbaa !74, !alias.scope !685
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082

bb.kv:                                            ; preds = %bb.kq
  %.off.i.i1071 = add i32 %.sroa.0119.0.copyload, -4
  %switch.i.i1072 = icmp ult i32 %.off.i.i1071, 5
  call void @llvm.assume(i1 %switch.i.i1072)
  %i.aqg = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !694
  %.not.not.i.i.i.i1073 = icmp eq i64 %i.aqg, 0
  br i1 %.not.not.i.i.i.i1073, label %.preheader2572, label %bb.kw

.preheader2572:                                   ; preds = %bb.kv, %.preheader2572
  %.sroa.06.0.in.i.i.i.i1079 = phi ptr [ %.sroa.06.0.i.i.i.i1080, %.preheader2572 ], [ %i.x, %bb.kv ]
  %.sroa.06.0.i.i.i.i1080 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1079, align 8, !tbaa !119, !noalias !694, !nonnull !68, !noundef !68 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1080, i64 8
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !107, !noalias !694
  %i.aqj = icmp eq i64 %.sroa.2121.0.copyload, %i.aqi
  br i1 %i.aqj, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1077, label %.preheader2572, !llvm.loop !515

bb.kw:                                            ; preds = %bb.kv
  %i.aqk = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !694 ; 2 uses
  %i.aql = urem i64 %.sroa.2121.0.copyload, %i.aqk ; 2 uses
  %i.aqm = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !694
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.aqm, i64 %i.aql
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !121, !noalias !694, !nonnull !68, !noundef !68
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !119, !noalias !694 ; 3 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !107, !noalias !694
  %i.aqs = icmp eq i64 %.sroa.2121.0.copyload, %i.aqr
  br i1 %i.aqs, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1077, label %.lr.ph.i.i.i.i.i.i1074

.lr.ph.i.i.i.i.i.i1074:                           ; preds = %bb.kw, %.lr.ph.i.i.i.i.i.i1074
  %.020.i.i.i.i.i.i1075 = phi ptr [ %i.aqt, %.lr.ph.i.i.i.i.i.i1074 ], [ %i.aqp, %bb.kw ]
  %i.aqt = load ptr, ptr %.020.i.i.i.i.i.i1075, align 8, !tbaa !119, !noalias !694, !nonnull !68, !noundef !68 ; 3 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  %i.aqv = load i64, ptr %i.aqu, align 8, !tbaa !107, !noalias !694 ; 2 uses
  %i.aqw = urem i64 %i.aqv, %i.aqk
  %.not19.i.i.i.i.i.i1076 = icmp eq i64 %i.aqw, %i.aql
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1076)
  %i.aqx = icmp eq i64 %.sroa.2121.0.copyload, %i.aqv
  br i1 %i.aqx, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1077, label %.lr.ph.i.i.i.i.i.i1074, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1077: ; preds = %.lr.ph.i.i.i.i.i.i1074, %.preheader2572, %bb.kw
  %.sroa.06.1.i.i.i.i1078 = phi ptr [ %.sroa.06.0.i.i.i.i1080, %.preheader2572 ], [ %i.aqp, %bb.kw ], [ %i.aqt, %.lr.ph.i.i.i.i.i.i1074 ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1078, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, ptr noundef nonnull align 8 dereferenceable(16) %i.aqy)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082 unwind label %bb.le

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082: ; preds = %bb.ku, %bb.kt, %bb.ks, %bb.kr, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1077
  %i.aqz = load ptr, ptr %i.aqd, align 8, !tbaa !94
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 440
  %i.arb = load ptr, ptr %i.ara, align 8
  invoke void %i.arb(ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(16) %75)
          to label %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit unwind label %bb.lf, !inline_history !697

_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #35
  %i.arc = load ptr, ptr %73, align 8, !tbaa !96  ; 3 uses
  %.not.i1084 = icmp eq ptr %i.arc, null
  br i1 %.not.i1084, label %_ZN8facebook3jsi7PointerD2Ev.exit1085, label %bb.kx

bb.kx:                                            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !94
  %i.are = load ptr, ptr %i.ard, align 8
  call void %i.are(ptr noundef nonnull align 8 dereferenceable(8) %i.arc) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1085

_ZN8facebook3jsi7PointerD2Ev.exit1085:            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_6StringEOT_.exit, %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #35
  br label %bb.mp

bb.ky:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1055
  %i.arf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.la

bb.kz:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1060
  %i.arg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #35
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %.pn572 = phi { ptr, i32 } [ %i.arg, %bb.kz ], [ %i.arf, %bb.ky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1143

bb.lb:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1065
  %i.arh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ld

bb.lc:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1070
  %i.ari = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %74) #35
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %.pn580 = phi { ptr, i32 } [ %i.ari, %bb.lc ], [ %i.arh, %bb.lb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1087

bb.le:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1077
  %i.arj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lg

bb.lf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1082
  %i.ark = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #35
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %.pn582 = phi { ptr, i32 } [ %i.ark, %bb.lf ], [ %i.arj, %bb.le ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #35
  %i.arl = load ptr, ptr %73, align 8, !tbaa !96  ; 3 uses
  %.not.i1086 = icmp eq ptr %i.arl, null
  br i1 %.not.i1086, label %_ZN8facebook3jsi7PointerD2Ev.exit1087, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !94
  %i.arn = load ptr, ptr %i.arm, align 8
  call void %i.arn(ptr noundef nonnull align 8 dereferenceable(8) %i.arl) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1087

_ZN8facebook3jsi7PointerD2Ev.exit1087:            ; preds = %bb.lh, %bb.lg, %bb.ld
  %.pn582.pn = phi { ptr, i32 } [ %.pn580, %bb.ld ], [ %.pn582, %bb.lg ], [ %.pn582, %bb.lh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #35
  br label %bb.mr

bb.li:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #35
  %i.aro = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.arp = load i64, ptr %i.aro, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.arq = load i64, ptr %i.ab, align 8, !tbaa !628, !noalias !698
  %.not.not.i.i.i1088 = icmp eq i64 %i.arq, 0
  br i1 %.not.not.i.i.i1088, label %.preheader2578, label %bb.lj

.preheader2578:                                   ; preds = %bb.li, %.preheader2578
  %.sroa.06.0.in.i.i.i1094 = phi ptr [ %.sroa.06.0.i.i.i1095, %.preheader2578 ], [ %i.ad, %bb.li ]
  %.sroa.06.0.i.i.i1095 = load ptr, ptr %.sroa.06.0.in.i.i.i1094, align 8, !tbaa !119, !noalias !698, !nonnull !68, !noundef !68 ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1095, i64 8
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !107, !noalias !698
  %i.art = icmp eq i64 %i.arp, %i.ars
  br i1 %i.art, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1092, label %.preheader2578, !llvm.loop !629

bb.lj:                                            ; preds = %bb.li
  %i.aru = load i64, ptr %i.ac, align 8, !tbaa !90, !noalias !698 ; 2 uses
  %i.arv = urem i64 %i.arp, %i.aru                ; 2 uses
  %i.arw = load ptr, ptr %i.u, align 8, !tbaa !89, !noalias !698
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %i.arw, i64 %i.arv
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !121, !noalias !698, !nonnull !68, !noundef !68
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !119, !noalias !698 ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !107, !noalias !698
  %i.asc = icmp eq i64 %i.arp, %i.asb
  br i1 %i.asc, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1092, label %.lr.ph.i.i.i.i.i1089

.lr.ph.i.i.i.i.i1089:                             ; preds = %bb.lj, %.lr.ph.i.i.i.i.i1089
  %.020.i.i.i.i.i1090 = phi ptr [ %i.asd, %.lr.ph.i.i.i.i.i1089 ], [ %i.arz, %bb.lj ]
  %i.asd = load ptr, ptr %.020.i.i.i.i.i1090, align 8, !tbaa !119, !noalias !698, !nonnull !68, !noundef !68 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 8
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !107, !noalias !698 ; 2 uses
  %i.asg = urem i64 %i.asf, %i.aru
  %.not19.i.i.i.i.i1091 = icmp eq i64 %i.asg, %i.arv
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1091)
  %i.ash = icmp eq i64 %i.arp, %i.asf
  br i1 %i.ash, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1092, label %.lr.ph.i.i.i.i.i1089, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1092: ; preds = %.lr.ph.i.i.i.i.i1089, %.preheader2578, %bb.lj
  %.sroa.06.1.i.i.i1093 = phi ptr [ %.sroa.06.0.i.i.i1095, %.preheader2578 ], [ %i.arz, %bb.lj ], [ %i.asd, %.lr.ph.i.i.i.i.i1089 ]
  %i.asi = load ptr, ptr %0, align 8, !tbaa !452, !noalias !698, !nonnull !68, !align !453 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1093, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !96, !noalias !698
  %i.asl = load ptr, ptr %i.asi, align 8, !tbaa !94, !noalias !698
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 144
  %i.asn = load ptr, ptr %i.asm, align 8, !noalias !698
  %i.aso = invoke noundef ptr %i.asn(ptr noundef nonnull align 8 dereferenceable(8) %i.asi, ptr noundef %i.ask)
          to label %bb.lk unwind label %bb.ls, !inline_history !631

bb.lk:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1092
  store ptr %i.aso, ptr %76, align 8, !tbaa !96, !alias.scope !698
  %i.asp = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #35
  %i.asq = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %.sroa.0116.0.copyload = load i32, ptr %i.asq, align 8, !tbaa !498 ; 2 uses
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %.sroa.2118.0.copyload = load i64, ptr %.sroa.2118.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  switch i32 %.sroa.0116.0.copyload, label %bb.lp [
    i32 0, label %bb.ll
    i32 1, label %bb.lm
    i32 3, label %bb.ln
    i32 2, label %bb.lo
  ]

bb.ll:                                            ; preds = %bb.lk
  store i32 0, ptr %77, align 8, !tbaa !69, !alias.scope !704
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109

bb.lm:                                            ; preds = %bb.lk
  store i32 1, ptr %77, align 8, !tbaa !69, !alias.scope !707
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109

bb.ln:                                            ; preds = %bb.lk
  store i32 3, ptr %77, align 8, !tbaa !69, !alias.scope !701
  store i64 %.sroa.2118.0.copyload, ptr %i.bj, align 8, !tbaa !74, !alias.scope !701
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109

bb.lo:                                            ; preds = %bb.lk
  %i.asr = trunc i64 %.sroa.2118.0.copyload to i8
  store i32 2, ptr %77, align 8, !tbaa !69, !alias.scope !701
  store i8 %i.asr, ptr %i.bj, align 8, !tbaa !74, !alias.scope !701
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109

bb.lp:                                            ; preds = %bb.lk
  %.off.i.i1098 = add i32 %.sroa.0116.0.copyload, -4
  %switch.i.i1099 = icmp ult i32 %.off.i.i1098, 5
  call void @llvm.assume(i1 %switch.i.i1099)
  %i.ass = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !710
  %.not.not.i.i.i.i1100 = icmp eq i64 %i.ass, 0
  br i1 %.not.not.i.i.i.i1100, label %.preheader2576, label %bb.lq

.preheader2576:                                   ; preds = %bb.lp, %.preheader2576
  %.sroa.06.0.in.i.i.i.i1106 = phi ptr [ %.sroa.06.0.i.i.i.i1107, %.preheader2576 ], [ %i.x, %bb.lp ]
  %.sroa.06.0.i.i.i.i1107 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1106, align 8, !tbaa !119, !noalias !710, !nonnull !68, !noundef !68 ; 3 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1107, i64 8
  %i.asu = load i64, ptr %i.ast, align 8, !tbaa !107, !noalias !710
  %i.asv = icmp eq i64 %.sroa.2118.0.copyload, %i.asu
  br i1 %i.asv, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1104, label %.preheader2576, !llvm.loop !515

bb.lq:                                            ; preds = %bb.lp
  %i.asw = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !710 ; 2 uses
  %i.asx = urem i64 %.sroa.2118.0.copyload, %i.asw ; 2 uses
  %i.asy = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !710
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.asy, i64 %i.asx
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !121, !noalias !710, !nonnull !68, !noundef !68
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !119, !noalias !710 ; 3 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %i.atd = load i64, ptr %i.atc, align 8, !tbaa !107, !noalias !710
  %i.ate = icmp eq i64 %.sroa.2118.0.copyload, %i.atd
  br i1 %i.ate, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1104, label %.lr.ph.i.i.i.i.i.i1101

.lr.ph.i.i.i.i.i.i1101:                           ; preds = %bb.lq, %.lr.ph.i.i.i.i.i.i1101
  %.020.i.i.i.i.i.i1102 = phi ptr [ %i.atf, %.lr.ph.i.i.i.i.i.i1101 ], [ %i.atb, %bb.lq ]
  %i.atf = load ptr, ptr %.020.i.i.i.i.i.i1102, align 8, !tbaa !119, !noalias !710, !nonnull !68, !noundef !68 ; 3 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  %i.ath = load i64, ptr %i.atg, align 8, !tbaa !107, !noalias !710 ; 2 uses
  %i.ati = urem i64 %i.ath, %i.asw
  %.not19.i.i.i.i.i.i1103 = icmp eq i64 %i.ati, %i.asx
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1103)
  %i.atj = icmp eq i64 %.sroa.2118.0.copyload, %i.ath
  br i1 %i.atj, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1104, label %.lr.ph.i.i.i.i.i.i1101, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1104: ; preds = %.lr.ph.i.i.i.i.i.i1101, %.preheader2576, %bb.lq
  %.sroa.06.1.i.i.i.i1105 = phi ptr [ %.sroa.06.0.i.i.i.i1107, %.preheader2576 ], [ %i.atb, %bb.lq ], [ %i.atf, %.lr.ph.i.i.i.i.i.i1101 ]
  %i.atk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1105, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(8) %i.asp, ptr noundef nonnull align 8 dereferenceable(16) %i.atk)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109 unwind label %bb.lt

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109: ; preds = %bb.lo, %bb.ln, %bb.lm, %bb.ll, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1104
  %i.atl = load ptr, ptr %i.asp, align 8, !tbaa !94
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 432
  %i.atn = load ptr, ptr %i.atm, align 8
  invoke void %i.atn(ptr noundef nonnull align 8 dereferenceable(8) %i.asp, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull align 8 dereferenceable(16) %77)
          to label %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit unwind label %bb.lu, !inline_history !713

_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #35
  %i.ato = load ptr, ptr %76, align 8, !tbaa !96  ; 3 uses
  %.not.i1111 = icmp eq ptr %i.ato, null
  br i1 %.not.i1111, label %_ZN8facebook3jsi7PointerD2Ev.exit1112, label %bb.lr

bb.lr:                                            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !94
  %i.atq = load ptr, ptr %i.atp, align 8
  call void %i.atq(ptr noundef nonnull align 8 dereferenceable(8) %i.ato) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1112

_ZN8facebook3jsi7PointerD2Ev.exit1112:            ; preds = %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKNS0_10PropNameIDEOT_.exit, %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #35
  br label %bb.mp

bb.ls:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1092
  %i.atr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1114

bb.lt:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1104
  %i.ats = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lv

bb.lu:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1109
  %i.att = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #35
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.pn577 = phi { ptr, i32 } [ %i.att, %bb.lu ], [ %i.ats, %bb.lt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #35
  %i.atu = load ptr, ptr %76, align 8, !tbaa !96  ; 3 uses
  %.not.i1113 = icmp eq ptr %i.atu, null
  br i1 %.not.i1113, label %_ZN8facebook3jsi7PointerD2Ev.exit1114, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !94
  %i.atw = load ptr, ptr %i.atv, align 8
  call void %i.atw(ptr noundef nonnull align 8 dereferenceable(8) %i.atu) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1114

_ZN8facebook3jsi7PointerD2Ev.exit1114:            ; preds = %bb.lw, %bb.lv, %bb.ls
  %.pn577.pn = phi { ptr, i32 } [ %i.atr, %bb.ls ], [ %.pn577, %bb.lv ], [ %.pn577, %bb.lw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #35
  br label %bb.mr

bb.lx:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #35
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.2115.0.copyload = load i64, ptr %.sroa.2115.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  switch i32 %i.apf, label %bb.mc [
    i32 0, label %bb.ly
    i32 1, label %bb.lz
    i32 3, label %bb.ma
    i32 2, label %bb.mb
  ]

bb.ly:                                            ; preds = %bb.lx
  store i32 0, ptr %78, align 8, !tbaa !69, !alias.scope !717
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126

bb.lz:                                            ; preds = %bb.lx
  store i32 1, ptr %78, align 8, !tbaa !69, !alias.scope !720
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126

bb.ma:                                            ; preds = %bb.lx
  store i32 3, ptr %78, align 8, !tbaa !69, !alias.scope !714
  store i64 %.sroa.2115.0.copyload, ptr %i.bl, align 8, !tbaa !74, !alias.scope !714
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126

bb.mb:                                            ; preds = %bb.lx
  %i.atx = trunc i64 %.sroa.2115.0.copyload to i8
  store i32 2, ptr %78, align 8, !tbaa !69, !alias.scope !714
  store i8 %i.atx, ptr %i.bl, align 8, !tbaa !74, !alias.scope !714
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126

bb.mc:                                            ; preds = %bb.lx
  %.off.i.i1115 = add i32 %i.apf, -4
  %switch.i.i1116 = icmp ult i32 %.off.i.i1115, 5
  call void @llvm.assume(i1 %switch.i.i1116)
  %i.aty = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !723
  %.not.not.i.i.i.i1117 = icmp eq i64 %i.aty, 0
  br i1 %.not.not.i.i.i.i1117, label %.preheader2570, label %bb.md

.preheader2570:                                   ; preds = %bb.mc, %.preheader2570
  %.sroa.06.0.in.i.i.i.i1123 = phi ptr [ %.sroa.06.0.i.i.i.i1124, %.preheader2570 ], [ %i.x, %bb.mc ]
  %.sroa.06.0.i.i.i.i1124 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1123, align 8, !tbaa !119, !noalias !723, !nonnull !68, !noundef !68 ; 3 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1124, i64 8
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !107, !noalias !723
  %i.aub = icmp eq i64 %.sroa.2115.0.copyload, %i.aua
  br i1 %i.aub, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1121, label %.preheader2570, !llvm.loop !515

bb.md:                                            ; preds = %bb.mc
  %i.auc = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !723 ; 2 uses
  %i.aud = urem i64 %.sroa.2115.0.copyload, %i.auc ; 2 uses
  %i.aue = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !723
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.aue, i64 %i.aud
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !121, !noalias !723, !nonnull !68, !noundef !68
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !119, !noalias !723 ; 3 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 8
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !107, !noalias !723
  %i.auk = icmp eq i64 %.sroa.2115.0.copyload, %i.auj
  br i1 %i.auk, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1121, label %.lr.ph.i.i.i.i.i.i1118

.lr.ph.i.i.i.i.i.i1118:                           ; preds = %bb.md, %.lr.ph.i.i.i.i.i.i1118
  %.020.i.i.i.i.i.i1119 = phi ptr [ %i.aul, %.lr.ph.i.i.i.i.i.i1118 ], [ %i.auh, %bb.md ]
  %i.aul = load ptr, ptr %.020.i.i.i.i.i.i1119, align 8, !tbaa !119, !noalias !723, !nonnull !68, !noundef !68 ; 3 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  %i.aun = load i64, ptr %i.aum, align 8, !tbaa !107, !noalias !723 ; 2 uses
  %i.auo = urem i64 %i.aun, %i.auc
  %.not19.i.i.i.i.i.i1120 = icmp eq i64 %i.auo, %i.aud
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1120)
  %i.aup = icmp eq i64 %.sroa.2115.0.copyload, %i.aun
  br i1 %i.aup, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1121, label %.lr.ph.i.i.i.i.i.i1118, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1121: ; preds = %.lr.ph.i.i.i.i.i.i1118, %.preheader2570, %bb.md
  %.sroa.06.1.i.i.i.i1122 = phi ptr [ %.sroa.06.0.i.i.i.i1124, %.preheader2570 ], [ %i.auh, %bb.md ], [ %i.aul, %.lr.ph.i.i.i.i.i.i1118 ]
  %i.auq = load ptr, ptr %0, align 8, !tbaa !452, !noalias !723, !nonnull !68, !align !453
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1122, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(8) %i.auq, ptr noundef nonnull align 8 dereferenceable(16) %i.aur)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126 unwind label %bb.mk

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126: ; preds = %bb.mb, %bb.ma, %bb.lz, %bb.ly, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1121
  %i.aus = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #35
  %i.aut = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %.sroa.0110.0.copyload = load i32, ptr %i.aut, align 8, !tbaa !498 ; 2 uses
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %.sroa.2112.0.copyload = load i64, ptr %.sroa.2112.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  switch i32 %.sroa.0110.0.copyload, label %bb.mi [
    i32 0, label %bb.me
    i32 1, label %bb.mf
    i32 3, label %bb.mg
    i32 2, label %bb.mh
  ]

bb.me:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126
  store i32 0, ptr %79, align 8, !tbaa !69, !alias.scope !729
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138

bb.mf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126
  store i32 1, ptr %79, align 8, !tbaa !69, !alias.scope !732
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138

bb.mg:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126
  store i32 3, ptr %79, align 8, !tbaa !69, !alias.scope !726
  store i64 %.sroa.2112.0.copyload, ptr %i.bm, align 8, !tbaa !74, !alias.scope !726
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138

bb.mh:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126
  %i.auu = trunc i64 %.sroa.2112.0.copyload to i8
  store i32 2, ptr %79, align 8, !tbaa !69, !alias.scope !726
  store i8 %i.auu, ptr %i.bm, align 8, !tbaa !74, !alias.scope !726
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138

bb.mi:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1126
  %.off.i.i1127 = add i32 %.sroa.0110.0.copyload, -4
  %switch.i.i1128 = icmp ult i32 %.off.i.i1127, 5
  call void @llvm.assume(i1 %switch.i.i1128)
  %i.auv = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !735
  %.not.not.i.i.i.i1129 = icmp eq i64 %i.auv, 0
  br i1 %.not.not.i.i.i.i1129, label %.preheader2568, label %bb.mj

.preheader2568:                                   ; preds = %bb.mi, %.preheader2568
  %.sroa.06.0.in.i.i.i.i1135 = phi ptr [ %.sroa.06.0.i.i.i.i1136, %.preheader2568 ], [ %i.x, %bb.mi ]
  %.sroa.06.0.i.i.i.i1136 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1135, align 8, !tbaa !119, !noalias !735, !nonnull !68, !noundef !68 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1136, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !107, !noalias !735
  %i.auy = icmp eq i64 %.sroa.2112.0.copyload, %i.aux
  br i1 %i.auy, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1133, label %.preheader2568, !llvm.loop !515

bb.mj:                                            ; preds = %bb.mi
  %i.auz = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !735 ; 2 uses
  %i.ava = urem i64 %.sroa.2112.0.copyload, %i.auz ; 2 uses
  %i.avb = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !735
  %i.avc = getelementptr inbounds nuw [8 x i8], ptr %i.avb, i64 %i.ava
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !121, !noalias !735, !nonnull !68, !noundef !68
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !119, !noalias !735 ; 3 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 8
  %i.avg = load i64, ptr %i.avf, align 8, !tbaa !107, !noalias !735
  %i.avh = icmp eq i64 %.sroa.2112.0.copyload, %i.avg
  br i1 %i.avh, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1133, label %.lr.ph.i.i.i.i.i.i1130

.lr.ph.i.i.i.i.i.i1130:                           ; preds = %bb.mj, %.lr.ph.i.i.i.i.i.i1130
  %.020.i.i.i.i.i.i1131 = phi ptr [ %i.avi, %.lr.ph.i.i.i.i.i.i1130 ], [ %i.ave, %bb.mj ]
  %i.avi = load ptr, ptr %.020.i.i.i.i.i.i1131, align 8, !tbaa !119, !noalias !735, !nonnull !68, !noundef !68 ; 3 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.avk = load i64, ptr %i.avj, align 8, !tbaa !107, !noalias !735 ; 2 uses
  %i.avl = urem i64 %i.avk, %i.auz
  %.not19.i.i.i.i.i.i1132 = icmp eq i64 %i.avl, %i.ava
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1132)
  %i.avm = icmp eq i64 %.sroa.2112.0.copyload, %i.avk
  br i1 %i.avm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1133, label %.lr.ph.i.i.i.i.i.i1130, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1133: ; preds = %.lr.ph.i.i.i.i.i.i1130, %.preheader2568, %bb.mj
  %.sroa.06.1.i.i.i.i1134 = phi ptr [ %.sroa.06.0.i.i.i.i1136, %.preheader2568 ], [ %i.ave, %bb.mj ], [ %i.avi, %.lr.ph.i.i.i.i.i.i1130 ]
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1134, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(8) %i.aus, ptr noundef nonnull align 8 dereferenceable(16) %i.avn)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138 unwind label %bb.ml

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138: ; preds = %bb.mh, %bb.mg, %bb.mf, %bb.me, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1133
  %i.avo = load ptr, ptr %i.aus, align 8, !tbaa !94
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 448
  %i.avq = load ptr, ptr %i.avp, align 8
  invoke void %i.avq(ptr noundef nonnull align 8 dereferenceable(8) %i.aus, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %79)
          to label %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKS3_OT_.exit unwind label %bb.mm, !inline_history !738

_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKS3_OT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #35
  br label %bb.mp

bb.mk:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1121
  %i.avr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mo

bb.ml:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1133
  %i.avs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mn

bb.mm:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1138
  %i.avt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #35
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml
  %.pn574 = phi { ptr, i32 } [ %i.avt, %bb.mm ], [ %i.avs, %bb.ml ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #35
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mk
  %.pn574.pn = phi { ptr, i32 } [ %.pn574, %bb.mn ], [ %i.avr, %bb.mk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #35
  br label %bb.mr

bb.mp:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1112, %_ZNK8facebook3jsi6Object11setPropertyINS0_5ValueEEEvRNS0_7RuntimeERKS3_OT_.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1085
  %i.avu = load ptr, ptr %71, align 8, !tbaa !96  ; 3 uses
  %.not.i1140 = icmp eq ptr %i.avu, null
  br i1 %.not.i1140, label %_ZN8facebook3jsi7PointerD2Ev.exit1141, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !94
  %i.avw = load ptr, ptr %i.avv, align 8
  call void %i.avw(ptr noundef nonnull align 8 dereferenceable(8) %i.avu) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1141

_ZN8facebook3jsi7PointerD2Ev.exit1141:            ; preds = %bb.mp, %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  br label %.critedge710

bb.mr:                                            ; preds = %bb.mo, %_ZN8facebook3jsi7PointerD2Ev.exit1114, %_ZN8facebook3jsi7PointerD2Ev.exit1087
  %.pn582.pn.pn = phi { ptr, i32 } [ %.pn582.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1087 ], [ %.pn577.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1114 ], [ %.pn574.pn, %bb.mo ] ; 2 uses
  %i.avx = load ptr, ptr %71, align 8, !tbaa !96  ; 3 uses
  %.not.i1142 = icmp eq ptr %i.avx, null
  br i1 %.not.i1142, label %_ZN8facebook3jsi7PointerD2Ev.exit1143, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !94
  %i.avz = load ptr, ptr %i.avy, align 8
  call void %i.avz(ptr noundef nonnull align 8 dereferenceable(8) %i.avx) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1143

_ZN8facebook3jsi7PointerD2Ev.exit1143:            ; preds = %bb.ms, %bb.mr, %bb.la
  %.pn582.pn.pn.pn = phi { ptr, i32 } [ %.pn572, %bb.la ], [ %.pn582.pn.pn, %bb.mr ], [ %.pn582.pn.pn, %bb.ms ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  br label %bb.zm

bb.mt:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #35
  %i.awa = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !739 ; 4 uses
  %i.awc = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !741
  %.not.not.i.i.i1144 = icmp eq i64 %i.awc, 0
  br i1 %.not.not.i.i.i1144, label %.preheader2584, label %bb.mu

.preheader2584:                                   ; preds = %bb.mt, %.preheader2584
  %.sroa.06.0.in.i.i.i1150 = phi ptr [ %.sroa.06.0.i.i.i1151, %.preheader2584 ], [ %i.x, %bb.mt ]
  %.sroa.06.0.i.i.i1151 = load ptr, ptr %.sroa.06.0.in.i.i.i1150, align 8, !tbaa !119, !noalias !741, !nonnull !68, !noundef !68 ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1151, i64 8
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !107, !noalias !741
  %i.awf = icmp eq i64 %i.awb, %i.awe
  br i1 %i.awf, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1148, label %.preheader2584, !llvm.loop !515

bb.mu:                                            ; preds = %bb.mt
  %i.awg = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !741 ; 2 uses
  %i.awh = urem i64 %i.awb, %i.awg                ; 2 uses
  %i.awi = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !741
  %i.awj = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %i.awh
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !121, !noalias !741, !nonnull !68, !noundef !68
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !119, !noalias !741 ; 3 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  %i.awn = load i64, ptr %i.awm, align 8, !tbaa !107, !noalias !741
  %i.awo = icmp eq i64 %i.awb, %i.awn
  br i1 %i.awo, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1148, label %.lr.ph.i.i.i.i.i1145

.lr.ph.i.i.i.i.i1145:                             ; preds = %bb.mu, %.lr.ph.i.i.i.i.i1145
  %.020.i.i.i.i.i1146 = phi ptr [ %i.awp, %.lr.ph.i.i.i.i.i1145 ], [ %i.awl, %bb.mu ]
  %i.awp = load ptr, ptr %.020.i.i.i.i.i1146, align 8, !tbaa !119, !noalias !741, !nonnull !68, !noundef !68 ; 3 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 8
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !107, !noalias !741 ; 2 uses
  %i.aws = urem i64 %i.awr, %i.awg
  %.not19.i.i.i.i.i1147 = icmp eq i64 %i.aws, %i.awh
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1147)
  %i.awt = icmp eq i64 %i.awb, %i.awr
  br i1 %i.awt, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1148, label %.lr.ph.i.i.i.i.i1145, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1148: ; preds = %.lr.ph.i.i.i.i.i1145, %.preheader2584, %bb.mu
  %.sroa.06.1.i.i.i1149 = phi ptr [ %.sroa.06.0.i.i.i1151, %.preheader2584 ], [ %i.awl, %bb.mu ], [ %i.awp, %.lr.ph.i.i.i.i.i1145 ]
  %i.awu = load ptr, ptr %0, align 8, !tbaa !452, !noalias !741, !nonnull !68, !align !453
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1149, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull align 8 dereferenceable(8) %i.awu, ptr noundef nonnull align 8 dereferenceable(16) %i.awv)
          to label %bb.mv unwind label %bb.nd

bb.mv:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1148
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.aww = load ptr, ptr %i.bh, align 8, !tbaa !74, !noalias !744
  store ptr null, ptr %i.bh, align 8, !tbaa !74, !noalias !744
  store ptr %i.aww, ptr %80, align 8, !tbaa !96, !alias.scope !744
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %81) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #35
  %i.awx = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #35
  %i.awy = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %.sroa.0105.0.copyload = load i32, ptr %i.awy, align 8, !tbaa !498 ; 2 uses
  %.sroa.2107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.2107.0.copyload = load i64, ptr %.sroa.2107.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  switch i32 %.sroa.0105.0.copyload, label %bb.na [
    i32 0, label %bb.mw
    i32 1, label %bb.mx
    i32 3, label %bb.my
    i32 2, label %bb.mz
  ]

bb.mw:                                            ; preds = %bb.mv
  store i32 0, ptr %82, align 8, !tbaa !69, !alias.scope !750
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165

bb.mx:                                            ; preds = %bb.mv
  store i32 1, ptr %82, align 8, !tbaa !69, !alias.scope !753
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165

bb.my:                                            ; preds = %bb.mv
  store i32 3, ptr %82, align 8, !tbaa !69, !alias.scope !747
  store i64 %.sroa.2107.0.copyload, ptr %i.bi, align 8, !tbaa !74, !alias.scope !747
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165

bb.mz:                                            ; preds = %bb.mv
  %i.awz = trunc i64 %.sroa.2107.0.copyload to i8
  store i32 2, ptr %82, align 8, !tbaa !69, !alias.scope !747
  store i8 %i.awz, ptr %i.bi, align 8, !tbaa !74, !alias.scope !747
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165

bb.na:                                            ; preds = %bb.mv
  %.off.i.i1154 = add i32 %.sroa.0105.0.copyload, -4
  %switch.i.i1155 = icmp ult i32 %.off.i.i1154, 5
  call void @llvm.assume(i1 %switch.i.i1155)
  %i.axa = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !756
  %.not.not.i.i.i.i1156 = icmp eq i64 %i.axa, 0
  br i1 %.not.not.i.i.i.i1156, label %.preheader2582, label %bb.nb

.preheader2582:                                   ; preds = %bb.na, %.preheader2582
  %.sroa.06.0.in.i.i.i.i1162 = phi ptr [ %.sroa.06.0.i.i.i.i1163, %.preheader2582 ], [ %i.x, %bb.na ]
  %.sroa.06.0.i.i.i.i1163 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1162, align 8, !tbaa !119, !noalias !756, !nonnull !68, !noundef !68 ; 3 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1163, i64 8
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !107, !noalias !756
  %i.axd = icmp eq i64 %.sroa.2107.0.copyload, %i.axc
  br i1 %i.axd, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1160, label %.preheader2582, !llvm.loop !515

bb.nb:                                            ; preds = %bb.na
  %i.axe = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !756 ; 2 uses
  %i.axf = urem i64 %.sroa.2107.0.copyload, %i.axe ; 2 uses
  %i.axg = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !756
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.axg, i64 %i.axf
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !121, !noalias !756, !nonnull !68, !noundef !68
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !119, !noalias !756 ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !107, !noalias !756
  %i.axm = icmp eq i64 %.sroa.2107.0.copyload, %i.axl
  br i1 %i.axm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1160, label %.lr.ph.i.i.i.i.i.i1157

.lr.ph.i.i.i.i.i.i1157:                           ; preds = %bb.nb, %.lr.ph.i.i.i.i.i.i1157
  %.020.i.i.i.i.i.i1158 = phi ptr [ %i.axn, %.lr.ph.i.i.i.i.i.i1157 ], [ %i.axj, %bb.nb ]
  %i.axn = load ptr, ptr %.020.i.i.i.i.i.i1158, align 8, !tbaa !119, !noalias !756, !nonnull !68, !noundef !68 ; 3 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 8
  %i.axp = load i64, ptr %i.axo, align 8, !tbaa !107, !noalias !756 ; 2 uses
  %i.axq = urem i64 %i.axp, %i.axe
  %.not19.i.i.i.i.i.i1159 = icmp eq i64 %i.axq, %i.axf
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1159)
  %i.axr = icmp eq i64 %.sroa.2107.0.copyload, %i.axp
  br i1 %i.axr, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1160, label %.lr.ph.i.i.i.i.i.i1157, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1160: ; preds = %.lr.ph.i.i.i.i.i.i1157, %.preheader2582, %bb.nb
  %.sroa.06.1.i.i.i.i1161 = phi ptr [ %.sroa.06.0.i.i.i.i1163, %.preheader2582 ], [ %i.axj, %bb.nb ], [ %i.axn, %.lr.ph.i.i.i.i.i.i1157 ]
  %i.axs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1161, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %82, ptr noundef nonnull align 8 dereferenceable(8) %i.awx, ptr noundef nonnull align 8 dereferenceable(16) %i.axs)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165 unwind label %bb.ne

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165: ; preds = %bb.mz, %bb.my, %bb.mx, %bb.mw, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1160
  %i.axt = load ptr, ptr %i.awx, align 8, !tbaa !94
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 368
  %i.axv = load ptr, ptr %i.axu, align 8
  invoke void %i.axv(ptr noundef nonnull align 8 dereferenceable(8) %i.awx, ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef nonnull align 8 dereferenceable(16) %82)
          to label %_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.nf, !inline_history !759

_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %82) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #35
  %i.axw = load ptr, ptr %80, align 8, !tbaa !96  ; 3 uses
  %.not.i1167 = icmp eq ptr %i.axw, null
  br i1 %.not.i1167, label %_ZN8facebook3jsi7PointerD2Ev.exit1168, label %bb.nc

bb.nc:                                            ; preds = %_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !94
  %i.axy = load ptr, ptr %i.axx, align 8
  call void %i.axy(ptr noundef nonnull align 8 dereferenceable(8) %i.axw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1168

_ZN8facebook3jsi7PointerD2Ev.exit1168:            ; preds = %_ZNK8facebook3jsi6Object12setPrototypeERNS0_7RuntimeERKNS0_5ValueE.exit, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #35
  br label %.critedge710

bb.nd:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1148
  %i.axz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1170

bb.ne:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1160
  %i.aya = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ng

bb.nf:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1165
  %i.ayb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %82) #35
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne
  %.pn569 = phi { ptr, i32 } [ %i.ayb, %bb.nf ], [ %i.aya, %bb.ne ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #35
  %i.ayc = load ptr, ptr %80, align 8, !tbaa !96  ; 3 uses
  %.not.i1169 = icmp eq ptr %i.ayc, null
  br i1 %.not.i1169, label %_ZN8facebook3jsi7PointerD2Ev.exit1170, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !94
  %i.aye = load ptr, ptr %i.ayd, align 8
  call void %i.aye(ptr noundef nonnull align 8 dereferenceable(8) %i.ayc) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1170

_ZN8facebook3jsi7PointerD2Ev.exit1170:            ; preds = %bb.nh, %bb.ng, %bb.nd
  %.pn569.pn = phi { ptr, i32 } [ %i.axz, %bb.nd ], [ %.pn569, %bb.ng ], [ %.pn569, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #35
  br label %bb.zm

bb.ni:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #35
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ayg = load i64, ptr %i.ayf, align 8, !tbaa !760 ; 4 uses
  %i.ayh = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !762
  %.not.not.i.i.i1171 = icmp eq i64 %i.ayh, 0
  br i1 %.not.not.i.i.i1171, label %.preheader2586, label %bb.nj

.preheader2586:                                   ; preds = %bb.ni, %.preheader2586
  %.sroa.06.0.in.i.i.i1177 = phi ptr [ %.sroa.06.0.i.i.i1178, %.preheader2586 ], [ %i.x, %bb.ni ]
  %.sroa.06.0.i.i.i1178 = load ptr, ptr %.sroa.06.0.in.i.i.i1177, align 8, !tbaa !119, !noalias !762, !nonnull !68, !noundef !68 ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1178, i64 8
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !107, !noalias !762
  %i.ayk = icmp eq i64 %i.ayg, %i.ayj
  br i1 %i.ayk, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1175, label %.preheader2586, !llvm.loop !515

bb.nj:                                            ; preds = %bb.ni
  %i.ayl = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !762 ; 2 uses
  %i.aym = urem i64 %i.ayg, %i.ayl                ; 2 uses
  %i.ayn = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !762
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.aym
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !121, !noalias !762, !nonnull !68, !noundef !68
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !119, !noalias !762 ; 3 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8
  %i.ays = load i64, ptr %i.ayr, align 8, !tbaa !107, !noalias !762
  %i.ayt = icmp eq i64 %i.ayg, %i.ays
  br i1 %i.ayt, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1175, label %.lr.ph.i.i.i.i.i1172

.lr.ph.i.i.i.i.i1172:                             ; preds = %bb.nj, %.lr.ph.i.i.i.i.i1172
  %.020.i.i.i.i.i1173 = phi ptr [ %i.ayu, %.lr.ph.i.i.i.i.i1172 ], [ %i.ayq, %bb.nj ]
  %i.ayu = load ptr, ptr %.020.i.i.i.i.i1173, align 8, !tbaa !119, !noalias !762, !nonnull !68, !noundef !68 ; 3 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !107, !noalias !762 ; 2 uses
  %i.ayx = urem i64 %i.ayw, %i.ayl
  %.not19.i.i.i.i.i1174 = icmp eq i64 %i.ayx, %i.aym
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1174)
  %i.ayy = icmp eq i64 %i.ayg, %i.ayw
  br i1 %i.ayy, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1175, label %.lr.ph.i.i.i.i.i1172, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1175: ; preds = %.lr.ph.i.i.i.i.i1172, %.preheader2586, %bb.nj
  %.sroa.06.1.i.i.i1176 = phi ptr [ %.sroa.06.0.i.i.i1178, %.preheader2586 ], [ %i.ayq, %bb.nj ], [ %i.ayu, %.lr.ph.i.i.i.i.i1172 ]
  %i.ayz = load ptr, ptr %0, align 8, !tbaa !452, !noalias !762, !nonnull !68, !align !453
  %i.aza = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1176, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(8) %i.ayz, ptr noundef nonnull align 8 dereferenceable(16) %i.aza)
          to label %bb.nk unwind label %bb.nm

bb.nk:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1175
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.azb = load ptr, ptr %i.bg, align 8, !tbaa !74, !noalias !765
  store ptr null, ptr %i.bg, align 8, !tbaa !74, !noalias !765
  store ptr %i.azb, ptr %83, align 8, !tbaa !96, !alias.scope !765
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %84) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #35
  %i.azc = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !94, !noalias !768
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 376
  %i.azf = load ptr, ptr %i.aze, align 8, !noalias !768
  invoke void %i.azf(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %85, ptr noundef nonnull align 8 dereferenceable(8) %i.azc, ptr noundef nonnull align 8 dereferenceable(8) %83)
          to label %_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit unwind label %bb.nn, !inline_history !771

_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit: ; preds = %bb.nk
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %85) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %85) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #35
  %i.azg = load ptr, ptr %83, align 8, !tbaa !96  ; 3 uses
  %.not.i1182 = icmp eq ptr %i.azg, null
  br i1 %.not.i1182, label %_ZN8facebook3jsi7PointerD2Ev.exit1183, label %bb.nl

bb.nl:                                            ; preds = %_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !94
  %i.azi = load ptr, ptr %i.azh, align 8
  call void %i.azi(ptr noundef nonnull align 8 dereferenceable(8) %i.azg) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1183

_ZN8facebook3jsi7PointerD2Ev.exit1183:            ; preds = %_ZNK8facebook3jsi6Object12getPrototypeERNS0_7RuntimeE.exit, %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #35
  br label %.critedge710

bb.nm:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1175
  %i.azj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1185

bb.nn:                                            ; preds = %bb.nk
  %i.azk = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  %i.bbo = invoke noundef zeroext i1 %i.bbn(ptr noundef nonnull align 8 dereferenceable(8) %i.bbk, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit unwind label %bb.oc, !inline_history !780 ; 0 uses

_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit: ; preds = %bb.nu
  %i.bbp = load ptr, ptr %88, align 8, !tbaa !96  ; 3 uses
  %.not.i1207 = icmp eq ptr %i.bbp, null
  br i1 %.not.i1207, label %_ZN8facebook3jsi7PointerD2Ev.exit1208, label %bb.nv

bb.nv:                                            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !94
  %i.bbr = load ptr, ptr %i.bbq, align 8
  call void %i.bbr(ptr noundef nonnull align 8 dereferenceable(8) %i.bbp) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1208

_ZN8facebook3jsi7PointerD2Ev.exit1208:            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_6StringE.exit, %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #35
  br label %bb.ov

bb.nw:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1190
  %i.bbs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ny

bb.nx:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1195
  %i.bbt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %87) #35
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.nw
  %.pn551 = phi { ptr, i32 } [ %i.bbt, %bb.nx ], [ %i.bbs, %bb.nw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1242

bb.nz:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1200
  %i.bbu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ob

bb.oa:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1205
  %i.bbv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %89) #35
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.nz
  %.pn557 = phi { ptr, i32 } [ %i.bbv, %bb.oa ], [ %i.bbu, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1210

bb.oc:                                            ; preds = %bb.nu
  %i.bbw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bbx = load ptr, ptr %88, align 8, !tbaa !96  ; 3 uses
  %.not.i1209 = icmp eq ptr %i.bbx, null
  br i1 %.not.i1209, label %_ZN8facebook3jsi7PointerD2Ev.exit1210, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !94
  %i.bbz = load ptr, ptr %i.bby, align 8
  call void %i.bbz(ptr noundef nonnull align 8 dereferenceable(8) %i.bbx) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1210

_ZN8facebook3jsi7PointerD2Ev.exit1210:            ; preds = %bb.od, %bb.oc, %bb.ob
  %.pn559 = phi { ptr, i32 } [ %.pn557, %bb.ob ], [ %i.bbw, %bb.oc ], [ %i.bbw, %bb.od ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #35
  br label %bb.ox

bb.oe:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #35
  %i.bca = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.bcb = load i64, ptr %i.bca, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.bcc = load i64, ptr %i.ab, align 8, !tbaa !628, !noalias !781
  %.not.not.i.i.i1211 = icmp eq i64 %i.bcc, 0
  br i1 %.not.not.i.i.i1211, label %.preheader2592, label %bb.of

.preheader2592:                                   ; preds = %bb.oe, %.preheader2592
  %.sroa.06.0.in.i.i.i1217 = phi ptr [ %.sroa.06.0.i.i.i1218, %.preheader2592 ], [ %i.ad, %bb.oe ]
  %.sroa.06.0.i.i.i1218 = load ptr, ptr %.sroa.06.0.in.i.i.i1217, align 8, !tbaa !119, !noalias !781, !nonnull !68, !noundef !68 ; 3 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1218, i64 8
  %i.bce = load i64, ptr %i.bcd, align 8, !tbaa !107, !noalias !781
  %i.bcf = icmp eq i64 %i.bcb, %i.bce
  br i1 %i.bcf, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1215, label %.preheader2592, !llvm.loop !629

bb.of:                                            ; preds = %bb.oe
  %i.bcg = load i64, ptr %i.ac, align 8, !tbaa !90, !noalias !781 ; 2 uses
  %i.bch = urem i64 %i.bcb, %i.bcg                ; 2 uses
  %i.bci = load ptr, ptr %i.u, align 8, !tbaa !89, !noalias !781
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %i.bci, i64 %i.bch
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !121, !noalias !781, !nonnull !68, !noundef !68
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !119, !noalias !781 ; 3 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !107, !noalias !781
  %i.bco = icmp eq i64 %i.bcb, %i.bcn
  br i1 %i.bco, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1215, label %.lr.ph.i.i.i.i.i1212

.lr.ph.i.i.i.i.i1212:                             ; preds = %bb.of, %.lr.ph.i.i.i.i.i1212
  %.020.i.i.i.i.i1213 = phi ptr [ %i.bcp, %.lr.ph.i.i.i.i.i1212 ], [ %i.bcl, %bb.of ]
  %i.bcp = load ptr, ptr %.020.i.i.i.i.i1213, align 8, !tbaa !119, !noalias !781, !nonnull !68, !noundef !68 ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %i.bcr = load i64, ptr %i.bcq, align 8, !tbaa !107, !noalias !781 ; 2 uses
  %i.bcs = urem i64 %i.bcr, %i.bcg
  %.not19.i.i.i.i.i1214 = icmp eq i64 %i.bcs, %i.bch
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1214)
  %i.bct = icmp eq i64 %i.bcb, %i.bcr
  br i1 %i.bct, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1215, label %.lr.ph.i.i.i.i.i1212, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1215: ; preds = %.lr.ph.i.i.i.i.i1212, %.preheader2592, %bb.of
  %.sroa.06.1.i.i.i1216 = phi ptr [ %.sroa.06.0.i.i.i1218, %.preheader2592 ], [ %i.bcl, %bb.of ], [ %i.bcp, %.lr.ph.i.i.i.i.i1212 ]
  %i.bcu = load ptr, ptr %0, align 8, !tbaa !452, !noalias !781, !nonnull !68, !align !453 ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1216, i64 16
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !96, !noalias !781
  %i.bcx = load ptr, ptr %i.bcu, align 8, !tbaa !94, !noalias !781
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 144
  %i.bcz = load ptr, ptr %i.bcy, align 8, !noalias !781
  %i.bda = invoke noundef ptr %i.bcz(ptr noundef nonnull align 8 dereferenceable(8) %i.bcu, ptr noundef %i.bcw)
          to label %bb.og unwind label %bb.oi, !inline_history !631

bb.og:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1215
  store ptr %i.bda, ptr %90, align 8, !tbaa !96, !alias.scope !781
  %i.bdb = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !94
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 408
  %i.bde = load ptr, ptr %i.bdd, align 8
  %i.bdf = invoke noundef zeroext i1 %i.bde(ptr noundef nonnull align 8 dereferenceable(8) %i.bdb, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit unwind label %bb.oj, !inline_history !784 ; 0 uses

_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit: ; preds = %bb.og
  %i.bdg = load ptr, ptr %90, align 8, !tbaa !96  ; 3 uses
  %.not.i1222 = icmp eq ptr %i.bdg, null
  br i1 %.not.i1222, label %_ZN8facebook3jsi7PointerD2Ev.exit1223, label %bb.oh

bb.oh:                                            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !94
  %i.bdi = load ptr, ptr %i.bdh, align 8
  call void %i.bdi(ptr noundef nonnull align 8 dereferenceable(8) %i.bdg) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1223

_ZN8facebook3jsi7PointerD2Ev.exit1223:            ; preds = %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit, %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #35
  br label %bb.ov

bb.oi:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1215
  %i.bdj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1225

bb.oj:                                            ; preds = %bb.og
  %i.bdk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bdl = load ptr, ptr %90, align 8, !tbaa !96  ; 3 uses
  %.not.i1224 = icmp eq ptr %i.bdl, null
  br i1 %.not.i1224, label %_ZN8facebook3jsi7PointerD2Ev.exit1225, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !94
  %i.bdn = load ptr, ptr %i.bdm, align 8
  call void %i.bdn(ptr noundef nonnull align 8 dereferenceable(8) %i.bdl) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1225

_ZN8facebook3jsi7PointerD2Ev.exit1225:            ; preds = %bb.ok, %bb.oj, %bb.oi
  %.pn555 = phi { ptr, i32 } [ %i.bdj, %bb.oi ], [ %i.bdk, %bb.oj ], [ %i.bdk, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #35
  br label %bb.ox

bb.ol:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #35
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.297.0.copyload = load i64, ptr %.sroa.297.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  switch i32 %i.bam, label %bb.oq [
    i32 0, label %bb.om
    i32 1, label %bb.on
    i32 3, label %bb.oo
    i32 2, label %bb.op
  ]

bb.om:                                            ; preds = %bb.ol
  store i32 0, ptr %91, align 8, !tbaa !69, !alias.scope !788
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237

bb.on:                                            ; preds = %bb.ol
  store i32 1, ptr %91, align 8, !tbaa !69, !alias.scope !791
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237

bb.oo:                                            ; preds = %bb.ol
  store i32 3, ptr %91, align 8, !tbaa !69, !alias.scope !785
  store i64 %.sroa.297.0.copyload, ptr %i.bf, align 8, !tbaa !74, !alias.scope !785
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237

bb.op:                                            ; preds = %bb.ol
  %i.bdo = trunc i64 %.sroa.297.0.copyload to i8
  store i32 2, ptr %91, align 8, !tbaa !69, !alias.scope !785
  store i8 %i.bdo, ptr %i.bf, align 8, !tbaa !74, !alias.scope !785
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237

bb.oq:                                            ; preds = %bb.ol
  %.off.i.i1226 = add i32 %i.bam, -4
  %switch.i.i1227 = icmp ult i32 %.off.i.i1226, 5
  call void @llvm.assume(i1 %switch.i.i1227)
  %i.bdp = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !794
  %.not.not.i.i.i.i1228 = icmp eq i64 %i.bdp, 0
  br i1 %.not.not.i.i.i.i1228, label %.preheader2588, label %bb.or

.preheader2588:                                   ; preds = %bb.oq, %.preheader2588
  %.sroa.06.0.in.i.i.i.i1234 = phi ptr [ %.sroa.06.0.i.i.i.i1235, %.preheader2588 ], [ %i.x, %bb.oq ]
  %.sroa.06.0.i.i.i.i1235 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1234, align 8, !tbaa !119, !noalias !794, !nonnull !68, !noundef !68 ; 3 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1235, i64 8
  %i.bdr = load i64, ptr %i.bdq, align 8, !tbaa !107, !noalias !794
  %i.bds = icmp eq i64 %.sroa.297.0.copyload, %i.bdr
  br i1 %i.bds, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1232, label %.preheader2588, !llvm.loop !515

bb.or:                                            ; preds = %bb.oq
  %i.bdt = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !794 ; 2 uses
  %i.bdu = urem i64 %.sroa.297.0.copyload, %i.bdt ; 2 uses
  %i.bdv = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !794
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.bdv, i64 %i.bdu
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !121, !noalias !794, !nonnull !68, !noundef !68
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !119, !noalias !794 ; 3 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 8
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !107, !noalias !794
  %i.beb = icmp eq i64 %.sroa.297.0.copyload, %i.bea
  br i1 %i.beb, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1232, label %.lr.ph.i.i.i.i.i.i1229

.lr.ph.i.i.i.i.i.i1229:                           ; preds = %bb.or, %.lr.ph.i.i.i.i.i.i1229
  %.020.i.i.i.i.i.i1230 = phi ptr [ %i.bec, %.lr.ph.i.i.i.i.i.i1229 ], [ %i.bdy, %bb.or ]
  %i.bec = load ptr, ptr %.020.i.i.i.i.i.i1230, align 8, !tbaa !119, !noalias !794, !nonnull !68, !noundef !68 ; 3 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  %i.bee = load i64, ptr %i.bed, align 8, !tbaa !107, !noalias !794 ; 2 uses
  %i.bef = urem i64 %i.bee, %i.bdt
  %.not19.i.i.i.i.i.i1231 = icmp eq i64 %i.bef, %i.bdu
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1231)
  %i.beg = icmp eq i64 %.sroa.297.0.copyload, %i.bee
  br i1 %i.beg, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1232, label %.lr.ph.i.i.i.i.i.i1229, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1232: ; preds = %.lr.ph.i.i.i.i.i.i1229, %.preheader2588, %bb.or
  %.sroa.06.1.i.i.i.i1233 = phi ptr [ %.sroa.06.0.i.i.i.i1235, %.preheader2588 ], [ %i.bdy, %bb.or ], [ %i.bec, %.lr.ph.i.i.i.i.i.i1229 ]
  %i.beh = load ptr, ptr %0, align 8, !tbaa !452, !noalias !794, !nonnull !68, !align !453
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1233, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(8) %i.beh, ptr noundef nonnull align 8 dereferenceable(16) %i.bei)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237 unwind label %bb.os

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237: ; preds = %bb.op, %bb.oo, %bb.on, %bb.om, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1232
  %i.bej = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !94
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 424
  %i.bem = load ptr, ptr %i.bel, align 8
  %i.ben = invoke noundef zeroext i1 %i.bem(ptr noundef nonnull align 8 dereferenceable(8) %i.bej, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(16) %91)
          to label %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.ot, !inline_history !797 ; 0 uses

_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #35
  br label %bb.ov

bb.os:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1232
  %i.beo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ou

bb.ot:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1237
  %i.bep = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #35
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %.pn553 = phi { ptr, i32 } [ %i.bep, %bb.ot ], [ %i.beo, %bb.os ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #35
  br label %bb.ox

bb.ov:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1223, %_ZNK8facebook3jsi6Object11hasPropertyERNS0_7RuntimeERKNS0_5ValueE.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1208
  %i.beq = load ptr, ptr %86, align 8, !tbaa !96  ; 3 uses
  %.not.i1239 = icmp eq ptr %i.beq, null
  br i1 %.not.i1239, label %_ZN8facebook3jsi7PointerD2Ev.exit1240, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !94
  %i.bes = load ptr, ptr %i.ber, align 8
  call void %i.bes(ptr noundef nonnull align 8 dereferenceable(8) %i.beq) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1240

_ZN8facebook3jsi7PointerD2Ev.exit1240:            ; preds = %bb.ov, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #35
  br label %.critedge710

bb.ox:                                            ; preds = %bb.ou, %_ZN8facebook3jsi7PointerD2Ev.exit1225, %_ZN8facebook3jsi7PointerD2Ev.exit1210
  %.pn559.pn = phi { ptr, i32 } [ %.pn559, %_ZN8facebook3jsi7PointerD2Ev.exit1210 ], [ %.pn555, %_ZN8facebook3jsi7PointerD2Ev.exit1225 ], [ %.pn553, %bb.ou ] ; 2 uses
  %i.bet = load ptr, ptr %86, align 8, !tbaa !96  ; 3 uses
  %.not.i1241 = icmp eq ptr %i.bet, null
  br i1 %.not.i1241, label %_ZN8facebook3jsi7PointerD2Ev.exit1242, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !94
  %i.bev = load ptr, ptr %i.beu, align 8
  call void %i.bev(ptr noundef nonnull align 8 dereferenceable(8) %i.bet) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1242

_ZN8facebook3jsi7PointerD2Ev.exit1242:            ; preds = %bb.oy, %bb.ox, %bb.ny
  %.pn559.pn.pn = phi { ptr, i32 } [ %.pn551, %bb.ny ], [ %.pn559.pn, %bb.ox ], [ %.pn559.pn, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #35
  br label %bb.zm

bb.oz:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #35
  %i.bew = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.bex = load i64, ptr %i.bew, align 8, !tbaa !798 ; 4 uses
  %i.bey = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !800
  %.not.not.i.i.i1243 = icmp eq i64 %i.bey, 0
  br i1 %.not.not.i.i.i1243, label %.preheader2602, label %bb.pa

.preheader2602:                                   ; preds = %bb.oz, %.preheader2602
  %.sroa.06.0.in.i.i.i1249 = phi ptr [ %.sroa.06.0.i.i.i1250, %.preheader2602 ], [ %i.x, %bb.oz ]
  %.sroa.06.0.i.i.i1250 = load ptr, ptr %.sroa.06.0.in.i.i.i1249, align 8, !tbaa !119, !noalias !800, !nonnull !68, !noundef !68 ; 3 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1250, i64 8
  %i.bfa = load i64, ptr %i.bez, align 8, !tbaa !107, !noalias !800
  %i.bfb = icmp eq i64 %i.bex, %i.bfa
  br i1 %i.bfb, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1247, label %.preheader2602, !llvm.loop !515

bb.pa:                                            ; preds = %bb.oz
  %i.bfc = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !800 ; 2 uses
  %i.bfd = urem i64 %i.bex, %i.bfc                ; 2 uses
  %i.bfe = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !800
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %i.bfe, i64 %i.bfd
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !121, !noalias !800, !nonnull !68, !noundef !68
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !119, !noalias !800 ; 3 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 8
  %i.bfj = load i64, ptr %i.bfi, align 8, !tbaa !107, !noalias !800
  %i.bfk = icmp eq i64 %i.bex, %i.bfj
  br i1 %i.bfk, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1247, label %.lr.ph.i.i.i.i.i1244

.lr.ph.i.i.i.i.i1244:                             ; preds = %bb.pa, %.lr.ph.i.i.i.i.i1244
  %.020.i.i.i.i.i1245 = phi ptr [ %i.bfl, %.lr.ph.i.i.i.i.i1244 ], [ %i.bfh, %bb.pa ]
  %i.bfl = load ptr, ptr %.020.i.i.i.i.i1245, align 8, !tbaa !119, !noalias !800, !nonnull !68, !noundef !68 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  %i.bfn = load i64, ptr %i.bfm, align 8, !tbaa !107, !noalias !800 ; 2 uses
  %i.bfo = urem i64 %i.bfn, %i.bfc
  %.not19.i.i.i.i.i1246 = icmp eq i64 %i.bfo, %i.bfd
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1246)
  %i.bfp = icmp eq i64 %i.bex, %i.bfn
  br i1 %i.bfp, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1247, label %.lr.ph.i.i.i.i.i1244, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1247: ; preds = %.lr.ph.i.i.i.i.i1244, %.preheader2602, %bb.pa
  %.sroa.06.1.i.i.i1248 = phi ptr [ %.sroa.06.0.i.i.i1250, %.preheader2602 ], [ %i.bfh, %bb.pa ], [ %i.bfl, %.lr.ph.i.i.i.i.i1244 ]
  %i.bfq = load ptr, ptr %0, align 8, !tbaa !452, !noalias !800, !nonnull !68, !align !453
  %i.bfr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1248, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull align 8 dereferenceable(8) %i.bfq, ptr noundef nonnull align 8 dereferenceable(16) %i.bfr)
          to label %bb.pb unwind label %bb.pg

bb.pb:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1247
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.bfs = load ptr, ptr %i.bd, align 8, !tbaa !74, !noalias !803
  store ptr null, ptr %i.bd, align 8, !tbaa !74, !noalias !803
  store ptr %i.bfs, ptr %92, align 8, !tbaa !96, !alias.scope !803
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %93) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #35
  %i.bft = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.bfu = load i32, ptr %i.bft, align 8, !tbaa !7 ; 3 uses
  switch i32 %i.bfu, label %bb.pt [
    i32 5, label %bb.pc
    i32 6, label %bb.pm
  ]

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #35
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !74 ; 4 uses
  %i.bfx = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !806
  %.not.not.i.i.i1253 = icmp eq i64 %i.bfx, 0
  br i1 %.not.not.i.i.i1253, label %.preheader2598, label %bb.pd

.preheader2598:                                   ; preds = %bb.pc, %.preheader2598
  %.sroa.06.0.in.i.i.i1259 = phi ptr [ %.sroa.06.0.i.i.i1260, %.preheader2598 ], [ %i.x, %bb.pc ]
  %.sroa.06.0.i.i.i1260 = load ptr, ptr %.sroa.06.0.in.i.i.i1259, align 8, !tbaa !119, !noalias !806, !nonnull !68, !noundef !68 ; 3 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1260, i64 8
  %i.bfz = load i64, ptr %i.bfy, align 8, !tbaa !107, !noalias !806
  %i.bga = icmp eq i64 %i.bfw, %i.bfz
  br i1 %i.bga, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1257, label %.preheader2598, !llvm.loop !515

bb.pd:                                            ; preds = %bb.pc
  %i.bgb = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !806 ; 2 uses
  %i.bgc = urem i64 %i.bfw, %i.bgb                ; 2 uses
  %i.bgd = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !806
  %i.bge = getelementptr inbounds nuw [8 x i8], ptr %i.bgd, i64 %i.bgc
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !121, !noalias !806, !nonnull !68, !noundef !68
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !119, !noalias !806 ; 3 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8
  %i.bgi = load i64, ptr %i.bgh, align 8, !tbaa !107, !noalias !806
  %i.bgj = icmp eq i64 %i.bfw, %i.bgi
  br i1 %i.bgj, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1257, label %.lr.ph.i.i.i.i.i1254
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  invoke void @_ZNO8facebook3jsi5Value8asStringERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %94, ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(8) %i.bgr)
          to label %bb.pe unwind label %bb.pi

bb.pe:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1262
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #35
  %i.bgs = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bgt = load ptr, ptr %i.bgs, align 8, !tbaa !94
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 464
  %i.bgv = load ptr, ptr %i.bgu, align 8
  invoke void %i.bgv(ptr noundef nonnull align 8 dereferenceable(8) %i.bgs, ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit unwind label %bb.pk, !inline_history !809

_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit: ; preds = %bb.pe
  %i.bgw = load ptr, ptr %94, align 8, !tbaa !96  ; 3 uses
  %.not.i1264 = icmp eq ptr %i.bgw, null
  br i1 %.not.i1264, label %_ZN8facebook3jsi7PointerD2Ev.exit1265, label %bb.pf

bb.pf:                                            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !94
  %i.bgy = load ptr, ptr %i.bgx, align 8
  call void %i.bgy(ptr noundef nonnull align 8 dereferenceable(8) %i.bgw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1265

_ZN8facebook3jsi7PointerD2Ev.exit1265:            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_6StringE.exit, %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #35
  br label %bb.qd

bb.pg:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1247
  %i.bgz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1299

bb.ph:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1257
  %i.bha = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.pj

bb.pi:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1262
  %i.bhb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #35
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %.pn545 = phi { ptr, i32 } [ %i.bhb, %bb.pi ], [ %i.bha, %bb.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1267

bb.pk:                                            ; preds = %bb.pe
  %i.bhc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bhd = load ptr, ptr %94, align 8, !tbaa !96  ; 3 uses
  %.not.i1266 = icmp eq ptr %i.bhd, null
  br i1 %.not.i1266, label %_ZN8facebook3jsi7PointerD2Ev.exit1267, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !94
  %i.bhf = load ptr, ptr %i.bhe, align 8
  call void %i.bhf(ptr noundef nonnull align 8 dereferenceable(8) %i.bhd) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1267

_ZN8facebook3jsi7PointerD2Ev.exit1267:            ; preds = %bb.pl, %bb.pk, %bb.pj
  %.pn547 = phi { ptr, i32 } [ %.pn545, %bb.pj ], [ %i.bhc, %bb.pk ], [ %i.bhc, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #35
  br label %bb.qf

bb.pm:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #35
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !74 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.bhi = load i64, ptr %i.ab, align 8, !tbaa !628, !noalias !810
  %.not.not.i.i.i1268 = icmp eq i64 %i.bhi, 0
  br i1 %.not.not.i.i.i1268, label %.preheader2600, label %bb.pn

.preheader2600:                                   ; preds = %bb.pm, %.preheader2600
  %.sroa.06.0.in.i.i.i1274 = phi ptr [ %.sroa.06.0.i.i.i1275, %.preheader2600 ], [ %i.ad, %bb.pm ]
  %.sroa.06.0.i.i.i1275 = load ptr, ptr %.sroa.06.0.in.i.i.i1274, align 8, !tbaa !119, !noalias !810, !nonnull !68, !noundef !68 ; 3 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1275, i64 8
  %i.bhk = load i64, ptr %i.bhj, align 8, !tbaa !107, !noalias !810
  %i.bhl = icmp eq i64 %i.bhh, %i.bhk
  br i1 %i.bhl, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1272, label %.preheader2600, !llvm.loop !629

bb.pn:                                            ; preds = %bb.pm
  %i.bhm = load i64, ptr %i.ac, align 8, !tbaa !90, !noalias !810 ; 2 uses
  %i.bhn = urem i64 %i.bhh, %i.bhm                ; 2 uses
  %i.bho = load ptr, ptr %i.u, align 8, !tbaa !89, !noalias !810
  %i.bhp = getelementptr inbounds nuw [8 x i8], ptr %i.bho, i64 %i.bhn
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !121, !noalias !810, !nonnull !68, !noundef !68
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !119, !noalias !810 ; 3 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  %i.bht = load i64, ptr %i.bhs, align 8, !tbaa !107, !noalias !810
  %i.bhu = icmp eq i64 %i.bhh, %i.bht
  br i1 %i.bhu, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1272, label %.lr.ph.i.i.i.i.i1269

.lr.ph.i.i.i.i.i1269:                             ; preds = %bb.pn, %.lr.ph.i.i.i.i.i1269
  %.020.i.i.i.i.i1270 = phi ptr [ %i.bhv, %.lr.ph.i.i.i.i.i1269 ], [ %i.bhr, %bb.pn ]
  %i.bhv = load ptr, ptr %.020.i.i.i.i.i1270, align 8, !tbaa !119, !noalias !810, !nonnull !68, !noundef !68 ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 8
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !107, !noalias !810 ; 2 uses
  %i.bhy = urem i64 %i.bhx, %i.bhm
  %.not19.i.i.i.i.i1271 = icmp eq i64 %i.bhy, %i.bhn
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1271)
  %i.bhz = icmp eq i64 %i.bhh, %i.bhx
  br i1 %i.bhz, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1272, label %.lr.ph.i.i.i.i.i1269, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1272: ; preds = %.lr.ph.i.i.i.i.i1269, %.preheader2600, %bb.pn
  %.sroa.06.1.i.i.i1273 = phi ptr [ %.sroa.06.0.i.i.i1275, %.preheader2600 ], [ %i.bhr, %bb.pn ], [ %i.bhv, %.lr.ph.i.i.i.i.i1269 ]
  %i.bia = load ptr, ptr %0, align 8, !tbaa !452, !noalias !810, !nonnull !68, !align !453 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1273, i64 16
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !96, !noalias !810
  %i.bid = load ptr, ptr %i.bia, align 8, !tbaa !94, !noalias !810
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 144
  %i.bif = load ptr, ptr %i.bie, align 8, !noalias !810
  %i.big = invoke noundef ptr %i.bif(ptr noundef nonnull align 8 dereferenceable(8) %i.bia, ptr noundef %i.bic)
          to label %bb.po unwind label %bb.pq, !inline_history !631

bb.po:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1272
  store ptr %i.big, ptr %96, align 8, !tbaa !96, !alias.scope !810
  %i.bih = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !94
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 456
  %i.bik = load ptr, ptr %i.bij, align 8
  invoke void %i.bik(ptr noundef nonnull align 8 dereferenceable(8) %i.bih, ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit unwind label %bb.pr, !inline_history !813

_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit: ; preds = %bb.po
  %i.bil = load ptr, ptr %96, align 8, !tbaa !96  ; 3 uses
  %.not.i1279 = icmp eq ptr %i.bil, null
  br i1 %.not.i1279, label %_ZN8facebook3jsi7PointerD2Ev.exit1280, label %bb.pp

bb.pp:                                            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !94
  %i.bin = load ptr, ptr %i.bim, align 8
  call void %i.bin(ptr noundef nonnull align 8 dereferenceable(8) %i.bil) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1280

_ZN8facebook3jsi7PointerD2Ev.exit1280:            ; preds = %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_10PropNameIDE.exit, %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #35
  br label %bb.qd

bb.pq:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1272
  %i.bio = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1282

bb.pr:                                            ; preds = %bb.po
  %i.bip = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.biq = load ptr, ptr %96, align 8, !tbaa !96  ; 3 uses
  %.not.i1281 = icmp eq ptr %i.biq, null
  br i1 %.not.i1281, label %_ZN8facebook3jsi7PointerD2Ev.exit1282, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !94
  %i.bis = load ptr, ptr %i.bir, align 8
  call void %i.bis(ptr noundef nonnull align 8 dereferenceable(8) %i.biq) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1282

_ZN8facebook3jsi7PointerD2Ev.exit1282:            ; preds = %bb.ps, %bb.pr, %bb.pq
  %.pn543 = phi { ptr, i32 } [ %i.bio, %bb.pq ], [ %i.bip, %bb.pr ], [ %i.bip, %bb.ps ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #35
  br label %bb.qf

bb.pt:                                            ; preds = %bb.pb
  %i.bit = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #35
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.288.0.copyload = load i64, ptr %.sroa.288.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  switch i32 %i.bfu, label %bb.py [
    i32 0, label %bb.pu
    i32 1, label %bb.pv
    i32 3, label %bb.pw
    i32 2, label %bb.px
  ]

bb.pu:                                            ; preds = %bb.pt
  store i32 0, ptr %97, align 8, !tbaa !69, !alias.scope !817
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294

bb.pv:                                            ; preds = %bb.pt
  store i32 1, ptr %97, align 8, !tbaa !69, !alias.scope !820
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294

bb.pw:                                            ; preds = %bb.pt
  store i32 3, ptr %97, align 8, !tbaa !69, !alias.scope !814
  store i64 %.sroa.288.0.copyload, ptr %i.be, align 8, !tbaa !74, !alias.scope !814
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294

bb.px:                                            ; preds = %bb.pt
  %i.biu = trunc i64 %.sroa.288.0.copyload to i8
  store i32 2, ptr %97, align 8, !tbaa !69, !alias.scope !814
  store i8 %i.biu, ptr %i.be, align 8, !tbaa !74, !alias.scope !814
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294

bb.py:                                            ; preds = %bb.pt
  %.off.i.i1283 = add i32 %i.bfu, -4
  %switch.i.i1284 = icmp ult i32 %.off.i.i1283, 5
  call void @llvm.assume(i1 %switch.i.i1284)
  %i.biv = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !823
  %.not.not.i.i.i.i1285 = icmp eq i64 %i.biv, 0
  br i1 %.not.not.i.i.i.i1285, label %.preheader2596, label %bb.pz

.preheader2596:                                   ; preds = %bb.py, %.preheader2596
  %.sroa.06.0.in.i.i.i.i1291 = phi ptr [ %.sroa.06.0.i.i.i.i1292, %.preheader2596 ], [ %i.x, %bb.py ]
  %.sroa.06.0.i.i.i.i1292 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1291, align 8, !tbaa !119, !noalias !823, !nonnull !68, !noundef !68 ; 3 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1292, i64 8
  %i.bix = load i64, ptr %i.biw, align 8, !tbaa !107, !noalias !823
  %i.biy = icmp eq i64 %.sroa.288.0.copyload, %i.bix
  br i1 %i.biy, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1289, label %.preheader2596, !llvm.loop !515

bb.pz:                                            ; preds = %bb.py
  %i.biz = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !823 ; 2 uses
  %i.bja = urem i64 %.sroa.288.0.copyload, %i.biz ; 2 uses
  %i.bjb = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !823
  %i.bjc = getelementptr inbounds nuw [8 x i8], ptr %i.bjb, i64 %i.bja
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !121, !noalias !823, !nonnull !68, !noundef !68
  %i.bje = load ptr, ptr %i.bjd, align 8, !tbaa !119, !noalias !823 ; 3 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  %i.bjg = load i64, ptr %i.bjf, align 8, !tbaa !107, !noalias !823
  %i.bjh = icmp eq i64 %.sroa.288.0.copyload, %i.bjg
  br i1 %i.bjh, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1289, label %.lr.ph.i.i.i.i.i.i1286

.lr.ph.i.i.i.i.i.i1286:                           ; preds = %bb.pz, %.lr.ph.i.i.i.i.i.i1286
  %.020.i.i.i.i.i.i1287 = phi ptr [ %i.bji, %.lr.ph.i.i.i.i.i.i1286 ], [ %i.bje, %bb.pz ]
  %i.bji = load ptr, ptr %.020.i.i.i.i.i.i1287, align 8, !tbaa !119, !noalias !823, !nonnull !68, !noundef !68 ; 3 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 8
  %i.bjk = load i64, ptr %i.bjj, align 8, !tbaa !107, !noalias !823 ; 2 uses
  %i.bjl = urem i64 %i.bjk, %i.biz
  %.not19.i.i.i.i.i.i1288 = icmp eq i64 %i.bjl, %i.bja
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1288)
  %i.bjm = icmp eq i64 %.sroa.288.0.copyload, %i.bjk
  br i1 %i.bjm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1289, label %.lr.ph.i.i.i.i.i.i1286, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1289: ; preds = %.lr.ph.i.i.i.i.i.i1286, %.preheader2596, %bb.pz
  %.sroa.06.1.i.i.i.i1290 = phi ptr [ %.sroa.06.0.i.i.i.i1292, %.preheader2596 ], [ %i.bje, %bb.pz ], [ %i.bji, %.lr.ph.i.i.i.i.i.i1286 ]
  %i.bjn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1290, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(8) %i.bit, ptr noundef nonnull align 8 dereferenceable(16) %i.bjn)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294 unwind label %bb.qa

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294: ; preds = %bb.px, %bb.pw, %bb.pv, %bb.pu, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1289
  %i.bjo = load ptr, ptr %i.bit, align 8, !tbaa !94
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 472
  %i.bjq = load ptr, ptr %i.bjp, align 8
  invoke void %i.bjq(ptr noundef nonnull align 8 dereferenceable(8) %i.bit, ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(16) %97)
          to label %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_5ValueE.exit unwind label %bb.qb, !inline_history !826

_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %97) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #35
  br label %bb.qd

bb.qa:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1289
  %i.bjr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.qc

bb.qb:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1294
  %i.bjs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %97) #35
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %.pn541 = phi { ptr, i32 } [ %i.bjs, %bb.qb ], [ %i.bjr, %bb.qa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #35
  br label %bb.qf

bb.qd:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1280, %_ZNK8facebook3jsi6Object14deletePropertyERNS0_7RuntimeERKNS0_5ValueE.exit, %_ZN8facebook3jsi7PointerD2Ev.exit1265
  %i.bjt = load ptr, ptr %92, align 8, !tbaa !96  ; 3 uses
  %.not.i1296 = icmp eq ptr %i.bjt, null
  br i1 %.not.i1296, label %_ZN8facebook3jsi7PointerD2Ev.exit1297, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !94
  %i.bjv = load ptr, ptr %i.bju, align 8
  call void %i.bjv(ptr noundef nonnull align 8 dereferenceable(8) %i.bjt) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1297

_ZN8facebook3jsi7PointerD2Ev.exit1297:            ; preds = %bb.qd, %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #35
  br label %.critedge710

bb.qf:                                            ; preds = %bb.qc, %_ZN8facebook3jsi7PointerD2Ev.exit1282, %_ZN8facebook3jsi7PointerD2Ev.exit1267
  %.pn547.pn = phi { ptr, i32 } [ %.pn547, %_ZN8facebook3jsi7PointerD2Ev.exit1267 ], [ %.pn543, %_ZN8facebook3jsi7PointerD2Ev.exit1282 ], [ %.pn541, %bb.qc ] ; 2 uses
  %i.bjw = load ptr, ptr %92, align 8, !tbaa !96  ; 3 uses
  %.not.i1298 = icmp eq ptr %i.bjw, null
  br i1 %.not.i1298, label %_ZN8facebook3jsi7PointerD2Ev.exit1299, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.bjx = load ptr, ptr %i.bjw, align 8, !tbaa !94
  %i.bjy = load ptr, ptr %i.bjx, align 8
  call void %i.bjy(ptr noundef nonnull align 8 dereferenceable(8) %i.bjw) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1299

_ZN8facebook3jsi7PointerD2Ev.exit1299:            ; preds = %bb.qg, %bb.qf, %bb.pg
  %.pn547.pn.pn = phi { ptr, i32 } [ %i.bgz, %bb.pg ], [ %.pn547.pn, %bb.qf ], [ %.pn547.pn, %bb.qg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #35
  br label %bb.zm

bb.qh:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #35
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.bka = load i64, ptr %i.bjz, align 8, !tbaa !827 ; 4 uses
  %i.bkb = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !829
  %.not.not.i.i.i1300 = icmp eq i64 %i.bkb, 0
  br i1 %.not.not.i.i.i1300, label %.preheader2604, label %bb.qi

.preheader2604:                                   ; preds = %bb.qh, %.preheader2604
  %.sroa.06.0.in.i.i.i1306 = phi ptr [ %.sroa.06.0.i.i.i1307, %.preheader2604 ], [ %i.x, %bb.qh ]
  %.sroa.06.0.i.i.i1307 = load ptr, ptr %.sroa.06.0.in.i.i.i1306, align 8, !tbaa !119, !noalias !829, !nonnull !68, !noundef !68 ; 3 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1307, i64 8
  %i.bkd = load i64, ptr %i.bkc, align 8, !tbaa !107, !noalias !829
  %i.bke = icmp eq i64 %i.bka, %i.bkd
  br i1 %i.bke, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1304, label %.preheader2604, !llvm.loop !515

bb.qi:                                            ; preds = %bb.qh
  %i.bkf = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !829 ; 2 uses
  %i.bkg = urem i64 %i.bka, %i.bkf                ; 2 uses
  %i.bkh = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !829
  %i.bki = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bkg
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !121, !noalias !829, !nonnull !68, !noundef !68
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !119, !noalias !829 ; 3 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 8
  %i.bkm = load i64, ptr %i.bkl, align 8, !tbaa !107, !noalias !829
  %i.bkn = icmp eq i64 %i.bka, %i.bkm
  br i1 %i.bkn, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1304, label %.lr.ph.i.i.i.i.i1301

.lr.ph.i.i.i.i.i1301:                             ; preds = %bb.qi, %.lr.ph.i.i.i.i.i1301
  %.020.i.i.i.i.i1302 = phi ptr [ %i.bko, %.lr.ph.i.i.i.i.i1301 ], [ %i.bkk, %bb.qi ]
  %i.bko = load ptr, ptr %.020.i.i.i.i.i1302, align 8, !tbaa !119, !noalias !829, !nonnull !68, !noundef !68 ; 3 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  %i.bkq = load i64, ptr %i.bkp, align 8, !tbaa !107, !noalias !829 ; 2 uses
  %i.bkr = urem i64 %i.bkq, %i.bkf
  %.not19.i.i.i.i.i1303 = icmp eq i64 %i.bkr, %i.bkg
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1303)
  %i.bks = icmp eq i64 %i.bka, %i.bkq
  br i1 %i.bks, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1304, label %.lr.ph.i.i.i.i.i1301, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1304: ; preds = %.lr.ph.i.i.i.i.i1301, %.preheader2604, %bb.qi
  %.sroa.06.1.i.i.i1305 = phi ptr [ %.sroa.06.0.i.i.i1307, %.preheader2604 ], [ %i.bkk, %bb.qi ], [ %i.bko, %.lr.ph.i.i.i.i.i1301 ]
  %i.bkt = load ptr, ptr %0, align 8, !tbaa !452, !noalias !829, !nonnull !68, !align !453
  %i.bku = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1305, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %100, ptr noundef nonnull align 8 dereferenceable(8) %i.bkt, ptr noundef nonnull align 8 dereferenceable(16) %i.bku)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1309 unwind label %bb.qn

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1309: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1304
  %i.bkv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %99, ptr noundef nonnull align 8 dereferenceable(16) %100, ptr noundef nonnull align 8 dereferenceable(8) %i.bkv)
          to label %bb.qj unwind label %bb.qo

bb.qj:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1309
  %i.bkw = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !94, !noalias !832
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 520
  %i.bkz = load ptr, ptr %i.bky, align 8, !noalias !832
  invoke void %i.bkz(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Array") align 8 %98, ptr noundef nonnull align 8 dereferenceable(8) %i.bkw, ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit unwind label %bb.qp, !inline_history !835

_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit: ; preds = %bb.qj
  %i.bla = load ptr, ptr %99, align 8, !tbaa !96  ; 3 uses
  %.not.i1311 = icmp eq ptr %i.bla, null
  br i1 %.not.i1311, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !94
  %i.blc = load ptr, ptr %i.blb, align 8
  call void %i.blc(ptr noundef nonnull align 8 dereferenceable(8) %i.bla) #35, !inline_history !99
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %_ZNK8facebook3jsi6Object16getPropertyNamesERNS0_7RuntimeE.exit
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #35
  store i32 7, ptr %101, align 8, !tbaa !69
  %i.bld = load ptr, ptr %98, align 8, !tbaa !96
  store ptr %i.bld, ptr %i.bc, align 8, !tbaa !96
  store ptr null, ptr %98, align 8, !tbaa !96
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %101) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %101) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #35
  %i.ble = load ptr, ptr %98, align 8, !tbaa !96  ; 3 uses
  %.not.i1313 = icmp eq ptr %i.ble, null
  br i1 %.not.i1313, label %_ZN8facebook3jsi7PointerD2Ev.exit1314, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !94
end_hunk_4
begin_hunk_5_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1333: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1328
  %i.bmu = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %105, ptr noundef nonnull align 8 dereferenceable(16) %106, ptr noundef nonnull align 8 dereferenceable(8) %i.bmu)
          to label %bb.qy unwind label %bb.rd

bb.qy:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1333
  %i.bmv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object7asArrayERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Array") align 8 %104, ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %i.bmv)
          to label %bb.qz unwind label %bb.re

bb.qz:                                            ; preds = %bb.qy
  %i.bmw = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !845
  %i.bmz = load ptr, ptr %i.bmw, align 8, !tbaa !94, !noalias !846
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 584
  %i.bnb = load ptr, ptr %i.bna, align 8, !noalias !846
  invoke void %i.bnb(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %103, ptr noundef nonnull align 8 dereferenceable(8) %i.bmw, ptr noundef nonnull align 8 dereferenceable(8) %104, i64 noundef %i.bmy)
          to label %_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit unwind label %bb.rf, !inline_history !849

_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit: ; preds = %bb.qz
  %i.bnc = load ptr, ptr %104, align 8, !tbaa !96 ; 3 uses
  %.not.i1335 = icmp eq ptr %i.bnc, null
  br i1 %.not.i1335, label %_ZN8facebook3jsi7PointerD2Ev.exit1336, label %bb.ra

bb.ra:                                            ; preds = %_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !94
  %i.bne = load ptr, ptr %i.bnd, align 8
  call void %i.bne(ptr noundef nonnull align 8 dereferenceable(8) %i.bnc) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1336

_ZN8facebook3jsi7PointerD2Ev.exit1336:            ; preds = %_ZNK8facebook3jsi5Array15getValueAtIndexERNS0_7RuntimeEm.exit, %bb.ra
  %i.bnf = load ptr, ptr %105, align 8, !tbaa !96 ; 3 uses
  %.not.i1337 = icmp eq ptr %i.bnf, null
  br i1 %.not.i1337, label %_ZN8facebook3jsi7PointerD2Ev.exit1338, label %bb.rb

bb.rb:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1336
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !94
  %i.bnh = load ptr, ptr %i.bng, align 8
  call void %i.bnh(ptr noundef nonnull align 8 dereferenceable(8) %i.bnf) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1338

_ZN8facebook3jsi7PointerD2Ev.exit1338:            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1336, %bb.rb
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %103) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #35
  br label %.critedge710

bb.rc:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1328
  %i.bni = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ri

bb.rd:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1333
  %i.bnj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1342

bb.re:                                            ; preds = %bb.qy
  %i.bnk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1340

bb.rf:                                            ; preds = %bb.qz
  %i.bnl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bnm = load ptr, ptr %104, align 8, !tbaa !96 ; 3 uses
  %.not.i1339 = icmp eq ptr %i.bnm, null
  br i1 %.not.i1339, label %_ZN8facebook3jsi7PointerD2Ev.exit1340, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !94
  %i.bno = load ptr, ptr %i.bnn, align 8
  call void %i.bno(ptr noundef nonnull align 8 dereferenceable(8) %i.bnm) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1340

_ZN8facebook3jsi7PointerD2Ev.exit1340:            ; preds = %bb.rg, %bb.rf, %bb.re
  %.pn527 = phi { ptr, i32 } [ %i.bnk, %bb.re ], [ %i.bnl, %bb.rf ], [ %i.bnl, %bb.rg ] ; 2 uses
  %i.bnp = load ptr, ptr %105, align 8, !tbaa !96 ; 3 uses
  %.not.i1341 = icmp eq ptr %i.bnp, null
  br i1 %.not.i1341, label %_ZN8facebook3jsi7PointerD2Ev.exit1342, label %bb.rh

bb.rh:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1340
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !94
  %i.bnr = load ptr, ptr %i.bnq, align 8
  call void %i.bnr(ptr noundef nonnull align 8 dereferenceable(8) %i.bnp) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1342

_ZN8facebook3jsi7PointerD2Ev.exit1342:            ; preds = %bb.rh, %_ZN8facebook3jsi7PointerD2Ev.exit1340, %bb.rd
  %.pn527.pn = phi { ptr, i32 } [ %i.bnj, %bb.rd ], [ %.pn527, %_ZN8facebook3jsi7PointerD2Ev.exit1340 ], [ %.pn527, %bb.rh ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #35
  br label %bb.ri

bb.ri:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1342, %bb.rc
  %.pn527.pn.pn = phi { ptr, i32 } [ %.pn527.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1342 ], [ %i.bni, %bb.rc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #35
  br label %bb.zm

bb.rj:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #35
  %i.bns = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.bnt = load i64, ptr %i.bns, align 8, !tbaa !850 ; 4 uses
  %i.bnu = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !852
  %.not.not.i.i.i1343 = icmp eq i64 %i.bnu, 0
  br i1 %.not.not.i.i.i1343, label %.preheader2610, label %bb.rk

.preheader2610:                                   ; preds = %bb.rj, %.preheader2610
  %.sroa.06.0.in.i.i.i1349 = phi ptr [ %.sroa.06.0.i.i.i1350, %.preheader2610 ], [ %i.x, %bb.rj ]
  %.sroa.06.0.i.i.i1350 = load ptr, ptr %.sroa.06.0.in.i.i.i1349, align 8, !tbaa !119, !noalias !852, !nonnull !68, !noundef !68 ; 3 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1350, i64 8
  %i.bnw = load i64, ptr %i.bnv, align 8, !tbaa !107, !noalias !852
  %i.bnx = icmp eq i64 %i.bnt, %i.bnw
  br i1 %i.bnx, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1347, label %.preheader2610, !llvm.loop !515

bb.rk:                                            ; preds = %bb.rj
  %i.bny = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !852 ; 2 uses
  %i.bnz = urem i64 %i.bnt, %i.bny                ; 2 uses
  %i.boa = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !852
  %i.bob = getelementptr inbounds nuw [8 x i8], ptr %i.boa, i64 %i.bnz
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !121, !noalias !852, !nonnull !68, !noundef !68
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !119, !noalias !852 ; 3 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 8
  %i.bof = load i64, ptr %i.boe, align 8, !tbaa !107, !noalias !852
  %i.bog = icmp eq i64 %i.bnt, %i.bof
  br i1 %i.bog, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1347, label %.lr.ph.i.i.i.i.i1344

.lr.ph.i.i.i.i.i1344:                             ; preds = %bb.rk, %.lr.ph.i.i.i.i.i1344
  %.020.i.i.i.i.i1345 = phi ptr [ %i.boh, %.lr.ph.i.i.i.i.i1344 ], [ %i.bod, %bb.rk ]
  %i.boh = load ptr, ptr %.020.i.i.i.i.i1345, align 8, !tbaa !119, !noalias !852, !nonnull !68, !noundef !68 ; 3 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 8
  %i.boj = load i64, ptr %i.boi, align 8, !tbaa !107, !noalias !852 ; 2 uses
  %i.bok = urem i64 %i.boj, %i.bny
  %.not19.i.i.i.i.i1346 = icmp eq i64 %i.bok, %i.bnz
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1346)
  %i.bol = icmp eq i64 %i.bnt, %i.boj
  br i1 %i.bol, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1347, label %.lr.ph.i.i.i.i.i1344, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1347: ; preds = %.lr.ph.i.i.i.i.i1344, %.preheader2610, %bb.rk
  %.sroa.06.1.i.i.i1348 = phi ptr [ %.sroa.06.0.i.i.i1350, %.preheader2610 ], [ %i.bod, %bb.rk ], [ %i.boh, %.lr.ph.i.i.i.i.i1344 ]
  %i.bom = load ptr, ptr %0, align 8, !tbaa !452, !noalias !852, !nonnull !68, !align !453
  %i.bon = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1348, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 8 dereferenceable(8) %i.bom, ptr noundef nonnull align 8 dereferenceable(16) %i.bon)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1352 unwind label %bb.rv

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1352: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1347
  %i.boo = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %108, ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 8 dereferenceable(8) %i.boo)
          to label %bb.rl unwind label %bb.rw

bb.rl:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1352
  %i.bop = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object7asArrayERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Array") align 8 %107, ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %i.bop)
          to label %bb.rm unwind label %bb.rx

bb.rm:                                            ; preds = %bb.rl
  %i.boq = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 3 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.bos = load i64, ptr %i.bor, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #35
  %i.bot = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.075.0.copyload = load i32, ptr %i.bot, align 8, !tbaa !498 ; 2 uses
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %.sroa.277.0.copyload = load i64, ptr %.sroa.277.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  switch i32 %.sroa.075.0.copyload, label %bb.rr [
    i32 0, label %bb.rn
    i32 1, label %bb.ro
    i32 3, label %bb.rp
    i32 2, label %bb.rq
  ]

bb.rn:                                            ; preds = %bb.rm
  store i32 0, ptr %110, align 8, !tbaa !69, !alias.scope !859
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364

bb.ro:                                            ; preds = %bb.rm
  store i32 1, ptr %110, align 8, !tbaa !69, !alias.scope !862
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364

bb.rp:                                            ; preds = %bb.rm
  store i32 3, ptr %110, align 8, !tbaa !69, !alias.scope !856
  store i64 %.sroa.277.0.copyload, ptr %i.ba, align 8, !tbaa !74, !alias.scope !856
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364

bb.rq:                                            ; preds = %bb.rm
  %i.bou = trunc i64 %.sroa.277.0.copyload to i8
  store i32 2, ptr %110, align 8, !tbaa !69, !alias.scope !856
  store i8 %i.bou, ptr %i.ba, align 8, !tbaa !74, !alias.scope !856
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364

bb.rr:                                            ; preds = %bb.rm
  %.off.i.i1353 = add i32 %.sroa.075.0.copyload, -4
  %switch.i.i1354 = icmp ult i32 %.off.i.i1353, 5
  call void @llvm.assume(i1 %switch.i.i1354)
  %i.bov = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !865
  %.not.not.i.i.i.i1355 = icmp eq i64 %i.bov, 0
  br i1 %.not.not.i.i.i.i1355, label %.preheader2608, label %bb.rs

.preheader2608:                                   ; preds = %bb.rr, %.preheader2608
  %.sroa.06.0.in.i.i.i.i1361 = phi ptr [ %.sroa.06.0.i.i.i.i1362, %.preheader2608 ], [ %i.x, %bb.rr ]
  %.sroa.06.0.i.i.i.i1362 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1361, align 8, !tbaa !119, !noalias !865, !nonnull !68, !noundef !68 ; 3 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1362, i64 8
  %i.box = load i64, ptr %i.bow, align 8, !tbaa !107, !noalias !865
  %i.boy = icmp eq i64 %.sroa.277.0.copyload, %i.box
  br i1 %i.boy, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1359, label %.preheader2608, !llvm.loop !515

bb.rs:                                            ; preds = %bb.rr
  %i.boz = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !865 ; 2 uses
  %i.bpa = urem i64 %.sroa.277.0.copyload, %i.boz ; 2 uses
  %i.bpb = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !865
  %i.bpc = getelementptr inbounds nuw [8 x i8], ptr %i.bpb, i64 %i.bpa
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !121, !noalias !865, !nonnull !68, !noundef !68
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !119, !noalias !865 ; 3 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 8
  %i.bpg = load i64, ptr %i.bpf, align 8, !tbaa !107, !noalias !865
  %i.bph = icmp eq i64 %.sroa.277.0.copyload, %i.bpg
  br i1 %i.bph, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1359, label %.lr.ph.i.i.i.i.i.i1356

.lr.ph.i.i.i.i.i.i1356:                           ; preds = %bb.rs, %.lr.ph.i.i.i.i.i.i1356
  %.020.i.i.i.i.i.i1357 = phi ptr [ %i.bpi, %.lr.ph.i.i.i.i.i.i1356 ], [ %i.bpe, %bb.rs ]
  %i.bpi = load ptr, ptr %.020.i.i.i.i.i.i1357, align 8, !tbaa !119, !noalias !865, !nonnull !68, !noundef !68 ; 3 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8
  %i.bpk = load i64, ptr %i.bpj, align 8, !tbaa !107, !noalias !865 ; 2 uses
  %i.bpl = urem i64 %i.bpk, %i.boz
  %.not19.i.i.i.i.i.i1358 = icmp eq i64 %i.bpl, %i.bpa
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1358)
  %i.bpm = icmp eq i64 %.sroa.277.0.copyload, %i.bpk
  br i1 %i.bpm, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1359, label %.lr.ph.i.i.i.i.i.i1356, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1359: ; preds = %.lr.ph.i.i.i.i.i.i1356, %.preheader2608, %bb.rs
  %.sroa.06.1.i.i.i.i1360 = phi ptr [ %.sroa.06.0.i.i.i.i1362, %.preheader2608 ], [ %i.bpe, %bb.rs ], [ %i.bpi, %.lr.ph.i.i.i.i.i.i1356 ]
  %i.bpn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1360, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef nonnull align 8 dereferenceable(8) %i.boq, ptr noundef nonnull align 8 dereferenceable(16) %i.bpn)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364 unwind label %bb.ry

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364: ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rn, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1359
  %i.bpo = load ptr, ptr %i.boq, align 8, !tbaa !94
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 592
  %i.bpq = load ptr, ptr %i.bpp, align 8
  invoke void %i.bpq(ptr noundef nonnull align 8 dereferenceable(8) %i.boq, ptr noundef nonnull align 8 dereferenceable(8) %107, i64 noundef %i.bos, ptr noundef nonnull align 8 dereferenceable(16) %110)
          to label %_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit unwind label %bb.rz, !inline_history !868

_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit: ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %110) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #35
  %i.bpr = load ptr, ptr %107, align 8, !tbaa !96 ; 3 uses
  %.not.i1366 = icmp eq ptr %i.bpr, null
  br i1 %.not.i1366, label %_ZN8facebook3jsi7PointerD2Ev.exit1367, label %bb.rt

bb.rt:                                            ; preds = %_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !94
  %i.bpt = load ptr, ptr %i.bps, align 8
  call void %i.bpt(ptr noundef nonnull align 8 dereferenceable(8) %i.bpr) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1367

_ZN8facebook3jsi7PointerD2Ev.exit1367:            ; preds = %_ZNK8facebook3jsi5Array15setValueAtIndexINS0_5ValueEEEvRNS0_7RuntimeEmOT_.exit, %bb.rt
  %i.bpu = load ptr, ptr %108, align 8, !tbaa !96 ; 3 uses
  %.not.i1368 = icmp eq ptr %i.bpu, null
  br i1 %.not.i1368, label %_ZN8facebook3jsi7PointerD2Ev.exit1369, label %bb.ru

bb.ru:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1367
  %i.bpv = load ptr, ptr %i.bpu, align 8, !tbaa !94
  %i.bpw = load ptr, ptr %i.bpv, align 8
  call void %i.bpw(ptr noundef nonnull align 8 dereferenceable(8) %i.bpu) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1369

_ZN8facebook3jsi7PointerD2Ev.exit1369:            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1367, %bb.ru
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %109) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #35
  br label %.critedge710

bb.rv:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1347
  %i.bpx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.sd

bb.rw:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1352
  %i.bpy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1373

bb.rx:                                            ; preds = %bb.rl
  %i.bpz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1371

bb.ry:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1359
  %i.bqa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.sa

bb.rz:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1364
  %i.bqb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %110) #35
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.ry
  %.pn522 = phi { ptr, i32 } [ %i.bqb, %bb.rz ], [ %i.bqa, %bb.ry ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #35
  %i.bqc = load ptr, ptr %107, align 8, !tbaa !96 ; 3 uses
  %.not.i1370 = icmp eq ptr %i.bqc, null
  br i1 %.not.i1370, label %_ZN8facebook3jsi7PointerD2Ev.exit1371, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !94
  %i.bqe = load ptr, ptr %i.bqd, align 8
  call void %i.bqe(ptr noundef nonnull align 8 dereferenceable(8) %i.bqc) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1371

_ZN8facebook3jsi7PointerD2Ev.exit1371:            ; preds = %bb.sb, %bb.sa, %bb.rx
  %.pn522.pn = phi { ptr, i32 } [ %i.bpz, %bb.rx ], [ %.pn522, %bb.sa ], [ %.pn522, %bb.sb ] ; 2 uses
  %i.bqf = load ptr, ptr %108, align 8, !tbaa !96 ; 3 uses
  %.not.i1372 = icmp eq ptr %i.bqf, null
  br i1 %.not.i1372, label %_ZN8facebook3jsi7PointerD2Ev.exit1373, label %bb.sc

bb.sc:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1371
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !94
  %i.bqh = load ptr, ptr %i.bqg, align 8
  call void %i.bqh(ptr noundef nonnull align 8 dereferenceable(8) %i.bqf) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1373

_ZN8facebook3jsi7PointerD2Ev.exit1373:            ; preds = %bb.sc, %_ZN8facebook3jsi7PointerD2Ev.exit1371, %bb.rw
  %.pn522.pn.pn = phi { ptr, i32 } [ %i.bpy, %bb.rw ], [ %.pn522.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1371 ], [ %.pn522.pn, %bb.sc ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %109) #35
  br label %bb.sd

bb.sd:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1373, %bb.rv
  %.pn522.pn.pn.pn = phi { ptr, i32 } [ %.pn522.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1373 ], [ %i.bpx, %bb.rv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #35
  br label %bb.zm

bb.se:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #35
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.bqj = load i64, ptr %i.bqi, align 8, !tbaa !869 ; 4 uses
  %i.bqk = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !876
  %.not.not.i.i.i1374 = icmp eq i64 %i.bqk, 0
  br i1 %.not.not.i.i.i1374, label %.preheader2614, label %bb.sf

.preheader2614:                                   ; preds = %bb.se, %.preheader2614
  %.sroa.06.0.in.i.i.i1380 = phi ptr [ %.sroa.06.0.i.i.i1381, %.preheader2614 ], [ %i.x, %bb.se ]
  %.sroa.06.0.i.i.i1381 = load ptr, ptr %.sroa.06.0.in.i.i.i1380, align 8, !tbaa !119, !noalias !876, !nonnull !68, !noundef !68 ; 3 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1381, i64 8
  %i.bqm = load i64, ptr %i.bql, align 8, !tbaa !107, !noalias !876
  %i.bqn = icmp eq i64 %i.bqj, %i.bqm
  br i1 %i.bqn, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1378, label %.preheader2614, !llvm.loop !515

bb.sf:                                            ; preds = %bb.se
  %i.bqo = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !876 ; 2 uses
  %i.bqp = urem i64 %i.bqj, %i.bqo                ; 2 uses
  %i.bqq = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !876
  %i.bqr = getelementptr inbounds nuw [8 x i8], ptr %i.bqq, i64 %i.bqp
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !121, !noalias !876, !nonnull !68, !noundef !68
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !119, !noalias !876 ; 3 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 8
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !107, !noalias !876
  %i.bqw = icmp eq i64 %i.bqj, %i.bqv
  br i1 %i.bqw, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1378, label %.lr.ph.i.i.i.i.i1375

.lr.ph.i.i.i.i.i1375:                             ; preds = %bb.sf, %.lr.ph.i.i.i.i.i1375
  %.020.i.i.i.i.i1376 = phi ptr [ %i.bqx, %.lr.ph.i.i.i.i.i1375 ], [ %i.bqt, %bb.sf ]
  %i.bqx = load ptr, ptr %.020.i.i.i.i.i1376, align 8, !tbaa !119, !noalias !876, !nonnull !68, !noundef !68 ; 3 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 8
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !107, !noalias !876 ; 2 uses
  %i.bra = urem i64 %i.bqz, %i.bqo
  %.not19.i.i.i.i.i1377 = icmp eq i64 %i.bra, %i.bqp
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1377)
  %i.brb = icmp eq i64 %i.bqj, %i.bqz
  br i1 %i.brb, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1378, label %.lr.ph.i.i.i.i.i1375, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1378: ; preds = %.lr.ph.i.i.i.i.i1375, %.preheader2614, %bb.sf
  %.sroa.06.1.i.i.i1379 = phi ptr [ %.sroa.06.0.i.i.i1381, %.preheader2614 ], [ %i.bqt, %bb.sf ], [ %i.bqx, %.lr.ph.i.i.i.i.i1375 ]
  %i.brc = load ptr, ptr %0, align 8, !tbaa !452, !noalias !876, !nonnull !68, !align !453
  %i.brd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1379, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(8) %i.brc, ptr noundef nonnull align 8 dereferenceable(16) %i.brd)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1383 unwind label %bb.sj

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1383: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1378
  %i.bre = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %112, ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(8) %i.bre)
          to label %bb.sg unwind label %bb.sk

bb.sg:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1383
  %i.brf = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object10asFunctionERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Function") align 8 %111, ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef nonnull align 8 dereferenceable(8) %i.brf)
          to label %bb.sh unwind label %bb.sl

bb.sh:                                            ; preds = %bb.sg
  %i.brg = load ptr, ptr %112, align 8, !tbaa !96 ; 3 uses
  %.not.i1384 = icmp eq ptr %i.brg, null
  br i1 %.not.i1384, label %_ZN8facebook3jsi7PointerD2Ev.exit1385, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !94
  %i.bri = load ptr, ptr %i.brh, align 8
  call void %i.bri(ptr noundef nonnull align 8 dereferenceable(8) %i.brg) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1385

_ZN8facebook3jsi7PointerD2Ev.exit1385:            ; preds = %bb.sh, %bb.si
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, i8 0, i64 24, i1 false)
  %i.brj = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !879 ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !879 ; 2 uses
  %.not18602539 = icmp eq ptr %i.brk, %i.brm
  br i1 %.not18602539, label %._crit_edge2542, label %.lr.ph2541

._crit_edge2542.loopexit:                         ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.pre3060 = load ptr, ptr %114, align 8, !tbaa !880
  br label %._crit_edge2542

._crit_edge2542:                                  ; preds = %._crit_edge2542.loopexit, %_ZN8facebook3jsi7PointerD2Ev.exit1385
  %i.brn = phi ptr [ %.pre3060, %._crit_edge2542.loopexit ], [ null, %_ZN8facebook3jsi7PointerD2Ev.exit1385 ] ; 3 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !7
  %i.brq = icmp eq i32 %i.brp, 0
  br i1 %i.brq, label %bb.sz, label %bb.tb

bb.sj:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1378
  %i.brr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.sn

bb.sk:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1383
  %i.brs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1387

bb.sl:                                            ; preds = %bb.sg
  %i.brt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bru = load ptr, ptr %112, align 8, !tbaa !96 ; 3 uses
  %.not.i1386 = icmp eq ptr %i.bru, null
  br i1 %.not.i1386, label %_ZN8facebook3jsi7PointerD2Ev.exit1387, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.brv = load ptr, ptr %i.bru, align 8, !tbaa !94
  %i.brw = load ptr, ptr %i.brv, align 8
  call void %i.brw(ptr noundef nonnull align 8 dereferenceable(8) %i.bru) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1387

_ZN8facebook3jsi7PointerD2Ev.exit1387:            ; preds = %bb.sm, %bb.sl, %bb.sk
  %.pn510 = phi { ptr, i32 } [ %i.brs, %bb.sk ], [ %i.brt, %bb.sl ], [ %i.brt, %bb.sm ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #35
  br label %bb.sn

bb.sn:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1387, %bb.sj
  %.pn510.pn = phi { ptr, i32 } [ %.pn510, %_ZN8facebook3jsi7PointerD2Ev.exit1387 ], [ %i.brr, %bb.sj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1425

.lr.ph2541:                                       ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1385, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.sroa.01794.02540 = phi ptr [ %i.bsw, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ %i.brk, %_ZN8facebook3jsi7PointerD2Ev.exit1385 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #35
  %.sroa.065.0.copyload = load i32, ptr %.sroa.01794.02540, align 8, !tbaa !498 ; 2 uses
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01794.02540, i64 8
  %.sroa.267.0.copyload = load i64, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  switch i32 %.sroa.065.0.copyload, label %bb.ss [
    i32 0, label %bb.so
    i32 1, label %bb.sp
    i32 3, label %bb.sq
    i32 2, label %bb.sr
  ]

bb.so:                                            ; preds = %.lr.ph2541
  store i32 0, ptr %115, align 8, !tbaa !69, !alias.scope !886
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399

bb.sp:                                            ; preds = %.lr.ph2541
  store i32 1, ptr %115, align 8, !tbaa !69, !alias.scope !889
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399

bb.sq:                                            ; preds = %.lr.ph2541
  store i32 3, ptr %115, align 8, !tbaa !69, !alias.scope !883
  store i64 %.sroa.267.0.copyload, ptr %i.aw, align 8, !tbaa !74, !alias.scope !883
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399

bb.sr:                                            ; preds = %.lr.ph2541
  %i.brx = trunc i64 %.sroa.267.0.copyload to i8
  store i32 2, ptr %115, align 8, !tbaa !69, !alias.scope !883
  store i8 %i.brx, ptr %i.aw, align 8, !tbaa !74, !alias.scope !883
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399

bb.ss:                                            ; preds = %.lr.ph2541
  %.off.i.i1388 = add i32 %.sroa.065.0.copyload, -4
  %switch.i.i1389 = icmp ult i32 %.off.i.i1388, 5
  call void @llvm.assume(i1 %switch.i.i1389)
  %i.bry = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !892
  %.not.not.i.i.i.i1390 = icmp eq i64 %i.bry, 0
  br i1 %.not.not.i.i.i.i1390, label %.preheader, label %bb.st

.preheader:                                       ; preds = %bb.ss, %.preheader
  %.sroa.06.0.in.i.i.i.i1396 = phi ptr [ %.sroa.06.0.i.i.i.i1397, %.preheader ], [ %i.x, %bb.ss ]
  %.sroa.06.0.i.i.i.i1397 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1396, align 8, !tbaa !119, !noalias !892, !nonnull !68, !noundef !68 ; 3 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1397, i64 8
  %i.bsa = load i64, ptr %i.brz, align 8, !tbaa !107, !noalias !892
  %i.bsb = icmp eq i64 %.sroa.267.0.copyload, %i.bsa
  br i1 %i.bsb, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1394, label %.preheader, !llvm.loop !515

bb.st:                                            ; preds = %bb.ss
  %i.bsc = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !892 ; 2 uses
  %i.bsd = urem i64 %.sroa.267.0.copyload, %i.bsc ; 2 uses
  %i.bse = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !892
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %i.bse, i64 %i.bsd
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !121, !noalias !892, !nonnull !68, !noundef !68
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !119, !noalias !892 ; 3 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 8
  %i.bsj = load i64, ptr %i.bsi, align 8, !tbaa !107, !noalias !892
  %i.bsk = icmp eq i64 %.sroa.267.0.copyload, %i.bsj
  br i1 %i.bsk, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1394, label %.lr.ph.i.i.i.i.i.i1391

.lr.ph.i.i.i.i.i.i1391:                           ; preds = %bb.st, %.lr.ph.i.i.i.i.i.i1391
  %.020.i.i.i.i.i.i1392 = phi ptr [ %i.bsl, %.lr.ph.i.i.i.i.i.i1391 ], [ %i.bsh, %bb.st ]
  %i.bsl = load ptr, ptr %.020.i.i.i.i.i.i1392, align 8, !tbaa !119, !noalias !892, !nonnull !68, !noundef !68 ; 3 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 8
  %i.bsn = load i64, ptr %i.bsm, align 8, !tbaa !107, !noalias !892 ; 2 uses
  %i.bso = urem i64 %i.bsn, %i.bsc
  %.not19.i.i.i.i.i.i1393 = icmp eq i64 %i.bso, %i.bsd
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1393)
  %i.bsp = icmp eq i64 %.sroa.267.0.copyload, %i.bsn
  br i1 %i.bsp, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1394, label %.lr.ph.i.i.i.i.i.i1391, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1394: ; preds = %.lr.ph.i.i.i.i.i.i1391, %.preheader, %bb.st
  %.sroa.06.1.i.i.i.i1395 = phi ptr [ %.sroa.06.0.i.i.i.i1397, %.preheader ], [ %i.bsh, %bb.st ], [ %i.bsl, %.lr.ph.i.i.i.i.i.i1391 ]
  %i.bsq = load ptr, ptr %0, align 8, !tbaa !452, !noalias !892, !nonnull !68, !align !453
  %i.bsr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1395, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %115, ptr noundef nonnull align 8 dereferenceable(8) %i.bsq, ptr noundef nonnull align 8 dereferenceable(16) %i.bsr)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399 unwind label %bb.sw

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399: ; preds = %bb.sr, %bb.sq, %bb.sp, %bb.so, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1394
  %i.bss = load ptr, ptr %i.ax, align 8, !tbaa !895 ; 3 uses
  %i.bst = load ptr, ptr %i.ay, align 8, !tbaa !896
  %.not.i1400 = icmp eq ptr %i.bss, %i.bst
  br i1 %.not.i1400, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bss, ptr noundef nonnull align 8 dereferenceable(16) %115) #35
  %i.bsu = load ptr, ptr %i.ax, align 8, !tbaa !895
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 16
  store ptr %i.bsv, ptr %i.ax, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.sv:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1399
  invoke void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr %i.bss, ptr noundef nonnull align 8 dereferenceable(16) %115)
          to label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.sx

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.sv, %bb.su
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %115) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #35
  %i.bsw = getelementptr inbounds nuw i8, ptr %.sroa.01794.02540, i64 16 ; 2 uses
  %.not1860 = icmp eq ptr %i.bsw, %i.brm
  br i1 %.not1860, label %._crit_edge2542.loopexit, label %.lr.ph2541

bb.sw:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1394
  %i.bsx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.sy

bb.sx:                                            ; preds = %bb.sv
  %i.bsy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %115) #35
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw
  %.pn518 = phi { ptr, i32 } [ %i.bsy, %bb.sx ], [ %i.bsx, %bb.sw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #35
  br label %bb.tp

bb.sz:                                            ; preds = %._crit_edge2542
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #35
  %i.bsz = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bta = load ptr, ptr %i.ax, align 8, !tbaa !895
  %i.btb = ptrtoint ptr %i.bta to i64
  %i.btc = ptrtoint ptr %i.brn to i64
  %i.btd = sub i64 %i.btb, %i.btc
  %i.bte = ashr exact i64 %i.btd, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !897
  store i32 0, ptr %3, align 8, !tbaa !69, !alias.scope !900, !noalias !897
  %i.btf = load ptr, ptr %i.bsz, align 8, !tbaa !94, !noalias !897
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 608
  %i.bth = load ptr, ptr %i.btg, align 8, !noalias !897
  invoke void %i.bth(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %116, ptr noundef nonnull align 8 dereferenceable(8) %i.bsz, ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.brn, i64 noundef %i.bte)
          to label %bb.ta unwind label %.body1402

.body1402:                                        ; preds = %bb.sz
  %i.bti = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #35
  br label %bb.tp

bb.ta:                                            ; preds = %bb.sz
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !897
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %116) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %116) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #35
  br label %bb.tm

bb.tb:                                            ; preds = %._crit_edge2542
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #35
  %i.btj = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #35
  %i.btk = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.btl = load i64, ptr %i.btk, align 8, !tbaa !74 ; 4 uses
  %i.btm = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !903
  %.not.not.i.i.i1404 = icmp eq i64 %i.btm, 0
  br i1 %.not.not.i.i.i1404, label %.preheader2612, label %bb.tc

.preheader2612:                                   ; preds = %bb.tb, %.preheader2612
  %.sroa.06.0.in.i.i.i1410 = phi ptr [ %.sroa.06.0.i.i.i1411, %.preheader2612 ], [ %i.x, %bb.tb ]
  %.sroa.06.0.i.i.i1411 = load ptr, ptr %.sroa.06.0.in.i.i.i1410, align 8, !tbaa !119, !noalias !903, !nonnull !68, !noundef !68 ; 3 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1411, i64 8
  %i.bto = load i64, ptr %i.btn, align 8, !tbaa !107, !noalias !903
  %i.btp = icmp eq i64 %i.btl, %i.bto
  br i1 %i.btp, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1408, label %.preheader2612, !llvm.loop !515

bb.tc:                                            ; preds = %bb.tb
  %i.btq = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !903 ; 2 uses
  %i.btr = urem i64 %i.btl, %i.btq                ; 2 uses
  %i.bts = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !903
  %i.btt = getelementptr inbounds nuw [8 x i8], ptr %i.bts, i64 %i.btr
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !121, !noalias !903, !nonnull !68, !noundef !68
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !119, !noalias !903 ; 3 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btv, i64 8
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !107, !noalias !903
  %i.bty = icmp eq i64 %i.btl, %i.btx
  br i1 %i.bty, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1408, label %.lr.ph.i.i.i.i.i1405

.lr.ph.i.i.i.i.i1405:                             ; preds = %bb.tc, %.lr.ph.i.i.i.i.i1405
  %.020.i.i.i.i.i1406 = phi ptr [ %i.btz, %.lr.ph.i.i.i.i.i1405 ], [ %i.btv, %bb.tc ]
  %i.btz = load ptr, ptr %.020.i.i.i.i.i1406, align 8, !tbaa !119, !noalias !903, !nonnull !68, !noundef !68 ; 3 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 8
  %i.bub = load i64, ptr %i.bua, align 8, !tbaa !107, !noalias !903 ; 2 uses
  %i.buc = urem i64 %i.bub, %i.btq
  %.not19.i.i.i.i.i1407 = icmp eq i64 %i.buc, %i.btr
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1407)
  %i.bud = icmp eq i64 %i.btl, %i.bub
  br i1 %i.bud, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1408, label %.lr.ph.i.i.i.i.i1405, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1408: ; preds = %.lr.ph.i.i.i.i.i1405, %.preheader2612, %bb.tc
  %.sroa.06.1.i.i.i1409 = phi ptr [ %.sroa.06.0.i.i.i1411, %.preheader2612 ], [ %i.btv, %bb.tc ], [ %i.btz, %.lr.ph.i.i.i.i.i1405 ]
  %i.bue = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1409, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(8) %i.btj, ptr noundef nonnull align 8 dereferenceable(16) %i.bue)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1413 unwind label %bb.ti

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1413: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1408
  %i.buf = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %118, ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(8) %i.buf)
          to label %bb.td unwind label %bb.tj

bb.td:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1413
  %i.bug = load ptr, ptr %i.ax, align 8, !tbaa !895
  %i.buh = load ptr, ptr %114, align 8, !tbaa !880
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !906
  store i32 7, ptr %2, align 8, !tbaa !69, !noalias !906
  %i.bui = load ptr, ptr %118, align 8, !tbaa !96, !noalias !906
  %i.buj = load ptr, ptr %i.btj, align 8, !tbaa !94, !noalias !906
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 136
  %i.bul = load ptr, ptr %i.buk, align 8, !noalias !906
  %i.bum = invoke noundef ptr %i.bul(ptr noundef nonnull align 8 dereferenceable(8) %i.btj, ptr noundef %i.bui)
          to label %_ZN8facebook3jsi5ValueC2ERNS0_7RuntimeERKNS0_6ObjectE.exit.i unwind label %bb.te, !noalias !906

bb.te:                                            ; preds = %bb.td
  %i.bun = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35, !noalias !906
  br label %.body1414

_ZN8facebook3jsi5ValueC2ERNS0_7RuntimeERKNS0_6ObjectE.exit.i: ; preds = %bb.td
  %i.buo = ptrtoint ptr %i.bug to i64
  %i.bup = ptrtoint ptr %i.buh to i64
  %i.buq = sub i64 %i.buo, %i.bup
end_hunk_5
begin_hunk_6_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  %.not.i1422 = icmp eq ptr %i.bvm, null
  br i1 %.not.i1422, label %_ZN8facebook3jsi7PointerD2Ev.exit1423, label %bb.to

bb.to:                                            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !94
  %i.bvo = load ptr, ptr %i.bvn, align 8
  call void %i.bvo(ptr noundef nonnull align 8 dereferenceable(8) %i.bvm) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1423

_ZN8facebook3jsi7PointerD2Ev.exit1423:            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit, %bb.to
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #35
  br label %.critedge710

bb.tp:                                            ; preds = %.body1402, %bb.tl, %bb.sy
  %.pn518.pn = phi { ptr, i32 } [ %.pn518, %bb.sy ], [ %i.bti, %.body1402 ], [ %.pn513.pn, %bb.tl ] ; 2 uses
  call void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %114) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #35
  %i.bvp = load ptr, ptr %111, align 8, !tbaa !96 ; 3 uses
  %.not.i1424 = icmp eq ptr %i.bvp, null
  br i1 %.not.i1424, label %_ZN8facebook3jsi7PointerD2Ev.exit1425, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bvq = load ptr, ptr %i.bvp, align 8, !tbaa !94
  %i.bvr = load ptr, ptr %i.bvq, align 8
  call void %i.bvr(ptr noundef nonnull align 8 dereferenceable(8) %i.bvp) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1425

_ZN8facebook3jsi7PointerD2Ev.exit1425:            ; preds = %bb.tq, %bb.tp, %bb.sn
  %.pn518.pn.pn = phi { ptr, i32 } [ %.pn510.pn, %bb.sn ], [ %.pn518.pn, %bb.tp ], [ %.pn518.pn, %bb.tq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #35
  br label %bb.zm

bb.tr:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #35
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.bvt = load i64, ptr %i.bvs, align 8, !tbaa !869 ; 4 uses
  %i.bvu = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !910
  %.not.not.i.i.i1426 = icmp eq i64 %i.bvu, 0
  br i1 %.not.not.i.i.i1426, label %.preheader2616, label %bb.ts

.preheader2616:                                   ; preds = %bb.tr, %.preheader2616
  %.sroa.06.0.in.i.i.i1432 = phi ptr [ %.sroa.06.0.i.i.i1433, %.preheader2616 ], [ %i.x, %bb.tr ]
  %.sroa.06.0.i.i.i1433 = load ptr, ptr %.sroa.06.0.in.i.i.i1432, align 8, !tbaa !119, !noalias !910, !nonnull !68, !noundef !68 ; 3 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1433, i64 8
  %i.bvw = load i64, ptr %i.bvv, align 8, !tbaa !107, !noalias !910
  %i.bvx = icmp eq i64 %i.bvt, %i.bvw
  br i1 %i.bvx, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1430, label %.preheader2616, !llvm.loop !515

bb.ts:                                            ; preds = %bb.tr
  %i.bvy = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !910 ; 2 uses
  %i.bvz = urem i64 %i.bvt, %i.bvy                ; 2 uses
  %i.bwa = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !910
  %i.bwb = getelementptr inbounds nuw [8 x i8], ptr %i.bwa, i64 %i.bvz
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !121, !noalias !910, !nonnull !68, !noundef !68
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !119, !noalias !910 ; 3 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 8
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !107, !noalias !910
  %i.bwg = icmp eq i64 %i.bvt, %i.bwf
  br i1 %i.bwg, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1430, label %.lr.ph.i.i.i.i.i1427

.lr.ph.i.i.i.i.i1427:                             ; preds = %bb.ts, %.lr.ph.i.i.i.i.i1427
  %.020.i.i.i.i.i1428 = phi ptr [ %i.bwh, %.lr.ph.i.i.i.i.i1427 ], [ %i.bwd, %bb.ts ]
  %i.bwh = load ptr, ptr %.020.i.i.i.i.i1428, align 8, !tbaa !119, !noalias !910, !nonnull !68, !noundef !68 ; 3 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 8
  %i.bwj = load i64, ptr %i.bwi, align 8, !tbaa !107, !noalias !910 ; 2 uses
  %i.bwk = urem i64 %i.bwj, %i.bvy
  %.not19.i.i.i.i.i1429 = icmp eq i64 %i.bwk, %i.bvz
  call void @llvm.assume(i1 %.not19.i.i.i.i.i1429)
  %i.bwl = icmp eq i64 %i.bvt, %i.bwj
  br i1 %i.bwl, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1430, label %.lr.ph.i.i.i.i.i1427, !llvm.loop !488

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1430: ; preds = %.lr.ph.i.i.i.i.i1427, %.preheader2616, %bb.ts
  %.sroa.06.1.i.i.i1431 = phi ptr [ %.sroa.06.0.i.i.i1433, %.preheader2616 ], [ %i.bwd, %bb.ts ], [ %i.bwh, %.lr.ph.i.i.i.i.i1427 ]
  %i.bwm = load ptr, ptr %0, align 8, !tbaa !452, !noalias !910, !nonnull !68, !align !453
  %i.bwn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1431, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull align 8 dereferenceable(8) %i.bwm, ptr noundef nonnull align 8 dereferenceable(16) %i.bwn)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1435 unwind label %bb.tw

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1435: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1430
  %i.bwo = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi5Value8asObjectERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %121, ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull align 8 dereferenceable(8) %i.bwo)
          to label %bb.tt unwind label %bb.tx

bb.tt:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1435
  %i.bwp = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453
  invoke void @_ZNO8facebook3jsi6Object10asFunctionERNS0_7RuntimeE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Function") align 8 %120, ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %i.bwp)
          to label %bb.tu unwind label %bb.ty

bb.tu:                                            ; preds = %bb.tt
  %i.bwq = load ptr, ptr %121, align 8, !tbaa !96 ; 3 uses
  %.not.i1436 = icmp eq ptr %i.bwq, null
  br i1 %.not.i1436, label %_ZN8facebook3jsi7PointerD2Ev.exit1437, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.bwr = load ptr, ptr %i.bwq, align 8, !tbaa !94
  %i.bws = load ptr, ptr %i.bwr, align 8
  call void %i.bws(ptr noundef nonnull align 8 dereferenceable(8) %i.bwq) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1437

_ZN8facebook3jsi7PointerD2Ev.exit1437:            ; preds = %bb.tu, %bb.tv
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !879 ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.bww = load ptr, ptr %i.bwv, align 8, !tbaa !879 ; 2 uses
  %.not18592537 = icmp eq ptr %i.bwu, %i.bww
  br i1 %.not18592537, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1456
  %.pre3058 = load ptr, ptr %123, align 8, !tbaa !880
  %.pre3059 = load ptr, ptr %i.au, align 8, !tbaa !895
  %i.bwx = ptrtoint ptr %.pre3059 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8facebook3jsi7PointerD2Ev.exit1437
  %i.bwy = phi i64 [ %i.bwx, %._crit_edge.loopexit ], [ 0, %_ZN8facebook3jsi7PointerD2Ev.exit1437 ]
  %i.bwz = phi ptr [ %.pre3058, %._crit_edge.loopexit ], [ null, %_ZN8facebook3jsi7PointerD2Ev.exit1437 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #35
  %i.bxa = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.bxb = ptrtoint ptr %i.bwz to i64
  %i.bxc = sub i64 %i.bwy, %i.bxb
  %i.bxd = ashr exact i64 %i.bxc, 4
  %i.bxe = load ptr, ptr %i.bxa, align 8, !tbaa !94, !noalias !913
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 616
  %i.bxg = load ptr, ptr %i.bxf, align 8, !noalias !913
  invoke void %i.bxg(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %125, ptr noundef nonnull align 8 dereferenceable(8) %i.bxa, ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %i.bwz, i64 noundef %i.bxd)
          to label %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit unwind label %bb.uo, !inline_history !916

bb.tw:                                            ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i1430
  %i.bxh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ua

bb.tx:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit1435
  %i.bxi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1440

bb.ty:                                            ; preds = %bb.tt
  %i.bxj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bxk = load ptr, ptr %121, align 8, !tbaa !96 ; 3 uses
  %.not.i1439 = icmp eq ptr %i.bxk, null
  br i1 %.not.i1439, label %_ZN8facebook3jsi7PointerD2Ev.exit1440, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.bxl = load ptr, ptr %i.bxk, align 8, !tbaa !94
  %i.bxm = load ptr, ptr %i.bxl, align 8
  call void %i.bxm(ptr noundef nonnull align 8 dereferenceable(8) %i.bxk) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1440

_ZN8facebook3jsi7PointerD2Ev.exit1440:            ; preds = %bb.tz, %bb.ty, %bb.tx
  %.pn503 = phi { ptr, i32 } [ %i.bxi, %bb.tx ], [ %i.bxj, %bb.ty ], [ %i.bxj, %bb.tz ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #35
  br label %bb.ua

bb.ua:                                            ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1440, %bb.tw
  %.pn503.pn = phi { ptr, i32 } [ %.pn503, %_ZN8facebook3jsi7PointerD2Ev.exit1440 ], [ %i.bxh, %bb.tw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #35
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1469

.lr.ph:                                           ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit1437, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1456
  %.sroa.01790.02538 = phi ptr [ %i.bym, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1456 ], [ %i.bwu, %_ZN8facebook3jsi7PointerD2Ev.exit1437 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #35
  %.sroa.055.0.copyload = load i32, ptr %.sroa.01790.02538, align 8, !tbaa !498 ; 2 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01790.02538, i64 8
  %.sroa.257.0.copyload = load i64, ptr %.sroa.257.0..sroa_idx, align 8, !tbaa !74 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  switch i32 %.sroa.055.0.copyload, label %bb.uf [
    i32 0, label %bb.ub
    i32 1, label %bb.uc
    i32 3, label %bb.ud
    i32 2, label %bb.ue
  ]

bb.ub:                                            ; preds = %.lr.ph
  store i32 0, ptr %124, align 8, !tbaa !69, !alias.scope !920
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452

bb.uc:                                            ; preds = %.lr.ph
  store i32 1, ptr %124, align 8, !tbaa !69, !alias.scope !923
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452

bb.ud:                                            ; preds = %.lr.ph
  store i32 3, ptr %124, align 8, !tbaa !69, !alias.scope !917
  store i64 %.sroa.257.0.copyload, ptr %i.at, align 8, !tbaa !74, !alias.scope !917
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452

bb.ue:                                            ; preds = %.lr.ph
  %i.bxn = trunc i64 %.sroa.257.0.copyload to i8
  store i32 2, ptr %124, align 8, !tbaa !69, !alias.scope !917
  store i8 %i.bxn, ptr %i.at, align 8, !tbaa !74, !alias.scope !917
  br label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452

bb.uf:                                            ; preds = %.lr.ph
  %.off.i.i1441 = add i32 %.sroa.055.0.copyload, -4
  %switch.i.i1442 = icmp ult i32 %.off.i.i1441, 5
  call void @llvm.assume(i1 %switch.i.i1442)
  %i.bxo = load i64, ptr %i.v, align 8, !tbaa !486, !noalias !926
  %.not.not.i.i.i.i1443 = icmp eq i64 %i.bxo, 0
  br i1 %.not.not.i.i.i.i1443, label %.preheader2547, label %bb.ug

.preheader2547:                                   ; preds = %bb.uf, %.preheader2547
  %.sroa.06.0.in.i.i.i.i1449 = phi ptr [ %.sroa.06.0.i.i.i.i1450, %.preheader2547 ], [ %i.x, %bb.uf ]
  %.sroa.06.0.i.i.i.i1450 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1449, align 8, !tbaa !119, !noalias !926, !nonnull !68, !noundef !68 ; 3 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1450, i64 8
  %i.bxq = load i64, ptr %i.bxp, align 8, !tbaa !107, !noalias !926
  %i.bxr = icmp eq i64 %.sroa.257.0.copyload, %i.bxq
  br i1 %i.bxr, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1447, label %.preheader2547, !llvm.loop !515

bb.ug:                                            ; preds = %bb.uf
  %i.bxs = load i64, ptr %i.w, align 8, !tbaa !88, !noalias !926 ; 2 uses
  %i.bxt = urem i64 %.sroa.257.0.copyload, %i.bxs ; 2 uses
  %i.bxu = load ptr, ptr %i.t, align 8, !tbaa !87, !noalias !926
  %i.bxv = getelementptr inbounds nuw [8 x i8], ptr %i.bxu, i64 %i.bxt
  %i.bxw = load ptr, ptr %i.bxv, align 8, !tbaa !121, !noalias !926, !nonnull !68, !noundef !68
  %i.bxx = load ptr, ptr %i.bxw, align 8, !tbaa !119, !noalias !926 ; 3 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 8
  %i.bxz = load i64, ptr %i.bxy, align 8, !tbaa !107, !noalias !926
  %i.bya = icmp eq i64 %.sroa.257.0.copyload, %i.bxz
  br i1 %i.bya, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1447, label %.lr.ph.i.i.i.i.i.i1444

.lr.ph.i.i.i.i.i.i1444:                           ; preds = %bb.ug, %.lr.ph.i.i.i.i.i.i1444
  %.020.i.i.i.i.i.i1445 = phi ptr [ %i.byb, %.lr.ph.i.i.i.i.i.i1444 ], [ %i.bxx, %bb.ug ]
  %i.byb = load ptr, ptr %.020.i.i.i.i.i.i1445, align 8, !tbaa !119, !noalias !926, !nonnull !68, !noundef !68 ; 3 uses
  %i.byc = getelementptr inbounds nuw i8, ptr %i.byb, i64 8
  %i.byd = load i64, ptr %i.byc, align 8, !tbaa !107, !noalias !926 ; 2 uses
  %i.bye = urem i64 %i.byd, %i.bxs
  %.not19.i.i.i.i.i.i1446 = icmp eq i64 %i.bye, %i.bxt
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i1446)
  %i.byf = icmp eq i64 %.sroa.257.0.copyload, %i.byd
  br i1 %i.byf, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1447, label %.lr.ph.i.i.i.i.i.i1444, !llvm.loop !488

_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1447: ; preds = %.lr.ph.i.i.i.i.i.i1444, %.preheader2547, %bb.ug
  %.sroa.06.1.i.i.i.i1448 = phi ptr [ %.sroa.06.0.i.i.i.i1450, %.preheader2547 ], [ %i.bxx, %bb.ug ], [ %i.byb, %.lr.ph.i.i.i.i.i.i1444 ]
  %i.byg = load ptr, ptr %0, align 8, !tbaa !452, !noalias !926, !nonnull !68, !align !453
  %i.byh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1448, i64 16
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(8) %i.byg, ptr noundef nonnull align 8 dereferenceable(16) %i.byh)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452 unwind label %bb.uj

_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452: ; preds = %bb.ue, %bb.ud, %bb.uc, %bb.ub, %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1447
  %i.byi = load ptr, ptr %i.au, align 8, !tbaa !895 ; 3 uses
  %i.byj = load ptr, ptr %i.av, align 8, !tbaa !896
  %.not.i1453 = icmp eq ptr %i.byi, %i.byj
  br i1 %.not.i1453, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.byi, ptr noundef nonnull align 8 dereferenceable(16) %124) #35
  %i.byk = load ptr, ptr %i.au, align 8, !tbaa !895
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 16
  store ptr %i.byl, ptr %i.au, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1456

bb.ui:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE.exit1452
  invoke void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %123, ptr %i.byi, ptr noundef nonnull align 8 dereferenceable(16) %124)
          to label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1456 unwind label %bb.uk

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit1456: ; preds = %bb.ui, %bb.uh
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %124) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #35
  %i.bym = getelementptr inbounds nuw i8, ptr %.sroa.01790.02538, i64 16 ; 2 uses
  %.not1859 = icmp eq ptr %i.bym, %i.bww
  br i1 %.not1859, label %._crit_edge.loopexit, label %.lr.ph

bb.uj:                                            ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit.i1447
  %i.byn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ul

bb.uk:                                            ; preds = %bb.ui
  %i.byo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %124) #35
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.uj
  %.pn506 = phi { ptr, i32 } [ %i.byo, %bb.uk ], [ %i.byn, %bb.uj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #35
  br label %bb.up

_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit: ; preds = %._crit_edge
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %125) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %125) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #35
  %i.byp = load ptr, ptr %123, align 8, !tbaa !880 ; 3 uses
  %i.byq = load ptr, ptr %i.au, align 8, !tbaa !895 ; 2 uses
  %.not4.i.i.i1457 = icmp eq ptr %i.byp, %i.byq
  br i1 %.not4.i.i.i1457, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1463, label %.lr.ph.i.i.i1458

.lr.ph.i.i.i1458:                                 ; preds = %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit, %.lr.ph.i.i.i1458
  %.05.i.i.i1459 = phi ptr [ %i.byr, %.lr.ph.i.i.i1458 ], [ %i.byp, %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit ] ; 2 uses
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i1459) #35
  %i.byr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1459, i64 16 ; 2 uses
  %.not.i.i.i1460 = icmp eq ptr %i.byr, %i.byq
  br i1 %.not.i.i.i1460, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1461, label %.lr.ph.i.i.i1458, !llvm.loop !909

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1461: ; preds = %.lr.ph.i.i.i1458
  %.pr.i1462 = load ptr, ptr %123, align 8, !tbaa !880
  br label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1463

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1463: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1461, %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit
  %i.bys = phi ptr [ %.pr.i1462, %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i1461 ], [ %i.byp, %_ZNK8facebook3jsi8Function17callAsConstructorERNS0_7RuntimeEPKNS0_5ValueEm.exit ] ; 3 uses
  %.not.i.i1.i1464 = icmp eq ptr %i.bys, null
  br i1 %.not.i.i1.i1464, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1465, label %bb.um

bb.um:                                            ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1463
  %i.byt = load ptr, ptr %i.av, align 8, !tbaa !896
  %i.byu = ptrtoint ptr %i.byt to i64
  %i.byv = ptrtoint ptr %i.bys to i64
  %i.byw = sub i64 %i.byu, %i.byv
  call void @_ZdlPvm(ptr noundef nonnull %i.bys, i64 noundef %i.byw) #36
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1465

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1465: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i1463, %bb.um
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #35
  %i.byx = load ptr, ptr %120, align 8, !tbaa !96 ; 3 uses
  %.not.i1466 = icmp eq ptr %i.byx, null
  br i1 %.not.i1466, label %_ZN8facebook3jsi7PointerD2Ev.exit1467, label %bb.un

bb.un:                                            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1465
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !94
  %i.byz = load ptr, ptr %i.byy, align 8
  call void %i.byz(ptr noundef nonnull align 8 dereferenceable(8) %i.byx) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1467

_ZN8facebook3jsi7PointerD2Ev.exit1467:            ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev.exit1465, %bb.un
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #35
  br label %.critedge710

bb.uo:                                            ; preds = %._crit_edge
  %i.bza = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #35
  br label %bb.up

bb.up:                                            ; preds = %bb.uo, %bb.ul
  %.pn506.pn = phi { ptr, i32 } [ %.pn506, %bb.ul ], [ %i.bza, %bb.uo ] ; 2 uses
  call void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %123) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #35
  %i.bzb = load ptr, ptr %120, align 8, !tbaa !96 ; 3 uses
  %.not.i1468 = icmp eq ptr %i.bzb, null
  br i1 %.not.i1468, label %_ZN8facebook3jsi7PointerD2Ev.exit1469, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.bzc = load ptr, ptr %i.bzb, align 8, !tbaa !94
  %i.bzd = load ptr, ptr %i.bzc, align 8
  call void %i.bzd(ptr noundef nonnull align 8 dereferenceable(8) %i.bzb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1469

_ZN8facebook3jsi7PointerD2Ev.exit1469:            ; preds = %bb.uq, %bb.up, %bb.ua
  %.pn506.pn.pn = phi { ptr, i32 } [ %.pn503.pn, %bb.ua ], [ %.pn506.pn, %bb.up ], [ %.pn506.pn, %bb.uq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #35
  br label %bb.zm

bb.ur:                                            ; preds = %bb.r
  %i.bze = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %.sroa.0.0.copyload = load i32, ptr %i.bze, align 8, !tbaa !498 ; 2 uses
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %.sroa.251.0.copyload = load i64, ptr %.sroa.251.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 %.sroa.0.0.copyload, ptr %1, align 8
  store i64 %.sroa.251.0.copyload, ptr %i.as, align 8
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc1472 unwind label %bb.ut

.noexc1472:                                       ; preds = %bb.ur
  %.off.i.i1470 = add i32 %.sroa.0.0.copyload, -4
  %switch.i.i1471 = icmp ult i32 %.off.i.i1470, 5
  br i1 %switch.i.i1471, label %bb.us, label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1474

bb.us:                                            ; preds = %.noexc1472
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %.sroa.251.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.cp)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1474 unwind label %bb.ut

_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1474: ; preds = %bb.us, %.noexc1472
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.critedge710

bb.ut:                                            ; preds = %bb.us, %bb.ur
  %i.bzf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zm

bb.uu:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #35
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
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
  store i32 2, ptr %0, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !74
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
  store i32 2, ptr %0, align 8, !tbaa !69, !alias.scope !1114
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.au, ptr %i.av, align 8, !tbaa !74, !alias.scope !1114
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
  store i32 2, ptr %0, align 8, !tbaa !69, !alias.scope !1129
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !74, !alias.scope !1129
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
