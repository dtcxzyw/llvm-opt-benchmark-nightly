Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes?download=true
inline.NumInlined: 5072
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl8JsiProxy3getEN6hermes2vm8SymbolIDE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.bz = load ptr, ptr %11, align 8, !tbaa !219  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ay
  br i1 %i.ca, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.bz) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit

_ZN4llvh11SmallVectorItLj16EED2Ev.exit:           ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  invoke void @__cxa_end_catch()
          to label %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE.exit unwind label %bb.ai

bb.t:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !365, !nonnull !235, !align !236 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #45
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.ce, align 8, !tbaa !761
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 40, ptr %i.cf, align 8, !tbaa !762
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cg, align 8, !tbaa !763
  store ptr @.str.27, ptr %7, align 8, !tbaa !248
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ch, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 9240
  %i.cj = invoke { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ci, ptr noundef nonnull align 8 dereferenceable(9816) %i.cd, i32 %1)
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0
  store ptr %i.ck, ptr %9, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cm = extractvalue { ptr, i64 } %i.cj, 1
  store i64 %i.cm, ptr %i.cl, align 8
  invoke void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #45
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.cn, align 8, !tbaa !761
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 22, ptr %i.co, align 8, !tbaa !762
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.cp, align 8, !tbaa !763
  store ptr @.str.28, ptr %10, align 8, !tbaa !248
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.cq, align 8, !tbaa !764
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cr = invoke noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  invoke void @__cxa_end_catch()
          to label %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE.exit unwind label %bb.ai

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.aa ], [ %i.cs, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.am

bb.ac:                                            ; preds = %bb.m, %bb.l, %bb.k
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.o, %bb.q, %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn29 = phi { ptr, i32 } [ %i.cw, %bb.ae ], [ %i.cv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.af ], [ %i.cu, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.cx = load ptr, ptr %11, align 8, !tbaa !219  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ay
  br i1 %i.cy, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit46, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.cx) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit46

_ZN4llvh11SmallVectorItLj16EED2Ev.exit46:         ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.am

bb.ai:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.y, %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %.fold.split.i, %bb.i, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.y
  %.sroa.5.0 = phi i64 [ undef, %bb.y ], [ undef, %bb.i ], [ undef, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit ], [ %.sroa.0.0.copyload.i, %bb.g ], [ -1688849860263936, %bb.d ], [ %i.ab, %bb.e ], [ %spec.select.i.i, %bb.f ], [ -1548112371908608, %.fold.split.i ]
  %.sroa.0.0 = phi i32 [ %i.cr, %bb.y ], [ 0, %bb.i ], [ %i.by, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %.fold.split.i ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.da = load ptr, ptr %2, align 8, !tbaa !615   ; 3 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE.exit
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !227
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.da) #45, !inline_history !5
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert

bb.ak:                                            ; preds = %bb.ai, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit46, %bb.ab
  %.pn38 = phi { ptr, i32 } [ %i.cz, %bb.ai ], [ %.pn29.pn, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit46 ], [ %.pn, %bb.ab ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.dd = load ptr, ptr %2, align 8, !tbaa !615   ; 3 uses
  %.not.i47 = icmp eq ptr %i.dd, null
  br i1 %.not.i47, label %_ZN8facebook3jsi7PointerD2Ev.exit48, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !227
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #45, !inline_history !5
  br label %_ZN8facebook3jsi7PointerD2Ev.exit48

_ZN8facebook3jsi7PointerD2Ev.exit48:              ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  resume { ptr, i32 } %.pn38

bb.am:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit46, %bb.ab
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal range(i32 0, 258) i32 @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl8JsiProxy3setEN6hermes2vm8SymbolIDENS5_11HermesValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 %1, i64 %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !1766 {
bb.a:
  %3 = alloca %"class.facebook::jsi::PropNameID", align 8 ; 7 uses
  %4 = alloca %"class.facebook::jsi::Value", align 8 ; 7 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %9 = alloca %"class.hermes::vm::StringView", align 8 ; 6 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %11 = alloca %"class.llvh::SmallVector.721", align 8 ; 10 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %17 = alloca %"class.hermes::vm::StringView", align 8 ; 6 uses
  %18 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %19 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !769, !nonnull !235, !align !236 ; 4 uses
  %i.c = zext i32 %1 to i64
  %i.d = or disjoint i64 %i.c, -1266637395197952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !619, !noalias !1767 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.b, label %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi10PropNameIDEEET_N6hermes2vm11HermesValueE.exit, !prof !324

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !620, !noalias !1767
  %i.j = uitofp i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load double, ptr %i.k, align 8, !tbaa !621, !noalias !1767
  %i.m = fcmp ogt double %i.l, %i.j
  br i1 %i.m, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e), !noalias !1767
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !619, !noalias !1767 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i, label %.sink.split.i.i, label %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi10PropNameIDEEET_N6hermes2vm11HermesValueE.exit

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e), !noalias !1767
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !619, !noalias !1767
  br label %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi10PropNameIDEEET_N6hermes2vm11HermesValueE.exit

_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi10PropNameIDEEET_N6hermes2vm11HermesValueE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i.i
  %i.o = phi ptr [ %i.g, %bb.a ], [ %i.n, %bb.c ], [ %.pre.i, %.sink.split.i.i ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %.val.i.i = load ptr, ptr %i.p, align 8, !tbaa !248, !noalias !1767
  store ptr %.val.i.i, ptr %i.f, align 8, !tbaa !619, !noalias !1767
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic i32 1, ptr %i.q monotonic, align 8, !noalias !1767
  store i64 %i.d, ptr %i.p, align 8, !tbaa !317, !noalias !1767
  store ptr %i.o, ptr %3, align 8, !tbaa !615, !alias.scope !1768
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !769, !nonnull !235, !align !236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  invoke fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl20valueFromHermesValueEN6hermes2vm11HermesValueE(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %i.t, i64 %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi10PropNameIDEEET_N6hermes2vm11HermesValueE.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !227
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %bb.aj

bb.f:                                             ; preds = %_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi10PropNameIDEEET_N6hermes2vm11HermesValueE.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 0         ; 2 uses
  %.018 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  %i.z = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook3jsi7JSErrorE) #45
  %i.aa = icmp eq i32 %.018, %i.z
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = call ptr @__cxa_begin_catch(ptr %.0) #45
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !365, !nonnull !235, !align !236
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !772
  %i.ah = call fastcc i64 @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 720
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !622
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ai

bb.j:                                             ; preds = %bb.h
  %i.aj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #45
  %i.ak = icmp eq i32 %.018, %i.aj
  %i.al = call ptr @__cxa_begin_catch(ptr %.0) #45
  br i1 %i.ak, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #45
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.am, ptr %11, align 8, !tbaa !219
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !220
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 16, ptr %i.ao, align 4, !tbaa !221
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !365, !nonnull !235, !align !236 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #45
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.as, align 8, !tbaa !761
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 39, ptr %i.at, align 8, !tbaa !762
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.au, align 8, !tbaa !763
  store ptr @.str.33, ptr %15, align 8, !tbaa !248
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.av, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 9240
  %i.ax = invoke { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aw, ptr noundef nonnull align 8 dereferenceable(9816) %i.ar, i32 %1)
          to label %bb.l unwind label %bb.ac      ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  store ptr %i.ay, ptr %17, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ba = extractvalue { ptr, i64 } %i.ax, 1
  store i64 %i.ba, ptr %i.az, align 8
  invoke void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #45
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 1, ptr %i.bb, align 8, !tbaa !761
  %i.bc = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 3, ptr %i.bc, align 8, !tbaa !762
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 0, ptr %i.bd, align 8, !tbaa !763
  store ptr @.str.30, ptr %18, align 8, !tbaa !248
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 3, ptr %i.be, align 8, !tbaa !764
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %18)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #45
  %i.bf = invoke fastcc { ptr, i64 } @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl18utf16FromErrorWhatERKSt9exceptionRN4llvh15SmallVectorImplItEE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.p unwind label %bb.ae      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 4, ptr %i.bi, align 8, !tbaa !764
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 1, ptr %i.bj, align 8, !tbaa !761
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !762
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 0, ptr %i.bl, align 8, !tbaa !763
  store ptr %i.bg, ptr %19, align 8, !tbaa !248
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %19)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.bm = invoke noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %20 = and i32 %i.bm, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.bn = load ptr, ptr %11, align 8, !tbaa !219  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.am
  br i1 %i.bo, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.bn) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit

_ZN4llvh11SmallVectorItLj16EED2Ev.exit:           ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ai

bb.t:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !365, !nonnull !235, !align !236 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #45
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.bs, align 8, !tbaa !761
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 40, ptr %i.bt, align 8, !tbaa !762
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bu, align 8, !tbaa !763
  store ptr @.str.32, ptr %7, align 8, !tbaa !248
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.bv, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 9240
  %i.bx = invoke { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bw, ptr noundef nonnull align 8 dereferenceable(9816) %i.br, i32 %1)
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  store ptr %i.by, ptr %9, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = extractvalue { ptr, i64 } %i.bx, 1
  store i64 %i.ca, ptr %i.bz, align 8
  invoke void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #45
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !761
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 22, ptr %i.cc, align 8, !tbaa !762
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.cd, align 8, !tbaa !763
  store ptr @.str.28, ptr %10, align 8, !tbaa !248
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.ce, align 8, !tbaa !764
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cf = invoke noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %21 = and i32 %i.cf, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ai

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn29 = phi { ptr, i32 } [ %i.ch, %bb.aa ], [ %i.cg, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.an

bb.ac:                                            ; preds = %bb.m, %bb.l, %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.o, %bb.q, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn32 = phi { ptr, i32 } [ %i.ck, %bb.ae ], [ %i.cj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.af ], [ %i.ci, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.cl = load ptr, ptr %11, align 8, !tbaa !219  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.am
  br i1 %i.cm, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.cl) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48

_ZN4llvh11SmallVectorItLj16EED2Ev.exit48:         ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.an

bb.ai:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.y, %bb.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.i, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.y, %bb.e
  %.sroa.0.0 = phi i32 [ 257, %bb.e ], [ 0, %bb.i ], [ %20, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit ], [ %21, %bb.y ]
  %i.co = load ptr, ptr %3, align 8, !tbaa !615   ; 3 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !227
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #45, !inline_history !5
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret i32 %.sroa.0.0

bb.al:                                            ; preds = %bb.ai, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48, %bb.ab
  %.pn39.pn = phi { ptr, i32 } [ %.pn32.pn, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48 ], [ %.pn29, %bb.ab ], [ %i.cn, %bb.ai ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !615   ; 3 uses
  %.not.i49 = icmp eq ptr %i.cr, null
  br i1 %.not.i49, label %_ZN8facebook3jsi7PointerD2Ev.exit50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !227
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #45, !inline_history !5
  br label %_ZN8facebook3jsi7PointerD2Ev.exit50

_ZN8facebook3jsi7PointerD2Ev.exit50:              ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  resume { ptr, i32 } %.pn39.pn

bb.an:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48, %bb.ab
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal ptr @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl8JsiProxy20getHostPropertyNamesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !1770 {
bb.a:
  %1 = alloca %"class.std::vector.728", align 8   ; 11 uses
  %2 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %4 = alloca %"class.llvh::SmallVector.721", align 8 ; 10 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 5 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.728") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !365, !nonnull !235, !align !236
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !775
  %i.m = load ptr, ptr %1, align 8, !tbaa !776
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = invoke ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %i.j, i32 noundef %i.r, i32 noundef %i.r)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.s, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.i, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !365, !nonnull !235, !align !236 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !382
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !385
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !392
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !219
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 4, ptr %i.af, align 4, !tbaa !221
  store ptr %i.ac, ptr %i.ad, align 8
  store i32 1, ptr %i.ae, align 8, !tbaa !220
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !393
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !394
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i32 0, ptr %i.ai, align 8, !tbaa !395
  store ptr %2, ptr %i.z, align 8, !tbaa !385
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !365, !nonnull !235, !align !236
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !385 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !393 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !394
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !612

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !393
  store i64 -1266636858327041, ptr %i.an, align 8, !tbaa !317
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.as = invoke noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.al, i64 -1266636858327041)
          to label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !1771  ; 2 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !1771 ; 2 uses
  %.not4950 = icmp eq ptr %i.at, %i.au
  br i1 %.not4950, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes2vm9ArrayImpl12setElementAtENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE.exit, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  br label %bb.i

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm9ArrayImpl12setElementAtENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE.exit
  %.02452 = phi i32 [ %i.bd, %_ZN6hermes2vm9ArrayImpl12setElementAtENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE.exit ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ] ; 2 uses
  %.sroa.042.051 = phi ptr [ %i.be, %_ZN6hermes2vm9ArrayImpl12setElementAtENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE.exit ], [ %i.at, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ] ; 2 uses
  %.val = load ptr, ptr %.sroa.042.051, align 8, !tbaa !615
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !622
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = or disjoint i64 %i.ax, -1266637395197952
  store i64 %i.ay, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !622
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !365, !nonnull !235, !align !236
  %i.bc = invoke i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.s, ptr noundef nonnull align 8 dereferenceable(9816) %i.bb, i32 noundef %.02452, ptr nonnull %.0.i.i.i.i.i.i)
          to label %_ZN6hermes2vm9ArrayImpl12setElementAtENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6hermes2vm9ArrayImpl12setElementAtENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE.exit: ; preds = %.lr.ph
  %i.bd = add i32 %.02452, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.042.051, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.be, %i.au
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.h
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  br label %bb.l

bb.i:                                             ; preds = %bb.c, %._crit_edge
  %i.bf = load ptr, ptr %1, align 8, !tbaa !776   ; 3 uses
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !775 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i.i ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !615 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !227
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #45, !inline_history !1769
  br label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i.i

_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !776
  br label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %bb.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit.i
end_hunk_0
