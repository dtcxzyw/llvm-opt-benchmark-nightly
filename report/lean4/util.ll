Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/util?download=true
inline.NumInlined: 1135
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4lean31get_constructor_relevant_fieldsERKNS_11environmentERKNS_4nameERNS_6bufferIbLm16EEE:bb.a
  %i.g = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre154 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %.pre154, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 12 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i.i52 = icmp eq i64 %i.o, 0           ; 3 uses
  br i1 %.not.i.i.i.i52, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i53 = load i32, ptr %i.m, align 4, !tbaa !11 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i.i.i.i53, 0
  br i1 %i.p, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw i32 %.val.i.i.i.i.i53, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !11
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.i54 = icmp eq i32 %.val.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i.i54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 8 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i.i.i55 = icmp eq i64 %i.v, 0           ; 2 uses
  br i1 %.not.i.i.i.i55, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i.i.i56 = load i32, ptr %i.t, align 4, !tbaa !11 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i.i.i.i56, 0
  br i1 %i.w, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.x = add nuw i32 %.val.i.i.i.i.i56, 1
  store i32 %i.x, ptr %i.t, align 4, !tbaa !11
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i.i.i57 = icmp eq i32 %.val.i.i.i.i.i56, 0
  br i1 %.not.i.i.i.i.i57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = lshr i64 %i.ab, 1                       ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN4lean9local_ctxC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.q unwind label %bb.br

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ae = load ptr, ptr @_ZN4leanL12g_util_freshE, align 8, !tbaa !105
  invoke void @_ZN4lean14name_generatorC1ERKNS_4nameE(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.r unwind label %bb.bs

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 16, ptr %i.ah, align 8, !tbaa !69
  store ptr %i.m, ptr %12, align 8, !tbaa !8
  br i1 %.not.i.i.i.i52, label %bb.s, label %_ZN4lean4exprC2ERKS0_.exit61

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i.i.i59 = load i32, ptr %i.m, align 4, !tbaa !11 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i.i.i.i59, 0
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.aj = add nuw i32 %.val.i.i.i.i.i59, 1
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !11
  br label %_ZN4lean4exprC2ERKS0_.exit61

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i.i.i60 = icmp eq i32 %.val.i.i.i.i.i59, 0
  br i1 %.not.i.i.i.i.i60, label %_ZN4lean4exprC2ERKS0_.exit61, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit61

_ZN4lean4exprC2ERKS0_.exit61:                     ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i8 0, ptr %13, align 4, !tbaa !122
  invoke void @_ZN4lean12to_telescopeERKNS_11environmentERNS_9local_ctxERNS_14name_generatorENS_4exprERNS_6bufferIS7_Lm16EEERKNS_8optionalINS_11binder_infoEEE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 dereferenceable(152) %10, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.bt

bb.w:                                             ; preds = %_ZN4lean4exprC2ERKS0_.exit61
  %i.al = load ptr, ptr %11, align 8, !tbaa !8    ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 1
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %bb.x, label %_ZN4lean10object_refD2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !11 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %.not.i1.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.al)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #20
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.at = load ptr, ptr %12, align 8, !tbaa !8    ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 1
  %.not.i.i.i62 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i62, label %bb.ac, label %_ZN4lean10object_refD2Ev.exit64

bb.ac:                                            ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !11 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit64

bb.ae:                                            ; preds = %bb.ac
  %.not.i1.i.i63 = icmp eq i32 %i.aw, 0
  br i1 %.not.i1.i.i63, label %_ZN4lean10object_refD2Ev.exit64, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.at)
          to label %_ZN4lean10object_refD2Ev.exit64 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN4lean10object_refD2Ev.exit64:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.ad, %bb.ae, %bb.af
  %i.bb = and i64 %i.ac, 4294967295               ; 2 uses
  %i.bc = load i64, ptr %i.ag, align 8, !tbaa !68 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.bb
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4lean10object_refD2Ev.exit64
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.bu

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit124, %_ZN4lean10object_refD2Ev.exit64
  %.lcssa = phi i64 [ %i.bc, %_ZN4lean10object_refD2Ev.exit64 ], [ %i.hs, %_ZN4lean10object_refD2Ev.exit124 ] ; 2 uses
  %i.bk = load ptr, ptr %10, align 8, !tbaa !64   ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %.lcssa, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i
  %.not4.i.i.i.i = icmp eq i64 %.lcssa, 0
  br i1 %.not4.i.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bu, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !8 ; 4 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ah, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !11 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !11
  br label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %.not.i1.i.i.i.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bm)
          to label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #20
  unreachable

_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.bu, %i.bl
  br i1 %.not.i.i.i.i65, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !73

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !64
  br label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i: ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i, %._crit_edge
  %i.bv = phi ptr [ %.pre.i.i, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.bk, %._crit_edge ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.bv, %i.af
  br i1 %.not.i.i.i66, label %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i
  %i.bw = load i64, ptr %i.ah, align 8, !tbaa !69
  %i.bx = shl i64 %i.bw, 3
  call void @_ZdaPvm(ptr noundef %i.bv, i64 noundef %i.bx) #19
  br label %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit

_ZN4lean6bufferINS_4exprELm16EED2Ev.exit:         ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.by = load ptr, ptr %9, align 8, !tbaa !8     ; 4 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i.i.i.i67 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i67, label %bb.an, label %_ZN4lean14name_generatorD2Ev.exit

bb.an:                                            ; preds = %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !11 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !11
  br label %_ZN4lean14name_generatorD2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %.not.i1.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean14name_generatorD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.by)
          to label %_ZN4lean14name_generatorD2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN4lean14name_generatorD2Ev.exit:                ; preds = %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.cg = load ptr, ptr %8, align 8, !tbaa !8     ; 4 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, 1
  %.not.i.i.i68 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i68, label %bb.as, label %_ZN4lean10object_refD2Ev.exit70

bb.as:                                            ; preds = %_ZN4lean14name_generatorD2Ev.exit
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !11 ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.cl = add nsw i32 %i.cj, -1
  store i32 %i.cl, ptr %i.cg, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit70

bb.au:                                            ; preds = %bb.as
  %.not.i1.i.i69 = icmp eq i32 %i.cj, 0
  br i1 %.not.i1.i.i69, label %_ZN4lean10object_refD2Ev.exit70, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.cg)
          to label %_ZN4lean10object_refD2Ev.exit70 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #20
  unreachable

_ZN4lean10object_refD2Ev.exit70:                  ; preds = %_ZN4lean14name_generatorD2Ev.exit, %bb.at, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %.not.i.i.i.i55, label %bb.ax, label %_ZN4lean10object_refD2Ev.exit73

bb.ax:                                            ; preds = %_ZN4lean10object_refD2Ev.exit70
  %i.co = load i32, ptr %i.t, align 4, !tbaa !11  ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %i.t, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit73

bb.az:                                            ; preds = %bb.ax
  %.not.i1.i.i72 = icmp eq i32 %i.co, 0
  br i1 %.not.i1.i.i72, label %_ZN4lean10object_refD2Ev.exit73, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.t)
          to label %_ZN4lean10object_refD2Ev.exit73 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #20
  unreachable

_ZN4lean10object_refD2Ev.exit73:                  ; preds = %_ZN4lean10object_refD2Ev.exit70, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %.not.i.i.i.i52, label %bb.bc, label %_ZN4lean10object_refD2Ev.exit76

bb.bc:                                            ; preds = %_ZN4lean10object_refD2Ev.exit73
  %i.ct = load i32, ptr %i.m, align 4, !tbaa !11  ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %i.m, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit76

bb.be:                                            ; preds = %bb.bc
  %.not.i1.i.i75 = icmp eq i32 %i.ct, 0
  br i1 %.not.i1.i.i75, label %_ZN4lean10object_refD2Ev.exit76, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.m)
          to label %_ZN4lean10object_refD2Ev.exit76 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #20
  unreachable

_ZN4lean10object_refD2Ev.exit76:                  ; preds = %_ZN4lean10object_refD2Ev.exit73, %bb.bd, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.not.i.i.i.i, label %bb.bh, label %_ZN4lean10object_refD2Ev.exit79

bb.bh:                                            ; preds = %_ZN4lean10object_refD2Ev.exit76
  %i.cy = load i32, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.da = add nsw i32 %i.cy, -1
  store i32 %i.da, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit79

bb.bj:                                            ; preds = %bb.bh
  %.not.i1.i.i78 = icmp eq i32 %i.cy, 0
  br i1 %.not.i1.i.i78, label %_ZN4lean10object_refD2Ev.exit79, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.c)
          to label %_ZN4lean10object_refD2Ev.exit79 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #20
  unreachable

_ZN4lean10object_refD2Ev.exit79:                  ; preds = %_ZN4lean10object_refD2Ev.exit76, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.dd = load ptr, ptr %4, align 8, !tbaa !8     ; 4 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = and i64 %i.de, 1
  %.not.i.i.i80 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i80, label %bb.bm, label %_ZN4lean10object_refD2Ev.exit82

bb.bm:                                            ; preds = %_ZN4lean10object_refD2Ev.exit79
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !11 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.di = add nsw i32 %i.dg, -1
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit82

bb.bo:                                            ; preds = %bb.bm
  %.not.i1.i.i81 = icmp eq i32 %i.dg, 0
  br i1 %.not.i1.i.i81, label %_ZN4lean10object_refD2Ev.exit82, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.dd)
          to label %_ZN4lean10object_refD2Ev.exit82 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #20
  unreachable

_ZN4lean10object_refD2Ev.exit82:                  ; preds = %_ZN4lean10object_refD2Ev.exit79, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.br:                                            ; preds = %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.bs:                                            ; preds = %bb.q
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.bt:                                            ; preds = %_ZN4lean4exprC2ERKS0_.exit61
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  br label %bb.ep

bb.bu:                                            ; preds = %.lr.ph, %_ZN4lean10object_refD2Ev.exit124
  %i.do = phi i64 [ %i.bb, %.lr.ph ], [ %i.hr, %_ZN4lean10object_refD2Ev.exit124 ]
  %.019148 = phi i32 [ %i.ad, %.lr.ph ], [ %i.hq, %_ZN4lean10object_refD2Ev.exit124 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.dp = load ptr, ptr %10, align 8, !tbaa !64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !124
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !8, !noalias !127
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  invoke void @_ZNK4lean9local_ctx14get_local_declERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::local_decl") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %.noexc unwind label %bb.co

.noexc:                                           ; preds = %bb.bu
  %i.dt = load ptr, ptr %3, align 8, !tbaa !8, !noalias !124 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !8, !noalias !124 ; 5 uses
  store ptr %i.dv, ptr %14, align 8, !tbaa !8, !alias.scope !124
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = and i64 %i.dw, 1
  %.not.i.i.i.i.i83 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i83, label %bb.bv, label %_ZN4lean4exprC2ERKS0_.exit.i

bb.bv:                                            ; preds = %.noexc
  %.val.i.i.i.i.i.i = load i32, ptr %i.dv, align 4, !tbaa !11, !noalias !124 ; 3 uses
  %i.dy = icmp sgt i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.dy, label %bb.bw, label %bb.bx, !prof !13

bb.bw:                                            ; preds = %bb.bv
  %i.dz = add nuw i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.dz, ptr %i.dv, align 4, !tbaa !11, !noalias !124
  br label %_ZN4lean4exprC2ERKS0_.exit.i

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ea = atomicrmw sub ptr %i.dv, i32 1 monotonic, align 4, !noalias !124 ; 0 uses
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !8, !noalias !124
  br label %_ZN4lean4exprC2ERKS0_.exit.i

_ZN4lean4exprC2ERKS0_.exit.i:                     ; preds = %bb.by, %bb.bx, %bb.bw, %.noexc
  %i.eb = phi ptr [ %.pre.i, %bb.by ], [ %i.dt, %bb.bx ], [ %i.dt, %bb.bw ], [ %i.dt, %.noexc ] ; 4 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, 1
  %.not.i.i.i.i84 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i84, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %_ZN4lean4exprC2ERKS0_.exit.i
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !11, !noalias !124 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.ca, label %bb.cb, !prof !13

bb.ca:                                            ; preds = %bb.bz
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !11, !noalias !124
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  %.not.i1.i.i.i85 = icmp eq i32 %i.ee, 0
  br i1 %.not.i1.i.i.i85, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.eb)
          to label %bb.ce unwind label %bb.cd, !noalias !124

bb.cd:                                            ; preds = %bb.cc
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #20, !noalias !124
  unreachable

bb.ce:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %_ZN4lean4exprC2ERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN4lean12type_checkerC1ERKNS_11environmentERKNS_9local_ctxEPNS_11diagnosticsENS_17definition_safetyE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null, i32 noundef 1)
          to label %bb.cf unwind label %bb.cp

bb.cf:                                            ; preds = %bb.ce
  %i.ej = invoke noundef zeroext i1 @_ZN4lean12type_checker7is_propERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.cg unwind label %bb.cq

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4lean12type_checkerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br i1 %i.ej, label %bb.ch, label %bb.ct

bb.ch:                                            ; preds = %bb.cg
  %i.ek = load i64, ptr %i.bh, align 8, !tbaa !130 ; 6 uses
  %i.el = load i64, ptr %i.bi, align 8, !tbaa !133 ; 3 uses
  %.not.i = icmp ult i64 %i.ek, %i.el
  br i1 %.not.i, label %._crit_edge.i, label %bb.ci

._crit_edge.i:                                    ; preds = %bb.ch
  %.pre.i87 = load ptr, ptr %2, align 8, !tbaa !134
  br label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.em = shl i64 %i.el, 1                        ; 2 uses
  %i.en = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.em) #22
          to label %.noexc88 unwind label %bb.cs  ; 4 uses

.noexc88:                                         ; preds = %bb.ci
  %i.eo = load ptr, ptr %2, align 8, !tbaa !134   ; 4 uses
  %i.ep = icmp sgt i64 %i.ek, 1
  br i1 %i.ep, label %bb.cj, label %bb.ck, !prof !13

bb.cj:                                            ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %i.eo, i64 %i.ek, i1 false)
  br label %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i

bb.ck:                                            ; preds = %.noexc88
  %i.eq = icmp eq i64 %i.ek, 1
  br i1 %i.eq, label %bb.cl, label %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.er = load i8, ptr %i.eo, align 1, !tbaa !135, !range !17, !noundef !18
  store i8 %i.er, ptr %i.en, align 1, !tbaa !135
  br label %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  %.not.i.i.i.i.i86 = icmp eq ptr %i.eo, %i.bj
  br i1 %.not.i.i.i.i.i86, label %_ZN4lean6bufferIbLm16EE6expandEv.exit.i, label %bb.cm

bb.cm:                                            ; preds = %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i
  call void @_ZdaPvm(ptr noundef %i.eo, i64 noundef %i.el) #19
  %.pre2.pre.i = load i64, ptr %i.bh, align 8, !tbaa !130
  br label %_ZN4lean6bufferIbLm16EE6expandEv.exit.i

_ZN4lean6bufferIbLm16EE6expandEv.exit.i:          ; preds = %bb.cm, %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i
  %.pre2.i = phi i64 [ %i.ek, %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i ], [ %.pre2.pre.i, %bb.cm ]
  store ptr %i.en, ptr %2, align 8, !tbaa !134
  store i64 %i.em, ptr %i.bi, align 8, !tbaa !133
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4lean6bufferIbLm16EE6expandEv.exit.i, %._crit_edge.i
  %i.es = phi i64 [ %i.ek, %._crit_edge.i ], [ %.pre2.i, %_ZN4lean6bufferIbLm16EE6expandEv.exit.i ] ; 2 uses
  %i.et = phi ptr [ %.pre.i87, %._crit_edge.i ], [ %i.en, %_ZN4lean6bufferIbLm16EE6expandEv.exit.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !tbaa !135
  %i.ev = add i64 %i.es, 1
  store i64 %i.ev, ptr %i.bh, align 8, !tbaa !130
  br label %bb.eh

bb.co:                                            ; preds = %bb.bu
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.cp:                                            ; preds = %bb.ce
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cf
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean12type_checkerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.cq ], [ %i.ex, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.en

bb.cs:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ct:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr %i.be, ptr %16, align 8, !tbaa !64
  store i64 0, ptr %i.bf, align 8, !tbaa !68
  store i64 16, ptr %i.bg, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.fa = load ptr, ptr %14, align 8, !tbaa !8    ; 5 uses
  store ptr %i.fa, ptr %18, align 8, !tbaa !8
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 1
  %.not.i.i.i.i89 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i.i89, label %bb.cu, label %_ZN4lean4exprC2ERKS0_.exit92

bb.cu:                                            ; preds = %bb.ct
  %.val.i.i.i.i.i90 = load i32, ptr %i.fa, align 4, !tbaa !11 ; 3 uses
  %i.fd = icmp sgt i32 %.val.i.i.i.i.i90, 0
  br i1 %i.fd, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.fe = add nuw i32 %.val.i.i.i.i.i90, 1
  store i32 %i.fe, ptr %i.fa, align 4, !tbaa !11
  br label %_ZN4lean4exprC2ERKS0_.exit92

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i.i.i.i91 = icmp eq i32 %.val.i.i.i.i.i90, 0
  br i1 %.not.i.i.i.i.i91, label %_ZN4lean4exprC2ERKS0_.exit92, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ff = atomicrmw sub ptr %i.fa, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit92

_ZN4lean4exprC2ERKS0_.exit92:                     ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store i8 0, ptr %19, align 4, !tbaa !122
  invoke void @_ZN4lean12to_telescopeERKNS_11environmentERNS_9local_ctxERNS_14name_generatorENS_4exprERNS_6bufferIS7_Lm16EEERKNS_8optionalINS_11binder_infoEEE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(152) %16, ptr noundef nonnull align 4 dereferenceable(8) %19)
          to label %bb.cy unwind label %bb.eb

bb.cy:                                            ; preds = %_ZN4lean4exprC2ERKS0_.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.fg = load ptr, ptr %18, align 8, !tbaa !8    ; 4 uses
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = and i64 %i.fh, 1
  %.not.i.i.i93 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i93, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  %i.fj = load i32, ptr %i.fg, align 4, !tbaa !11 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.da, label %bb.db, !prof !13

bb.da:                                            ; preds = %bb.cz
  %i.fl = add nsw i32 %i.fj, -1
  store i32 %i.fl, ptr %i.fg, align 4, !tbaa !11
  br label %bb.de

bb.db:                                            ; preds = %bb.cz
  %.not.i1.i.i94 = icmp eq i32 %i.fj, 0
  br i1 %.not.i1.i.i94, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.fg)
          to label %bb.de unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #20
  unreachable

bb.de:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  %i.fo = load ptr, ptr %17, align 8, !tbaa !8
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  %.val.i.i.i.i = load i32, ptr %i.fp, align 4
  %.mask.i = and i32 %.val.i.i.i.i, -16777216
  %.not = icmp eq i32 %.mask.i, 50331648          ; 3 uses
  br i1 %.not, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZN4lean12type_checkerC1ERKNS_11environmentERKNS_9local_ctxEPNS_11diagnosticsENS_17definition_safetyE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null, i32 noundef 1)
          to label %bb.dg unwind label %bb.ec

bb.dg:                                            ; preds = %bb.df
  %i.fq = invoke noundef zeroext i1 @_ZN4lean12type_checker7is_propERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.dh unwind label %.thread

.thread:                                          ; preds = %bb.dg
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.dh:                                            ; preds = %bb.dg
  %i.fs = xor i1 %i.fq, true
  %i.ft = zext i1 %i.fs to i8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.de
  %i.fu = phi i8 [ 0, %bb.de ], [ %i.ft, %bb.dh ]
  %i.fv = load i64, ptr %i.bh, align 8, !tbaa !130 ; 6 uses
  %i.fw = load i64, ptr %i.bi, align 8, !tbaa !133 ; 3 uses
  %.not.i96 = icmp ult i64 %i.fv, %i.fw
  br i1 %.not.i96, label %._crit_edge.i102, label %bb.dj

._crit_edge.i102:                                 ; preds = %bb.di
  %.pre.i103 = load ptr, ptr %2, align 8, !tbaa !134
  br label %bb.do

bb.dj:                                            ; preds = %bb.di
  %i.fx = shl i64 %i.fw, 1                        ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fx) #22
          to label %.noexc104 unwind label %bb.ed ; 4 uses

.noexc104:                                        ; preds = %bb.dj
  %i.fz = load ptr, ptr %2, align 8, !tbaa !134   ; 4 uses
  %i.ga = icmp sgt i64 %i.fv, 1
  br i1 %i.ga, label %bb.dk, label %bb.dl, !prof !13

bb.dk:                                            ; preds = %.noexc104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fy, ptr align 1 %i.fz, i64 %i.fv, i1 false)
  br label %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97

bb.dl:                                            ; preds = %.noexc104
  %i.gb = icmp eq i64 %i.fv, 1
  br i1 %i.gb, label %bb.dm, label %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97

bb.dm:                                            ; preds = %bb.dl
  %i.gc = load i8, ptr %i.fz, align 1, !tbaa !135, !range !17, !noundef !18
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !135
  br label %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97

_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97: ; preds = %bb.dm, %bb.dl, %bb.dk
  %.not.i.i.i.i.i98 = icmp eq ptr %i.fz, %i.bj
  br i1 %.not.i.i.i.i.i98, label %_ZN4lean6bufferIbLm16EE6expandEv.exit.i100, label %bb.dn

bb.dn:                                            ; preds = %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97
  call void @_ZdaPvm(ptr noundef %i.fz, i64 noundef %i.fw) #19
  %.pre2.pre.i99 = load i64, ptr %i.bh, align 8, !tbaa !130
  br label %_ZN4lean6bufferIbLm16EE6expandEv.exit.i100

_ZN4lean6bufferIbLm16EE6expandEv.exit.i100:       ; preds = %bb.dn, %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97
  %.pre2.i101 = phi i64 [ %i.fv, %_ZSt18uninitialized_copyIPbS0_ET0_T_S2_S1_.exit.i.i.i97 ], [ %.pre2.pre.i99, %bb.dn ]
  store ptr %i.fy, ptr %2, align 8, !tbaa !134
  store i64 %i.fx, ptr %i.bi, align 8, !tbaa !133
  br label %bb.do

bb.do:                                            ; preds = %_ZN4lean6bufferIbLm16EE6expandEv.exit.i100, %._crit_edge.i102
  %i.gd = phi i64 [ %i.fv, %._crit_edge.i102 ], [ %.pre2.i101, %_ZN4lean6bufferIbLm16EE6expandEv.exit.i100 ] ; 2 uses
  %i.ge = phi ptr [ %.pre.i103, %._crit_edge.i102 ], [ %i.fy, %_ZN4lean6bufferIbLm16EE6expandEv.exit.i100 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store i8 %i.fu, ptr %i.gf, align 1, !tbaa !135
  %i.gg = add i64 %i.gd, 1
  store i64 %i.gg, ptr %i.bh, align 8, !tbaa !130
  br i1 %.not, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_ZN4lean12type_checkerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.critedge

.critedge:                                        ; preds = %bb.do, %bb.dp
  %i.gh = load ptr, ptr %17, align 8, !tbaa !8    ; 4 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 1
  %.not.i.i.i106 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i106, label %bb.dq, label %_ZN4lean10object_refD2Ev.exit108

bb.dq:                                            ; preds = %.critedge
  %i.gk = load i32, ptr %i.gh, align 4, !tbaa !11 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %bb.dr, label %bb.ds, !prof !13

bb.dr:                                            ; preds = %bb.dq
  %i.gm = add nsw i32 %i.gk, -1
  store i32 %i.gm, ptr %i.gh, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit108

bb.ds:                                            ; preds = %bb.dq
  %.not.i1.i.i107 = icmp eq i32 %i.gk, 0
  br i1 %.not.i1.i.i107, label %_ZN4lean10object_refD2Ev.exit108, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.gh)
          to label %_ZN4lean10object_refD2Ev.exit108 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #20
  unreachable

_ZN4lean10object_refD2Ev.exit108:                 ; preds = %.critedge, %bb.dr, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.gp = load ptr, ptr %16, align 8, !tbaa !64   ; 3 uses
  %i.gq = load i64, ptr %i.bf, align 8, !tbaa !68 ; 2 uses
  %.idx.i.i.i109 = shl nuw nsw i64 %i.gq, 3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i.i.i109
  %.not4.i.i.i.i110 = icmp eq i64 %i.gq, 0
  br i1 %.not4.i.i.i.i110, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i118, label %.lr.ph.i.i.i.i111

.lr.ph.i.i.i.i111:                                ; preds = %_ZN4lean10object_refD2Ev.exit108, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114
  %.05.i.i.i.i112 = phi ptr [ %i.ha, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114 ], [ %i.gp, %_ZN4lean10object_refD2Ev.exit108 ] ; 2 uses
  %i.gs = load ptr, ptr %.05.i.i.i.i112, align 8, !tbaa !8 ; 4 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i.i.i.i.i.i.i.i113 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i.i.i.i.i113, label %bb.dv, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i111
  %i.gv = load i32, ptr %i.gs, align 4, !tbaa !11 ; 3 uses
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %bb.dw, label %bb.dx, !prof !13

bb.dw:                                            ; preds = %bb.dv
  %i.gx = add nsw i32 %i.gv, -1
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !11
  br label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114

bb.dx:                                            ; preds = %bb.dv
  %.not.i1.i.i.i.i.i.i.i120 = icmp eq i32 %i.gv, 0
  br i1 %.not.i1.i.i.i.i.i.i.i120, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.gs)
          to label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114 unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #20
  unreachable

_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114: ; preds = %bb.dy, %bb.dx, %bb.dw, %.lr.ph.i.i.i.i111
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i112, i64 8 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.ha, %i.gr
  br i1 %.not.i.i.i.i115, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i116, label %.lr.ph.i.i.i.i111, !llvm.loop !73

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i116: ; preds = %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i114
  %.pre.i.i117 = load ptr, ptr %16, align 8, !tbaa !64
  br label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i118

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i118: ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i116, %_ZN4lean10object_refD2Ev.exit108
  %i.hb = phi ptr [ %.pre.i.i117, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i116 ], [ %i.gp, %_ZN4lean10object_refD2Ev.exit108 ] ; 2 uses
  %.not.i.i.i119 = icmp eq ptr %i.hb, %i.be
  br i1 %.not.i.i.i119, label %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit121, label %bb.ea

bb.ea:                                            ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i118
  %i.hc = load i64, ptr %i.bg, align 8, !tbaa !69
  %i.hd = shl i64 %i.hc, 3
  call void @_ZdaPvm(ptr noundef %i.hb, i64 noundef %i.hd) #19
  br label %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit121

_ZN4lean6bufferINS_4exprELm16EED2Ev.exit121:      ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i118, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.eh

bb.eb:                                            ; preds = %_ZN4lean4exprC2ERKS0_.exit92
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.eg

bb.ec:                                            ; preds = %bb.df
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ed:                                            ; preds = %bb.dj
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %.thread, %bb.ed
  %i.hh = phi { ptr, i32 } [ %i.fr, %.thread ], [ %i.hg, %bb.ed ]
  call void @_ZN4lean12type_checkerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #19
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.pn38.ph = phi { ptr, i32 } [ %i.hf, %bb.ec ], [ %i.hh, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ed, %bb.eb
  %.sink = phi ptr [ %18, %bb.eb ], [ %17, %bb.ed ], [ %17, %bb.ef ]
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.he, %bb.eb ], [ %i.hg, %bb.ed ], [ %.pn38.ph, %bb.ef ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN4lean6bufferINS_4exprELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.en

bb.eh:                                            ; preds = %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit121, %bb.cn
  %i.hi = load ptr, ptr %14, align 8, !tbaa !8    ; 4 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 1
  %.not.i.i.i122 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i122, label %bb.ei, label %_ZN4lean10object_refD2Ev.exit124

bb.ei:                                            ; preds = %bb.eh
  %i.hl = load i32, ptr %i.hi, align 4, !tbaa !11 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %bb.ej, label %bb.ek, !prof !13

bb.ej:                                            ; preds = %bb.ei
  %i.hn = add nsw i32 %i.hl, -1
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !11
  br label %_ZN4lean10object_refD2Ev.exit124

bb.ek:                                            ; preds = %bb.ei
  %.not.i1.i.i123 = icmp eq i32 %i.hl, 0
  br i1 %.not.i1.i.i123, label %_ZN4lean10object_refD2Ev.exit124, label %bb.el

bb.el:                                            ; preds = %bb.ek
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.hi)
          to label %_ZN4lean10object_refD2Ev.exit124 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #20
  unreachable

_ZN4lean10object_refD2Ev.exit124:                 ; preds = %bb.eh, %bb.ej, %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.hq = add i32 %.019148, 1                     ; 2 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = load i64, ptr %i.ag, align 8, !tbaa !68 ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, %i.hr
  br i1 %i.ht, label %bb.bu, label %._crit_edge, !llvm.loop !136

bb.en:                                            ; preds = %bb.eg, %bb.cs, %bb.cr
  %.pn42 = phi { ptr, i32 } [ %i.ez, %bb.cs ], [ %.pn38.pn.pn, %bb.eg ], [ %.pn, %bb.cr ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.co
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.en ], [ %i.ew, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ep
end_hunk_0
