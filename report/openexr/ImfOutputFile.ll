inline.NumInlined: 605
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE13_M_clone_nodeILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_RT0_.exit
  %.0.in46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.047 = load ptr, ptr %.0.in46, align 8, !tbaa !195 ; 2 uses
  %.not3248 = icmp eq ptr %.047, null
  br i1 %.not3248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.x
  %.050 = phi ptr [ %.0, %bb.x ], [ %.047, %bb.k ] ; 4 uses
  %.03149 = phi ptr [ %.sink12.i.i36, %bb.x ], [ %.sink12.i.i, %bb.k ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !201  ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !203 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !201
  %.not9.i.i.i35 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !194
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ac, align 8, !tbaa !194
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !195 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.ai, %.preheader.i.i.i38 ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !194 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !208

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !195 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.ak
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !195
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !198
  br label %bb.r

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #24
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink12.i.i36 = phi ptr [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %i.am, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ao, ptr noundef nonnull align 8 dereferenceable(312) %i.an, i64 312, i1 false)
  %i.ap = load i32, ptr %.050, align 8, !tbaa !209
  store i32 %i.ap, ptr %.sink12.i.i36, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink12.i.i36, ptr %i.ar, align 8, !tbaa !195
  %i.as = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 8
  store ptr %.03149, ptr %i.as, align 8, !tbaa !203
  %i.at = getelementptr inbounds nuw i8, ptr %.050, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !194 ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %.sink12.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !194
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.y, %bb.j ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.030) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink12.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #27
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.0.in = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !195 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !210

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink12.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #25
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

declare void @_ZN13IlmThread_3_44TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_114LineBufferTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7Imf_3_412_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7Imf_3_412_GLOBAL__N_110LineBuffer4postEv.exit unwind label %bb.b

_ZN7Imf_3_412_GLOBAL__N_110LineBuffer4postEv.exit: ; preds = %bb.a
  tail call void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_114LineBufferTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7Imf_3_412_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7Imf_3_412_GLOBAL__N_114LineBufferTaskD2Ev.exit unwind label %bb.b, !inline_history !211

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25, !inline_history !211
  unreachable

_ZN7Imf_3_412_GLOBAL__N_114LineBufferTaskD2Ev.exit: ; preds = %bb.a
  tail call void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %0) #23, !inline_history !211
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_114LineBufferTask7executeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !164  ; 6 uses
  br i1 %i.j, label %1, label %6

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %3 = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %4 = load i32, ptr %3, align 4, !tbaa !169
  %5 = add nsw i32 %4, 1
  br label %11

6:                                                ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %8 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %9 = load i32, ptr %8, align 8, !tbaa !168
  %10 = add nsw i32 %9, -1
  br label %11

11:                                               ; preds = %6, %1
  %.044 = phi i32 [ 1, %1 ], [ -1, %6 ]
  %.043 = phi i32 [ %5, %1 ], [ %10, %6 ]         ; 4 uses
  %.0.in = phi ptr [ %2, %1 ], [ %7, %6 ]
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !92  ; 2 uses
  %.not76 = icmp eq i32 %.0, %.043
  br i1 %.not76, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph79, %bb.ak
  %i.n = phi ptr [ %i.l, %.lr.ph79 ], [ %i.af, %bb.ak ] ; 2 uses
  %i.o = phi ptr [ %i.g, %.lr.ph79 ], [ %i.ag, %bb.ak ] ; 6 uses
  %.04577 = phi i32 [ %.0, %.lr.ph79 ], [ %i.en, %bb.ak ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.t = load i32, ptr %i.s, align 4, !tbaa !159
  %i.u = sub nsw i32 %.04577, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %.val72 = load ptr, ptr %i.aa, align 8, !tbaa !153 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 240
  %.val6473 = load ptr, ptr %i.ab, align 8, !tbaa !156
  %.not81 = icmp eq ptr %.val6473, %.val72
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ac = icmp sgt i32 %.04577, -1                ; 2 uses
  %i.ad = xor i32 %.04577, -1                     ; 2 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !164
  %.pre83 = load ptr, ptr %i.c, align 8, !tbaa !139
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ae = phi ptr [ %.pre83, %._crit_edge.loopexit ], [ %i.z, %bb.b ] ; 2 uses
  %i.af = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.n, %bb.b ] ; 3 uses
  %i.ag = phi ptr [ %i.ef, %._crit_edge.loopexit ], [ %i.o, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !165
  %i.aj = icmp ult ptr %i.ai, %i.ae
  br i1 %i.aj, label %bb.aj, label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %bb.ah
  %.val75 = phi ptr [ %.val72, %.lr.ph ], [ %.val, %bb.ah ]
  %i.ak = phi ptr [ %i.o, %.lr.ph ], [ %i.ef, %bb.ah ] ; 4 uses
  %i.al = phi i64 [ 0, %.lr.ph ], [ %i.ee, %bb.ah ]
  %.04674 = phi i32 [ 0, %.lr.ph ], [ %i.ed, %bb.ah ]
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.val75, i64 %i.al ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !212 ; 14 uses
  %i.ap = icmp sgt i32 %i.ao, -1                  ; 4 uses
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = udiv i32 %.04577, %i.ao
  br label %_ZN9Imath_3_24modpEii.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 0, %i.ao
  %i.as = udiv i32 %.04577, %i.ar
  %i.at = sub nsw i32 0, %i.as
  br label %_ZN9Imath_3_24modpEii.exit

bb.g:                                             ; preds = %bb.c
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = add nuw i32 %i.ao, %i.ad
  %i.av = udiv i32 %i.au, %i.ao
  %i.aw = sub nsw i32 0, %i.av
  br label %_ZN9Imath_3_24modpEii.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = sub nsw i32 0, %i.ao
  %i.ay = xor i32 %i.ao, -1
  %i.az = sub nsw i32 %i.ay, %.04577
  %i.ba = udiv i32 %i.az, %i.ax
  br label %_ZN9Imath_3_24modpEii.exit

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %i.bb = phi i32 [ %i.at, %bb.f ], [ %i.aq, %bb.e ], [ %i.aw, %bb.h ], [ %i.ba, %bb.i ]
  %i.bc = mul nsw i32 %i.bb, %i.ao
  %.not59 = icmp eq i32 %.04577, %i.bc
  br i1 %.not59, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 132
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !214 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !215 ; 13 uses
  %i.bh = icmp sgt i32 %i.be, -1
  %i.bi = icmp sgt i32 %i.bg, -1                  ; 4 uses
  br i1 %i.bh, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = udiv i32 %i.be, %i.bg
  br label %_ZN9Imath_3_24divpEii.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = sub nsw i32 0, %i.bg
  %i.bl = udiv i32 %i.be, %i.bk
  %i.bm = sub nsw i32 0, %i.bl
  br label %_ZN9Imath_3_24divpEii.exit

bb.n:                                             ; preds = %bb.j
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = xor i32 %i.be, -1
  %i.bo = add nuw i32 %i.bg, %i.bn
  %i.bp = udiv i32 %i.bo, %i.bg
  %i.bq = sub nsw i32 0, %i.bp
  br label %_ZN9Imath_3_24divpEii.exit

bb.p:                                             ; preds = %bb.n
  %i.br = sub nsw i32 0, %i.bg
  %i.bs = xor i32 %i.bg, -1
  %i.bt = sub nsw i32 %i.bs, %i.be
  %i.bu = udiv i32 %i.bt, %i.br
  br label %_ZN9Imath_3_24divpEii.exit

_ZN9Imath_3_24divpEii.exit:                       ; preds = %bb.l, %bb.m, %bb.o, %bb.p
  %i.bv = phi i32 [ %i.bm, %bb.m ], [ %i.bj, %bb.l ], [ %i.bq, %bb.o ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !216 ; 5 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9Imath_3_24divpEii.exit
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = udiv i32 %i.bx, %i.bg
  br label %_ZN9Imath_3_24divpEii.exit67

bb.s:                                             ; preds = %bb.q
  %i.ca = sub nsw i32 0, %i.bg
  %i.cb = udiv i32 %i.bx, %i.ca
  %i.cc = sub nsw i32 0, %i.cb
  br label %_ZN9Imath_3_24divpEii.exit67

bb.t:                                             ; preds = %_ZN9Imath_3_24divpEii.exit
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = xor i32 %i.bx, -1
  %i.ce = add nuw i32 %i.bg, %i.cd
  %i.cf = udiv i32 %i.ce, %i.bg
  %i.cg = sub nsw i32 0, %i.cf
  br label %_ZN9Imath_3_24divpEii.exit67

bb.v:                                             ; preds = %bb.t
  %i.ch = sub nsw i32 0, %i.bg
  %i.ci = xor i32 %i.bg, -1
  %i.cj = sub nsw i32 %i.ci, %i.bx
  %i.ck = udiv i32 %i.cj, %i.ch
  br label %_ZN9Imath_3_24divpEii.exit67

_ZN9Imath_3_24divpEii.exit67:                     ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %i.cl = phi i32 [ %i.cc, %bb.s ], [ %i.bz, %bb.r ], [ %i.cg, %bb.u ], [ %i.ck, %bb.v ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !217, !range !120, !noundef !121
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN9Imath_3_24divpEii.exit67
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !100
  %i.cr = load i32, ptr %i.am, align 8, !tbaa !218
  %reass.sub = sub i32 %i.cl, %i.bv
  %i.cs = add i32 %reass.sub, 1
  %i.ct = sext i32 %i.cs to i64
  invoke void @_ZN7Imf_3_421fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.cq, i32 noundef %i.cr, i64 noundef %i.ct)
          to label %bb.ah unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ai

bb.y:                                             ; preds = %_ZN9Imath_3_24divpEii.exit67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !219
  %i.cx = ptrtoint ptr %i.cw to i64
  br i1 %i.ac, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.ap, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cy = udiv i32 %.04577, %i.ao
  br label %_ZN9Imath_3_24divpEii.exit68

bb.ab:                                            ; preds = %bb.z
  %i.cz = sub nsw i32 0, %i.ao
  %i.da = udiv i32 %.04577, %i.cz
  %i.db = sub nsw i32 0, %i.da
  br label %_ZN9Imath_3_24divpEii.exit68

bb.ac:                                            ; preds = %bb.y
  br i1 %i.ap, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = add nuw i32 %i.ao, %i.ad
  %i.dd = udiv i32 %i.dc, %i.ao
  %i.de = sub nsw i32 0, %i.dd
  br label %_ZN9Imath_3_24divpEii.exit68

bb.ae:                                            ; preds = %bb.ac
  %i.df = sub nsw i32 0, %i.ao
  %i.dg = xor i32 %i.ao, -1
  %i.dh = sub nsw i32 %i.dg, %.04577
  %i.di = udiv i32 %i.dh, %i.df
  br label %_ZN9Imath_3_24divpEii.exit68

_ZN9Imath_3_24divpEii.exit68:                     ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.ae
  %i.dj = phi i32 [ %i.db, %bb.ab ], [ %i.cy, %bb.aa ], [ %i.de, %bb.ad ], [ %i.di, %bb.ae ]
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !220
  %i.dn = mul i64 %i.dm, %i.dk
  %i.do = add i64 %i.dn, %i.cx                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.dp = sext i32 %i.bv to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !221 ; 3 uses
  %i.ds = mul i64 %i.dr, %i.dp
  %i.dt = add i64 %i.ds, %i.do
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.d, align 8, !tbaa !139
  %i.dv = sext i32 %i.cl to i64
  %i.dw = mul i64 %i.dr, %i.dv
  %i.dx = add i64 %i.dw, %i.do
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !100
  %i.eb = load i32, ptr %i.am, align 8, !tbaa !218
  invoke void @_ZN7Imf_3_419copyFromFrameBufferERPcRPKcS3_mNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.dy, i64 noundef %i.dr, i32 noundef %i.ea, i32 noundef %i.eb)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZN9Imath_3_24divpEii.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN9Imath_3_24divpEii.exit68
  %i.ec = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.w, %_ZN9Imath_3_24modpEii.exit
  %i.ed = add i32 %.04674, 1                      ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !160 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %.val = load ptr, ptr %i.eg, align 8, !tbaa !153 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 240
  %.val64 = load ptr, ptr %i.eh, align 8, !tbaa !156
  %i.ei = ptrtoint ptr %.val64 to i64
  %i.ej = ptrtoint ptr %.val to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 48
  %i.em = icmp ugt i64 %i.el, %i.ee
  br i1 %i.em, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !222

bb.ai:                                            ; preds = %bb.ag, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.x ], [ %i.ec, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.br

bb.aj:                                            ; preds = %._crit_edge
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !165
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.en = add nsw i32 %.04577, %.044              ; 2 uses
  %.not = icmp eq i32 %i.en, %.043
  br i1 %.not, label %._crit_edge80, label %bb.b, !llvm.loop !223

._crit_edge80:                                    ; preds = %bb.ak, %11
  %i.eo = phi ptr [ %i.l, %11 ], [ %i.af, %bb.ak ] ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !166 ; 2 uses
  %.not56 = icmp slt i32 %.043, %i.er
  br i1 %.not56, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge80
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.et = load i32, ptr %i.es, align 4, !tbaa !167
  %.not57 = icmp sgt i32 %.043, %i.et
  br i1 %.not57, label %bb.am, label %bb.cc

bb.am:                                            ; preds = %bb.al, %._crit_edge80
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !75 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !172
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !165
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ev to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !173
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !62 ; 3 uses
  %.not58 = icmp eq ptr %i.ff, null
  br i1 %.not58, label %bb.bq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !70
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(1112) %i.ff, ptr noundef %i.ev, i32 noundef %i.fc, i32 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ao unwind label %.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.fk = load ptr, ptr %i.ep, align 8, !tbaa !164 ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !173
  %i.fn = icmp slt i32 %i.fj, %i.fm
  br i1 %i.fn, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.fj, ptr %i.fl, align 8, !tbaa !173
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !172
  br label %bb.bp

.loopexit:                                        ; preds = %_ZN9Imath_3_24divpEii.exit23.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.br

bb.ar:                                            ; preds = %bb.ao
  %i.fq = load ptr, ptr %i.f, align 8, !tbaa !160 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 224
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !100
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.as, label %bb.bp

bb.as:                                            ; preds = %bb.ar
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !166 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 44
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !167 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fk, i64 8
  %.val66 = load ptr, ptr %i.fy, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %.val66, ptr %i.a, align 8, !tbaa !139
  %.not5.i = icmp sgt i32 %i.fv, %i.fx
  br i1 %.not5.i, label %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 232 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fq, i64 240    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 132
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  %.val1.pre.i = load ptr, ptr %i.fz, align 8, !tbaa !153 ; 2 uses
  %.val212.pre.i = load ptr, ptr %i.ga, align 8, !tbaa !156 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i, %.lr.ph8.i
  %.val2119.i = phi ptr [ %.val212.pre.i, %.lr.ph8.i ], [ %.val2120.i, %._crit_edge.i ] ; 2 uses
  %.val15.i = phi ptr [ %.val1.pre.i, %.lr.ph8.i ], [ %.val16.i, %._crit_edge.i ] ; 2 uses
  %.val212.i = phi ptr [ %.val212.pre.i, %.lr.ph8.i ], [ %.val21213.i, %._crit_edge.i ] ; 2 uses
  %.val1.i = phi ptr [ %.val1.pre.i, %.lr.ph8.i ], [ %.val111.i, %._crit_edge.i ] ; 3 uses
  %.06.i = phi i32 [ %i.fv, %.lr.ph8.i ], [ %i.gg, %._crit_edge.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !139
  store ptr %i.gd, ptr %i.b, align 8, !tbaa !139
  %.not10.i = icmp eq ptr %.val212.i, %.val1.i
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at
  %i.ge = icmp sgt i32 %.06.i, -1
  %i.gf = xor i32 %.06.i, -1
  br label %bb.au

._crit_edge.i:                                    ; preds = %bb.bo, %bb.at
  %.val2120.i = phi ptr [ %.val2119.i, %bb.at ], [ %.val21.i, %bb.bo ]
  %.val16.i = phi ptr [ %.val15.i, %bb.at ], [ %.val.i, %bb.bo ]
  %.val21213.i = phi ptr [ %.val212.i, %bb.at ], [ %.val21.i, %bb.bo ]
  %.val111.i = phi ptr [ %.val1.i, %bb.at ], [ %.val.i, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.gg = add i32 %.06.i, 1
  %exitcond.not.i = icmp eq i32 %.06.i, %i.fx
  br i1 %exitcond.not.i, label %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit, label %bb.at, !llvm.loop !224

bb.au:                                            ; preds = %bb.bo, %.lr.ph.i
  %.val2121.i = phi ptr [ %.val2119.i, %.lr.ph.i ], [ %.val21.i, %bb.bo ]
  %.val17.i = phi ptr [ %.val15.i, %.lr.ph.i ], [ %.val.i, %bb.bo ]
  %.val4.i = phi ptr [ %.val1.i, %.lr.ph.i ], [ %.val.i, %bb.bo ]
  %i.gh = phi i64 [ 0, %.lr.ph.i ], [ %i.ik, %bb.bo ]
  %.0183.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ij, %bb.bo ]
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %.val4.i, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !212 ; 8 uses
  %i.gl = icmp sgt i32 %i.gk, -1                  ; 2 uses
  br i1 %i.ge, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %i.gl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gm = udiv i32 %.06.i, %i.gk
  br label %_ZN9Imath_3_24modpEii.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.gn = sub nsw i32 0, %i.gk
  %i.go = udiv i32 %.06.i, %i.gn
  %i.gp = sub nsw i32 0, %i.go
  br label %_ZN9Imath_3_24modpEii.exit.i

bb.ay:                                            ; preds = %bb.au
  br i1 %i.gl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gq = add nuw i32 %i.gk, %i.gf
  %i.gr = udiv i32 %i.gq, %i.gk
  %i.gs = sub nsw i32 0, %i.gr
  br label %_ZN9Imath_3_24modpEii.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.gt = sub nsw i32 0, %i.gk
  %i.gu = xor i32 %i.gk, -1
  %i.gv = sub nsw i32 %i.gu, %.06.i
  %i.gw = udiv i32 %i.gv, %i.gt
  br label %_ZN9Imath_3_24modpEii.exit.i

_ZN9Imath_3_24modpEii.exit.i:                     ; preds = %bb.ba, %bb.az, %bb.ax, %bb.aw
  %i.gx = phi i32 [ %i.gp, %bb.ax ], [ %i.gm, %bb.aw ], [ %i.gs, %bb.az ], [ %i.gw, %bb.ba ]
  %i.gy = mul nsw i32 %i.gx, %i.gk
  %.not20.i = icmp eq i32 %.06.i, %i.gy
  br i1 %.not20.i, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %_ZN9Imath_3_24modpEii.exit.i
  %i.gz = load i32, ptr %i.gb, align 4, !tbaa !214 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !215 ; 13 uses
  %i.hc = icmp sgt i32 %i.gz, -1
  %i.hd = icmp sgt i32 %i.hb, -1                  ; 4 uses
  br i1 %i.hc, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.hd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.he = udiv i32 %i.gz, %i.hb
  br label %_ZN9Imath_3_24divpEii.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.hf = sub nsw i32 0, %i.hb
  %i.hg = udiv i32 %i.gz, %i.hf
  %i.hh = sub nsw i32 0, %i.hg
  br label %_ZN9Imath_3_24divpEii.exit.i

bb.bf:                                            ; preds = %bb.bb
  br i1 %i.hd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hi = xor i32 %i.gz, -1
  %i.hj = add nuw i32 %i.hb, %i.hi
  %i.hk = udiv i32 %i.hj, %i.hb
  %i.hl = sub nsw i32 0, %i.hk
  br label %_ZN9Imath_3_24divpEii.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.hm = sub nsw i32 0, %i.hb
  %i.hn = xor i32 %i.hb, -1
  %i.ho = sub nsw i32 %i.hn, %i.gz
  %i.hp = udiv i32 %i.ho, %i.hm
  br label %_ZN9Imath_3_24divpEii.exit.i

_ZN9Imath_3_24divpEii.exit.i:                     ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bd
end_hunk_0
