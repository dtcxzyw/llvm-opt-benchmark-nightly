Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/compact?download=true
inline.NumInlined: 1489
inline.NumDeleted: 694
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m:bb.a
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.c, %bb.c ], [ %.pre7, %bb.b ]
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %.pre-phi, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.t, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %1, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !117
  %.not.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !105 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.f, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %bb.d, !llvm.loop !118

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %i.l = urem i64 %i.a, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.t = icmp eq ptr %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !120

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.h ], [ %i.p, %bb.g ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !105 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !120

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !120

_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.p, %bb.g ], [ %i.u, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !87 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %.thread36, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.val = load i32, ptr %1, align 4, !tbaa !123
  %.not39 = icmp eq i32 %.val, 0
  br i1 %.not39, label %bb.k, label %.thread36

bb.k:                                             ; preds = %bb.j
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %.thread36

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %bb.k
  %i.ak = udiv exact i64 %i.ai, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ak, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.al = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.02.06.i.i, i64 %i.al ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.an = icmp ult ptr %1, %.val.i.i.i            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = xor i64 %i.al, -1
  %i.aq = add nsw i64 %.07.i.i, %i.ap
  %.sroa.02.1.i.i = select i1 %i.an, ptr %.sroa.02.06.i.i, ptr %i.ao ; 5 uses
  %.1.i.i = select i1 %i.an, i64 %i.al, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit", !llvm.loop !125

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.as = icmp eq ptr %.sroa.02.1.i.i, %i.ac
  br i1 %i.as, label %.thread36, label %bb.l

bb.l:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit"
  %i.at = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %.not13 = icmp ult ptr %1, %i.ax
  br i1 %.not13, label %bb.m, label %.thread36

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !127
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.a, %i.bb
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %1, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

.thread36:                                        ; preds = %bb.k, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit", %bb.l, %bb.j, %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !128 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !103
  %.not.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread36
  store ptr %1, ptr %i.bj, align 8, !tbaa !61
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !128
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !128
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %.thread36
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !102 ; 4 uses
  %i.bp = ptrtoint ptr %i.bj to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.p, label %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #27 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store ptr %1, ptr %i.ca, align 8, !tbaa !61
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.q, label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cd = load ptr, ptr %i.bk, align 8, !tbaa !103
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cf) #26
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bz, ptr %i.bh, align 8, !tbaa !102
  store ptr %i.cc, ptr %i.bi, align 8, !tbaa !128
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cg, ptr %i.bk, align 8, !tbaa !103
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.n, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ch = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit, %bb.m, %bb.a
  %.4 = phi ptr [ %1, %bb.a ], [ %i.aa, %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit ], [ %i.ch, %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit ], [ %i.be, %bb.m ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4lean16object_compactor11copy_objectEP11lean_objectm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @lean_object_byte_size(ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]    ; 3 uses
  %.biased.i = add i64 %.0, 7
  %.0.i = and i64 %.biased.i, -8                  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.q, %bb.d ] ; 3 uses
  %i.k = phi ptr [ %i.g, %.lr.ph.i ], [ %i.x, %bb.d ]
  %i.l = phi ptr [ %i.e, %.lr.ph.i ], [ %i.v, %bb.d ]
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = shl i64 %i.o, 1                          ; 2 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 5 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.r, %i.n                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.j, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store ptr %i.t, ptr %i.c, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.u, ptr %i.d, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.j) #25
  store ptr %i.q, ptr %i.i, align 8, !tbaa !26
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.y = icmp ugt ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !111

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.d, %bb.c
  %.lcssa.i = phi ptr [ %i.e, %bb.c ], [ %i.v, %bb.d ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 0, i64 %.0.i, i1 false)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa.i, ptr align 4 %1, i64 %.0, i1 false)
  %i.ab = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.ab, align 4
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !123
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.ad = and i32 %.val, -65536
  %i.ae = trunc i64 %.0 to i32
  %i.af = and i32 %i.ae, 65535
  %i.ag = or disjoint i32 %i.ad, %i.af
  store i32 %i.ag, ptr %i.ac, align 4
  ret ptr %.lcssa.i
}

declare i64 @lean_object_byte_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4lean16object_compactor13insert_sarrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !60  ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val18 = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val18, 16
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 256) %i.e, i64 %.val) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZL22lean_usize_mul_checkedmm.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_mul_checkedmm.exit:               ; preds = %bb.a
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.h, i64 24) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZL22lean_usize_add_checkedmm.exit, !prof !70

bb.c:                                             ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_add_checkedmm.exit:               ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %.biased.i = add i64 %i.k, 7
  %.0.i = and i64 %.biased.i, -8                  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !91   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %i.q = icmp ugt ptr %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_add_checkedmm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.s = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.z, %bb.d ] ; 3 uses
  %i.t = phi ptr [ %i.p, %.lr.ph.i ], [ %i.ag, %bb.d ]
  %i.u = phi ptr [ %i.n, %.lr.ph.i ], [ %i.ae, %bb.d ]
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = shl i64 %i.x, 1                          ; 2 uses
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #29 ; 5 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = sub i64 %i.aa, %i.w                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.s, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.s) #25
  store ptr %i.z, ptr %i.r, align 8, !tbaa !26
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !91  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.i
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !92  ; 2 uses
  %i.ah = icmp ugt ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !111

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.d, %_ZL22lean_usize_add_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.n, %_ZL22lean_usize_add_checkedmm.exit ], [ %i.ae, %bb.d ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 0, i64 %.0.i, i1 false)
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.i
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !91
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !123
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.al = shl nuw nsw i32 %i.d, 16
  %i.am = or disjoint i32 %i.al, -134217727
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i64 %.val, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store i64 %.val, ptr %i.ao, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1_@_ZN4lean16object_compactor14insert_closureEP11lean_object:bb.a
bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #25
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.g = getelementptr i8, ptr %1, i64 18
  %.val = load i16, ptr %i.g, align 2, !tbaa !140 ; 3 uses
  %i.h = zext i16 %.val to i64                    ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = sub nuw nsw i64 %i.h, %i.o
  tail call void @_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.q)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ugt i64 %i.o, %i.h
  br i1 %i.r, label %bb.h, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.s, ptr %i.i, align 8, !tbaa !128
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i
  %.not30 = icmp eq i16 %.val, 0                  ; 2 uses
  br i1 %.not30, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i
  br i1 %spec.select, label %bb.r, label %._crit_edge.thread

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %i.u, %bb.i ]
  %.02731 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.i ]
  %i.u = add nsw i64 %indvars.iv, -1              ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.w)
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u
  store ptr %i.x, ptr %i.z, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.u
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ad = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %spec.select = select i1 %i.ae, i1 true, i1 %.02731 ; 2 uses
  %.not.wide = icmp eq i64 %i.u, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.i, !llvm.loop !142

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, %._crit_edge
  %i.af = tail call i64 @lean_object_byte_size(ptr noundef nonnull %1) ; 3 uses
  %.biased.i.i = add i64 %i.af, 7
  %.0.i.i = and i64 %.biased.i.i, -8              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.i.i
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %i.al = icmp ugt ptr %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.am, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.an = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.bb, %bb.j ]
  %i.ap = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.az, %bb.j ]
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = shl i64 %i.as, 1                        ; 2 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #29 ; 5 uses
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.av, %i.ar                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.an, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.an) #25
  store ptr %i.au, ptr %i.am, align 8, !tbaa !26
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %i.bc = icmp ugt ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !111

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.j, %._crit_edge.thread
  %.lcssa.i.i = phi ptr [ %i.ai, %._crit_edge.thread ], [ %i.az, %bb.j ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i, i8 0, i64 %.0.i.i, i1 false)
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !91
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.i.i
  store ptr %i.be, ptr %i.ag, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa.i.i, ptr nonnull align 4 %1, i64 %i.af, i1 false)
  %i.bf = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.bf, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %i.bh = and i32 %.val.i, -65536
  %i.bi = trunc i64 %i.af to i32
  %i.bj = and i32 %i.bi, 65535
  %i.bk = or disjoint i32 %i.bh, %i.bj
  store i32 %i.bk, ptr %i.bg, align 4
  br i1 %.not30, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 5 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.bm = icmp ult i16 %.val, 4
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.h, 65532
  br label %bb.q

._crit_edge35.loopexit.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge35, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge35.loopexit.unr-lcssa, %.lr.ph34
  %indvars.iv37.epil.init = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38.3, %._crit_edge35.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv37.epil = phi i64 [ %indvars.iv37.epil.init, %.epil.preheader ], [ %indvars.iv.next38.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv37.epil
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv37.epil
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !61
  %indvars.iv.next38.epil = add nuw nsw i64 %indvars.iv37.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge35, label %bb.k, !llvm.loop !143

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.unr-lcssa, %bb.k, %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !144 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge35
  store i64 %i.bw, ptr %i.bz, align 8, !tbaa !60
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !144
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %._crit_edge35
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !109 ; 4 uses
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 2 uses
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #27 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store i64 %i.bw, ptr %i.cp, align 8, !tbaa !60
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !110
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cu) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.co, ptr %i.bx, align 8, !tbaa !109
  store ptr %i.cr, ptr %i.by, align 8, !tbaa !144
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cv, ptr %i.ca, align 8, !tbaa !110
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !26
  %.pre40 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.bv, %bb.l ], [ %.pre40, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cw = ptrtoint ptr %.lcssa.i.i to i64
  %i.cx = sub i64 %i.cw, %.pre-phi
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !90
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = add i64 %i.cx, %i.da
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %1, ptr %2, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph34.new
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34.new ], [ %indvars.iv.next38.3, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.3, %bb.q ]
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv37
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !61
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv37
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !61
  %indvars.iv.next38 = or disjoint i64 %indvars.iv37, 1 ; 2 uses
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next38
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !61
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next38
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !61
  %indvars.iv.next38.1 = or disjoint i64 %indvars.iv37, 2 ; 2 uses
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next38.1
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !61
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next38.1
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !61
  %indvars.iv.next38.2 = or disjoint i64 %indvars.iv37, 3 ; 2 uses
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next38.2
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next38.2
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !61
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge35.loopexit.unr-lcssa, label %bb.q, !llvm.loop !145

bb.r:                                             ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.028 = phi i1 [ false, %._crit_edge ], [ true, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  ret i1 %.028
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor14insert_promiseEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.b) ; 2 uses
  %i.d = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !61
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.m = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.aa, %bb.c ]
  %i.o = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.y, %bb.c ]
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl i64 %i.r, 1                          ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #29 ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.q                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.m, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.f, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !111

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.c, %bb.b
  %.lcssa.i.i = phi ptr [ %i.h, %bb.b ], [ %i.y, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ae = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.ae, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !123
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %i.ag = and i32 %.val.i, -65536
  %i.ah = or disjoint i32 %i.ag, 16
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  store i64 %i.an, ptr %4, align 8, !tbaa !112
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.ao, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.ar = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.f, align 8, !tbaa !91
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %.pre7.i = ptrtoint ptr %i.aw to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.ax, ptr %3, align 8, !tbaa !115
  %i.ay = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !26
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.al, %bb.e ], [ %.pre7.i, %bb.d ]
  %i.az = phi ptr [ %.pre.i, %bb.e ], [ %i.at, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %.pre-phi.i, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.bb, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %1, ptr %2, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean16object_compactor10insert_mpzEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
_ZL22lean_usize_mul_checkedmm.exit:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %.biased.i = add nuw nsw i64 %i.e, 24           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.biased.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %i.m = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.t, %bb.a ] ; 3 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i ], [ %i.aa, %bb.a ]
  %i.o = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.a ]
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl i64 %i.r, 1                          ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #29 ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.q                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.m, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.f, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.biased.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.a, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !111

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.a, %_ZL22lean_usize_mul_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.h, %_ZL22lean_usize_mul_checkedmm.exit ], [ %i.y, %bb.a ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i, i8 0, i64 %.biased.i, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.biased.i
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.af = trunc i64 %i.e to i32
  %i.ag = add i32 %i.af, 24
  %i.ah = and i32 %i.ag, 65528
  %i.ai = or disjoint i32 %i.ah, -100663296
  store i32 %i.ai, ptr %i.ae, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.am, i64 %i.e, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !90
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = add nsw i64 %i.ar, %i.au
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !151
  store i32 %i.c, ptr %i.aj, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ax = ptrtoint ptr %.lcssa.i to i64
  %i.ay = sub i64 %i.ax, %i.aq
  %i.az = add i64 %i.ay, %i.au
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %1, ptr %2, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean16object_compactorclEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.h = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.j = phi ptr [ %i.c, %.lr.ph.i ], [ %i.t, %bb.b ]
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl i64 %i.m, 1                          ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #29 ; 5 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = sub i64 %i.p, %i.l                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.h, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.r, ptr %i.a, align 8, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store ptr %i.s, ptr %i.b, align 8, !tbaa !92
  tail call void @free(ptr noundef %i.h) #25
  store ptr %i.o, ptr %i.g, align 8, !tbaa !26
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %i.w = icmp ugt ptr %i.u, %i.v
  br i1 %i.w, label %bb.b, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !111

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.b, %bb.a
  %.lcssa.i = phi ptr [ %i.c, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  store i64 0, ptr %.lcssa.i, align 1
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.a, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = and i64 %i.ab, 1
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit

bb.c:                                             ; preds = %_ZN4lean16object_compactor5allocEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.af, align 8, !tbaa !61
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !128
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !153
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !102 ; 4 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.f, label %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #27 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !61
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.g, label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !102
  store ptr %i.ay, ptr %i.ae, align 8, !tbaa !128
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.ag, align 8, !tbaa !103
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.bd = phi ptr [ %i.aj, %bb.d ], [ %i.ay, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.be = phi ptr [ %.pre, %bb.d ], [ %i.av, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.bf = icmp eq ptr %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %i.bj = phi ptr [ %i.bd, %.lr.ph ], [ %i.da, %bb.w ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !61 ; 15 uses
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !117
  %.not.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.i, %bb.j
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.j ], [ %i.bi, %bb.i ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !105 ; 3 uses
  %i.bn = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.bn, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = icmp eq ptr %i.bl, %i.bp
  br i1 %i.bq, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.preheader, !llvm.loop !118

bb.k:                                             ; preds = %bb.i
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = load i64, ptr %i.bh, align 8, !tbaa !72 ; 2 uses
  %i.bt = urem i64 %i.br, %i.bs                   ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !105 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61
  %i.ca = icmp eq ptr %i.bl, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.cb = icmp eq ptr %i.bl, %i.ce
  br i1 %i.cb, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !120

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.cc, %bb.m ], [ %i.bx, %bb.l ]
  %i.cc = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !105 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !61 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !120

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit, !llvm.loop !120

_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit: ; preds = %bb.m, %bb.j, %bb.l
  br label %.sink.split, !llvm.loop !154

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.k
  %i.ch = getelementptr i8, ptr %i.bl, i64 4
  %.val = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val, 24
  %i.cj = trunc nuw i32 %i.ci to i8
  switch i8 %i.cj, label %.split [
    i8 -11, label %bb.v
    i8 -10, label %.split30
    i8 -8, label %bb.o
    i8 -7, label %bb.p
    i8 -6, label %bb.q
    i8 -5, label %.split26
    i8 -4, label %.split29
    i8 -12, label %.split28
    i8 -3, label %.split27
    i8 -2, label %bb.r
    i8 -1, label %bb.u
  ]

.split30:                                         ; preds = %.loopexit
  %i.ck = tail call noundef zeroext i1 @_ZN4lean16object_compactor12insert_arrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.ck, label %.critedge, label %bb.w

bb.o:                                             ; preds = %.loopexit
  tail call void @_ZN4lean16object_compactor13insert_sarrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br label %.critedge

bb.p:                                             ; preds = %.loopexit
  tail call void @_ZN4lean16object_compactor13insert_stringEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br label %.critedge

bb.q:                                             ; preds = %.loopexit
  tail call void @_ZN4lean16object_compactor10insert_mpzEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br label %.critedge

.split26:                                         ; preds = %.loopexit
  %i.cl = tail call noundef zeroext i1 @_ZN4lean16object_compactor12insert_thunkEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cl, label %.critedge, label %bb.w

.split29:                                         ; preds = %.loopexit
  %i.cm = tail call noundef zeroext i1 @_ZN4lean16object_compactor11insert_taskEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cm, label %.critedge, label %bb.w

.split28:                                         ; preds = %.loopexit
  %i.cn = tail call noundef zeroext i1 @_ZN4lean16object_compactor14insert_promiseEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cn, label %.critedge, label %bb.w

.split27:                                         ; preds = %.loopexit
  %i.co = tail call noundef zeroext i1 @_ZN4lean16object_compactor10insert_refEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.co, label %.critedge, label %bb.w

bb.r:                                             ; preds = %.loopexit
  %i.cp = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull @.str.2)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cp) #25
  resume { ptr, i32 } %i.cq

bb.u:                                             ; preds = %.loopexit
  %i.cr = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 0, ptr %i.cu, align 8, !tbaa !69
  store i8 0, ptr %i.ct, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.cr, align 8, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

.split:                                           ; preds = %.loopexit
  %i.cv = tail call noundef zeroext i1 @_ZN4lean16object_compactor18insert_constructorEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cv, label %.critedge, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.cw = tail call noundef zeroext i1 @_ZN4lean16object_compactor14insert_closureEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cw, label %.critedge, label %bb.w

.critedge:                                        ; preds = %.split30, %.split29, %.split28, %.split27, %.split26, %.split, %bb.o, %bb.p, %bb.q, %bb.v
  %i.cx = load ptr, ptr %i.ae, align 8, !tbaa !128
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, %.critedge
  %.sink = phi ptr [ %i.cy, %.critedge ], [ %i.bk, %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit ]
  store ptr %.sink, ptr %i.ae, align 8, !tbaa !128
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %.split30, %.split29, %.split28, %.split27, %.split26, %.split, %bb.v
end_hunk_1
begin_hunk_2_@_ZN4lean13region_reader9fix_arrayEP11lean_object:bb.a
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !126
  %i.ap = add i64 %i.ao, %i.am
  %.not27.i = icmp ugt i64 %i.ap, %i.j
  %i.aq = load ptr, ptr %i.aj, align 8
  %i.ar = sub i64 %i.j, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  br i1 %.not27.i, label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i: ; preds = %bb.f, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i, %bb.e
  %i.at = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %i.aw, align 8, !tbaa !69
  store i8 0, ptr %i.av, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.at, align 8, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit: ; preds = %bb.b, %bb.d, %bb.f
  %.2.i = phi ptr [ %i.i, %bb.b ], [ %i.r, %bb.d ], [ %i.as, %bb.f ]
  store ptr %.2.i, ptr %.011, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !181

._crit_edge:                                      ; preds = %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit, %bb.a
  %i.ay = tail call i64 @lean_object_byte_size(ptr noundef %1)
  %.biased.i.i = add i64 %i.ay, 7
  %.0.i.i = and i64 %.biased.i.i, -8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !164
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.0.i.i
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !164
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN4lean15get_loaded_libsEvEN3$_18__invokeEP12dl_phdr_infomPv"(ptr nofree noundef readonly captures(none) %0, i64 %1, ptr noundef %2) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.lean::lib_info", align 8   ; 9 uses
  %.val = load i64, ptr %0, align 8, !tbaa !182
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 %.val, ptr %3, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %.not.i = icmp eq ptr %.val2, null
  %i.c = select i1 %.not.i, ptr @.str.5, ptr %.val2 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !68
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !70

.noexc11.i.i:                                     ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !16
  store i64 %i.e, ptr %i.d, align 8, !tbaa !21
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !21
  store i8 %i.l, ptr %i.k, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %.not.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.s, ptr %i.p, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !68
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.m, align 8, !tbaa !69   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  store ptr %i.v, ptr %i.t, align 8, !tbaa !16
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !21
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.thread.i

_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h
  %i.ab = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.x, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !69
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !15
  br label %"_ZZN4lean15get_loaded_libsEvENK3$_1clEP12dl_phdr_infomPv.exit"

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIN4lean8lib_infoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.i unwind label %bb.j

_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.i
  %.pre1.i = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %i.af = icmp eq ptr %.pre1.i, %i.d
  br i1 %i.af, label %"_ZZN4lean15get_loaded_libsEvENK3$_1clEP12dl_phdr_infomPv.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.i
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.pre1.i, i64 noundef %i.ah) #26
  br label %"_ZZN4lean15get_loaded_libsEvENK3$_1clEP12dl_phdr_infomPv.exit"

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %_ZN4lean8lib_infoD2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i: ; preds = %bb.j
  %i.al = load i64, ptr %i.d, align 8, !tbaa !21
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #26
  br label %_ZN4lean8lib_infoD2Ev.exit14.i

_ZN4lean8lib_infoD2Ev.exit14.i:                   ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ai

"_ZZN4lean15get_loaded_libsEvENK3$_1clEP12dl_phdr_infomPv.exit": ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.thread.i, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4lean8lib_infoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !62
  store i64 %i.r, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !68
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !69   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !16
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !21
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !69
  store ptr %i.w, ptr %i.t, align 8, !tbaa !16
  store i64 0, ptr %i.ae, align 8, !tbaa !69
  store i8 0, ptr %i.w, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !189, !noalias !186
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !62, !alias.scope !186, !noalias !189
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !68, !alias.scope !186, !noalias !189
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !16, !alias.scope !189, !noalias !186 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !69, !alias.scope !189, !noalias !186 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !191
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !16, !alias.scope !186, !noalias !189
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !21, !alias.scope !189, !noalias !186
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !21, !alias.scope !186, !noalias !189
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !69, !alias.scope !189, !noalias !186
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !69, !alias.scope !186, !noalias !189
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !16, !alias.scope !189, !noalias !186
  store i64 0, ptr %i.at, align 8, !tbaa !69, !alias.scope !189, !noalias !186
  store i8 0, ptr %i.al, align 8, !tbaa !21, !alias.scope !189, !noalias !186
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !192

_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN4lean8lib_infoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.ay = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !62, !alias.scope !196, !noalias !193
  store i64 %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !62, !alias.scope !193, !noalias !196
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !68, !alias.scope !193, !noalias !196
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !16, !alias.scope !196, !noalias !193 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !69, !alias.scope !196, !noalias !193 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !198
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !16, !alias.scope !193, !noalias !196
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !21, !alias.scope !196, !noalias !193
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !21, !alias.scope !193, !noalias !196
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !69, !alias.scope !196, !noalias !193
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !69, !alias.scope !193, !noalias !196
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !16, !alias.scope !196, !noalias !193
  store i64 0, ptr %i.bl, align 8, !tbaa !69, !alias.scope !196, !noalias !193
  store i8 0, ptr %i.bd, align 8, !tbaa !21, !alias.scope !196, !noalias !193
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !192

_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN4lean8lib_infoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !23
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #26
  br label %_ZNSt12_Vector_baseIN4lean8lib_infoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4lean8lib_infoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !13
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4lean8lib_infoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_15get_loaded_libsEvE3$_0EEEvT_SD_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.lean::lib_info", align 8   ; 7 uses
  %4 = alloca %"struct.lean::lib_info", align 8   ; 7 uses
  %5 = alloca %"struct.lean::lib_info", align 8   ; 7 uses
  %6 = alloca %"struct.lean::lib_info", align 8   ; 6 uses
  %7 = alloca %"struct.lean::lib_info", align 8   ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4lean8lib_infoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_15get_loaded_libsEvE3$_0EEEvT_SD_SD_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
end_hunk_2
begin_hunk_3_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean8lib_infoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_15get_loaded_libsEvE3$_0EEEvT_T0_":bb.a
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  switch i64 %i.z, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !21
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !69  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !69
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !21
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !16
  br label %_ZN4lean8lib_infoaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 16
  store ptr %i.v, ptr %i.q, align 8, !tbaa !16
  %i.ah = getelementptr inbounds i8, ptr %.sroa.013.019, i64 -24
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !21
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !21
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !21
  store ptr %i.v, ptr %i.q, align 8, !tbaa !16
  %i.ak = getelementptr inbounds i8, ptr %.sroa.013.019, i64 -24
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 16
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !21
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.s, ptr %i.r, align 8, !tbaa !16
  store i64 %i.aj, ptr %i.w, align 8, !tbaa !21
  br label %_ZN4lean8lib_infoaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.w, ptr %i.r, align 8, !tbaa !16
  br label %_ZN4lean8lib_infoaSEOS0_.exit

_ZN4lean8lib_infoaSEOS0_.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.an = phi ptr [ %i.s, %bb.f ], [ %i.w, %bb.g ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ao = getelementptr inbounds i8, ptr %.sroa.013.019, i64 -24
  store i64 0, ptr %i.ao, align 8, !tbaa !69
  store i8 0, ptr %i.an, align 1, !tbaa !21
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.0.020, i64 -40 ; 2 uses
  %.val = load i64, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.val2.i = load i64, ptr %.sroa.0.0, align 8, !tbaa !62 ; 2 uses
  %i.ap = icmp ult i64 %.val, %.val2.i
  br i1 %i.ap, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !209

._crit_edge.loopexit:                             ; preds = %_ZN4lean8lib_infoaSEOS0_.exit
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4lean8lib_infoC2EOS0_.exit
  %i.aq = phi ptr [ %i.f, %_ZN4lean8lib_infoC2EOS0_.exit ], [ %.pre25, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.013.0.lcssa = phi ptr [ %0, %_ZN4lean8lib_infoC2EOS0_.exit ], [ %.sroa.0.020, %._crit_edge.loopexit ] ; 7 uses
  %.val.lcssa = phi i64 [ %i.a, %_ZN4lean8lib_infoC2EOS0_.exit ], [ %.val, %._crit_edge.loopexit ]
  store i64 %.val.lcssa, ptr %.sroa.013.0.lcssa, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa, i64 24 ; 4 uses
  %i.at = icmp eq ptr %i.aq, %i.as
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !16  ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.d                 ; 2 uses
  %.pre27 = load i64, ptr %i.o, align 8, !tbaa !69 ; 5 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %._crit_edge
  br i1 %i.av, label %bb.h, label %.thread.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2: ; preds = %._crit_edge
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.aw = icmp ult i64 %.pre27, 16
  call void @llvm.assume(i1 %i.aw)
  %.not21.i.i5 = icmp eq ptr %1, %.sroa.013.0.lcssa
  br i1 %.not21.i.i5, label %_ZN4lean8lib_infoaSEOS0_.exit10, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  switch i64 %.pre27, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !21
  store i8 %i.ax, ptr %i.aq, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.au, i64 %.pre27, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6: ; preds = %bb.k, %bb.j, %bb.i
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !69  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa, i64 16
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !69
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !21
  %.pre.i.i7 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4lean8lib_infoaSEOS0_.exit10

.thread.i.i9:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa, i64 16
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !16
  store i64 %.pre27, ptr %i.bc, align 8, !tbaa !69
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.bd, ptr %i.as, align 8, !tbaa !21
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2
  %i.be = load i64, ptr %i.as, align 8, !tbaa !21
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa, i64 16
  store i64 %.pre27, ptr %i.bf, align 8, !tbaa !69
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !21
  %.not.i.i4 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !16
  store i64 %i.be, ptr %i.d, align 8, !tbaa !21
  br label %_ZN4lean8lib_infoaSEOS0_.exit10

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3, %.thread.i.i9
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4lean8lib_infoaSEOS0_.exit10

_ZN4lean8lib_infoaSEOS0_.exit10:                  ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6, %bb.l, %bb.m
  %i.bh = phi ptr [ %i.aq, %bb.l ], [ %i.d, %bb.m ], [ %i.au, %bb.h ], [ %.pre.i.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6 ]
  store i64 0, ptr %i.o, align 8, !tbaa !69
  store i8 0, ptr %i.bh, align 1, !tbaa !21
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.d
  br i1 %i.bj, label %_ZN4lean8lib_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4lean8lib_infoaSEOS0_.exit10
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZN4lean8lib_infoD2Ev.exit

_ZN4lean8lib_infoD2Ev.exit:                       ; preds = %_ZN4lean8lib_infoaSEOS0_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

declare void @_ZN4lean9throwableC2EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK4lean9throwable4whatEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4lean8lib_infoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !62
  store i64 %i.r, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !68
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !69   ; 8 uses
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = icmp slt i64 %i.x, 0
  br i1 %i.z, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = add nuw i64 %i.x, 1                     ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !70

.noexc6.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !16
  store i64 %i.x, ptr %i.u, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc27, %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ad = phi ptr [ %i.ac, %.noexc27 ], [ %i.u, %_ZNKSt6vectorIN4lean8lib_infoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  switch i64 %i.x, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !21
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.x, ptr %i.af, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !213, !noalias !210
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !62, !alias.scope !210, !noalias !213
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !68, !alias.scope !210, !noalias !213
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !16, !alias.scope !213, !noalias !210 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !69, !alias.scope !213, !noalias !210 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !215
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !16, !alias.scope !210, !noalias !213
  %i.as = load i64, ptr %i.am, align 8, !tbaa !21, !alias.scope !213, !noalias !210
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !21, !alias.scope !210, !noalias !213
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !69, !alias.scope !213, !noalias !210
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.at = phi i64 [ %i.ap, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !69, !alias.scope !210, !noalias !213
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !16, !alias.scope !213, !noalias !210
  store i64 0, ptr %i.au, align 8, !tbaa !69, !alias.scope !213, !noalias !210
  store i8 0, ptr %i.am, align 8, !tbaa !21, !alias.scope !213, !noalias !210
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !192

_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ax, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.ay, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.az = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !62, !alias.scope !219, !noalias !216
  store i64 %i.az, ptr %.012.i.i.i30, align 8, !tbaa !62, !alias.scope !216, !noalias !219
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !68, !alias.scope !216, !noalias !219
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !16, !alias.scope !219, !noalias !216 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !69, !alias.scope !219, !noalias !216 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false), !alias.scope !221
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !16, !alias.scope !216, !noalias !219
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !21, !alias.scope !219, !noalias !216
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !21, !alias.scope !216, !noalias !219
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !69, !alias.scope !219, !noalias !216
  br label %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.i
  %i.bl = phi i64 [ %i.bh, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !69, !alias.scope !216, !noalias !219
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !16, !alias.scope !219, !noalias !216
  store i64 0, ptr %i.bm, align 8, !tbaa !69, !alias.scope !219, !noalias !216
  store i8 0, ptr %i.be, align 8, !tbaa !21, !alias.scope !219, !noalias !216
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !192

_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ay, %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bp, %_ZSt19__relocate_object_aIN4lean8lib_infoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN4lean8lib_infoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #26
  br label %_ZNSt12_Vector_baseIN4lean8lib_infoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4lean8lib_infoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.j
  store ptr %i.p, ptr %0, align 8, !tbaa !13
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !23
  ret void

bb.k:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = tail call ptr @__cxa_begin_catch(ptr %i.bx) #25 ; 0 uses
end_hunk_3
