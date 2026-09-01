Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/samplers?download=true
inline.NumInlined: 2954
inline.NumDeleted: 436
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt13ZSobolSampler6CreateERKNS_19ParameterDictionaryENS_6Point2IiEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63.thread80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63
  invoke void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63.thread80
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.076 = phi i32 [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59 ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63 ]
  %i.bx = load ptr, ptr %3, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, i64 noundef 8)
          to label %.noexc64 unwind label %bb.g, !inline_history !187 ; 2 uses

.noexc64:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN4pbrt13ZSobolSamplerC2EiNS_6Point2IiEENS_17RandomizeStrategyEi(ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i32 noundef %spec.select, i64 %1, i32 noundef %.076, i32 noundef %i.aa)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt13ZSobolSamplerEJRiRNS5_6Point2IiEERNS5_17RandomizeStrategyES7_EEEPT_DpOT0_.exit unwind label %bb.g

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt13ZSobolSamplerEJRiRNS5_6Point2IiEERNS5_17RandomizeStrategyES7_EEEPT_DpOT0_.exit: ; preds = %.noexc64
  %i.cb = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt13ZSobolSamplerEJRiRNS5_6Point2IiEERNS5_17RandomizeStrategyES7_EEEPT_DpOT0_.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !75
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt13ZSobolSamplerEJRiRNS5_6Point2IiEERNS5_17RandomizeStrategyES7_EEEPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret ptr %i.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn18 = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.bo, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt14PMJ02BNSamplerC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 8), (24, 32)) %0, i32 noundef %1, i32 noundef %2, ptr %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i32 %1, ptr %0, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.c, align 4, !tbaa !191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %.lhs.trunc.i.i = and i32 %i.e, 30              ; 2 uses
  %i.f = lshr exact i32 1073741824, %.lhs.trunc.i.i
  %i.g = icmp eq i32 %1, %i.f                     ; 3 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !69, !alias.scope !192
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !73, !alias.scope !192
  store i8 0, ptr %i.h, align 8, !tbaa !75, !alias.scope !192
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.16)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !88, !alias.scope !192 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.h, align 8, !tbaa !75, !alias.scope !192
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.c, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %.pn39.pn.pn98, %.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44 ], [ %i.ab, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.b
  %i.o = load ptr, ptr %5, align 8, !tbaa !88
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.o)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.p = load ptr, ptr %5, align 8, !tbaa !88     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.h, align 8, !tbaa !75
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit

bb.e:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %5, align 8, !tbaa !88     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.h, align 8, !tbaa !75
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %common.resume

_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit, %bb.a
  %i.y = icmp sgt i32 %1, 65536
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !69, !alias.scope !195
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !73, !alias.scope !195
  store i8 0, ptr %i.z, align 8, !tbaa !75, !alias.scope !195
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.17, ptr noundef nonnull align 4 dereferenceable(4) @_ZN4pbrtL15nPMJ02bnSamplesE)
          to label %_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !88, !alias.scope !195 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44: ; preds = %bb.h
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !75, !alias.scope !195
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %common.resume

_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.g
  %i.ag = load ptr, ptr %4, align 8, !tbaa !88
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.ah = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.z
  br i1 %i.ai, label %_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.i
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #28
  br label %_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.z
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.j
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit:             ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit, %bb.f
  %i.aq = sub nuw nsw i32 32, %.lhs.trunc.i.i
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = select i1 %i.g, i32 %1, i32 %i.ar
  %i.at = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  %.lhs.trunc.i = lshr i32 %i.at, 1
  %.zext.i = xor i32 %.lhs.trunc.i, 15
  %i.au = sub nsw i32 8, %.zext.i                 ; 2 uses
  %i.av = shl nuw nsw i32 1, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !198
  %i.ax = shl i32 %i.av, %i.au
  %i.ay = mul i32 %i.ax, %1                       ; 5 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, i64 noundef 8), !inline_history !199 ; 6 uses
  %i.bd = sext i32 %i.ay to i64                   ; 5 uses
  %i.be = ptrtoint ptr %3 to i64
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !200
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.ay, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bi = shl nsw i64 %i.bd, 3
  %i.bj = load ptr, ptr %3, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bi, i64 noundef 4), !inline_history !202 ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !203
  %.not13.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bn = load i64, ptr %i.bg, align 8, !tbaa !208
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !209 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %.pr.i.i.i, i64 noundef %i.bo, i64 noundef 4), !inline_history !210
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i.i
  %i.bw = load i64, ptr %i.bv, align 4
  store i64 %i.bw, ptr %i.bt, align 4
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !203
  %i.by = icmp ugt i64 %i.bx, %indvars.iv.next.i.i.i.i.i
  br i1 %i.by, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !211

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !208
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !207
  %xtraiter = and i64 %i.bd, 7
  %i.bz = icmp ult i32 %i.ay, 8
  br i1 %i.bz, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.bd, -8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.cx, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %i.ca = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.012.i.i.i.i
  store i64 0, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.012.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 0, ptr %i.ce, align 4
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.012.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.012.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 0, ptr %i.ck, align 4
  %i.cl = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.012.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 0, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.012.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store i64 0, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.012.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i64 0, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.012.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store i64 0, ptr %i.cw, align 4
  %i.cx = add nuw i64 %.012.i.i.i.i, 8            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !212

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %i.cy = and i32 %i.ay, 7
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod.not, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.cx, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa ]
  %i.cz = and i32 %i.ay, 7
  %lcmp.mod122 = icmp ne i32 %i.cz, 0
  call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.012.i.i.i.i.epil = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.epil ], [ %.012.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.da = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.012.i.i.i.i.epil
  store i64 0, ptr %i.db, align 4
  %i.dc = add nuw i64 %.012.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !213

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.k
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !203
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bc, ptr %i.dd, align 8, !tbaa !215
  %i.de = load i32, ptr %i.aw, align 8, !tbaa !198 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit
  %i.df = mul nsw i32 %i.de, %i.de
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 3 uses
  %i.di = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #30 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.di, i8 0, i64 %i.dh, i1 false), !tbaa !33
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  %i.dl = ptrtoint ptr %i.dj to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit
  %.sroa.083.0 = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit ], [ %i.di, %.noexc ] ; 7 uses
  %.sroa.17.0 = phi i64 [ 0, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit ], [ %i.dl, %.noexc ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit ], [ %i.dk, %.noexc ] ; 2 uses
  br label %bb.m

.preheader100:                                    ; preds = %bb.w
  %i.dm = ptrtoint ptr %.sroa.083.0 to i64        ; 2 uses
  %.not104 = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.083.0
  br i1 %.not104, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader100
  %i.dn = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.do = sub i64 %i.dn, %i.dm
  %i.dp = ashr exact i64 %i.do, 2
  br label %.lr.ph

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %bb.w
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZN4pbrt14pmj02bnSamplesE, i64 %indvars.iv
  %i.dr = load i32, ptr %i.aw, align 8, !tbaa !198 ; 2 uses
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = load <2 x i32>, ptr %i.dq, align 8, !tbaa !33
  %i.du = uitofp <2 x i32> %i.dt to <2 x double>
  %i.dv = fmul nnan <2 x double> %i.du, splat (double f0x3DF0000000000000)
  %i.dw = fptrunc nnan <2 x double> %i.dv to <2 x float>
  %i.dx = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.dw           ; 4 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fptosi float %i.ea to i32
  %i.ec = extractelement <2 x float> %i.dz, i64 1
  %i.ed = fptosi float %i.ec to i32
  %i.ee = mul nsw i32 %i.dr, %i.ed
  %i.ef = add nsw i32 %i.ee, %i.eb                ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.083.0, i64 %i.eg ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !33 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, %1
  br i1 %i.ej, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  br i1 %i.g, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4pbrt8LogFatalIJRA29_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 194, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(29) @.str.20) #27
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ek = landingpad { ptr, i32 }
end_hunk_0
