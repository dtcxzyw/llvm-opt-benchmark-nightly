Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/instantiate_mvars?download=true
inline.NumInlined: 1989
inline.NumDeleted: 974
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4lean22instantiate_delayed_fn9visit_appERKNS_4exprE:bb.a
bb.az:                                            ; preds = %bb.ay
  %i.bm = load i8, ptr %8, align 8, !tbaa !149, !range !71, !noundef !72
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.ba, label %_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke

bb.ba:                                            ; preds = %bb.az
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %.not.i.i.i.i44 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i44, label %bb.bb, label %_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke

bb.bb:                                            ; preds = %bb.ba
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !40 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.bc, label %bb.bd, !prof !41

bb.bc:                                            ; preds = %bb.bb
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !40
  br label %_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke

bb.bd:                                            ; preds = %bb.bb
  %.not.i1.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bp)
          to label %_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #17
  unreachable

_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke:     ; preds = %bb.ar, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az
  invoke void @_ZN4lean22instantiate_delayed_fn17visit_nonmvar_appERKNS_4exprE(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bg unwind label %bb.au

bb.bg:                                            ; preds = %_ZN4lean8optionalINS_4exprEED2Ev.exit.invoke, %bb.ax
  %i.bx = load ptr, ptr %6, align 8, !tbaa !25    ; 4 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 1
  %.not.i.i.i45 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i45, label %bb.bh, label %_ZN4lean10object_refD2Ev.exit47

bb.bh:                                            ; preds = %bb.bg
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !40 ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %bb.bi, label %bb.bj, !prof !41

bb.bi:                                            ; preds = %bb.bh
  %i.cc = add nsw i32 %i.ca, -1
  store i32 %i.cc, ptr %i.bx, align 4, !tbaa !40
  br label %_ZN4lean10object_refD2Ev.exit47

bb.bj:                                            ; preds = %bb.bh
  %.not.i1.i.i46 = icmp eq i32 %i.ca, 0
  br i1 %.not.i1.i.i46, label %_ZN4lean10object_refD2Ev.exit47, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bx)
          to label %_ZN4lean10object_refD2Ev.exit47 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #17
  unreachable

_ZN4lean10object_refD2Ev.exit47:                  ; preds = %bb.bg, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.cf = load ptr, ptr %4, align 8, !tbaa !25    ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, 1
  %.not.i.i.i48 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i48, label %bb.bm, label %_ZN4lean10object_refD2Ev.exit50

bb.bm:                                            ; preds = %_ZN4lean10object_refD2Ev.exit47
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !40 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %bb.bn, label %bb.bo, !prof !41

bb.bn:                                            ; preds = %bb.bm
  %i.ck = add nsw i32 %i.ci, -1
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !40
  br label %_ZN4lean10object_refD2Ev.exit50

bb.bo:                                            ; preds = %bb.bm
  %.not.i1.i.i49 = icmp eq i32 %i.ci, 0
  br i1 %.not.i1.i.i49, label %_ZN4lean10object_refD2Ev.exit50, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.cf)
          to label %_ZN4lean10object_refD2Ev.exit50 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #17
  unreachable

_ZN4lean10object_refD2Ev.exit50:                  ; preds = %_ZN4lean10object_refD2Ev.exit47, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bt

bb.br:                                            ; preds = %bb.au, %bb.at
  %.pn20 = phi { ptr, i32 } [ %i.bk, %bb.au ], [ %i.bj, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.as
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.br ], [ %i.bi, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bz

bb.bt:                                            ; preds = %bb.l, %_ZN4lean10object_refD2Ev.exit50
  %i.cn = and i64 %i.v, 1
  %.not.i.i.i51 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i51, label %bb.bu, label %_ZN4lean10object_refD2Ev.exit53

bb.bu:                                            ; preds = %bb.bt
  %i.co = load i32, ptr %i.u, align 4, !tbaa !40  ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.bv, label %bb.bw, !prof !41

bb.bv:                                            ; preds = %bb.bu
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %i.u, align 4, !tbaa !40
  br label %_ZN4lean10object_refD2Ev.exit53

bb.bw:                                            ; preds = %bb.bu
  %.not.i1.i.i52 = icmp eq i32 %i.co, 0
  br i1 %.not.i1.i.i52, label %_ZN4lean10object_refD2Ev.exit53, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.u)
          to label %_ZN4lean10object_refD2Ev.exit53 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #17
  unreachable

_ZN4lean10object_refD2Ev.exit53:                  ; preds = %bb.bt, %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bs, %bb.m
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.bs ], [ %i.x, %bb.m ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn20.pn.pn

bb.ca:                                            ; preds = %_ZN4lean10object_refD2Ev.exit53, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE6insertERKS4_RKS5_j(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.lean::expr", align 8        ; 8 uses
  %5 = alloca %"struct.lean::scope_cache<std::pair<lean_object *, unsigned int>, lean::expr, lean::instantiate_delayed_fn::key_hasher>::cache_entry", align 8 ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseISt4pairIP11lean_objectjES1_IKS4_St6vectorIN4lean11scope_cacheIS4_NS7_4exprENS7_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISD_EEE16mi_stl_allocatorISG_ENS_10_Select1stESt8equal_toIS4_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 7 uses
  tail call void @_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE6rewindERSt6vectorINS8_11cache_entryESaISA_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = load ptr, ptr %2, align 8, !tbaa !25     ; 10 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !25
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4exprC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !40 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !40
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !182  ; 5 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN4lean4exprC2ERKS0_.exit
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187
  %i.o = icmp eq i32 %i.n, %3
  br i1 %i.o, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !25   ; 7 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i.i.i.i18 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i18, label %bb.h, label %_ZN4lean3incEP11lean_object.exit.i.i

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i.i19 = load i32, ptr %i.p, align 4, !tbaa !40 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i.i.i.i19, 0
  br i1 %i.s, label %bb.i, label %bb.j, !prof !41

bb.i:                                             ; preds = %bb.h
  %i.t = add nuw i32 %.val.i.i.i.i.i19, 1
  store i32 %i.t, ptr %i.p, align 4, !tbaa !40
  br label %_ZN4lean3incEP11lean_object.exit.i.i

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i.i20 = icmp eq i32 %.val.i.i.i.i.i19, 0
  br i1 %.not.i.i.i.i.i20, label %_ZN4lean3incEP11lean_object.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !25
  br label %_ZN4lean3incEP11lean_object.exit.i.i

_ZN4lean3incEP11lean_object.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.v = phi ptr [ %i.p, %bb.g ], [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %.pre.i.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN4lean4expraSERKS0_.exit

bb.l:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %i.w = load i32, ptr %i.b, align 4, !tbaa !40   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !41

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.b, align 4, !tbaa !40
  br label %_ZN4lean4expraSERKS0_.exit

bb.n:                                             ; preds = %bb.l
  %.not.i1.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean4expraSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.b)
          to label %_ZN4lean4expraSERKS0_.exit unwind label %bb.p

_ZN4lean4expraSERKS0_.exit:                       ; preds = %bb.o, %_ZN4lean3incEP11lean_object.exit.i.i, %bb.m, %bb.n
  store ptr %i.v, ptr %4, align 8, !tbaa !25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !182
  %.pre25 = load ptr, ptr %i.i, align 8, !tbaa !182
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.q:                                             ; preds = %_ZN4lean4expraSERKS0_.exit, %bb.f
  %6 = phi ptr [ %i.v, %_ZN4lean4expraSERKS0_.exit ], [ %i.b, %bb.f ] ; 3 uses
  %7 = phi ptr [ %.pre25, %_ZN4lean4expraSERKS0_.exit ], [ %i.j, %bb.f ] ; 3 uses
  %8 = phi ptr [ %.pre, %_ZN4lean4expraSERKS0_.exit ], [ %i.h, %bb.f ] ; 2 uses
  %i.aa = icmp eq ptr %8, %7
  br i1 %i.aa, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit
  %i.ab = phi ptr [ %i.ap, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit ], [ %8, %bb.q ] ; 3 uses
  %i.ac = phi ptr [ %i.ao, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit ], [ %7, %bb.q ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !184
  %.not = icmp ult i32 %i.ae, %3
  br i1 %.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -32 ; 5 uses
  store ptr %i.af, ptr %i.i, align 8, !tbaa !173
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 4 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !40 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %bb.u, !prof !41

bb.t:                                             ; preds = %bb.s
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !40
  br label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit

bb.u:                                             ; preds = %bb.s
  %.not.i1.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i1.i.i.i.i.i, label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ag)
          to label %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit_crit_edge unwind label %bb.w

._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit_crit_edge: ; preds = %bb.v
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !182
  %.pre27 = load ptr, ptr %i.i, align 8, !tbaa !182
  br label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit

bb.w:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #17
  unreachable

_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit: ; preds = %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit_crit_edge, %bb.r, %bb.t, %bb.u
  %i.ao = phi ptr [ %.pre27, %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit_crit_edge ], [ %i.af, %bb.r ], [ %i.af, %bb.t ], [ %i.af, %bb.u ] ; 3 uses
  %i.ap = phi ptr [ %.pre26, %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit_crit_edge ], [ %i.ab, %bb.r ], [ %i.ab, %bb.t ], [ %i.ab, %bb.u ] ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %.critedge, label %.lr.ph, !llvm.loop !527

.critedge:                                        ; preds = %.lr.ph, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit, %_ZN4lean4exprC2ERKS0_.exit, %bb.q
  %9 = phi ptr [ %i.b, %_ZN4lean4exprC2ERKS0_.exit ], [ %6, %bb.q ], [ %6, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit ], [ %6, %.lr.ph ] ; 2 uses
  %10 = phi ptr [ %i.j, %_ZN4lean4exprC2ERKS0_.exit ], [ %7, %bb.q ], [ %i.ac, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %9, ptr %5, align 8, !tbaa !25
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.at = load i32, ptr %i.as, align 4, !tbaa !185
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !120
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !188
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %3, ptr %i.ax, align 8, !tbaa !187
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174
  %.not.i.i = icmp eq ptr %10, %i.az
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge
  store ptr %9, ptr %10, align 8, !tbaa !25
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ba, ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i64 20, i1 false)
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !173
  br label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit

bb.y:                                             ; preds = %.critedge
  invoke void @_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %10, ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit_crit_edge unwind label %bb.aj

._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit_crit_edge: ; preds = %bb.y
  %.pre28 = load ptr, ptr %5, align 8, !tbaa !25
  br label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit

_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit: ; preds = %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit_crit_edge, %bb.x
  %i.bd = phi ptr [ %.pre28, %._ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit_crit_edge ], [ inttoptr (i64 1 to ptr), %bb.x ] ; 4 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 1
  %.not.i.i.i.i22 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i22, label %bb.z, label %_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit

bb.z:                                             ; preds = %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !40 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.aa, label %bb.ab, !prof !41

bb.aa:                                            ; preds = %bb.z
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !40
  br label %_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i1.i.i.i23 = icmp eq i32 %i.bg, 0
  br i1 %.not.i1.i.i.i23, label %_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bd)
          to label %_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #17
  unreachable

_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit: ; preds = %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE9push_backEOSA_.exit, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !182
  %i.bm = load ptr, ptr %4, align 8, !tbaa !25    ; 4 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.ae, label %_ZN4lean10object_refD2Ev.exit

bb.ae:                                            ; preds = %_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !40 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.af, label %bb.ag, !prof !41

bb.af:                                            ; preds = %bb.ae
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !40
  br label %_ZN4lean10object_refD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %.not.i1.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bm)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #17
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev.exit, %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bl, i64 -32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret ptr %i.bu

bb.aj:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE11cache_entryD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.aj ], [ %i.z, %bb.p ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean11scope_cacheISt4pairIP11lean_objectjENS_4exprENS_22instantiate_delayed_fn10key_hasherEE6rewindERSt6vectorINS8_11cache_entryESaISA_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !182
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit.thread, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit
  %i.g = phi ptr [ %i.c, %.lr.ph60 ], [ %i.cn, %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit ] ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !187  ; 3 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !185  ; 12 uses
  %i.l = icmp ugt i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %.preheader40

.preheader40:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -24 ; 3 uses
  %.promoted = load i32, ptr %i.m, align 8, !tbaa !184 ; 12 uses
  %i.n = icmp ugt i32 %.promoted, %i.k
  br i1 %i.n, label %.lr.ph, label %bb.h

.lr.ph:                                           ; preds = %.preheader40
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -16 ; 2 uses
  %.promoted48 = load ptr, ptr %i.o, align 8, !tbaa !188 ; 2 uses
  %i.p = sub nuw i32 %.promoted, %i.k
  %xtraiter118 = and i32 %i.p, 7                  ; 2 uses
  %lcmp.mod119.not = icmp eq i32 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %i.q = phi ptr [ %i.t, %.prol.preheader ], [ %.promoted48, %.lr.ph ]
  %i.r = phi i32 [ %i.u, %.prol.preheader ], [ %.promoted, %.lr.ph ]
  %prol.iter120 = phi i32 [ %prol.iter120.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103  ; 3 uses
  %i.u = add i32 %i.r, -1                         ; 2 uses
  %prol.iter120.next = add i32 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i32 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !528

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.unr = phi ptr [ %.promoted48, %.lr.ph ], [ %i.t, %.prol.preheader ]
  %.unr121 = phi i32 [ %.promoted, %.lr.ph ], [ %i.u, %.prol.preheader ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph ], [ %i.t, %.prol.preheader ]
  %i.v = sub i32 %i.k, %.promoted
  %i.w = icmp ugt i32 %i.v, -8
  br i1 %i.w, label %.thread, label %.lr.ph.new

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.a, align 8, !tbaa !173
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !25   ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit, !llvm.loop !529

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !40  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit.sink.split, label %bb.e, !prof !41, !llvm.loop !529

bb.e:                                             ; preds = %bb.d
  %.not.i1.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i1.i.i.i.i.i, label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit, label %bb.f, !llvm.loop !529

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.x)
          to label %_ZNSt6vectorIN4lean11scope_cacheISt4pairIP11lean_objectjENS0_4exprENS0_22instantiate_delayed_fn10key_hasherEE11cache_entryESaISA_EE8pop_backEv.exit unwind label %bb.g, !llvm.loop !529

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #17
  unreachable

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.ae = phi ptr [ %i.av, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.af = phi i32 [ %i.aw, %.lr.ph.new ], [ %.unr121, %.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103 ; 2 uses
  %i.aw = add i32 %i.af, -8                       ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, %i.k
  br i1 %i.ax, label %.lr.ph.new, label %.thread, !llvm.loop !530

.thread:                                          ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.av, %.lr.ph.new ]
end_hunk_0
