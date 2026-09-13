Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/samplers?download=true
inline.NumInlined: 2954
inline.NumDeleted: 436
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt12SobolSampler6CreateERKNS_19ParameterDictionaryENS_6Point2IiEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i

bb.i:                                             ; preds = %.noexc60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.i, %bb.e
  %.pn19.pn = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.cc, %bb.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ] ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.j
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !28
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn19.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn19.pn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn19.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17StratifiedSampler8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25, !alias.scope !298
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !27, !alias.scope !298
  store i8 0, ptr %i.h, align 8, !tbaa !28, !alias.scope !298
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point2IiEEJRKiS7_S7_S7_RKbS7_RKNS_3RNGEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.29, ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN4pbrt12StringPrintfIJRKNS_6Point2IiEERKiS6_S6_S6_RKbS6_RKNS_3RNGEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !298 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.h, align 8, !tbaa !28, !alias.scope !298
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.j

_ZN4pbrt12StringPrintfIJRKNS_6Point2IiEERKiS6_S6_S6_RKbS6_RKNS_3RNGEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17StratifiedSampler5CloneEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Sampler") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 48, i64 noundef 8), !inline_history !299 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = or i64 %i.e, 432345564227567616
  store i64 %i.f, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt17StratifiedSampler6CreateERKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree readnone captures(none) %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !28
  %i.j = invoke noundef zeroext i1 @_ZNK4pbrt19ParameterDictionary10GetOneBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.g, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !25
  store i64 8315171517136728952, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !28
  %i.r = invoke noundef i32 @_ZNK4pbrt19ParameterDictionary9GetOneIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.b
  %i.u = load i64, ptr %i.o, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  store i32 %i.r, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !25
  store i64 8315171517136728953, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.y, align 8, !tbaa !28
  %i.z = invoke noundef i32 @_ZNK4pbrt19ParameterDictionary9GetOneIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.aa = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.w
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.c
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store i32 %i.z, ptr %i.b, align 4, !tbaa !16
  %i.ae = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !35 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !38, !range !39, !noundef !40
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN4pstd8optionalIiEdeEv.exit, label %bb.m

_ZN4pstd8optionalIiEdeEv.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16 ; 7 uses
  %i.ak = sitofp i32 %i.aj to double
  %i.al = call noundef double @sqrt(double noundef %i.ak) #29
  %i.am = fptosi double %i.al to i32              ; 5 uses
  %i.an = srem i32 %i.aj, %i.am
  %.not71 = icmp eq i32 %i.an, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4pstd8optionalIiEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i32 %i.am, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.ao = icmp sgt i32 %i.am, 0
  br i1 %i.ao, label %.lr.ph93, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i32 %i.be, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %8 = icmp sgt i32 %.07292, 1
  br i1 %8, label %.lr.ph93, label %.lr.ph._crit_edge, !llvm.loop !300

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  call void @_ZN4pbrt8LogFatalIJRA4_KcRA2_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 306, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(4) @.str.34, ptr noundef nonnull align 1 dereferenceable(2) @.str.35, ptr noundef nonnull align 1 dereferenceable(4) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #27
  unreachable

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.d
  %i.as = load i64, ptr %i.g, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.o
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.e
  %i.ax = load i64, ptr %i.o, align 8, !tbaa !28
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.r

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.f
  %i.bc = load i64, ptr %i.w, align 8, !tbaa !28
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.q

.lr.ph93:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.07292 = phi i32 [ %i.be, %.lr.ph ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.be = add nsw i32 %.07292, -1                 ; 4 uses
  %i.bf = srem i32 %i.aj, %i.be
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !300

._crit_edge:                                      ; preds = %.lr.ph93, %_ZN4pstd8optionalIiEdeEv.exit
  %.0.lcssa = phi i32 [ %i.am, %_ZN4pstd8optionalIiEdeEv.exit ], [ %i.be, %.lr.ph93 ]
  %i.bg = sdiv i32 %i.aj, %.0.lcssa               ; 3 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !16
  %i.bh = sdiv i32 %i.aj, %i.bg                   ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i32 %i.aj, ptr %i.e, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.bi = mul nsw i32 %i.bh, %i.bg                ; 2 uses
  store i32 %i.bi, ptr %i.f, align 4, !tbaa !16
  %i.bj = icmp eq i32 %i.aj, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_ZN4pbrt8LogFatalIJRA9_KcRA20_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 311, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(9) @.str.36, ptr noundef nonnull align 1 dereferenceable(20) @.str.37, ptr noundef nonnull align 1 dereferenceable(9) @.str.36, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(20) @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #27
  unreachable

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  %i.bk = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !304
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !25, !alias.scope !305
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !27, !alias.scope !305
  store i8 0, ptr %i.bm, align 8, !tbaa !28, !alias.scope !305
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.38, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4pbrt12StringPrintfIJRiS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !29, !alias.scope !305 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bq, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.br = load i64, ptr %i.bm, align 8, !tbaa !28, !alias.scope !305
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn27.pn.pn, %bb.r ], [ %i.bo, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRiS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.i
  %i.bt = load ptr, ptr %3, align 8, !tbaa !29
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef 312, ptr noundef %i.bt)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.bu = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bm
  br i1 %i.bv, label %_ZN4pbrt3LogIJRiS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #28
  br label %_ZN4pbrt3LogIJRiS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit

bb.l:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bm
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.l
  %i.cb = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

_ZN4pbrt3LogIJRiS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN4pbrt3LogIJRiS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.cd = phi ptr [ %i.ae, %bb.h ], [ %.pre, %_ZN4pbrt3LogIJRiS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 84
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !50, !range !39, !noundef !40
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.n, label %._crit_edge.i.i55

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.b, align 4, !tbaa !16
  store i32 1, ptr %i.a, align 4, !tbaa !16
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ch, ptr %7, align 8, !tbaa !25
  store i32 1684366707, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.ci, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.cj, align 4, !tbaa !28
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !43
  %i.cl = invoke noundef i32 @_ZNK4pbrt19ParameterDictionary9GetOneIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ck)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i55
  %i.cm = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ch
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.o
  %i.co = load i64, ptr %i.ch, align 8, !tbaa !28
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.cq = zext i1 %i.j to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cr = load ptr, ptr %2, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 48, i64 noundef 8), !inline_history !303 ; 8 uses
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !16
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !16
  store i32 %i.cv, ptr %i.cu, align 8, !tbaa !307
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !308
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cl, ptr %i.cy, align 8, !tbaa !309
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i8 %i.cq, ptr %i.cz, align 4, !tbaa !310
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 -8846114313915602277, ptr %i.da, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 -2720673578348880933, ptr %i.db, align 8, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %i.cu

bb.p:                                             ; preds = %._crit_edge.i.i55
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ch
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.p
  %i.dg = load i64, ptr %i.ch, align 8, !tbaa !28
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn27.pn = phi { ptr, i32 } [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.q ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %common.resume
}

declare noundef zeroext i1 @_ZNK4pbrt19ParameterDictionary10GetOneBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA4_KcRA2_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !25, !alias.scope !313
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !313
  store i8 0, ptr %i.a, align 8, !tbaa !28, !alias.scope !313
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJRA2_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
end_hunk_0
