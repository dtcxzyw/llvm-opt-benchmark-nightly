Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes?download=true
inline.NumInlined: 5072
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl8JsiProxy3setEN6hermes2vm8SymbolIDENS5_11HermesValueE:bb.a
  %i.co = icmp eq ptr %i.cn, %i.am
  br i1 %i.co, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.cn) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48

_ZN4llvh11SmallVectorItLj16EED2Ev.exit48:         ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.an

bb.ai:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.y, %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.i, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.y, %bb.e
  %.sroa.0.0 = phi i32 [ 257, %bb.e ], [ 0, %bb.i ], [ %i.bn, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit ], [ %i.ch, %bb.y ]
  %i.cq = load ptr, ptr %3, align 8, !tbaa !615   ; 3 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !227
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #45, !inline_history !5
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret i32 %.sroa.0.0

bb.al:                                            ; preds = %bb.ai, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48, %bb.ab
  %.pn39.pn = phi { ptr, i32 } [ %.pn32.pn, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48 ], [ %.pn29, %bb.ab ], [ %i.cp, %bb.ai ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !615   ; 3 uses
  %.not.i49 = icmp eq ptr %i.ct, null
  br i1 %.not.i49, label %_ZN8facebook3jsi7PointerD2Ev.exit50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !227
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #45, !inline_history !5
  br label %_ZN8facebook3jsi7PointerD2Ev.exit50

_ZN8facebook3jsi7PointerD2Ev.exit50:              ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  resume { ptr, i32 } %.pn39.pn

bb.an:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit48, %bb.ab
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #46
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
  %.sroa.048.0 = phi ptr [ %i.s, %._crit_edge ], [ inttoptr (i64 -1 to ptr), %bb.c ]
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
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !777
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #48
  br label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit

_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  br label %bb.z

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %.pn28 = phi { ptr, i32 } [ %i.u, %bb.e ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.l ], [ %i.t, %bb.d ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn28.pn, 0    ; 2 uses
  %.420 = extractvalue { ptr, i32 } %.pn28.pn, 1  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook3jsi7JSErrorE) #45
  %i.bs = icmp eq i32 %.420, %i.br
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = call ptr @__cxa_begin_catch(ptr %.4) #45
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !365, !nonnull !235, !align !236
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !772
  %i.bz = call fastcc i64 @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11hvFromValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(16) %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 720
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !622
  call void @__cxa_end_catch()
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.cb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #45
  %i.cc = icmp eq i32 %.420, %i.cb
  %i.cd = call ptr @__cxa_begin_catch(ptr %.4) #45
  br i1 %i.cc, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ce, ptr %4, align 8, !tbaa !219
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.cf, align 8, !tbaa !220
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.cg, align 4, !tbaa !221
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !365, !nonnull !235, !align !236
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #45
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ck, align 8, !tbaa !761
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 43, ptr %i.cl, align 8, !tbaa !762
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.cm, align 8, !tbaa !763
  store ptr @.str.35, ptr %6, align 8, !tbaa !248
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.cn, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #45
  %i.co = invoke fastcc { ptr, i64 } @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl18utf16FromErrorWhatERKSt9exceptionRN4llvh15SmallVectorImplItEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.x       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cp = extractvalue { ptr, i64 } %i.co, 0
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 4, ptr %i.cr, align 8, !tbaa !764
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cs, align 8, !tbaa !761
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.cq, ptr %i.ct, align 8, !tbaa !762
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cu, align 8, !tbaa !763
  store ptr %i.cp, ptr %7, align 8, !tbaa !248
  invoke void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cv = invoke noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.s unwind label %bb.x       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  %i.cw = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ce
  br i1 %i.cx, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.cw) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit

_ZN4llvh11SmallVectorItLj16EED2Ev.exit:           ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  call void @__cxa_end_catch()
  br label %bb.z

bb.u:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !769, !nonnull !235, !align !236
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !365, !nonnull !235, !align !236
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.db, align 8, !tbaa !761
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 52, ptr %i.dc, align 8, !tbaa !762
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.dd, align 8, !tbaa !763
  store ptr @.str.34, ptr %3, align 8, !tbaa !248
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.de, align 8, !tbaa !764
  %i.df = invoke noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.da, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  call void @__cxa_end_catch()
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab

bb.x:                                             ; preds = %bb.p, %bb.r, %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  %i.di = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ce
  br i1 %i.dj, label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit39, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.di) #45
  br label %_ZN4llvh11SmallVectorItLj16EED2Ev.exit39

_ZN4llvh11SmallVectorItLj16EED2Ev.exit39:         ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab

bb.z:                                             ; preds = %bb.v, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %bb.n, %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit
  %.sroa.048.1 = phi ptr [ %.sroa.048.0, %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit ], [ inttoptr (i64 -1 to ptr), %bb.n ], [ inttoptr (i64 -1 to ptr), %_ZN4llvh11SmallVectorItLj16EED2Ev.exit ], [ inttoptr (i64 -1 to ptr), %bb.v ]
  ret ptr %.sroa.048.1

bb.aa:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit39, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.dh, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit39 ], [ %i.dg, %bb.w ]
  resume { ptr, i32 } %.pn34

bb.ab:                                            ; preds = %_ZN4llvh11SmallVectorItLj16EED2Ev.exit39, %bb.w
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #46
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15HostObjectProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #39

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::TwineChar16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #24 comdat !guid !1776 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !764, !noalias !1777 ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !764, !noalias !1777 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !764, !alias.scope !1778
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !761, !alias.scope !1778
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !1778
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !1780
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1780
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !noalias !1777
  %i.p = icmp eq i32 %i.o, 1                      ; 2 uses
  %.sroa.06.0.copyload.i = load ptr, ptr %1, align 8, !noalias !1777
  %spec.select.i = select i1 %i.p, i32 %i.b, i32 2
  %spec.select17.i = select i1 %i.p, ptr %.sroa.06.0.copyload.i, ptr %1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !noalias !1777
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !1777
  %.sroa.03.0.i = select i1 %i.s, ptr %.sroa.03.0.copyload.i, ptr %2
  %.015.i = select i1 %i.s, i32 %i.e, i32 2
  store ptr %spec.select17.i, ptr %0, align 8, !tbaa !248, !alias.scope !1777
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.i, ptr %i.t, align 8, !tbaa !764, !alias.scope !1777
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.03.0.i, ptr %i.u, align 8, !tbaa !248, !alias.scope !1777
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.015.i, ptr %i.v, align 8, !tbaa !761, !alias.scope !1777
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x i64>, ptr %i.l, align 8, !tbaa !317, !noalias !1777 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.m, align 8, !tbaa !317, !noalias !1777 ; 2 uses
  %i.z = shufflevector <2 x i64> %i.x, <2 x i64> %i.y, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x i64> %i.x, <2 x i64> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ab = add <2 x i64> %i.z, %i.aa
  store <2 x i64> %i.ab, ptr %i.w, align 8, !tbaa !317, !alias.scope !1777
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

_ZNK6hermes2vm11TwineChar166concatERKS1_.exit:    ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::TwineChar16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1783 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !noalias !1784 ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741824
  %.not.i.i = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %1, align 8, !tbaa !248, !noalias !1784 ; 2 uses
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !317, !noalias !1784
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !1784 ; 2 uses
  %i.i = icmp ugt i32 %i.h, 150994943
  br i1 %i.i, label %bb.d, label %bb.e, !prof !324

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233, !noalias !1784
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.h, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.n, align 8, !tbaa !317, !noalias !1784
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !233, !noalias !1784
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.sink.i.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.r, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1786, !noalias !1784 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !761, !alias.scope !1784
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.w, align 8, !tbaa !762, !alias.scope !1784
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !763, !alias.scope !1784
  %i.y = icmp eq i32 %i.t, 0
  br i1 %i.y, label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i
  %i.z = and i32 %i.b, 1073741823
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.aa
  store ptr %i.ab, ptr %0, align 8, !tbaa !248, !alias.scope !1784
  br label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i

_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i: ; preds = %bb.i, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i
  %.sink.i.i = phi i32 [ 3, %bb.i ], [ 1, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !764, !alias.scope !1784
  br label %_ZNK6hermes2vm10StringView7toTwineEv.exit

bb.j:                                             ; preds = %bb.a
  %.not.i1.i = icmp samesign ult i32 %i.b, 1073741824
  %i.ad = load ptr, ptr %1, align 8, !tbaa !248, !noalias !1784 ; 2 uses
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ad, align 8, !tbaa !317, !noalias !1784
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1784 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 150994943
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !324

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !689, !noalias !1784
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.m:                                             ; preds = %bb.k
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ag, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.p [
    i32 117440512, label %bb.n
    i32 50331648, label %bb.o
  ]
end_hunk_0
