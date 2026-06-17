inline.NumInlined: 3295
inline.NumDeleted: 1187
begin_hunk_0_@_ZN8facebook6hermes7tracing14TracingRuntime18evaluateJavaScriptERKSt10shared_ptrIKNS_3jsi6BufferEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ae = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.af, align 8, !tbaa !104
  %i.ag = sub nsw i64 %i.ae, %.sroa.0.0.copyload.i2.i.i
  %i.ah = sdiv i64 %i.ag, 1000000
  store i64 %i.ah, ptr %5, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17BeginExecJSRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5arrayIhLm20EERbEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !210, !noalias !211, !nonnull !96, !align !214 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !7, !noalias !211
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !211
  call void %i.am(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !215
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.an = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i19 = load i64, ptr %i.af, align 8, !tbaa !104
  %i.ao = sub nsw i64 %i.an, %.sroa.0.0.copyload.i2.i.i19
  %i.ap = sdiv i64 %i.ao, 1000000
  store i64 %i.ap, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.aq = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.g ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %bb.e
  %i.ar = extractvalue { i32, i64 } %i.aq, 0
  store i32 %i.ar, ptr %7, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = extractvalue { i32, i64 } %i.aq, 1
  store i64 %i.at, ptr %i.as, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15EndExecJSRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.g:                                             ; preds = %bb.e, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv() local_unnamed_addr #1

declare void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"struct.std::array") align 1, ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"struct.std::array") align 1, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17BeginExecJSRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5arrayIhLm20EERbEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !216
  %i.e = load ptr, ptr %2, align 8, !tbaa !219    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.g, ptr %i.a, align 8, !tbaa !104
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %5, align 8, !tbaa !219
  %i.j = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.j, ptr %i.d, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !89
  store i8 %i.l, ptr %i.k, align 1, !tbaa !89
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !221
  %i.o = load ptr, ptr %5, align 8, !tbaa !219
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.q = load i8, ptr %4, align 1, !tbaa !205, !range !222, !noundef !96
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordE, i64 16), ptr %i.c, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !216
  %i.u = load ptr, ptr %5, align 8, !tbaa !219    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.n, align 8, !tbaa !221  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.y, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.u, ptr %i.s, align 8, !tbaa !219
  %i.z = load i64, ptr %i.d, align 8, !tbaa !89
  store i64 %i.z, ptr %i.t, align 8, !tbaa !89
  %.pre = load i64, ptr %i.n, align 8, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !221
  store ptr %i.d, ptr %5, align 8, !tbaa !219
  store i64 0, ptr %i.n, align 8, !tbaa !221
  store i8 0, ptr %i.d, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, ptr noundef nonnull align 1 dereferenceable(20) %3, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i8 %i.q, ptr %i.ad, align 4, !tbaa !223
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread: ; preds = %bb.f
  store ptr %i.c, ptr %i.af, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !74  ; 10 uses
  %i.ak = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #36
          to label %.noexc11 unwind label %bb.i   ; 12 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store ptr %i.c, ptr %i.av, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.aj, %i.af
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc11
  %6 = sub i64 %i.ak, %i.al
  %7 = add i64 %6, -8                             ; 2 uses
  %i.aw = lshr i64 %7, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ay = add i64 %i.ak, -8
  %i.az = sub i64 %i.ay, %i.al
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.bb
  %scevgep33 = getelementptr i8, ptr %i.aj, i64 %i.bb
  %bound0 = icmp ult ptr %i.au, %scevgep33
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.aj, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bf ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.aj, i64 %i.bf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.bg = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !76, !alias.scope !233, !noalias !228
  %wide.load35 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !76, !alias.scope !233, !noalias !228
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !236, !noalias !233
  store <2 x i64> %wide.load35, ptr %i.bh, align 8, !tbaa !76, !alias.scope !236, !noalias !233
  %i.bi = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !76, !alias.scope !233, !noalias !228
  store <2 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !76, !alias.scope !233, !noalias !228
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.preheader37:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader37 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader37 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !231, !noalias !228
  store i64 %i.bk, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !228, !noalias !231
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !231, !noalias !228
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !241

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.au, %.noexc11 ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread31, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread31: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.au, ptr %i.b, align 8, !tbaa !74
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !75
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bo, ptr %i.ag, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #35
  %.pre21.pre = load ptr, ptr %5, align 8, !tbaa !219 ; 2 uses
  store ptr %i.au, ptr %i.b, align 8, !tbaa !74
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bp, ptr %i.ag, align 8, !tbaa !81
  %i.bq = icmp eq ptr %.pre21.pre, %i.d
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit
  %i.br = load i64, ptr %i.d, align 8, !tbaa !89
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.pre21.pre, i64 noundef %i.bs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !219   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.d
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.i
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !89
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread

bb.j:                                             ; preds = %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.j
  %.pn20 = phi { ptr, i32 } [ %i.by, %bb.j ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.bt, %bb.i ]
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 -9223372036854, 9223372036855) i64 @_ZNK8facebook6hermes7tracing14TracingRuntime17getTimeSinceStartEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !104
  %i.c = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i
  %i.d = sdiv i64 %i.c, 1000000
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15EndExecJSRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 10 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, ptr noundef nonnull align 1 dereferenceable(15) @.str.30, i64 15, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 15, ptr %i.e, align 8, !tbaa !221
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 47
  store i8 0, ptr %i.f, align 1, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace15EndExecJSRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.j, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !74   ; 10 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #36 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.a, ptr %i.z, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.o, %i.p
  %4 = add i64 %3, -8                             ; 2 uses
  %i.aa = lshr i64 %4, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.o, -8
  %i.ad = sub i64 %i.ac, %i.p
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.af
  %scevgep9 = getelementptr i8, ptr %i.n, i64 %i.af
  %bound0 = icmp ult ptr %i.y, %scevgep9
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.n, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !249, !noalias !244
  %wide.load11 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !76, !alias.scope !249, !noalias !244
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !252, !noalias !249
  store <2 x i64> %wide.load11, ptr %i.al, align 8, !tbaa !76, !alias.scope !252, !noalias !249
  %i.am = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !249, !noalias !244
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !76, !alias.scope !249, !noalias !244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !247, !noalias !244
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !244, !noalias !247
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !247, !noalias !244
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !255

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !74
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.k, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14queueMicrotaskERKNS_3jsi8FunctionE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20QueueMicrotaskRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !256
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20QueueMicrotaskRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20QueueMicrotaskRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !257
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !264, !noalias !259
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !264, !noalias !259
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !267, !noalias !264
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !267, !noalias !264
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !264, !noalias !259
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !264, !noalias !259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !262, !noalias !259
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !259, !noalias !262
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !262, !noalias !259
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !270

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook6hermes7tracing14TracingRuntime15drainMicrotasksEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %2 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %2, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_21DrainMicrotasksRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.g = load i32, ptr %i.a, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.g), !inline_history !271
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_21DrainMicrotasksRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i32, ptr %2, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace21DrainMicrotasksRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.c, ptr %i.e, align 8, !tbaa !272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !279, !noalias !274
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !279, !noalias !274
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !282, !noalias !279
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !282, !noalias !279
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !279, !noalias !274
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !279, !noalias !274
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !277, !noalias !274
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !274, !noalias !277
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !277, !noalias !274
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !285

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime6globalEv(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210, !noalias !286, !nonnull !96, !align !214 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7, !noalias !286
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !noalias !286
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !289
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.i, align 8, !tbaa !104
  %i.j = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.k = sdiv i64 %i.j, 1000000
  store i64 %i.k, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = urem i64 %i.p, %i.r                      ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp eq ptr %i.o, %i.y
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.o, %i.ad
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.w, %bb.b ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  %i.aj = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.s, i64 noundef %i.p, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.w, %bb.b ], [ %i.ab, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.m, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.al = load i64, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.l, align 8, !tbaa !70
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12GlobalRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.ak, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ao = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12GlobalRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace12GlobalRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !290
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !297, !noalias !292
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !297, !noalias !292
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !300, !noalias !297
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !300, !noalias !297
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !297, !noalias !292
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !297, !noalias !292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !295, !noalias !292
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !292, !noalias !295
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !295, !noalias !292
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !303

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime12createObjectEv(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210, !noalias !304, !nonnull !96, !align !214 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7, !noalias !304
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !noalias !304
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !307
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.i, align 8, !tbaa !104
  %i.j = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.k = sdiv i64 %i.j, 1000000
  store i64 %i.k, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = urem i64 %i.p, %i.r                      ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp eq ptr %i.o, %i.y
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.o, %i.ad
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.w, %bb.b ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  %i.aj = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.s, i64 noundef %i.p, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.w, %bb.b ], [ %i.ab, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.m, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.al = load i64, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.l, align 8, !tbaa !70
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateObjectRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.ak, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ao = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateObjectRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateObjectRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !315, !noalias !310
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !315, !noalias !310
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !318, !noalias !315
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !318, !noalias !315
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !315, !noalias !310
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !315, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !313, !noalias !310
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !310, !noalias !313
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !313, !noalias !310
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !321

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime25createObjectWithPrototypeERKNS_3jsi5ValueE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210, !noalias !322, !nonnull !96, !align !214 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7, !noalias !322
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !noalias !322
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !325
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.i, align 8, !tbaa !104
  %i.j = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.k = sdiv i64 %i.j, 1000000
  store i64 %i.k, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = urem i64 %i.p, %i.r                      ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp eq ptr %i.o, %i.y
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.o, %i.ad
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.w, %bb.b ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  %i.aj = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.s, i64 noundef %i.p, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.w, %bb.b ], [ %i.ab, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.m, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.al = load i64, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.l, align 8, !tbaa !70
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.an = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13useTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.g ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13useTraceValueERKNS_3jsi5ValueE.exit: ; preds = %.loopexit
  %i.ao = extractvalue { i32, i64 } %i.an, 0
  store i32 %i.ao, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = extractvalue { i32, i64 } %i.an, 1
  store i64 %i.aq, ptr %i.ap, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreateObjectWithPrototypeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13useTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.loopexit, %_ZN8facebook6hermes7tracing14TracingRuntime13useTraceValueERKNS_3jsi5ValueE.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ar, %bb.f ], [ %i.ak, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.at = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreateObjectWithPrototypeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31CreateObjectWithPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.m, %i.n
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.m, -8
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !334, !noalias !329
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !76, !alias.scope !334, !noalias !329
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !337, !noalias !334
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !76, !alias.scope !337, !noalias !334
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !334, !noalias !329
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !76, !alias.scope !334, !noalias !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !332, !noalias !329
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !329, !noalias !332
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !332, !noalias !329
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !340

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.40", align 16 ; 8 uses
  %4 = alloca %"class.std::shared_ptr.40", align 16 ; 4 uses
  %5 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.val = load ptr, ptr %2, align 8               ; 3 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val9 = load ptr, ptr %i.b, align 8            ; 10 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36, !noalias !341 ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  store i32 1, ptr %i.d, align 8, !tbaa !85, !noalias !341
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !87, !noalias !341
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !7, !noalias !341
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val9, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEEN17TracingHostObjectCI2NS4_19DecoratedHostObjectEERNS4_7RuntimeES6_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 9 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89, !noalias !341
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !341
  %i.j = add nsw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.k, align 8, !tbaa !17, !noalias !341
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.val, ptr %i.l, align 8, !tbaa !344, !noalias !341
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.val9, ptr %i.m, align 8, !tbaa !9, !noalias !341
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !341 ; 0 uses
  %.pre.i.i.i.i.i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89, !noalias !341
  %i.o = icmp eq i8 %.pre.i.i.i.i.i.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook3jsi19DecoratedHostObjectE, i64 16), ptr %i.f, align 8, !tbaa !7, !noalias !341
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.p, align 8, !tbaa !17, !noalias !341
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.val, ptr %i.q, align 8, !tbaa !344, !noalias !341
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.val9, ptr %i.r, align 8, !tbaa !9, !noalias !341
  br i1 %i.o, label %bb.e, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  %.pre.i.i.i.i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !341
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %i.s = phi i32 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.j, %.thread.i.i.i.i.i.i ]
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.g, align 4, !tbaa !3, !noalias !341
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !341 ; 0 uses
  br label %bb.f

_ZZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEEN17TracingHostObjectCI2NS4_19DecoratedHostObjectEERNS4_7RuntimeES6_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.v, align 8, !tbaa !17, !noalias !341
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.val, ptr %i.w, align 8, !tbaa !344, !noalias !341
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %i.x, align 8, !tbaa !9, !noalias !341
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEE17TracingHostObject, i64 16), ptr %i.f, align 8, !tbaa !7, !noalias !341
  br label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEE17TracingHostObject, i64 16), ptr %i.f, align 8, !tbaa !7, !noalias !341
  %i.y = load atomic i64, ptr %i.g acquire, align 8, !noalias !341 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !85, !noalias !341
  %i.ab = getelementptr inbounds nuw i8, ptr %.val9, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !87, !noalias !341
  %i.ac = load ptr, ptr %.val9, align 8, !tbaa !7, !noalias !341
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !341
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.val9) #34, !noalias !341, !inline_history !347
  %i.af = load ptr, ptr %.val9, align 8, !tbaa !7, !noalias !341
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !341
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %.val9) #34, !noalias !341, !inline_history !347
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89, !noalias !341
  %.not.i.i.i4.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i4.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.g, align 8, !tbaa !3, !noalias !341
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4, !noalias !341
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEE:bb.a
  %.not19.i.i.i.i.i23 = icmp eq i64 %i.eo, %i.ec
  call void @llvm.assume(i1 %.not19.i.i.i.i.i23)
  %i.ep = icmp eq ptr %i.dt, %i.em
  br i1 %i.ep, label %.loopexit, label %.lr.ph.i.i.i.i.i21, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i21, %bb.ah, %bb.ai
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ah ], [ %i.eg, %bb.ai ], [ %i.ek, %.lr.ph.i.i.i.i.i21 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !101
  store i64 %i.er, ptr %i.a, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreateHostObjectRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.es = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.et = icmp eq i64 %i.es, 4294967297
  %i.eu = trunc i64 %i.es to i32                  ; 2 uses
  br i1 %i.et, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.d, align 8, !tbaa !85
  store i32 0, ptr %i.e, align 4, !tbaa !87
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !358
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !358
  br label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i25 = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i25, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fc = add nsw i32 %i.eu, -1
  store i32 %i.fc, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

bb.an:                                            ; preds = %bb.al
  %i.fd = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i27 = phi i32 [ %i.eu, %bb.am ], [ %i.fd, %bb.an ]
  %i.fe = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.fe, label %bb.ao, label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34
  br label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26, %bb.ao
  ret void

bb.ap:                                            ; preds = %.loopexit.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.aq:                                            ; preds = %.loopexit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.body19

.body19:                                          ; preds = %bb.ap, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.aq ], [ %i.ff, %bb.ap ], [ %i.dk, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ] ; 2 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.fh, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %.body19
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !7
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fh) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.ar, %.body19, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %.body ], [ %.pn.pn, %.body19 ], [ %.pn.pn, %bb.ar ]
  call fastcc void @_ZNSt12__shared_ptrIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.c) #34
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreateHostObjectRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !308
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreateHostObjectRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !364, !noalias !359
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !364, !noalias !359
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !367, !noalias !364
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !367, !noalias !364
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !364, !noalias !359
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !364, !noalias !359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !362, !noalias !359
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !359, !noalias !362
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !362, !noalias !359
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !370

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS0_3jsi10HostObjectEEE17TracingHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.a, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !87
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #34, !inline_history !88
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #34, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
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
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime21createBigIntFromInt64El(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::BigInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !371, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !371
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !noalias !371
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::BigInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %2), !inline_history !374
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i32 0, ptr %i.c, align 4, !tbaa !375
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateBigIntRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS4_6MethodERlEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.loopexit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ar = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !7
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateBigIntRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS4_6MethodERlEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i32, ptr %3, align 4, !tbaa !375
  %i.e = load i64, ptr %4, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateBigIntRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !377
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.d, ptr %i.h, align 8, !tbaa !379
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.e, ptr %i.i, align 8, !tbaa !380
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.k, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.p, %i.q
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ab = lshr i64 %6, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.p, -8
  %i.ae = sub i64 %i.ad, %i.q
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ag
  %scevgep8 = getelementptr i8, ptr %i.o, i64 %i.ag
  %bound0 = icmp ult ptr %i.z, %scevgep8
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.o, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.al = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !386, !noalias !381
  %wide.load10 = load <2 x i64>, ptr %i.al, align 8, !tbaa !76, !alias.scope !386, !noalias !381
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !389, !noalias !386
  store <2 x i64> %wide.load10, ptr %i.am, align 8, !tbaa !76, !alias.scope !389, !noalias !386
  %i.an = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !386, !noalias !381
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !76, !alias.scope !386, !noalias !381
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !384, !noalias !381
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !381, !noalias !384
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !384, !noalias !381
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !392

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !74
  store ptr %i.as, ptr %i.j, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.l, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime22createBigIntFromUint64Em(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::BigInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !393, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !393
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !noalias !393
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::BigInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %2), !inline_history !396
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i32 1, ptr %i.c, align 4, !tbaa !375
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateBigIntRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS4_6MethodERmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.loopexit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ar = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !7
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateBigIntRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS4_6MethodERmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i32, ptr %3, align 4, !tbaa !375
  %i.e = load i64, ptr %4, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateBigIntRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !377
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.d, ptr %i.h, align 8, !tbaa !379
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.e, ptr %i.i, align 8, !tbaa !380
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.k, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.p, %i.q
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ab = lshr i64 %6, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.p, -8
  %i.ae = sub i64 %i.ad, %i.q
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ag
  %scevgep8 = getelementptr i8, ptr %i.o, i64 %i.ag
  %bound0 = icmp ult ptr %i.z, %scevgep8
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.o, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.al = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !402, !noalias !397
  %wide.load10 = load <2 x i64>, ptr %i.al, align 8, !tbaa !76, !alias.scope !402, !noalias !397
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !405, !noalias !402
  store <2 x i64> %wide.load10, ptr %i.am, align 8, !tbaa !76, !alias.scope !405, !noalias !402
  %i.an = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !402, !noalias !397
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !76, !alias.scope !402, !noalias !397
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !400, !noalias !397
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !397, !noalias !400
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !400, !noalias !397
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !408

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !74
  store ptr %i.as, ptr %i.j, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.l, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14bigintToStringERKNS_3jsi6BigIntEi(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !409, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !409
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !noalias !409
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3), !inline_history !412
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit13, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit13, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.i     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit13 unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit13:                                      ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ap = load ptr, ptr %2, align 8, !tbaa !91    ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit13
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.as, %bb.e ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.av = icmp eq ptr %i.ap, %i.au
  br i1 %i.av, label %.loopexit, label %bb.f, !llvm.loop !98

bb.g:                                             ; preds = %.loopexit13
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !72  ; 2 uses
  %i.ay = urem i64 %i.aw, %i.ax                   ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !95 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97
  %i.bf = icmp eq ptr %i.ap, %i.be
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %bb.g, %.lr.ph.i.i.i.i.i9
  %.020.i.i.i.i.i10 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i9 ], [ %i.bc, %bb.g ]
  %i.bg = load ptr, ptr %.020.i.i.i.i.i10, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = urem i64 %i.bj, %i.ax
  %.not19.i.i.i.i.i11 = icmp eq i64 %i.bk, %i.ay
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i11)
  %i.bl = icmp eq ptr %i.ap, %i.bi
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i.i.i.i.i9, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i9, %bb.f, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.bc, %bb.g ], [ %i.bg, %.lr.ph.i.i.i.i.i9 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !101
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20BigIntToStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %.loopexit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.j ], [ %i.bo, %bb.i ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !7
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20BigIntToStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %i.e = load i32, ptr %4, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20BigIntToStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !413
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.h, align 8, !tbaa !415
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.e, ptr %i.i, align 8, !tbaa !416
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.k, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.p, %i.q
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ab = lshr i64 %6, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.p, -8
  %i.ae = sub i64 %i.ad, %i.q
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ag
  %scevgep8 = getelementptr i8, ptr %i.o, i64 %i.ag
  %bound0 = icmp ult ptr %i.z, %scevgep8
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.o, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.al = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !422, !noalias !417
  %wide.load10 = load <2 x i64>, ptr %i.al, align 8, !tbaa !76, !alias.scope !422, !noalias !417
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !425, !noalias !422
  store <2 x i64> %wide.load10, ptr %i.am, align 8, !tbaa !76, !alias.scope !425, !noalias !422
  %i.an = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !422, !noalias !417
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !76, !alias.scope !422, !noalias !417
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !420, !noalias !417
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !417, !noalias !420
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !420, !noalias !417
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !428

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !74
  store ptr %i.as, ptr %i.j, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.l, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime21createStringFromAsciiEPKcm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !429
  store i64 %3, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !430, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !430
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !noalias !430
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, i64 noundef %3), !inline_history !433
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKcRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKcRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load ptr, ptr %3, align 8, !tbaa !429    ; 3 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !104    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !434
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !216
  %i.j = icmp eq ptr %i.d, null
  %i.k = icmp ne i64 %i.e, 0
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.e, ptr %i.a, align 8, !tbaa !104
  %i.l = icmp ugt i64 %i.e, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.j    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !219
  %i.n = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.n, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc6 ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.d, align 1, !tbaa !89
  store i8 %i.p, ptr %i.o, align 1, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !221
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !440
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.w, align 8, !tbaa !441
  store i16 0, ptr %i.v, align 8, !tbaa !442
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.x, align 8, !tbaa !444
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !74  ; 10 uses
  %i.af = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #36 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ae, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.af, %i.ag
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ar = lshr i64 %6, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.af, -8
  %i.au = sub i64 %i.at, %i.ag
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.aw
  %scevgep10 = getelementptr i8, ptr %i.ae, i64 %i.aw
  %bound0 = icmp ult ptr %i.ap, %scevgep10
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.bb = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !450, !noalias !445
  %wide.load12 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !76, !alias.scope !450, !noalias !445
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !453, !noalias !450
  store <2 x i64> %wide.load12, ptr %i.bc, align 8, !tbaa !76, !alias.scope !453, !noalias !450
  %i.bd = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !450, !noalias !445
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !76, !alias.scope !450, !noalias !445
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !448, !noalias !445
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !445, !noalias !448
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !448, !noalias !445
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !456

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !74
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.j:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #35
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime20createStringFromUtf8EPKhm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !429
  store i64 %3, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !457, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !457
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !noalias !457
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, i64 noundef %3), !inline_history !460
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKhRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKhRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load ptr, ptr %3, align 8, !tbaa !429    ; 3 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !104    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !434
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !216
  %i.j = icmp eq ptr %i.d, null
  %i.k = icmp ne i64 %i.e, 0
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.e, ptr %i.a, align 8, !tbaa !104
  %i.l = icmp ugt i64 %i.e, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.j    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !219
  %i.n = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.n, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc6 ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.d, align 1, !tbaa !89
  store i8 %i.p, ptr %i.o, align 1, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !221
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !440
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.w, align 8, !tbaa !441
  store i16 0, ptr %i.v, align 8, !tbaa !442
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 1, ptr %i.x, align 8, !tbaa !444
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !74  ; 10 uses
  %i.af = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #36 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ae, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.af, %i.ag
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ar = lshr i64 %6, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.af, -8
  %i.au = sub i64 %i.at, %i.ag
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.aw
  %scevgep10 = getelementptr i8, ptr %i.ae, i64 %i.aw
  %bound0 = icmp ult ptr %i.ap, %scevgep10
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.bb = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !466, !noalias !461
  %wide.load12 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !76, !alias.scope !466, !noalias !461
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !469, !noalias !466
  store <2 x i64> %wide.load12, ptr %i.bc, align 8, !tbaa !76, !alias.scope !469, !noalias !466
  %i.bd = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !466, !noalias !461
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !76, !alias.scope !466, !noalias !461
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !464, !noalias !461
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !461, !noalias !464
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !464, !noalias !461
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !472

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !74
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.j:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #35
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime21createStringFromUtf16EPKDsm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !473
  store i64 %3, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !474, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !474
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !noalias !474
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, i64 noundef %3), !inline_history !477
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKDsRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKDsRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.b = load i64, ptr %2, align 8, !tbaa !104
  %i.c = load ptr, ptr %3, align 8, !tbaa !473
  %i.d = load i64, ptr %4, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm(ptr noundef nonnull align 8 dereferenceable(92) %i.a, i64 %.sroa.0.0.copyload, i64 noundef %i.b, ptr noundef %i.c, i64 noundef %i.d)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.a, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.l, %i.m
  %6 = add i64 %5, -8                             ; 2 uses
  %i.x = lshr i64 %6, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep9 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep9
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.ah = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !483, !noalias !478
  %wide.load11 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !483, !noalias !478
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !486, !noalias !483
  store <2 x i64> %wide.load11, ptr %i.ai, align 8, !tbaa !76, !alias.scope !486, !noalias !483
  %i.aj = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !483, !noalias !478
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !483, !noalias !478
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !481, !noalias !478
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !478, !noalias !481
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !481, !noalias !478
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !489

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #35
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime25createPropNameIDFromAsciiEPKcm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !429
  store i64 %3, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !490, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !490
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !noalias !490
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, i64 noundef %3), !inline_history !493
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKcRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKcRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load ptr, ptr %3, align 8, !tbaa !429    ; 3 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !104    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !494
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !216
  %i.j = icmp eq ptr %i.d, null
  %i.k = icmp ne i64 %i.e, 0
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.e, ptr %i.a, align 8, !tbaa !104
  %i.l = icmp ugt i64 %i.e, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.j    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !219
  %i.n = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.n, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc6 ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.d, align 1, !tbaa !89
  store i8 %i.p, ptr %i.o, align 1, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !221
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !440
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.w, align 8, !tbaa !441
  store i16 0, ptr %i.v, align 8, !tbaa !442
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.x, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !74  ; 10 uses
  %i.af = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #36 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ae, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.af, %i.ag
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ar = lshr i64 %6, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.af, -8
  %i.au = sub i64 %i.at, %i.ag
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.aw
  %scevgep10 = getelementptr i8, ptr %i.ae, i64 %i.aw
  %bound0 = icmp ult ptr %i.ap, %scevgep10
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.bb = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !502, !noalias !497
  %wide.load12 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !76, !alias.scope !502, !noalias !497
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !505, !noalias !502
  store <2 x i64> %wide.load12, ptr %i.bc, align 8, !tbaa !76, !alias.scope !505, !noalias !502
  %i.bd = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !502, !noalias !497
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !76, !alias.scope !502, !noalias !497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !500, !noalias !497
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !497, !noalias !500
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !500, !noalias !497
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !508

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !74
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.j:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #35
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime24createPropNameIDFromUtf8EPKhm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !429
  store i64 %3, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !509, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !509
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !noalias !509
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, i64 noundef %3), !inline_history !512
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKhRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKhRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load ptr, ptr %3, align 8, !tbaa !429    ; 3 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !104    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !494
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !216
  %i.j = icmp eq ptr %i.d, null
  %i.k = icmp ne i64 %i.e, 0
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.e, ptr %i.a, align 8, !tbaa !104
  %i.l = icmp ugt i64 %i.e, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.j    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !219
  %i.n = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.n, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc6 ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.d, align 1, !tbaa !89
  store i8 %i.p, ptr %i.o, align 1, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !221
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !440
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.w, align 8, !tbaa !441
  store i16 0, ptr %i.v, align 8, !tbaa !442
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 1, ptr %i.x, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !74  ; 10 uses
  %i.af = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #36 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ae, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.af, %i.ag
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ar = lshr i64 %6, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.af, -8
  %i.au = sub i64 %i.at, %i.ag
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.aw
  %scevgep10 = getelementptr i8, ptr %i.ae, i64 %i.aw
  %bound0 = icmp ult ptr %i.ap, %scevgep10
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.bb = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !518, !noalias !513
  %wide.load12 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !76, !alias.scope !518, !noalias !513
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !521, !noalias !518
  store <2 x i64> %wide.load12, ptr %i.bc, align 8, !tbaa !76, !alias.scope !521, !noalias !518
  %i.bd = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !518, !noalias !513
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !76, !alias.scope !518, !noalias !513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !516, !noalias !513
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !513, !noalias !516
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !516, !noalias !513
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !524

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !74
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.j:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #35
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime25createPropNameIDFromUtf16EPKDsm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !473
  store i64 %3, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210, !noalias !525, !nonnull !96, !align !214 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !525
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !noalias !525
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, i64 noundef %3), !inline_history !528
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !104
  %i.l = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.m = sdiv i64 %i.l, 1000000
  store i64 %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.q, %i.af
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  %i.al = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.al, %.noexc ], [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.o, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.an = load i64, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !70
  store i64 %i.an, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKDsRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.am, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRPKDsRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.b = load i64, ptr %2, align 8, !tbaa !104
  %i.c = load ptr, ptr %3, align 8, !tbaa !473
  %i.d = load i64, ptr %4, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm(ptr noundef nonnull align 8 dereferenceable(92) %i.a, i64 %.sroa.0.0.copyload, i64 noundef %i.b, ptr noundef %i.c, i64 noundef %i.d)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.a, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.l, %i.m
  %6 = add i64 %5, -8                             ; 2 uses
  %i.x = lshr i64 %6, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep9 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep9
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ah = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !534, !noalias !529
  %wide.load11 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !534, !noalias !529
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !537, !noalias !534
  store <2 x i64> %wide.load11, ptr %i.ai, align 8, !tbaa !76, !alias.scope !537, !noalias !534
  %i.aj = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !534, !noalias !529
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !534, !noalias !529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !532, !noalias !529
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !529, !noalias !532
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !532, !noalias !529
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !540

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #35
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime4utf8B5cxx11ERKNS_3jsi10PropNameIDE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !noalias !541, !nonnull !96, !align !214 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7, !noalias !541
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !noalias !541
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !544
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.h, align 8, !tbaa !104
  %i.i = sub nsw i64 %i.g, %.sroa.0.0.copyload.i2.i.i
  %i.j = sdiv i64 %i.i, 1000000
  store i64 %i.j, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.k = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.q = icmp eq ptr %i.k, %i.p
  br i1 %i.q, label %.loopexit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72   ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = icmp eq ptr %i.k, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.d ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.v
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ai = icmp eq ptr %i.k, %i.af
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.z, %bb.d ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !101
  %i.al = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.ak)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %.loopexit
  %i.am = extractvalue { i32, i64 } %i.al, 0
  store i32 %i.am, ptr %4, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = extractvalue { i32, i64 } %i.al, 1
  store i64 %i.ao, ptr %i.an, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_10Utf8RecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.g:                                             ; preds = %bb.e, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !89
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_10Utf8RecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 10 uses
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !216
  %i.d = load ptr, ptr %3, align 8, !tbaa !219    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.f, ptr %i.a, align 8, !tbaa !104
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !219
  %i.i = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.i, ptr %i.c, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !89
  store i8 %i.k, ptr %i.j, align 1, !tbaa !89
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !221
  %i.n = load ptr, ptr %4, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.03.0.copyload, ptr %i.q, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10Utf8RecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !216
  %i.u = load ptr, ptr %4, align 8, !tbaa !219    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !221  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.y, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.u, ptr %i.s, align 8, !tbaa !219
  %i.z = load i64, ptr %i.c, align 8, !tbaa !89
  store i64 %i.z, ptr %i.t, align 8, !tbaa !89
  %.pre = load i64, ptr %i.m, align 8, !tbaa !221
  br label %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !221
  store ptr %i.c, ptr %4, align 8, !tbaa !219
  store i64 0, ptr %i.m, align 8, !tbaa !221
  store i8 0, ptr %i.c, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !74  ; 10 uses
  %i.ai = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #36
          to label %.noexc12 unwind label %bb.h   ; 12 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store ptr %i.b, ptr %i.at, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc12
  %5 = sub i64 %i.ai, %i.aj
  %6 = add i64 %5, -8                             ; 2 uses
  %i.au = lshr i64 %6, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ai, -8
  %i.ax = sub i64 %i.aw, %i.aj
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.az
  %scevgep33 = getelementptr i8, ptr %i.ah, i64 %i.az
  %bound0 = icmp ult ptr %i.as, %scevgep33
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ah, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.ah, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.be = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !76, !alias.scope !550, !noalias !545
  %wide.load35 = load <2 x i64>, ptr %i.be, align 8, !tbaa !76, !alias.scope !550, !noalias !545
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !553, !noalias !550
  store <2 x i64> %wide.load35, ptr %i.bf, align 8, !tbaa !76, !alias.scope !553, !noalias !550
  %i.bg = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !76, !alias.scope !550, !noalias !545
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !76, !alias.scope !550, !noalias !545
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.preheader37:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader37 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader37 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !548, !noalias !545
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !545, !noalias !548
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !548, !noalias !545
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ad
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !556

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %.noexc12 ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread31, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread31: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.as, ptr %i.p, align 8, !tbaa !74
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bm, ptr %i.ae, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #35
  %.pre21.pre = load ptr, ptr %4, align 8, !tbaa !219 ; 2 uses
  store ptr %i.as, ptr %i.p, align 8, !tbaa !74
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !75
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !81
  %i.bo = icmp eq ptr %.pre21.pre, %i.c
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !89
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.pre21.pre, i64 noundef %i.bq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.h:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.c
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !89
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

bb.i:                                             ; preds = %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.i
  %.pn20 = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.br, %bb.h ]
  resume { ptr, i32 } %.pn20
}

declare { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime4utf8B5cxx11ERKNS_3jsi6StringE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !noalias !557, !nonnull !96, !align !214 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7, !noalias !557
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !noalias !557
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !560
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.h, align 8, !tbaa !104
  %i.i = sub nsw i64 %i.g, %.sroa.0.0.copyload.i2.i.i
  %i.j = sdiv i64 %i.i, 1000000
  store i64 %i.j, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.k = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.q = icmp eq ptr %i.k, %i.p
  br i1 %i.q, label %.loopexit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72   ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = icmp eq ptr %i.k, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.d ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.v
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ai = icmp eq ptr %i.k, %i.af
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.z, %bb.d ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !101
  %i.al = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.ak)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %.loopexit
  %i.am = extractvalue { i32, i64 } %i.al, 0
  store i32 %i.am, ptr %4, align 8
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes7tracing14TracingRuntime5utf16B5cxx11ERKNS_3jsi6StringE:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = icmp eq ptr %i.k, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.d ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.v
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ai = icmp eq ptr %i.k, %i.af
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.z, %bb.d ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !101
  %i.al = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.ak)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %.loopexit
  %i.am = extractvalue { i32, i64 } %i.al, 0
  store i32 %i.am, ptr %4, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = extractvalue { i32, i64 } %i.al, 1
  store i64 %i.ao, ptr %i.an, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_11Utf16RecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.g:                                             ; preds = %bb.e, %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.aq = load ptr, ptr %0, align 8, !tbaa !569   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !89
  %i.au = shl i64 %i.at, 1
  %i.av = add i64 %i.au, 2
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_11Utf16RecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.46", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 10 uses
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !440
  %i.c = load ptr, ptr %3, align 8, !tbaa !569    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !441  ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.e, 1               ; 4 uses
  %i.f = icmp ugt i64 %i.e, 7
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.h = add nuw nsw i64 %.idx.i, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
          to label %.noexc11 unwind label %bb.j   ; 2 uses

.noexc11:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i
  store ptr %i.i, ptr %4, align 8, !tbaa !569
  store i64 %i.e, ptr %i.b, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc11, %bb.a
  %i.j = phi ptr [ %i.i, %.noexc11 ], [ %i.b, %bb.a ] ; 5 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i16, ptr %i.c, align 2, !tbaa !442
  store i16 %i.k, ptr %i.j, align 2, !tbaa !442
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.j, ptr align 2 %i.c, i64 %.idx.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i
  store i16 0, ptr %i.m, align 2, !tbaa !442
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.03.0.copyload, ptr %i.o, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace11Utf16RecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.p, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !440
  %i.s = icmp eq ptr %i.j, %i.b
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i64 %i.e, 8
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %.idx.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.u, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.j, ptr %i.q, align 8, !tbaa !569
  %i.v = load i64, ptr %i.b, align 8, !tbaa !89
  store i64 %i.v, ptr %i.r, align 8, !tbaa !89
  br label %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.e, ptr %i.w, align 8, !tbaa !441
  store ptr %i.b, ptr %4, align 8, !tbaa !569
  store i64 0, ptr %i.l, align 8, !tbaa !441
  store i16 0, ptr %i.b, align 8, !tbaa !442
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  store ptr %i.a, ptr %i.y, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !74  ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #36
          to label %.noexc13 unwind label %bb.i   ; 12 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc13
  %5 = sub i64 %i.ad, %i.ae
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ap = lshr i64 %6, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ar = add i64 %i.ad, -8
  %i.as = sub i64 %i.ar, %i.ae
  %i.at = and i64 %i.as, -8
  %i.au = add i64 %i.at, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.au
  %scevgep34 = getelementptr i8, ptr %i.ac, i64 %i.au
  %bound0 = icmp ult ptr %i.an, %scevgep34
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ac, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ac, i64 %i.ay ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.az = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !76, !alias.scope !575, !noalias !570
  %wide.load36 = load <2 x i64>, ptr %i.az, align 8, !tbaa !76, !alias.scope !575, !noalias !570
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !578, !noalias !575
  store <2 x i64> %wide.load36, ptr %i.ba, align 8, !tbaa !76, !alias.scope !578, !noalias !575
  %i.bb = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !76, !alias.scope !575, !noalias !570
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !76, !alias.scope !575, !noalias !570
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.preheader38:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader38 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !573, !noalias !570
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !570, !noalias !573
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !573, !noalias !570
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !581

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc13 ], [ %i.aw, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread32, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread32: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.n, align 8, !tbaa !74
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bh, ptr %i.z, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #35
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !569 ; 2 uses
  store ptr %i.an, ptr %i.n, align 8, !tbaa !74
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !81
  %i.bj = icmp eq ptr %.pre.pre, %i.b
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !89
  %i.bl = shl i64 %i.bk, 1
  %i.bm = add i64 %i.bl, 2
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.bm) #35
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread32, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i14
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !569   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.b
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit17.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i15: ; preds = %bb.i
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !89
  %i.br = shl i64 %i.bq, 1
  %i.bs = add i64 %i.br, 2
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #35
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit17.thread

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %.noexc.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit17.thread

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit17.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i15, %bb.j
  %.pn21 = phi { ptr, i32 } [ %i.bt, %bb.j ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i15 ], [ %i.bn, %bb.i ]
  resume { ptr, i32 } %.pn21
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime5utf16B5cxx11ERKNS_3jsi10PropNameIDE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !noalias !582, !nonnull !96, !align !214 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7, !noalias !582
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  %i.e = load ptr, ptr %i.d, align 8, !noalias !582
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !585
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.h, align 8, !tbaa !104
  %i.i = sub nsw i64 %i.g, %.sroa.0.0.copyload.i2.i.i
  %i.j = sdiv i64 %i.i, 1000000
  store i64 %i.j, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.k = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.q = icmp eq ptr %i.k, %i.p
  br i1 %i.q, label %.loopexit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72   ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = icmp eq ptr %i.k, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.d ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i.i = icmp eq i64 %i.ah, %i.v
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ai = icmp eq ptr %i.k, %i.af
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.z, %bb.d ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !101
  %i.al = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.ak)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %.loopexit
  %i.am = extractvalue { i32, i64 } %i.al, 0
  store i32 %i.am, ptr %4, align 8
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmE:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.ah = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = urem i64 %i.ak, %i.y
  %.not19.i.i.i.i.i = icmp eq i64 %i.al, %i.z
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.am = icmp eq ptr %i.o, %i.aj
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.ad, %bb.e ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !101
  %i.ap = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.ao)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %.loopexit
  %i.aq = extractvalue { i32, i64 } %i.ap, 0
  store i32 %i.aq, ptr %6, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = extractvalue { i32, i64 } %i.ap, 1
  store i64 %i.as, ptr %i.ar, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_19GetStringDataRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !569 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmEEN7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.av = load i64, ptr %i.c, align 8, !tbaa !89
  %i.aw = shl i64 %i.av, 1
  %i.ax = add i64 %i.aw, 2
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #35
  br label %_ZZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmEEN7ContextD2Ev.exit

_ZZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmEEN7ContextD2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %.loopexit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ay, %bb.h ]
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !569 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.c
  br i1 %i.bb, label %_ZZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmEEN7ContextD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.j
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !89
  %i.bd = shl i64 %i.bc, 1
  %i.be = add i64 %i.bd, 2
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #35
  br label %_ZZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmEEN7ContextD2Ev.exit16

_ZZN8facebook6hermes7tracing14TracingRuntime13getStringDataERKNS_3jsi6StringEPvPFvS7_bPKvmEEN7ContextD2Ev.exit16: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_19GetStringDataRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.46", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 9 uses
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !569    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !441  ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.i)
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = add nuw nsw i64 %i.j, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !569
  %i.l = load i64, ptr %i.e, align 8, !tbaa !89
  store i64 %i.l, ptr %i.c, align 8, !tbaa !89
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !441
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.m = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !569
  store i64 0, ptr %i.o, align 8, !tbaa !441
  store i16 0, ptr %i.e, align 8, !tbaa !442
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.03.0.copyload, ptr %i.q, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !440
  %i.u = icmp eq ptr %i.m, %i.c
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  %i.v = icmp ult i64 %i.n, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nuw nsw i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.x, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  store ptr %i.m, ptr %i.s, align 8, !tbaa !569
  %i.y = load i64, ptr %i.c, align 8, !tbaa !89
  store i64 %i.y, ptr %i.t, align 8, !tbaa !89
  br label %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %i.z, align 8, !tbaa !441
  store ptr %i.c, ptr %4, align 8, !tbaa !569
  store i64 0, ptr %i.p, align 8, !tbaa !441
  store i16 0, ptr %i.c, align 8, !tbaa !442
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !74  ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #36
          to label %.noexc8 unwind label %bb.f    ; 12 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc8
  %5 = sub i64 %i.ag, %i.ah
  %6 = add i64 %5, -8                             ; 2 uses
  %i.as = lshr i64 %6, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.au = add i64 %i.ag, -8
  %i.av = sub i64 %i.au, %i.ah
  %i.aw = and i64 %i.av, -8
  %i.ax = add i64 %i.aw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.ax
  %scevgep29 = getelementptr i8, ptr %i.af, i64 %i.ax
  %bound0 = icmp ult ptr %i.aq, %scevgep29
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.af, i64 %i.bb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.bc = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !76, !alias.scope !595, !noalias !590
  %wide.load31 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !76, !alias.scope !595, !noalias !590
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !598, !noalias !595
  store <2 x i64> %wide.load31, ptr %i.bd, align 8, !tbaa !76, !alias.scope !598, !noalias !595
  %i.be = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !76, !alias.scope !595, !noalias !590
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !76, !alias.scope !595, !noalias !590
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.preheader33:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader33 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !593, !noalias !590
  store i64 %i.bg, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !590, !noalias !593
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !593, !noalias !590
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !601

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %.noexc8 ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread27, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread27: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !74
  store ptr %i.bj, ptr %i.aa, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #35
  %.pre14.pre = load ptr, ptr %4, align 8, !tbaa !569 ; 2 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !74
  store ptr %i.bj, ptr %i.aa, align 8, !tbaa !75
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !81
  %i.bm = icmp eq ptr %.pre14.pre, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !89
  %i.bo = shl i64 %i.bn, 1
  %i.bp = add i64 %i.bo, 2
  call void @_ZdlPvm(ptr noundef %.pre14.pre, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread27, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i9
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %4, align 8, !tbaa !569   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.c
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i10: ; preds = %bb.f
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !89
  %i.bu = shl i64 %i.bt, 1
  %i.bv = add i64 %i.bu, 2
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #35
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit12: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i10
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime17getPropNameIdDataERKNS_3jsi10PropNameIDEPvPFvS7_bPKvmE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.Context.52, align 8         ; 9 uses
  %5 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %2, ptr %4, align 8, !tbaa !602
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !604
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !440
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !441
  store i16 0, ptr %i.c, align 8, !tbaa !442
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4, ptr noundef nonnull @"_ZZN8facebook6hermes7tracing14TracingRuntime17getPropNameIdDataERKNS_3jsi10PropNameIDEPvPFvS7_bPKvmEEN3$_08__invokeES7_bS9_m")
          to label %bb.b unwind label %bb.h, !inline_history !605

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.k = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.l, align 8, !tbaa !104
  %i.m = sub nsw i64 %i.k, %.sroa.0.0.copyload.i2.i.i
  %i.n = sdiv i64 %i.m, 1000000
  store i64 %i.n, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.o = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load i64, ptr %i.p, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = icmp eq ptr %i.o, %i.t
  br i1 %i.u, label %.loopexit, label %bb.d, !llvm.loop !98

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i64, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = urem i64 %i.w, %i.y                      ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ag = icmp eq ptr %i.o, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.ah = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = urem i64 %i.ak, %i.y
  %.not19.i.i.i.i.i = icmp eq i64 %i.al, %i.z
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.am = icmp eq ptr %i.o, %i.aj
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.ad, %bb.e ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes7tracing14TracingRuntime26createPropNameIDFromStringERKNS_3jsi6StringE:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.w, %bb.b ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  %i.aj = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.s, i64 noundef %i.p, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit13 unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 24) #35
  br label %.body

.loopexit13:                                      ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.w, %bb.b ], [ %i.ab, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.m, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.al = load i64, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.l, align 8, !tbaa !70
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.an = load ptr, ptr %2, align 8, !tbaa !91    ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit13
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.at = icmp eq ptr %i.an, %i.as
  br i1 %i.at, label %.loopexit, label %bb.f, !llvm.loop !98

bb.g:                                             ; preds = %.loopexit13
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = load i64, ptr %i.q, align 8, !tbaa !72  ; 2 uses
  %i.aw = urem i64 %i.au, %i.av                   ; 2 uses
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !95 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = icmp eq ptr %i.an, %i.bc
  br i1 %i.bd, label %.loopexit, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %bb.g, %.lr.ph.i.i.i.i.i9
  %.020.i.i.i.i.i10 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i9 ], [ %i.ba, %bb.g ]
  %i.be = load ptr, ptr %.020.i.i.i.i.i10, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = urem i64 %i.bh, %i.av
  %.not19.i.i.i.i.i11 = icmp eq i64 %i.bi, %i.aw
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i11)
  %i.bj = icmp eq ptr %i.an, %i.bg
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i.i.i.i9, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i9, %bb.f, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.ba, %bb.g ], [ %i.be, %.lr.ph.i.i.i.i.i9 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !101
  %i.bm = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.bl)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %.loopexit
  %i.bn = extractvalue { i32, i64 } %i.bm, 0
  store i32 %i.bn, ptr %4, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = extractvalue { i32, i64 } %i.bm, 1
  store i64 %i.bp, ptr %i.bo, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreatePropNameIDWithValueRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.j:                                             ; preds = %.loopexit.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h, %.loopexit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.br, %bb.k ], [ %i.bq, %bb.j ], [ %i.ak, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bs = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.body
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !7
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreatePropNameIDWithValueRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31CreatePropNameIDWithValueRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !610
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.m, %i.n
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.m, -8
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !617, !noalias !612
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !76, !alias.scope !617, !noalias !612
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !620, !noalias !617
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !76, !alias.scope !620, !noalias !617
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !617, !noalias !612
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !76, !alias.scope !617, !noalias !612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !615, !noalias !612
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !612, !noalias !615
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !615, !noalias !612
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !623

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime26createPropNameIDFromSymbolERKNS_3jsi6SymbolE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210, !noalias !624, !nonnull !96, !align !214 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7, !noalias !624
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !noalias !624
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !627
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.i, align 8, !tbaa !104
  %i.j = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.k = sdiv i64 %i.j, 1000000
  store i64 %i.k, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = urem i64 %i.p, %i.r                      ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp eq ptr %i.o, %i.y
  br i1 %i.z, label %.loopexit13, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.o, %i.ad
  br i1 %i.aa, label %.loopexit13, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.w, %bb.b ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  %i.aj = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.s, i64 noundef %i.p, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit13 unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 24) #35
  br label %.body

.loopexit13:                                      ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.w, %bb.b ], [ %i.ab, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.m, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.al = load i64, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.l, align 8, !tbaa !70
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.an = load ptr, ptr %2, align 8, !tbaa !91    ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit13
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.at = icmp eq ptr %i.an, %i.as
  br i1 %i.at, label %.loopexit, label %bb.f, !llvm.loop !98

bb.g:                                             ; preds = %.loopexit13
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = load i64, ptr %i.q, align 8, !tbaa !72  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN8facebook6hermes7tracing14TracingRuntime11getPropertyERKNS_3jsi6ObjectERKNS3_6StringE:bb.a
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 4 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71   ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.loopexit20, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %.loopexit20, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ah = load ptr, ptr %3, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i14 = phi ptr [ %i.j, %bb.e ], [ %.sroa.06.0.i.i.i15, %bb.f ]
  %.sroa.06.0.i.i.i15 = load ptr, ptr %.sroa.06.0.in.i.i.i14, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i15, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.f, !llvm.loop !98

.loopexit20:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  store i64 %i.am, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.an = load ptr, ptr %3, align 8, !tbaa !91    ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = urem i64 %i.ao, %i.q                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.av = icmp eq ptr %i.an, %i.au
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %.loopexit20, %.lr.ph.i.i.i.i.i10
  %.020.i.i.i.i.i11 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i10 ], [ %i.as, %.loopexit20 ]
  %i.aw = load ptr, ptr %.020.i.i.i.i.i11, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = urem i64 %i.az, %i.q
  %.not19.i.i.i.i.i12 = icmp eq i64 %i.ba, %i.ap
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i12)
  %i.bb = icmp eq ptr %i.an, %i.ay
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i.i.i.i.i10, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i10, %bb.f, %.loopexit20
  %.sroa.06.1.i.i.i13 = phi ptr [ %.sroa.06.0.i.i.i15, %bb.f ], [ %i.as, %.loopexit20 ], [ %i.aw, %.lr.ph.i.i.i.i.i10 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i13, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  store i32 %i.bf, ptr %5, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = extractvalue { i32, i64 } %i.be, 1
  store i64 %i.bh, ptr %i.bg, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17GetPropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !210, !noalias !628, !nonnull !96, !align !214 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !7, !noalias !628
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 392
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !628
  call void %i.bm(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !631
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i17 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.bo = sub nsw i64 %i.bn, %.sroa.0.0.copyload.i2.i.i17
  %i.bp = sdiv i64 %i.bo, 1000000
  store i64 %i.bp, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.bq = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.h ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %.loopexit
  %i.br = extractvalue { i32, i64 } %i.bq, 0
  store i32 %i.br, ptr %7, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = extractvalue { i32, i64 } %i.bq, 1
  store i64 %i.bt, ptr %i.bs, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

bb.h:                                             ; preds = %.loopexit, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  resume { ptr, i32 } %i.bu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17GetPropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17GetPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !632
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.m, %i.n
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.m, -8
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !639, !noalias !634
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !76, !alias.scope !639, !noalias !634
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !642, !noalias !639
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !76, !alias.scope !642, !noalias !639
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !639, !noalias !634
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !76, !alias.scope !639, !noalias !634
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !637, !noalias !634
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !634, !noalias !637
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !637, !noalias !634
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !645

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20ReturnToNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.k, %i.l
  %4 = add i64 %3, -8                             ; 2 uses
  %i.w = lshr i64 %4, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.k, -8
  %i.z = sub i64 %i.y, %i.l
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep8 = getelementptr i8, ptr %i.j, i64 %i.ab
  %bound0 = icmp ult ptr %i.u, %scevgep8
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ag = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !651, !noalias !646
  %wide.load10 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !76, !alias.scope !651, !noalias !646
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !654, !noalias !651
  store <2 x i64> %wide.load10, ptr %i.ah, align 8, !tbaa !76, !alias.scope !654, !noalias !651
  %i.ai = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !651, !noalias !646
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !76, !alias.scope !651, !noalias !646
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !649, !noalias !646
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !646, !noalias !649
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !649, !noalias !646
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !657

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !74
  store ptr %i.an, ptr %i.e, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime11getPropertyERKNS_3jsi6ObjectERKNS3_10PropNameIDE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %6 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %7 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.g = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 4 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71   ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.loopexit20, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %.loopexit20, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ah = load ptr, ptr %3, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i14 = phi ptr [ %i.j, %bb.e ], [ %.sroa.06.0.i.i.i15, %bb.f ]
  %.sroa.06.0.i.i.i15 = load ptr, ptr %.sroa.06.0.in.i.i.i14, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i15, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.f, !llvm.loop !98

.loopexit20:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  store i64 %i.am, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.an = load ptr, ptr %3, align 8, !tbaa !91    ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = urem i64 %i.ao, %i.q                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.av = icmp eq ptr %i.an, %i.au
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %.loopexit20, %.lr.ph.i.i.i.i.i10
  %.020.i.i.i.i.i11 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i10 ], [ %i.as, %.loopexit20 ]
  %i.aw = load ptr, ptr %.020.i.i.i.i.i11, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = urem i64 %i.az, %i.q
  %.not19.i.i.i.i.i12 = icmp eq i64 %i.ba, %i.ap
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i12)
  %i.bb = icmp eq ptr %i.an, %i.ay
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i.i.i.i.i10, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i10, %bb.f, %.loopexit20
  %.sroa.06.1.i.i.i13 = phi ptr [ %.sroa.06.0.i.i.i15, %bb.f ], [ %i.as, %.loopexit20 ], [ %i.aw, %.lr.ph.i.i.i.i.i10 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i13, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.bd) ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8facebook6hermes7tracing14TracingRuntime11getPropertyERKNS_3jsi6ObjectERKNS3_5ValueE:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !210, !noalias !662, !nonnull !96, !align !214 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7, !noalias !662
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 400
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !662
  call void %i.ap(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.aq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i9 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.ar = sub nsw i64 %i.aq, %.sroa.0.0.copyload.i2.i.i9
  %i.as = sdiv i64 %i.ar, 1000000
  store i64 %i.as, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.at = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.f ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %.loopexit
  %i.au = extractvalue { i32, i64 } %i.at, 0
  store i32 %i.au, ptr %7, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = extractvalue { i32, i64 } %i.at, 1
  store i64 %i.aw, ptr %i.av, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

bb.f:                                             ; preds = %.loopexit, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14getPrototypeOfERKNS_3jsi6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %5 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.g = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %.loopexit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18GetPrototypeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210, !noalias !666, !nonnull !96, !align !214 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !666
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 376
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !666
  call void %i.al(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !669
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i7 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.an = sub nsw i64 %i.am, %.sroa.0.0.copyload.i2.i.i7
  %i.ao = sdiv i64 %i.an, 1000000
  store i64 %i.ao, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ap = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.f ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %.loopexit
  %i.aq = extractvalue { i32, i64 } %i.ap, 0
  store i32 %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = extractvalue { i32, i64 } %i.ap, 1
  store i64 %i.as, ptr %i.ar, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %.loopexit, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18GetPrototypeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18GetPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !670
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !677, !noalias !672
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !677, !noalias !672
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !680, !noalias !677
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !680, !noalias !677
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !677, !noalias !672
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !677, !noalias !672
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !682

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !675, !noalias !672
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !672, !noalias !675
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !675, !noalias !672
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !683

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook6hermes7tracing14TracingRuntime11hasPropertyERKNS_3jsi6ObjectERKNS3_6StringE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 4 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  store i64 %i.af, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ag = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i10 = phi ptr [ %i.i, %bb.e ], [ %.sroa.06.0.i.i.i11, %bb.f ]
  %.sroa.06.0.i.i.i11 = load ptr, ptr %.sroa.06.0.in.i.i.i10, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i11, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %bb.f, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.am = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = urem i64 %i.an, %i.p                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq ptr %i.am, %i.at
  br i1 %i.au, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i6
  %.020.i.i.i.i.i7 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i6 ], [ %i.ar, %.loopexit ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i7, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.p
  %.not19.i.i.i.i.i8 = icmp eq i64 %i.az, %i.ao
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i8)
  %i.ba = icmp eq ptr %i.am, %i.ax
  br i1 %i.ba, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12: ; preds = %.lr.ph.i.i.i.i.i6, %bb.f, %.loopexit
  %.sroa.06.1.i.i.i9 = phi ptr [ %.sroa.06.0.i.i.i11, %bb.f ], [ %i.ar, %.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i6 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i9, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  store i32 %i.bf, ptr %4, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = extractvalue { i32, i64 } %i.be, 1
  store i64 %i.bh, ptr %i.bg, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17HasPropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 416
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !684
  ret i1 %i.bn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17HasPropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17HasPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !685
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.m, %i.n
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.m, -8
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !692, !noalias !687
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !76, !alias.scope !692, !noalias !687
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !695, !noalias !692
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !76, !alias.scope !695, !noalias !692
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !692, !noalias !687
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !76, !alias.scope !692, !noalias !687
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !690, !noalias !687
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !687, !noalias !690
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !690, !noalias !687
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !698

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook6hermes7tracing14TracingRuntime11hasPropertyERKNS_3jsi6ObjectERKNS3_10PropNameIDE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 4 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  store i64 %i.af, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ag = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i10 = phi ptr [ %i.i, %bb.e ], [ %.sroa.06.0.i.i.i11, %bb.f ]
  %.sroa.06.0.i.i.i11 = load ptr, ptr %.sroa.06.0.in.i.i.i10, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i11, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %bb.f, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.am = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = urem i64 %i.an, %i.p                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq ptr %i.am, %i.at
  br i1 %i.au, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i6
  %.020.i.i.i.i.i7 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i6 ], [ %i.ar, %.loopexit ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i7, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.p
  %.not19.i.i.i.i.i8 = icmp eq i64 %i.az, %i.ao
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i8)
  %i.ba = icmp eq ptr %i.am, %i.ax
  br i1 %i.ba, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12: ; preds = %.lr.ph.i.i.i.i.i6, %bb.f, %.loopexit
  %.sroa.06.1.i.i.i9 = phi ptr [ %.sroa.06.0.i.i.i11, %bb.f ], [ %i.ar, %.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i6 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i9, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  store i32 %i.bf, ptr %4, align 8
end_hunk_6
begin_hunk_7_@_ZN8facebook6hermes7tracing14TracingRuntime11hasPropertyERKNS_3jsi6ObjectERKNS3_5ValueE:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime16setPropertyValueERKNS_3jsi6ObjectERKNS3_6StringERKNS3_5ValueE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 4 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  store i64 %i.af, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ag = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i12 = phi ptr [ %i.i, %bb.e ], [ %.sroa.06.0.i.i.i13, %bb.f ]
  %.sroa.06.0.i.i.i13 = load ptr, ptr %.sroa.06.0.in.i.i.i12, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i13, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14, label %bb.f, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.am = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = urem i64 %i.an, %i.p                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq ptr %i.am, %i.at
  br i1 %i.au, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i8
  %.020.i.i.i.i.i9 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i8 ], [ %i.ar, %.loopexit ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i9, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.p
  %.not19.i.i.i.i.i10 = icmp eq i64 %i.az, %i.ao
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i10)
  %i.ba = icmp eq ptr %i.am, %i.ax
  br i1 %i.ba, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14, label %.lr.ph.i.i.i.i.i8, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14: ; preds = %.lr.ph.i.i.i.i.i8, %bb.f, %.loopexit
  %.sroa.06.1.i.i.i11 = phi ptr [ %.sroa.06.0.i.i.i13, %bb.f ], [ %i.ar, %.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i8 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i11, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  store i32 %i.bf, ptr %5, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = extractvalue { i32, i64 } %i.be, 1
  store i64 %i.bh, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bi = tail call { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false) ; 2 uses
  %i.bj = extractvalue { i32, i64 } %i.bi, 0
  store i32 %i.bj, ptr %6, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = extractvalue { i32, i64 } %i.bi, 1
  store i64 %i.bl, ptr %i.bk, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17SetPropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueESA_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 440
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !701
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17SetPropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueESA_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17SetPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !702
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.n, %i.o
  %6 = add i64 %5, -8                             ; 2 uses
  %i.z = lshr i64 %6, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.n, -8
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep10 = getelementptr i8, ptr %i.m, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %scevgep10
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.m, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.aj = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !709, !noalias !704
  %wide.load12 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !76, !alias.scope !709, !noalias !704
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !712, !noalias !709
  store <2 x i64> %wide.load12, ptr %i.ak, align 8, !tbaa !76, !alias.scope !712, !noalias !709
  %i.al = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !709, !noalias !704
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !76, !alias.scope !709, !noalias !704
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !714

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !707, !noalias !704
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !704, !noalias !707
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !707, !noalias !704
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !715

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !74
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime16setPropertyValueERKNS_3jsi6ObjectERKNS3_10PropNameIDERKNS3_5ValueE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 4 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  store i64 %i.af, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ag = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i12 = phi ptr [ %i.i, %bb.e ], [ %.sroa.06.0.i.i.i13, %bb.f ]
  %.sroa.06.0.i.i.i13 = load ptr, ptr %.sroa.06.0.in.i.i.i12, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i13, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14, label %bb.f, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.am = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = urem i64 %i.an, %i.p                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq ptr %i.am, %i.at
  br i1 %i.au, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i8
  %.020.i.i.i.i.i9 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i8 ], [ %i.ar, %.loopexit ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i9, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.p
  %.not19.i.i.i.i.i10 = icmp eq i64 %i.az, %i.ao
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i10)
  %i.ba = icmp eq ptr %i.am, %i.ax
  br i1 %i.ba, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14, label %.lr.ph.i.i.i.i.i8, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit14: ; preds = %.lr.ph.i.i.i.i.i8, %bb.f, %.loopexit
  %.sroa.06.1.i.i.i11 = phi ptr [ %.sroa.06.0.i.i.i13, %bb.f ], [ %i.ar, %.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i8 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i11, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
end_hunk_7
begin_hunk_8_@_ZN8facebook6hermes7tracing14TracingRuntime16setPropertyValueERKNS_3jsi6ObjectERKNS3_5ValueES9_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 448
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !717
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14deletePropertyERKNS_3jsi6ObjectERKNS3_10PropNameIDE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 4 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  store i64 %i.af, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ag = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i10 = phi ptr [ %i.i, %bb.e ], [ %.sroa.06.0.i.i.i11, %bb.f ]
  %.sroa.06.0.i.i.i11 = load ptr, ptr %.sroa.06.0.in.i.i.i10, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i11, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %bb.f, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.am = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = urem i64 %i.an, %i.p                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq ptr %i.am, %i.at
  br i1 %i.au, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i6
  %.020.i.i.i.i.i7 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i6 ], [ %i.ar, %.loopexit ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i7, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.p
  %.not19.i.i.i.i.i8 = icmp eq i64 %i.az, %i.ao
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i8)
  %i.ba = icmp eq ptr %i.am, %i.ax
  br i1 %i.ba, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12: ; preds = %.lr.ph.i.i.i.i.i6, %bb.f, %.loopexit
  %.sroa.06.1.i.i.i9 = phi ptr [ %.sroa.06.0.i.i.i11, %bb.f ], [ %i.ar, %.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i6 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i9, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  store i32 %i.bf, ptr %4, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = extractvalue { i32, i64 } %i.be, 1
  store i64 %i.bh, ptr %i.bg, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20DeletePropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 456
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !718
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20DeletePropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20DeletePropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !719
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.m, %i.n
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.m, -8
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !726, !noalias !721
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !76, !alias.scope !726, !noalias !721
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !729, !noalias !726
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !76, !alias.scope !729, !noalias !726
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !726, !noalias !721
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !76, !alias.scope !726, !noalias !721
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !724, !noalias !721
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !721, !noalias !724
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !724, !noalias !721
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !732

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14deletePropertyERKNS_3jsi6ObjectERKNS3_6StringE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 4 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  store i64 %i.af, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ag = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i10 = phi ptr [ %i.i, %bb.e ], [ %.sroa.06.0.i.i.i11, %bb.f ]
  %.sroa.06.0.i.i.i11 = load ptr, ptr %.sroa.06.0.in.i.i.i10, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i11, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %bb.f, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.06.1.i.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.ph, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.am = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = urem i64 %i.an, %i.p                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq ptr %i.am, %i.at
  br i1 %i.au, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.loopexit, %.lr.ph.i.i.i.i.i6
  %.020.i.i.i.i.i7 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i6 ], [ %i.ar, %.loopexit ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i7, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.p
  %.not19.i.i.i.i.i8 = icmp eq i64 %i.az, %i.ao
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i8)
  %i.ba = icmp eq ptr %i.am, %i.ax
  br i1 %i.ba, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12, label %.lr.ph.i.i.i.i.i6, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit12: ; preds = %.lr.ph.i.i.i.i.i6, %bb.f, %.loopexit
  %.sroa.06.1.i.i.i9 = phi ptr [ %.sroa.06.0.i.i.i11, %bb.f ], [ %i.ar, %.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i6 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i9, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeStringEm(i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  store i32 %i.bf, ptr %4, align 8
end_hunk_8
begin_hunk_9_@_ZN8facebook6hermes7tracing14TracingRuntime14deletePropertyERKNS_3jsi6ObjectERKNS3_5ValueE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ah = tail call { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false) ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 0
  store i32 %i.ai, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = extractvalue { i32, i64 } %i.ah, 1
  store i64 %i.ak, ptr %i.aj, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20DeletePropertyRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 472
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !734
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14setPrototypeOfERKNS_3jsi6ObjectERKNS3_5ValueE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ah = tail call { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false) ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 0
  store i32 %i.ai, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = extractvalue { i32, i64 } %i.ah, 1
  store i64 %i.ak, ptr %i.aj, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18SetPrototypeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 368
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !735
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18SetPrototypeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18SetPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !736
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !242
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.m, %i.n
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.m, -8
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !743, !noalias !738
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !76, !alias.scope !743, !noalias !738
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !746, !noalias !743
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !76, !alias.scope !746, !noalias !743
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !743, !noalias !738
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !76, !alias.scope !743, !noalias !738
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !748

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !741, !noalias !738
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !738, !noalias !741
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !741, !noalias !738
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !749

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime16getPropertyNamesERKNS_3jsi6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Array") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %5 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.g = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %.loopexit11, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.loopexit11, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %.loopexit11, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit11:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22GetPropertyNamesRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210, !noalias !750, !nonnull !96, !align !214 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !750
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 520
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !750
  call void %i.al(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Array") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !753
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i7 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.an = sub nsw i64 %i.am, %.sroa.0.0.copyload.i2.i.i7
  %i.ao = sdiv i64 %i.an, 1000000
  store i64 %i.ao, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !91    ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.av = load i64, ptr %i.au, align 8, !tbaa !72 ; 2 uses
  %i.aw = urem i64 %i.at, %i.av                   ; 3 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.loopexit11
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !95 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = icmp eq ptr %i.as, %i.bc
  br i1 %i.bd, label %.loopexit, label %.lr.ph.i.i.i.i.i8

bb.f:                                             ; preds = %bb.g
  %i.be = icmp eq ptr %i.as, %i.bh
  br i1 %i.be, label %.loopexit, label %.lr.ph.i.i.i.i.i8, !llvm.loop !100

.lr.ph.i.i.i.i.i8:                                ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i9 = phi ptr [ %i.bf, %bb.f ], [ %i.ba, %bb.e ]
  %i.bf = load ptr, ptr %.020.i.i.i.i.i9, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.av
  %.not19.i.i.i.i.i10 = icmp eq i64 %i.bj, %i.aw
  br i1 %.not19.i.i.i.i.i10, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i8, %..loopexit_crit_edge21.i.i.i.i.i, %.loopexit11
  %i.bk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.bk, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.as, ptr %i.bl, align 8, !tbaa !103
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 0, ptr %i.bm, align 8, !tbaa !101
  %i.bn = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i64 noundef %i.aw, i64 noundef %i.at, ptr noundef nonnull %i.bk, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.f, %.noexc, %bb.e
  %.pn.i.i.i = phi ptr [ %i.bn, %.noexc ], [ %i.ba, %bb.e ], [ %i.bf, %bb.f ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.aq, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !70 ; 2 uses
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ap, align 8, !tbaa !70
  %i.br = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeObjectEm(i64 noundef %i.bp)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %.loopexit
  %i.bs = extractvalue { i32, i64 } %i.br, 0
  store i32 %i.bs, ptr %5, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = extractvalue { i32, i64 } %i.br, 1
  store i64 %i.bu, ptr %i.bt, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.j:                                             ; preds = %.loopexit.i.i.i, %bb.h, %.loopexit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.j ], [ %i.bo, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bw = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !7
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.k
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22GetPropertyNamesRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22GetPropertyNamesRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !754
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !761, !noalias !756
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !761, !noalias !756
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !764, !noalias !761
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !764, !noalias !761
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !761, !noalias !756
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !761, !noalias !756
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !759, !noalias !756
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !756, !noalias !759
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !759, !noalias !756
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !767

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

declare { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeObjectEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime16createWeakObjectERKNS_3jsi6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::WeakObject") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !noalias !768, !nonnull !96, !align !214 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7, !noalias !768
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.e = load ptr, ptr %i.d, align 8, !noalias !768
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.facebook::jsi::WeakObject") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !771
  %i.f = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.f, %i.k
  br i1 %i.l, label %.loopexit7, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = icmp eq ptr %i.f, %i.w
  br i1 %i.x, label %.loopexit7, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.p
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.q
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.f, %i.aa
  br i1 %i.ad, label %.loopexit7, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit7:                                       ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !91    ; 5 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.al = urem i64 %i.ai, %i.ak                   ; 3 uses
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.loopexit7
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.as = icmp eq ptr %i.ah, %i.ar
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.at = icmp eq ptr %i.ah, %i.aw
  br i1 %i.at, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.au, %bb.f ], [ %i.ap, %bb.e ]
  %i.au = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = urem i64 %i.ax, %i.ak
  %.not19.i.i.i.i = icmp eq i64 %i.ay, %i.al
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit.i.i, !llvm.loop !100

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.loopexit7
  %i.az = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.h     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.az, align 8, !tbaa !95
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ah, ptr %i.ba, align 8, !tbaa !103
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %i.bb, align 8, !tbaa !101
  %i.bc = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 noundef %i.al, i64 noundef %i.ai, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
end_hunk_9
begin_hunk_10_@_ZN8facebook6hermes7tracing14TracingRuntime14lockWeakObjectERKNS_3jsi10WeakObjectE:bb.a
  br label %bb.k

bb.i:                                             ; preds = %.loopexit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %.loopexit.i.i15
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i16, %bb.i, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.pn = phi { ptr, i32 } [ %i.ae, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.bf, %bb.i ], [ %i.bg, %bb.j ], [ %i.be, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i16 ]
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime11createArrayEm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Array") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210, !noalias !776, !nonnull !96, !align !214 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7, !noalias !776
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.g = load ptr, ptr %i.f, align 8, !noalias !776
  tail call void %i.g(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Array") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %2), !inline_history !779
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.i = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.j, align 8, !tbaa !104
  %i.k = sub nsw i64 %i.i, %.sroa.0.0.copyload.i2.i.i
  %i.l = sdiv i64 %i.k, 1000000
  store i64 %i.l, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.s = load i64, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %i.t = urem i64 %i.q, %i.s                      ; 3 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = icmp eq ptr %i.p, %i.z
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ab = icmp eq ptr %i.p, %i.ae
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %i.x, %bb.b ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = urem i64 %i.af, %i.s
  %.not19.i.i.i.i.i = icmp eq i64 %i.ag, %i.t
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !100

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ah, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %i.aj, align 8, !tbaa !101
  %i.ak = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.t, i64 noundef %i.q, ptr noundef nonnull %i.ah, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #35
  br label %.body

.loopexit:                                        ; preds = %bb.c, %.noexc, %bb.b
  %.pn.i.i.i = phi ptr [ %i.ak, %.noexc ], [ %i.x, %bb.b ], [ %i.ac, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.n, ptr %.1.i.i.i, align 8, !tbaa !104
  %i.am = load i64, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.m, align 8, !tbaa !70
  store i64 %i.am, ptr %i.b, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17CreateArrayRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %.loopexit.i.i.i, %.loopexit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.al, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ap = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17CreateArrayRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17CreateArrayRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !780
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !782
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.n, %i.o
  %5 = add i64 %4, -8                             ; 2 uses
  %i.z = lshr i64 %5, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.n, -8
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep7 = getelementptr i8, ptr %i.m, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %scevgep7
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.m, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.aj = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !76, !alias.scope !788, !noalias !783
  %wide.load9 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !76, !alias.scope !788, !noalias !783
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !791, !noalias !788
  store <2 x i64> %wide.load9, ptr %i.ak, align 8, !tbaa !76, !alias.scope !791, !noalias !788
  %i.al = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !76, !alias.scope !788, !noalias !783
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !76, !alias.scope !788, !noalias !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !793

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !786, !noalias !783
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !783, !noalias !786
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !786, !noalias !783
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !794

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !74
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime17createArrayBufferESt10shared_ptrINS_3jsi13MutableBufferEE(ptr dead_on_unwind noalias nofree readnone sret(%"class.facebook::jsi::ArrayBuffer") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #34
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN8facebook6hermes7tracing14TracingRuntime4sizeERKNS_3jsi5ArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !795
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN8facebook6hermes7tracing14TracingRuntime4sizeERKNS_3jsi11ArrayBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !796
  ret i64 %i.f
}

; Function Attrs: mustprogress noreturn uwtable
define hidden noalias noundef nonnull ptr @_ZN8facebook6hermes7tracing14TracingRuntime4dataERKNS_3jsi11ArrayBufferE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.9)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime15getValueAtIndexERKNS_3jsi5ArrayEm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.e, align 8, !tbaa !104
  %i.f = sub nsw i64 %i.d, %.sroa.0.0.copyload.i2.i.i
  %i.g = sdiv i64 %i.f, 1000000
  store i64 %i.g, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.h = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.j = load i64, ptr %i.i, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %.loopexit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = urem i64 %i.p, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp eq ptr %i.h, %i.y
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.d ]
  %i.aa = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = urem i64 %i.ad, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.s
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.af = icmp eq ptr %i.h, %i.ac
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.w, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !101
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !104
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15ArrayReadRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210, !noalias !797, !nonnull !96, !align !214 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7, !noalias !797
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 584
  %i.an = load ptr, ptr %i.am, align 8, !noalias !797
  call void %i.an(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ai), !inline_history !800
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ao = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i7 = load i64, ptr %i.e, align 8, !tbaa !104
  %i.ap = sub nsw i64 %i.ao, %.sroa.0.0.copyload.i2.i.i7
  %i.aq = sdiv i64 %i.ap, 1000000
  store i64 %i.aq, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ar = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.f ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %.loopexit
  %i.as = extractvalue { i32, i64 } %i.ar, 0
  store i32 %i.as, ptr %6, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = extractvalue { i32, i64 } %i.ar, 1
  store i64 %i.au, ptr %i.at, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.f:                                             ; preds = %.loopexit, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15ArrayReadRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace15ArrayReadRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !801
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !803
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.n, %i.o
  %5 = add i64 %4, -8                             ; 2 uses
  %i.z = lshr i64 %5, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.n, -8
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep7 = getelementptr i8, ptr %i.m, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %scevgep7
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.m, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.aj = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !76, !alias.scope !809, !noalias !804
  %wide.load9 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !76, !alias.scope !809, !noalias !804
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !812, !noalias !809
  store <2 x i64> %wide.load9, ptr %i.ak, align 8, !tbaa !76, !alias.scope !812, !noalias !809
  %i.al = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !76, !alias.scope !809, !noalias !804
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !76, !alias.scope !809, !noalias !804
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !814

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !807, !noalias !804
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !804, !noalias !807
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !807, !noalias !804
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !815

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !74
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime19setValueAtIndexImplERKNS_3jsi5ArrayEmRKNS3_5ValueE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.g = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !101
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ai = tail call { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false) ; 2 uses
  %i.aj = extractvalue { i32, i64 } %i.ai, 0
  store i32 %i.aj, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = extractvalue { i32, i64 } %i.ai, 1
  store i64 %i.al, ptr %i.ak, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_16ArrayWriteRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.am = load i64, ptr %i.a, align 8, !tbaa !104
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 592
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !816
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_16ArrayWriteRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %4, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace16ArrayWriteRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !817
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !819
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !242
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #36 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.o, %i.p
  %6 = add i64 %5, -8                             ; 2 uses
  %i.aa = lshr i64 %6, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.o, -8
  %i.ad = sub i64 %i.ac, %i.p
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.af
  %scevgep10 = getelementptr i8, ptr %i.n, i64 %i.af
  %bound0 = icmp ult ptr %i.y, %scevgep10
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.n, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ak = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !825, !noalias !820
  %wide.load12 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !76, !alias.scope !825, !noalias !820
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !828, !noalias !825
  store <2 x i64> %wide.load12, ptr %i.al, align 8, !tbaa !76, !alias.scope !828, !noalias !825
  %i.am = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !825, !noalias !820
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !76, !alias.scope !825, !noalias !820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !823, !noalias !820
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !820, !noalias !823
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !823, !noalias !820
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !831

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.k, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS_3jsi10PropNameIDEjSt8functionIFNS3_5ValueERNS3_7RuntimeERKS8_PSB_mEE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"union.std::_Any_data", align 8    ; 3 uses
  %6 = alloca %"union.std::_Any_data", align 8    ; 4 uses
  %7 = alloca %"class.std::function.30", align 8  ; 10 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %8 = alloca %class.TracingHostFunction, align 8 ; 12 uses
  %9 = alloca %"class.std::function.30", align 8  ; 7 uses
  %10 = alloca %"class.std::function.30", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread, label %bb.b

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread: ; preds = %bb.a
  store ptr %1, ptr %8, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %common.resume unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #37
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit34
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit34 ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113  ; 4 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !113
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !120  ; 4 uses
  store ptr %i.q, ptr %i.d, align 8, !tbaa !120
  store ptr %1, ptr %8, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  store ptr %i.p, ptr %i.s, align 8, !tbaa !113
  %.not.i.i.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !119
  store ptr %i.q, ptr %i.t, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread, %bb.f
  %i.u = phi ptr [ %i.r, %bb.f ], [ %i.h, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread ], [ %i.r, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit ] ; 5 uses
  %i.v = phi ptr [ %i.p, %bb.f ], [ null, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread ], [ %i.p, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit ]
  %i.w = phi ptr [ %i.q, %bb.f ], [ null, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread ], [ null, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !210 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.y = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
          to label %.noexc unwind label %bb.ad    ; 6 uses

.noexc:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  store ptr %1, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 24, i1 false)
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !119
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i: ; preds = %bb.g, %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !832
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !832
  store ptr %i.y, ptr %10, align 8, !tbaa !835
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
end_hunk_10
begin_hunk_11_@_ZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS_3jsi10PropNameIDEjSt8functionIFNS3_5ValueERNS3_7RuntimeERKS8_PSB_mEE:bb.a
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.da, %bb.x ], [ %.sroa.06.0.i.i.i, %bb.y ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !97
  %i.dd = icmp eq ptr %i.cv, %i.dc
  br i1 %i.dd, label %.loopexit, label %bb.y, !llvm.loop !98

bb.z:                                             ; preds = %bb.v
  %i.de = ptrtoint ptr %i.cv to i64
  %i.df = load i64, ptr %i.be, align 8, !tbaa !72 ; 2 uses
  %i.dg = urem i64 %i.de, %i.df                   ; 2 uses
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !71
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !95 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !97
  %i.dn = icmp eq ptr %i.cv, %i.dm
  br i1 %i.dn, label %.loopexit, label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %bb.z, %.lr.ph.i.i.i.i.i22
  %.020.i.i.i.i.i23 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i22 ], [ %i.dk, %bb.z ]
  %i.do = load ptr, ptr %.020.i.i.i.i.i23, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !97 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = urem i64 %i.dr, %i.df
  %.not19.i.i.i.i.i24 = icmp eq i64 %i.ds, %i.dg
  call void @llvm.assume(i1 %.not19.i.i.i.i.i24)
  %i.dt = icmp eq ptr %i.cv, %i.dq
  br i1 %i.dt, label %.loopexit, label %.lr.ph.i.i.i.i.i22, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i22, %bb.y, %bb.z
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.y ], [ %i.dk, %bb.z ], [ %i.do, %.lr.ph.i.i.i.i.i22 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !101
  store i64 %i.dv, ptr %i.c, align 8, !tbaa !104
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_24CreateHostFunctionRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKmmRjEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.dw = load ptr, ptr %i.ab, align 8, !tbaa !120 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i25, label %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #37
  unreachable

_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void

bb.ad:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit30

.body:                                            ; preds = %bb.k, %bb.l
  %i.eb = load ptr, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %.not.i29 = icmp eq ptr %i.eb, null
  br i1 %.not.i29, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.ae

bb.ae:                                            ; preds = %.body
  %i.ec = invoke noundef zeroext i1 %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit30 unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #37
  unreachable

bb.ag:                                            ; preds = %.loopexit36, %.loopexit.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.ah:                                            ; preds = %.loopexit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %.body18

.body18:                                          ; preds = %bb.ag, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.ah ], [ %i.ef, %bb.ag ], [ %i.by, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.eh = load ptr, ptr %0, align 8, !tbaa !91    ; 3 uses
  %.not.i31 = icmp eq ptr %i.eh, null
  br i1 %.not.i31, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.ai

bb.ai:                                            ; preds = %.body18
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !7
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eh) #34, !inline_history !121
  br label %_ZNSt14_Function_baseD2Ev.exit30

_ZNSt14_Function_baseD2Ev.exit30:                 ; preds = %bb.ai, %.body18, %bb.ae, %.body, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.ae ], [ %i.ea, %bb.ad ], [ %i.aq, %.body ], [ %.pn.pn, %.body18 ], [ %.pn.pn, %bb.ai ]
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !120 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.el, null
  br i1 %.not.i.i32, label %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit34, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit30
  %i.em = invoke noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit34 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #37
  unreachable

_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit34: ; preds = %bb.aj, %_ZNSt14_Function_baseD2Ev.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_24CreateHostFunctionRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKmmRjEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %i.e = load i32, ptr %4, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.g, align 8, !tbaa !308
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace24CreateHostFunctionRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = trunc i64 %i.d to i32
  store i32 %i.i, ptr %i.h, align 8, !tbaa !841
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.e, ptr %i.j, align 4, !tbaa !843
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.l, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #36 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.q, %i.r
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ac = lshr i64 %6, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.q, -8
  %i.af = sub i64 %i.ae, %i.r
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ah
  %scevgep8 = getelementptr i8, ptr %i.p, i64 %i.ah
  %bound0 = icmp ult ptr %i.aa, %scevgep8
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.p, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.am = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !849, !noalias !844
  %wide.load10 = load <2 x i64>, ptr %i.am, align 8, !tbaa !76, !alias.scope !849, !noalias !844
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !852, !noalias !849
  store <2 x i64> %wide.load10, ptr %i.an, align 8, !tbaa !76, !alias.scope !852, !noalias !849
  %i.ao = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !849, !noalias !844
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !76, !alias.scope !849, !noalias !844
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !847, !noalias !844
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !844, !noalias !847
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !847, !noalias !844
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !855

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !74
  store ptr %i.at, ptr %i.k, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.au, ptr %i.m, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime4callERKNS_3jsi8FunctionERKNS3_5ValueEPS8_m(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %8 = alloca %"class.std::vector.59", align 8    ; 9 uses
  %9 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %10 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.g = load ptr, ptr %2, align 8, !tbaa !91     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ah = tail call { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false) ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 0
  store i32 %i.ai, ptr %7, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = extractvalue { i32, i64 } %i.ah, 1
  store i64 %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZN8facebook6hermes7tracing14TracingRuntime14argStringifyerEPKNS_3jsi5ValueEmb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.59") align 8 %8, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %4, i64 noundef %5, i1 noundef zeroext false)
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20CallFromNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueESt6vectorISA_SaISA_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit
  %i.al = load ptr, ptr %8, align 8, !tbaa !856   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !859
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !210, !noalias !860, !nonnull !96, !align !214 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7, !noalias !860
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 608
  %i.av = load ptr, ptr %i.au, align 8, !noalias !860
  call void %i.av(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5), !inline_history !863
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.aw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i15 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.ax = sub nsw i64 %i.aw, %.sroa.0.0.copyload.i2.i.i15
  %i.ay = sdiv i64 %i.ax, 1000000
  store i64 %i.ay, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.az = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.k ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %bb.g
  %i.ba = extractvalue { i32, i64 } %i.az, 0
  store i32 %i.ba, ptr %10, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bc = extractvalue { i32, i64 } %i.az, 1
  store i64 %i.bc, ptr %i.bb, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

bb.i:                                             ; preds = %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %8, align 8, !tbaa !856   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !859
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit17

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit17: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit17
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bd, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit17 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20CallFromNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueESt6vectorISA_SaISA_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 14 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.b = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10CallRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !864
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !242
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869  ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !856    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc7.i.i.thread, label %bb.b

.noexc7.i.i.thread:                               ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !859
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.p, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !90

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc7.i.i unwind label %bb.g ; 4 uses

.noexc7.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %i.f, align 8, !tbaa !856
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !869
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !859
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc7.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.noexc7.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc7.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !870
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !871

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc7.i.i.thread
  %i.w = phi ptr [ %i.m, %.noexc7.i.i.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc7.i.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !869
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  store ptr %i.a, ptr %i.z, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit

bb.d:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !74  ; 10 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.ae, %i.af
  %6 = add i64 %5, -8                             ; 2 uses
  %i.aq = lshr i64 %6, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.as = add i64 %i.ae, -8
  %i.at = sub i64 %i.as, %i.af
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.av
  %scevgep19 = getelementptr i8, ptr %i.ad, i64 %i.av
  %bound0 = icmp ult ptr %i.ao, %scevgep19
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ad, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.ba = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !76, !alias.scope !877, !noalias !872
  %wide.load21 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !76, !alias.scope !877, !noalias !872
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !880, !noalias !877
  store <2 x i64> %wide.load21, ptr %i.bb, align 8, !tbaa !76, !alias.scope !880, !noalias !877
  %i.bc = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !76, !alias.scope !877, !noalias !872
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !76, !alias.scope !877, !noalias !872
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !882

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.be = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !875, !noalias !872
  store i64 %i.be, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !872, !noalias !875
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !875, !noalias !872
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !883

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !74
  store ptr %i.bh, ptr %i.y, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.bj
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime14argStringifyerEPKNS_3jsi5ValueEmb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.59") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %3, 576460752303423487
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not49 = icmp eq i64 %3, 0
  br i1 %.not49, label %._crit_edge, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = shl nuw nsw i64 %3, 4
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #36 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !856
  store ptr %i.e, ptr %i.c, align 8, !tbaa !869
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %3 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.h = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i ], [ %i.af, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 8 uses
  %.030 = phi i64 [ 0, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i ], [ %i.ai, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 2 uses
  %i.i = phi ptr [ %i.f, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i ], [ %i.ah, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 5 uses
  %i.j = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i ], [ %i.ag, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 11 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.030
  %i.l = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i1 noundef zeroext %4)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i32, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.l, 1        ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.m, ptr %i.h, align 8, !tbaa !242
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %.sroa.620.0..sroa_idx, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !869
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.i, ptr %i.b, align 8
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36
          to label %.noexc15 unwind label %.loopexit ; 5 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 2 uses
  store i32 %i.m, ptr %i.aa, align 8, !tbaa !242
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.n, ptr %.sroa.620.0..sroa_idx21, align 8, !tbaa !89
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.j, %.noexc15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !870, !alias.scope !884
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !888

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc15 ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

end_hunk_11
begin_hunk_12_@_ZN8facebook6hermes7tracing14TracingRuntime17callAsConstructorERKNS_3jsi8FunctionEPKNS3_5ValueEm:bb.a
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !859
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !210, !noalias !890, !nonnull !96, !align !214 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7, !noalias !890
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 616
  %i.av = load ptr, ptr %i.au, align 8, !noalias !890
  call void %i.av(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %4), !inline_history !893
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i13 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.ax = sub nsw i64 %i.aw, %.sroa.0.0.copyload.i2.i.i13
  %i.ay = sdiv i64 %i.ax, 1000000
  store i64 %i.ay, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.az = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.k ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %bb.g
  %i.ba = extractvalue { i32, i64 } %i.az, 0
  store i32 %i.ba, ptr %9, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bc = extractvalue { i32, i64 } %i.az, 1
  store i64 %i.bc, ptr %i.bb, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void

bb.i:                                             ; preds = %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %7, align 8, !tbaa !856   ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !859
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit15

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit15: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit15
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bd, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit15 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_25ConstructFromNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueESt6vectorISA_SaISA_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 14 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.b = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10CallRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !864
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !242
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869  ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !856    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc7.i.i.i.thread, label %bb.b

.noexc7.i.i.i.thread:                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !859
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.p, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !90

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc7.i.i.i unwind label %bb.g ; 4 uses

.noexc7.i.i.i:                                    ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.q, ptr %i.f, align 8, !tbaa !856
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !869
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !859
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc7.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.noexc7.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %.noexc7.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !870
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !871

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.thread
  %i.w = phi ptr [ %i.m, %.noexc7.i.i.i.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc7.i.i.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !869
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  store ptr %i.a, ptr %i.z, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit

bb.d:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !74  ; 10 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.ae, %i.af
  %6 = add i64 %5, -8                             ; 2 uses
  %i.aq = lshr i64 %6, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.as = add i64 %i.ae, -8
  %i.at = sub i64 %i.as, %i.af
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.av
  %scevgep19 = getelementptr i8, ptr %i.ad, i64 %i.av
  %bound0 = icmp ult ptr %i.ao, %scevgep19
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ad, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.ba = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !76, !alias.scope !899, !noalias !894
  %wide.load21 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !76, !alias.scope !899, !noalias !894
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !902, !noalias !899
  store <2 x i64> %wide.load21, ptr %i.bb, align 8, !tbaa !76, !alias.scope !902, !noalias !899
  %i.bc = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !76, !alias.scope !899, !noalias !894
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !76, !alias.scope !899, !noalias !894
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !904

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.be = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !897, !noalias !894
  store i64 %i.be, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !894, !noalias !897
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !897, !noalias !894
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !905

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !74
  store ptr %i.bh, ptr %i.y, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.bj
}

declare { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace15encodeUndefinedEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime25setExternalMemoryPressureERKNS_3jsi6ObjectEm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.g = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %bb.c, !llvm.loop !98

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !nonnull !96, !noundef !96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !95, !nonnull !96, !noundef !96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ae = icmp eq ptr %i.g, %i.ab
  br i1 %i.ae, label %_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !101
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !104
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31SetExternalMemoryPressureRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210, !nonnull !96, !align !214 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ai), !inline_history !906
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31SetExternalMemoryPressureRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31SetExternalMemoryPressureRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !907
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !909
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.n, %i.o
  %5 = add i64 %4, -8                             ; 2 uses
  %i.z = lshr i64 %5, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.n, -8
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep7 = getelementptr i8, ptr %i.m, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %scevgep7
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.m, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.aj = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !76, !alias.scope !915, !noalias !910
  %wide.load9 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !76, !alias.scope !915, !noalias !910
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !918, !noalias !915
  store <2 x i64> %wide.load9, ptr %i.ak, align 8, !tbaa !76, !alias.scope !918, !noalias !915
  %i.al = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !76, !alias.scope !915, !noalias !910
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !76, !alias.scope !915, !noalias !910
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !913, !noalias !910
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !910, !noalias !913
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !913, !noalias !910
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !921

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !74
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing14TracingRuntime9addMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = sub nsw i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr %2, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12MarkerRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12MarkerRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace12MarkerRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !216
  %i.f = load ptr, ptr %2, align 8, !tbaa !219    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.h, ptr %i.a, align 8, !tbaa !104
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.j, ptr %i.d, align 8, !tbaa !219
  %i.k = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.k, ptr %i.e, align 8, !tbaa !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !89
  store i8 %i.m, ptr %i.l, align 1, !tbaa !89
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !221
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.t, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.s, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !74   ; 10 uses
  %i.y = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #36 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store ptr %i.b, ptr %i.aj, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.y, %i.z
  %4 = add i64 %3, -8                             ; 2 uses
  %i.ak = lshr i64 %4, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.am = add i64 %i.y, -8
  %i.an = sub i64 %i.am, %i.z
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ap
  %scevgep7 = getelementptr i8, ptr %i.x, i64 %i.ap
  %bound0 = icmp ult ptr %i.ai, %scevgep7
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ai, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.x, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.x, i64 %i.at ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.au = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !76, !alias.scope !927, !noalias !922
  %wide.load9 = load <2 x i64>, ptr %i.au, align 8, !tbaa !76, !alias.scope !927, !noalias !922
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !930, !noalias !927
  store <2 x i64> %wide.load9, ptr %i.av, align 8, !tbaa !76, !alias.scope !930, !noalias !927
  %i.aw = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !76, !alias.scope !927, !noalias !922
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !76, !alias.scope !927, !noalias !922
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !925, !noalias !922
  store i64 %i.ay, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !922, !noalias !925
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !925, !noalias !922
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !933

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !74
  store ptr %i.bb, ptr %i.s, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.i:                                             ; preds = %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #35
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::jsi::BigInt", align 8 ; 5 uses
  %4 = alloca %"class.facebook::jsi::BigInt", align 8 ; 6 uses
  %5 = alloca %"class.facebook::jsi::String", align 8 ; 5 uses
  %6 = alloca %"class.facebook::jsi::String", align 8 ; 6 uses
  %7 = alloca %"class.facebook::jsi::Object", align 8 ; 5 uses
  %8 = alloca %"class.facebook::jsi::Object", align 8 ; 6 uses
  %9 = alloca %"class.facebook::jsi::Symbol", align 8 ; 5 uses
  %10 = alloca %"class.facebook::jsi::Symbol", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !151
  switch i32 %i.a, label %bb.bb [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.r
    i32 7, label %bb.ad
    i32 4, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace15encodeUndefinedEv()
  br label %.critedge133

bb.c:                                             ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace10encodeNullEv()
  br label %.critedge133

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !89, !range !222, !noundef !96
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace10encodeBoolEb(i1 noundef zeroext %i.f)
  br label %.critedge133

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !89
  %i.j = tail call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeNumberEd(double noundef %i.i)
  br label %.critedge133

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89, !noalias !934
  %i.m = load ptr, ptr %0, align 8, !tbaa !7, !noalias !934
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !noalias !934
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.l), !noalias !934, !inline_history !937 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !91, !alias.scope !934
  %i.q = invoke noundef i64 @_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %_ZN8facebook3jsi7PointerD2Ev.exit164.thread199

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !89, !noalias !938
  %i.s = load ptr, ptr %0, align 8, !tbaa !7, !noalias !938
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !noalias !938
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r), !inline_history !937 ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !91, !alias.scope !938
  %i.w = call noundef i64 @_ZNK8facebook6hermes7tracing14TracingRuntime11useObjectIDERKNS_3jsi7PointerE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi ptr [ %i.p, %bb.g ], [ undef, %bb.h ] ; 4 uses
  %i.y = phi ptr [ undef, %bb.g ], [ %i.v, %bb.h ] ; 6 uses
  %i.z = phi i64 [ %i.q, %bb.g ], [ %i.w, %bb.h ]
  %i.aa = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace12encodeBigIntEm(i64 noundef %i.z)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %.critedge157, label %.critedge

.critedge:                                        ; preds = %bb.j
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.critedge133

.critedge157:                                     ; preds = %bb.j
  %.not.i161 = icmp eq ptr %i.x, null
  br i1 %.not.i161, label %_ZN8facebook3jsi7PointerD2Ev.exit162, label %bb.l

bb.l:                                             ; preds = %.critedge157
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #34, !inline_history !121
  br label %_ZN8facebook3jsi7PointerD2Ev.exit162

end_hunk_12
begin_hunk_13_@_ZZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEEN17TracingHostObject16getPropertyNamesERNS4_7RuntimeE:bb.a
bb.m:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bu) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.cc, ptr %5, align 8, !tbaa !856
  store ptr %i.cg, ptr %i.al, align 8, !tbaa !869
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ch, ptr %i.x, align 8, !tbaa !859
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.j
  %i.ci = phi ptr [ %i.cc, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.an, %bb.j ]
  %i.cj = phi ptr [ %i.cg, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.br, %bb.j ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.036.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.r
  br i1 %.not, label %._crit_edge, label %bb.g

.loopexit40:                                      ; preds = %.loopexit, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i19 = load i64, ptr %i.d, align 8, !tbaa !104
  %i.cm = sub nsw i64 %i.cl, %.sroa.0.0.copyload.i2.i.i19
  %i.cn = sdiv i64 %i.cm, 1000000
  store i64 %i.cn, ptr %6, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_34GetNativePropertyNamesReturnRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERSt6vectorINS2_10TraceValueESaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.co = load ptr, ptr %5, align 8, !tbaa !856   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !859
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.pre = load ptr, ptr %5, align 8, !tbaa !856
  br label %bb.q

bb.q:                                             ; preds = %.loopexit40, %.loopexit.split-lp, %bb.p
  %i.cu = phi ptr [ %i.an, %.loopexit.split-lp ], [ %.pre, %bb.p ], [ %i.an, %.loopexit40 ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ct, %bb.p ], [ %lpad.loopexit, %.loopexit40 ] ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !859
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28: ; preds = %.thread, %bb.q, %bb.r
  %.pn62 = phi { ptr, i32 } [ %i.am, %.thread ], [ %.pn, %bb.q ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28
  %.pn.pn = phi { ptr, i32 } [ %.pn62, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28 ], [ %i.af, %bb.f ]
  call void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %bb.f
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23GetPropertyNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !1398
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !1400
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !216
  %i.j = load ptr, ptr %4, align 8, !tbaa !219    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.l, ptr %i.a, align 8, !tbaa !104
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.n, ptr %i.h, align 8, !tbaa !219
  %i.o = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.o, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !89
  store i8 %i.q, ptr %i.p, align 1, !tbaa !89
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !221
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !74  ; 10 uses
  %i.ac = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #36 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store ptr %i.b, ptr %i.an, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.ac, %i.ad
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ao = lshr i64 %6, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aq = add i64 %i.ac, -8
  %i.ar = sub i64 %i.aq, %i.ad
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep9 = getelementptr i8, ptr %i.ab, i64 %i.at
  %bound0 = icmp ult ptr %i.am, %scevgep9
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.am, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ax ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.ab, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.ay = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !76, !alias.scope !1406, !noalias !1401
  %wide.load11 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !76, !alias.scope !1406, !noalias !1401
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1409, !noalias !1406
  store <2 x i64> %wide.load11, ptr %i.az, align 8, !tbaa !76, !alias.scope !1409, !noalias !1406
  %i.ba = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !76, !alias.scope !1406, !noalias !1401
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !76, !alias.scope !1406, !noalias !1401
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1404, !noalias !1401
  store i64 %i.bc, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1401, !noalias !1404
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1404, !noalias !1401
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1412

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.am, ptr %i.v, align 8, !tbaa !74
  store ptr %i.bf, ptr %i.w, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bg, ptr %i.y, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #35
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29GetPropertyNativeReturnRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace29GetPropertyNativeReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.k, %i.l
  %4 = add i64 %3, -8                             ; 2 uses
  %i.w = lshr i64 %4, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.k, -8
  %i.z = sub i64 %i.y, %i.l
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep8 = getelementptr i8, ptr %i.j, i64 %i.ab
  %bound0 = icmp ult ptr %i.u, %scevgep8
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.ag = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !1418, !noalias !1413
  %wide.load10 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !76, !alias.scope !1418, !noalias !1413
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1421, !noalias !1418
  store <2 x i64> %wide.load10, ptr %i.ah, align 8, !tbaa !76, !alias.scope !1421, !noalias !1418
  %i.ai = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !1418, !noalias !1413
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !76, !alias.scope !1418, !noalias !1413
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1423

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1416, !noalias !1413
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1413, !noalias !1416
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1416, !noalias !1413
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1424

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !74
  store ptr %i.an, ptr %i.e, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !89
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !89
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordD2Ev.exit

_ZN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecord7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecord4defsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1400
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1425
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1428
  store i64 %i.b, ptr %i.c, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !1429
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecord4usesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1398
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1425
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1428
  store i64 %i.b, ptr %i.c, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !1429
  ret void
}

declare void @_ZNK8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecord14toJSONInternalERN6hermes11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23SetPropertyNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = load i64, ptr %3, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !1398
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !1400
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !216
  %i.j = load ptr, ptr %4, align 8, !tbaa !219    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.l, ptr %i.a, align 8, !tbaa !104
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.n, ptr %i.h, align 8, !tbaa !219
  %i.o = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.o, ptr %i.i, align 8, !tbaa !89
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !89
  store i8 %i.q, ptr %i.p, align 1, !tbaa !89
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !221
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !870
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.y, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !74  ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #36 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %7 = sub i64 %i.ad, %i.ae
  %8 = add i64 %7, -8                             ; 2 uses
  %i.ap = lshr i64 %8, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ar = add i64 %i.ad, -8
  %i.as = sub i64 %i.ar, %i.ae
  %i.at = and i64 %i.as, -8
  %i.au = add i64 %i.at, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.au
  %scevgep10 = getelementptr i8, ptr %i.ac, i64 %i.au
  %bound0 = icmp ult ptr %i.an, %scevgep10
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ac, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.ac, i64 %i.ay ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.az = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !76, !alias.scope !1435, !noalias !1430
  %wide.load12 = load <2 x i64>, ptr %i.az, align 8, !tbaa !76, !alias.scope !1435, !noalias !1430
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1438, !noalias !1435
  store <2 x i64> %wide.load12, ptr %i.ba, align 8, !tbaa !76, !alias.scope !1438, !noalias !1435
  %i.bb = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !76, !alias.scope !1435, !noalias !1430
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !76, !alias.scope !1435, !noalias !1430
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1433, !noalias !1430
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1430, !noalias !1433
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1433, !noalias !1430
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1441

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aw, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.w, align 8, !tbaa !74
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bh, ptr %i.z, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #35
  resume { ptr, i32 } %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29SetPropertyNativeReturnRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace29SetPropertyNativeReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #36 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store ptr %i.b, ptr %i.u, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %2 = sub i64 %i.j, %i.k
  %3 = add i64 %2, -8                             ; 2 uses
  %i.v = lshr i64 %3, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.x = add i64 %i.j, -8
  %i.y = sub i64 %i.x, %i.k
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.aa
  %scevgep5 = getelementptr i8, ptr %i.i, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %scevgep5
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ae ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.af = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !76, !alias.scope !1447, !noalias !1442
  %wide.load7 = load <2 x i64>, ptr %i.af, align 8, !tbaa !76, !alias.scope !1447, !noalias !1442
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1450, !noalias !1447
  store <2 x i64> %wide.load7, ptr %i.ag, align 8, !tbaa !76, !alias.scope !1450, !noalias !1447
  %i.ah = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !76, !alias.scope !1447, !noalias !1442
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !76, !alias.scope !1447, !noalias !1442
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1452

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1445, !noalias !1442
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1442, !noalias !1445
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1445, !noalias !1442
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1453

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !74
  store ptr %i.am, ptr %i.d, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.an, ptr %i.f, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace29SetPropertyNativeReturnRecordD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK8facebook6hermes7tracing10SynthTrace29SetPropertyNativeReturnRecord7getTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 27
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace6Record4defsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace6Record4usesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZNK8facebook6hermes7tracing10SynthTrace6Record14toJSONInternalERN6hermes11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_28GetNativePropertyNamesRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.c = load i64, ptr %2, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetNativePropertyNamesRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !1454
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !76, !alias.scope !1461, !noalias !1456
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !76, !alias.scope !1461, !noalias !1456
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1464, !noalias !1461
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !tbaa !76, !alias.scope !1464, !noalias !1461
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !76, !alias.scope !1461, !noalias !1456
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !76, !alias.scope !1461, !noalias !1456
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1459, !noalias !1456
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1456, !noalias !1459
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1459, !noalias !1456
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1467

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !74
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1389   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1393 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #34, !inline_history !1468
  br label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1469

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1389
  br label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1470
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #35
  br label %_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_34GetNativePropertyNamesReturnRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERSt6vectorINS2_10TraceValueESaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !869  ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !856    ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc4.i.thread, label %bb.b

.noexc4.i.thread:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr null, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !859
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i, !prof !90

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36
          to label %.noexc4.i unwind label %bb.g  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.n, ptr %i.c, align 8, !tbaa !856
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !869
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.p, ptr %i.q, align 8, !tbaa !859
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.noexc4.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.noexc4.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !870
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !871

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4.i.thread
  %i.t = phi ptr [ %i.j, %.noexc4.i.thread ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc4.i.thread ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !869
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  store ptr %i.a, ptr %i.w, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.v, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit

bb.d:                                             ; preds = %.loopexit
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !74  ; 10 uses
  %i.ab = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #36 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store ptr %i.a, ptr %i.am, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.ab, %i.ac
  %4 = add i64 %3, -8                             ; 2 uses
  %i.an = lshr i64 %4, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ap = add i64 %i.ab, -8
  %i.aq = sub i64 %i.ap, %i.ac
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.as
  %scevgep16 = getelementptr i8, ptr %i.aa, i64 %i.as
  %bound0 = icmp ult ptr %i.al, %scevgep16
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.al, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.aa, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.aw ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.aa, i64 %i.aw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.ax = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !76, !alias.scope !1476, !noalias !1471
  %wide.load18 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !76, !alias.scope !1476, !noalias !1471
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1479, !noalias !1476
  store <2 x i64> %wide.load18, ptr %i.ay, align 8, !tbaa !76, !alias.scope !1479, !noalias !1476
  %i.az = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !76, !alias.scope !1476, !noalias !1471
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !76, !alias.scope !1476, !noalias !1471
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1474, !noalias !1471
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1471, !noalias !1474
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1474, !noalias !1471
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.bc, %i.w
  br i1 %.not.i.i.i.i.i5, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1482

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.al, ptr %i.u, align 8, !tbaa !74
  store ptr %i.be, ptr %i.v, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bf, ptr %i.x, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #35
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace6RecordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace22CreateHostObjectRecordD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK8facebook6hermes7tracing10SynthTrace22CreateHostObjectRecord7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace18CreateObjectRecord4defsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !308
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1425
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1428
  store i64 %i.b, ptr %i.c, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !1429
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace18CreateObjectRecord4usesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZNK8facebook6hermes7tracing10SynthTrace18CreateObjectRecord14toJSONInternalERN6hermes11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm(ptr noundef nonnull align 8 dereferenceable(92) %0, i64 %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !434
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !221
  store i8 0, ptr %i.d, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !440
  %i.h = icmp eq ptr %3, null
  %i.i = icmp ne i64 %4, 0
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #38
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %4, 1                 ; 3 uses
  %i.j = icmp ugt i64 %4, 7
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.k, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #38
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %.noexc.i
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = add nuw nsw i64 %.idx.i, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc7 unwind label %bb.h    ; 2 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !569
  store i64 %4, ptr %i.g, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc7, %bb.c
  %.pre8.i.i = phi ptr [ %i.m, %.noexc7 ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %4, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

end_hunk_13
begin_hunk_14_@_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_10PropNameIDEjSt8functionIS8_EE19TracingHostFunctionE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 6 uses
  %i.b = load ptr, ptr %.val6, align 8, !tbaa !1145, !nonnull !96, !align !214
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val6, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE15_M_init_functorIRKSI_EEvRSt9_Any_dataOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !13
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !13
  br label %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE15_M_init_functorIRKSI_EEvRSt9_Any_dataOT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #37
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #35
  resume { ptr, i32 } %i.j

_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE15_M_init_functorIRKSI_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.g, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !832
  store i64 %i.q, ptr %i.o, align 8, !tbaa !832
  store ptr %i.a, ptr %0, align 8, !tbaa !835
  br label %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !835 ; 4 uses
  %i.r = icmp eq ptr %.val7.i, null
  br i1 %i.r, label %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8 ; 2 uses
  %i.v = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit: ; preds = %_ZN8facebook3jsi21DecoratedHostFunctionD2Ev.exit.i.i, %bb.k, %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing14TracingRuntime30createFunctionFromHostFunctionERKNS1_3jsi10PropNameIDEjSt8functionIFNS5_5ValueERNS5_7RuntimeERKSA_PSD_mEEE19TracingHostFunctionE15_M_init_functorIRKSI_EEvRSt9_Any_dataOT_.exit.i, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CallToNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 14 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %i.b = load i64, ptr %2, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10CallRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !864
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !242
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869  ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !856    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc7.i.i.thread, label %bb.b

.noexc7.i.i.thread:                               ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !859
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.p, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !90

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc7.i.i unwind label %bb.g ; 4 uses

.noexc7.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %i.f, align 8, !tbaa !856
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !869
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !859
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc7.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.noexc7.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc7.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !870
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !871

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc7.i.i.thread
  %i.w = phi ptr [ %i.m, %.noexc7.i.i.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc7.i.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !869
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  store ptr %i.a, ptr %i.z, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit

bb.d:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !74  ; 10 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %5 = sub i64 %i.ae, %i.af
  %6 = add i64 %5, -8                             ; 2 uses
  %i.aq = lshr i64 %6, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.as = add i64 %i.ae, -8
  %i.at = sub i64 %i.as, %i.af
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.av
  %scevgep19 = getelementptr i8, ptr %i.ad, i64 %i.av
  %bound0 = icmp ult ptr %i.ao, %scevgep19
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ad, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.ba = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !76, !alias.scope !1502, !noalias !1497
  %wide.load21 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !76, !alias.scope !1502, !noalias !1497
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1505, !noalias !1502
  store <2 x i64> %wide.load21, ptr %i.bb, align 8, !tbaa !76, !alias.scope !1505, !noalias !1502
  %i.bc = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !76, !alias.scope !1502, !noalias !1497
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !76, !alias.scope !1502, !noalias !1497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.be = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1500, !noalias !1497
  store i64 %i.be, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1497, !noalias !1500
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1500, !noalias !1497
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1508

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !74
  store ptr %i.bh, ptr %i.y, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22ReturnFromNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !104
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !242
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22ReturnFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !75
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !74   ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.k, %i.l
  %4 = add i64 %3, -8                             ; 2 uses
  %i.w = lshr i64 %4, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.k, -8
  %i.z = sub i64 %i.y, %i.l
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep8 = getelementptr i8, ptr %i.j, i64 %i.ab
  %bound0 = icmp ult ptr %i.u, %scevgep8
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %i.ag = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !76, !alias.scope !1514, !noalias !1509
  %wide.load10 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !76, !alias.scope !1514, !noalias !1509
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !1517, !noalias !1514
  store <2 x i64> %wide.load10, ptr %i.ah, align 8, !tbaa !76, !alias.scope !1517, !noalias !1514
  %i.ai = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !76, !alias.scope !1514, !noalias !1509
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !76, !alias.scope !1514, !noalias !1509
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1519

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1512, !noalias !1509
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1509, !noalias !1512
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !76, !alias.scope !1512, !noalias !1509
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1520

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !74
  store ptr %i.an, ptr %i.e, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10CallRecordE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !856  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace10CallRecordD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !859
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZN8facebook6hermes7tracing10SynthTrace10CallRecordD2Ev.exit

_ZN8facebook6hermes7tracing10SynthTrace10CallRecordD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK8facebook6hermes7tracing10SynthTrace18CallToNativeRecord7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 23
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace18CallToNativeRecord4defsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.187", align 8   ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNK8facebook6hermes7tracing10SynthTrace10CallRecord16getArgTrackedIDsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.187") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !1524
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1524
  invoke void @_ZNSt6vectorImSaImEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr %i.a, ptr %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !1425   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1428
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !1425   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorImSaImEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1428
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

_ZNSt6vectorImSaImEED2Ev.exit8:                   ; preds = %bb.g, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.r = load ptr, ptr %0, align 8, !tbaa !1425   ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1428
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit10

_ZNSt6vectorImSaImEED2Ev.exit10:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8facebook6hermes7tracing10SynthTrace10CallRecord4usesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.187") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !864
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1425
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
end_hunk_14
