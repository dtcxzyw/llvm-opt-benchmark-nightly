Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Variant?download=true
inline.NumInlined: 5994
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK8facebook5velox7Variant9inferTypeEv:bb.a

bb.ei:                                            ; preds = %bb.eh
  tail call void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0)
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE35EEERKDav.exit: ; preds = %bb.eh
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !95 ; 2 uses
  %i.nj = load <2 x ptr>, ptr %i.nf, align 8, !tbaa !144
  store <2 x ptr> %i.nj, ptr %0, align 8, !tbaa !144
  %.not.i.i.i157 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i157, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit, label %bb.ej

bb.ej:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE35EEERKDav.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 3 uses
  %i.nl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i158 = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i.i158, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.nm = load i32, ptr %i.nk, align 4, !tbaa !96
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nk, align 4, !tbaa !96
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit

bb.el:                                            ; preds = %bb.ej
  %i.no = atomicrmw volatile add ptr %i.nk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit

bb.em:                                            ; preds = %bb.a
  tail call void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0)
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit

bb.en:                                            ; preds = %bb.a
  tail call void @_ZN8facebook5velox16createScalarTypeENS0_8TypeKindE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, i8 noundef signext %i.b)
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_10OpaqueTypeEvEERKS_IT_E.exit: ; preds = %bb.el, %bb.ek, %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE35EEERKDav.exit, %bb.en, %bb.em, %bb.ei, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit155, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106
  ret void

bb.eo:                                            ; preds = %bb.eg, %bb.cx, %bb.bw
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %bb.bw ], [ %.pn51, %bb.cx ], [ %.pn46, %bb.eg ]
  resume { ptr, i32 } %.pn56.pn.pn.pn
}

declare void @_ZN8facebook5velox3MAPESt10shared_ptrIKNS0_4TypeEES4_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.43") align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #4

declare void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #4

declare void @_ZN8facebook5velox3ROWEOSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS5_EE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.51") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !120
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !893
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !893
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !96
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !192
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #36
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN8facebook5velox5ARRAYESt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.54") align 8, ptr noundef align 8) local_unnamed_addr #4

declare void @_ZN8facebook5velox16createScalarTypeENS0_8TypeKindE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76    ; 3 uses
  %i.c = icmp eq i8 %i.b, 33
  br i1 %i.c, label %.thread76, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !82     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !87
  %.not = icmp eq i8 %i.b, %i.f
  br i1 %.not, label %bb.c, label %.thread76

bb.c:                                             ; preds = %bb.b
  switch i8 %i.b, label %.thread76 [
    i8 30, label %bb.d
    i8 31, label %bb.f
    i8 32, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread76, label %_ZNK8facebook5velox7Variant5arrayEv.exit

_ZNK8facebook5velox7Variant5arrayEv.exit:         ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox7Variant5arrayEv.exit
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 0)
  %i.q = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br i1 %i.q, label %.thread, label %.thread76

.thread:                                          ; preds = %_ZNK8facebook5velox7Variant5arrayEv.exit, %bb.e
  br label %.thread76

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread76, label %_ZNK8facebook5velox7Variant3mapEv.exit

_ZNK8facebook5velox7Variant3mapEv.exit:           ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !140  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.thread76, label %.lr.ph90

.lr.ph90:                                         ; preds = %_ZNK8facebook5velox7Variant3mapEv.exit, %.thread69
  %.03989 = phi i1 [ %.174, %.thread69 ], [ false, %_ZNK8facebook5velox7Variant3mapEv.exit ] ; 3 uses
  %.04095 = phi i1 [ %.141115, %.thread69 ], [ false, %_ZNK8facebook5velox7Variant3mapEv.exit ]
  %.sroa.060.087 = phi ptr [ %i.ap, %.thread69 ], [ %i.u, %_ZNK8facebook5velox7Variant3mapEv.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 48 ; 2 uses
  br i1 %.04095, label %2, label %bb.g

bb.g:                                             ; preds = %.lr.ph90
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %1, align 8, !tbaa !82    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef 0)
  %i.ag = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.af) ; 2 uses
  %.not123 = xor i1 %i.ag, true
  %brmerge = or i1 %.03989, %.not123
  br i1 %brmerge, label %.thread76, label %bb.j

2:                                                ; preds = %.lr.ph90
  br i1 %.03989, label %.thread76, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %.03989, label %.thread69, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %2
  %.141116 = phi i1 [ false, %bb.i ], [ true, %2 ], [ true, %bb.h ] ; 2 uses
  %not.114 = phi i1 [ true, %bb.i ], [ false, %2 ], [ false, %bb.h ]
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread69, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %1, align 8, !tbaa !82    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 1)
  %i.ao = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.an) ; 2 uses
  %brmerge.not = and i1 %not.114, %i.ao
  br i1 %brmerge.not, label %.thread69, label %.thread76

.thread69:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.141115 = phi i1 [ %.141116, %bb.k ], [ %.141116, %bb.j ], [ false, %bb.i ]
  %.174 = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ true, %bb.i ]
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.060.087) #40 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.v
  br i1 %i.aq, label %.thread76, label %.lr.ph90

bb.l:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %0, align 8, !tbaa !77    ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread76, label %_ZNK8facebook5velox7Variant3rowEv.exit

_ZNK8facebook5velox7Variant3rowEv.exit:           ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.be = zext i32 %i.bd to i64
  %.not53 = icmp eq i64 %i.az, %i.be
  br i1 %.not53, label %.preheader, label %.thread76

.preheader:                                       ; preds = %_ZNK8facebook5velox7Variant3rowEv.exit
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !129 ; 2 uses
  %.not5483.not = icmp eq ptr %i.bf, %i.bg
  br i1 %.not5483.not, label %.thread76, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !129 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 4
  %.not54 = icmp ugt i64 %i.bm, %indvars.iv.next
  br i1 %.not54, label %.lr.ph, label %.thread76, !llvm.loop !894

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader ] ; 3 uses
  %i.bn = phi ptr [ %i.bi, %bb.m ], [ %i.bg, %.preheader ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %1, align 8, !tbaa !82    ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %i.bu = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.bt)
  %i.bv = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bu) ; 3 uses
  br i1 %i.bv, label %bb.m, label %.thread76

.thread76:                                        ; preds = %bb.m, %.lr.ph, %.thread69, %2, %bb.k, %bb.h, %.preheader, %_ZNK8facebook5velox7Variant3mapEv.exit, %_ZNK8facebook5velox7Variant3rowEv.exit, %bb.l, %bb.f, %bb.d, %.thread, %bb.e, %bb.c, %bb.b, %bb.a
  %.6 = phi i1 [ true, %bb.l ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.c ], [ true, %_ZNK8facebook5velox7Variant3mapEv.exit ], [ true, %bb.d ], [ true, %bb.f ], [ true, %.thread ], [ false, %_ZNK8facebook5velox7Variant3rowEv.exit ], [ true, %2 ], [ true, %.preheader ], [ true, %.thread69 ], [ %i.ag, %bb.h ], [ %i.ao, %bb.k ], [ %i.bv, %.lr.ph ], [ %i.bv, %bb.m ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox15LongDecimalTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE10EEE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE10EEE, i64 192), ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.c) #35, !inline_history !197
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(544) %i.b) #35, !inline_history !197
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 568) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE7childAtEj(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE7childAtEjE18veloxCheckFailArgs, ptr noundef nonnull @.str.54) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE10EE15isPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE12isComparableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE11isOrderableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE4nameEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.55
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE10parametersEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE10EE8kindNameEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(568) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !199, !range !99, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.e = load i8, ptr %i.d, align 8, !tbaa !199, !range !99, !noundef !71
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE5scaleEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE5scaleEv.exit: ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !97
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = load i64, ptr %i.j, align 8, !tbaa !97
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !897
  %i.m = and i32 %i.i, 255
  store i32 %i.m, ptr %2, align 16, !tbaa !61, !noalias !897
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = and i32 %i.l, 255
  store i32 %i.o, ptr %i.n, align 16, !tbaa !61, !noalias !897
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.57, i64 15, i64 34, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !897
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE10equivalentERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !69
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !187  ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread9, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !61
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread9

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !199, !range !99, !noundef !71
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !199, !range !99, !noundef !71
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit6: ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !97
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = icmp eq i8 %i.z, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNKSt9type_infoeqERKS_.exit.thread9

bb.e:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !199, !range !99, !noundef !71
end_hunk_0
