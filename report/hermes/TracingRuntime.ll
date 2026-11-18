Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TracingRuntime?download=true
inline.NumInlined: 3295
inline.NumDeleted: 1187
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEEN17TracingHostObject3getERNS4_7RuntimeERKNS4_10PropNameIDE:bb.a
  call void @__clang_call_terminate(ptr %i.bq) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEEN17TracingHostObject3setERNS4_7RuntimeERKNS4_10PropNameIDERKNS4_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1545 {
bb.a:
  %4 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 6 uses
  %7 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !353 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.e, align 8, !tbaa !220
  %i.f = sub nsw i64 %i.d, %.sroa.0.0.copyload.i2.i.i
  %i.g = sdiv i64 %i.f, 1000000
  store i64 %i.g, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !192
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !211    ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.n = load i64, ptr %i.m, align 8, !tbaa !194  ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !213  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !215
  %i.v = icmp eq ptr %i.k, %i.u
  br i1 %i.v, label %_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.w = icmp eq ptr %i.k, %i.z
  br i1 %i.w, label %_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.s, %bb.b ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !213 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !215  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !4

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  %i.ac = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 5 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !213
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.k, ptr %i.ad, align 8, !tbaa !219
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !218
  %i.af = invoke ptr @_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.o, i64 noundef %i.l, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE.exit unwind label %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.i, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %i.bl, %bb.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIPKN8facebook3jsi7Runtime12PointerValueESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 24) #35
  br label %common.resume

_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.af, %.loopexit.i.i.i ], [ %i.s, %bb.b ], [ %i.x, %bb.c ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i64 %i.i, ptr %.1.i.i.i, align 8, !tbaa !220
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !192 ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !192
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.aj = load ptr, ptr %1, align 8, !tbaa !131, !noalias !1546
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !1546
  call void %i.al(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.am = invoke { i32, i64 } @_ZN8facebook6hermes7tracing14TracingRuntime12toTraceValueERKNS_3jsi5ValueEb(ptr noundef nonnull align 8 dereferenceable(312) %.val, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true)
          to label %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit unwind label %bb.f ; 2 uses

_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit: ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = extractvalue { i32, i64 } %i.am, 0
  store i32 %i.ao, ptr %6, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = extractvalue { i32, i64 } %i.am, 1
  store i64 %i.aq, ptr %i.ap, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23SetPropertyNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ar = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.au = load i64, ptr %i.as, align 8, !tbaa !207
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !252 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !353, !nonnull !214, !align !233
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN8facebook3jsi19DecoratedHostObject3setERNS0_7RuntimeERKNS0_10PropNameIDERKNS0_5ValueE.exit unwind label %bb.g, !inline_history !1547

bb.f:                                             ; preds = %_ZN8facebook6hermes7tracing14TracingRuntime11defObjectIDERKNS_3jsi7PointerE.exit, %_ZN8facebook6hermes7tracing14TracingRuntime13defTraceValueERKNS_3jsi5ValueE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bd = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.f
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !207
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #34 ; 0 uses
  invoke void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.32) #38
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.j

_ZN8facebook3jsi19DecoratedHostObject3setERNS0_7RuntimeERKNS0_10PropNameIDERKNS0_5ValueE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.bm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i21 = load i64, ptr %i.e, align 8, !tbaa !220
  %i.bn = sub nsw i64 %i.bm, %.sroa.0.0.copyload.i2.i.i21
  %i.bo = sdiv i64 %i.bn, 1000000
  store i64 %i.bo, ptr %7, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29SetPropertyNativeReturnRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret void

bb.j:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN8facebook6hermes7tracing14TracingRuntime12createObjectESt10shared_ptrINS_3jsi10HostObjectEEEN17TracingHostObject16getPropertyNamesERNS4_7RuntimeE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.164") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1553 {
bb.a:
  %3 = alloca %"class.std::chrono::duration.38", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.164", align 8   ; 6 uses
  %5 = alloca %"class.std::vector.59", align 8    ; 15 uses
  %6 = alloca %"class.std::chrono::duration.38", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !353 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !220
  %i.e = sub nsw i64 %i.c, %.sroa.0.0.copyload.i2.i.i
  %i.f = sdiv i64 %i.e, 1000000
  store i64 %i.f, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_28GetNativePropertyNamesRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !252, !noalias !1554 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !353, !noalias !1554, !nonnull !214, !align !233
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !131, !noalias !1554
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1554
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.164") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit unwind label %bb.d, !inline_history !1555

_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %4, align 8, !tbaa !357    ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !357
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !1556
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !358  ; 4 uses
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp ugt i64 %i.v, 576460752303423487
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not60 = icmp eq ptr %i.r, %i.o
  br i1 %.not60, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.y = shl nuw nsw i64 %i.u, 1
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36
          to label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.z, ptr %5, align 8, !tbaa !293
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !300
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.v ; 2 uses
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !294
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ae = call ptr @__cxa_begin_catch(ptr %i.ad) #34 ; 0 uses
  invoke void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.32) #38
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.c
  %.promoted = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.c ]
  %i.ag = phi ptr [ %i.z, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.c ] ; 3 uses
  %.not42 = icmp eq ptr %i.o, %i.r
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 224
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %7 = phi ptr [ %i.ag, %.lr.ph ], [ %8, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 6 uses
  %i.am = phi ptr [ %i.o, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 2 uses
  %i.an = phi ptr [ %.promoted, %.lr.ph ], [ %i.ch, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 2 uses
  %.sroa.036.043 = phi ptr [ %i.ag, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 10 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !211 ; 4 uses
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !212
  %.not.not.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g, %.preheader
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %.preheader ], [ %i.ak, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !213, !nonnull !214, !noundef !214 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !215
  %i.as = icmp eq ptr %i.ao, %i.ar
  br i1 %i.as, label %.loopexit, label %.preheader, !llvm.loop !3

bb.h:                                             ; preds = %bb.g
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !194 ; 2 uses
  %i.av = urem i64 %i.at, %i.au                   ; 2 uses
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !193
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !216, !nonnull !214, !noundef !214
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !213 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !215
  %i.bc = icmp eq ptr %i.ao, %i.bb
  br i1 %i.bc, label %.loopexit, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i20
  %.020.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i20 ], [ %i.az, %bb.h ]
  %i.bd = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !213, !nonnull !214, !noundef !214 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !215 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.au
  %.not19.i.i.i.i.i = icmp eq i64 %i.bh, %i.av
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.bi = icmp eq ptr %i.ao, %i.bf
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %.preheader, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %.preheader ], [ %i.az, %bb.h ], [ %i.bd, %.lr.ph.i.i.i.i.i20 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !218
  %i.bl = invoke { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace16encodePropNameIDEm(i64 noundef %i.bk)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.i:                                             ; preds = %.loopexit
  %i.bm = extractvalue { i32, i64 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { i32, i64 } %i.bl, 1      ; 2 uses
  %.not.i = icmp eq ptr %7, %i.an
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.bm, ptr %7, align 8, !tbaa !246
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bn, ptr %.sroa.632.0..sroa_idx, align 8, !tbaa !207
  %i.bo = load ptr, ptr %i.al, align 8, !tbaa !300
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.bp, ptr %i.al, align 8, !tbaa !300
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = ptrtoint ptr %7 to i64
  %i.br = ptrtoint ptr %.sroa.036.043 to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %bb.l, label %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %.sroa.036.043, ptr %5, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #38
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bu = ashr exact i64 %i.bs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 576460752303423487)
  %i.by = select i1 %i.bw, i64 576460752303423487, i64 %i.bx ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i21)
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #36
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store i32 %i.bm, ptr %i.cb, align 8, !tbaa !246
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.bn, ptr %.sroa.632.0..sroa_idx33, align 8, !tbaa !207
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.036.043, %7
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %.noexc25, %.lr.ph.i.i.i.i.i22
  %.012.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i22 ], [ %i.ca, %.noexc25 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i22 ], [ %.sroa.036.043, %.noexc25 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !302, !alias.scope !1557
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.cc, %7
  br i1 %.not.i.i.i.i.i23, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i22, !llvm.loop !8

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i22, %.noexc25
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ca, %.noexc25 ], [ %i.cd, %.lr.ph.i.i.i.i.i22 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %.sroa.036.043, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.036.043, i64 noundef %i.bs) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ce, ptr %i.al, align 8, !tbaa !300
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  store ptr %i.cf, ptr %i.x, align 8, !tbaa !294
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.j
  %8 = phi ptr [ %i.ce, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.bp, %bb.j ]
  %i.cg = phi ptr [ %i.ca, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.036.043, %bb.j ] ; 2 uses
  %i.ch = phi ptr [ %i.cf, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.an, %bb.j ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.r
  br i1 %.not, label %._crit_edge, label %bb.g

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.036.043, ptr %5, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.l, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i, %bb.b
  %i.cj = phi ptr [ %.sroa.036.043, %bb.l ], [ null, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit
  %.lcssa43 = phi ptr [ %i.ag, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE7reserveEm.exit ], [ %i.cg, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ]
  store ptr %.lcssa43, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ck = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %.sroa.0.0.copyload.i2.i.i19 = load i64, ptr %i.d, align 8, !tbaa !220
  %i.cl = sub nsw i64 %i.ck, %.sroa.0.0.copyload.i2.i.i19
  %i.cm = sdiv i64 %i.cl, 1000000
  store i64 %i.cm, ptr %6, align 8
  invoke void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_34GetNativePropertyNamesReturnRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERSt6vectorINS2_10TraceValueESaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.cn = load ptr, ptr %5, align 8, !tbaa !293   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !294
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.pre = load ptr, ptr %5, align 8, !tbaa !293
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.p
  %i.ct = phi ptr [ %.pre, %bb.p ], [ %.sroa.036.043, %.loopexit.split-lp.loopexit ], [ %i.cj, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.p ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i27 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !294
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #35
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28: ; preds = %.loopexit.split-lp, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EED2Ev.exit28 ], [ %i.af, %bb.f ]
  call void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.f
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23GetPropertyNativeRecordEJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1563 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !220
  %i.c = load i64, ptr %2, align 8, !tbaa !220
  %i.d = load i64, ptr %3, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !220
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !360
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.g, align 8, !tbaa !361
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !236
  %i.j = load ptr, ptr %4, align 8, !tbaa !238    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !239  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.l, ptr %i.a, align 8, !tbaa !220
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.n, ptr %i.h, align 8, !tbaa !238
  %i.o = load i64, ptr %i.a, align 8, !tbaa !220
  store i64 %i.o, ptr %i.i, align 8, !tbaa !207
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !207
  store i8 %i.q, ptr %i.p, align 1, !tbaa !207
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !220  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !239
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !238
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.x, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !196
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !195 ; 7 uses
  %i.ac = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
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
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #36 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store ptr %i.b, ptr %i.an, align 8, !tbaa !198
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = add i64 %i.ac, -8
  %i.ap = sub i64 %i.ao, %i.ad                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.ab, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.ab, i64 %i.av ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  %i.aw = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !198, !alias.scope !1565
  %wide.load10 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !198, !alias.scope !1565
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !198, !alias.scope !1564
  store <2 x i64> %wide.load10, ptr %i.ax, align 8, !tbaa !198, !alias.scope !1564
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !198, !alias.scope !1565
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !198, !alias.scope !1565
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1561

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  %i.az = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !198, !alias.scope !1565
  store i64 %i.az, ptr %.012.i.i.i.i.i, align 8, !tbaa !198, !alias.scope !1564
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !198, !alias.scope !1565
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1562

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !200
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.bf) #35
end_hunk_0
