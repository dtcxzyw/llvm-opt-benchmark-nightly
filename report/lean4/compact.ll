Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/compact?download=true
inline.NumInlined: 1489
inline.NumDeleted: 694
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4lean16object_compactor9to_offsetEP11lean_object:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %.thread36, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.val = load i32, ptr %1, align 4, !tbaa !115
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
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !96
  %i.an = icmp ult ptr %1, %.val.i.i.i            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = xor i64 %i.al, -1
  %i.aq = add nsw i64 %.07.i.i, %i.ap
  %.sroa.02.1.i.i = select i1 %i.an, ptr %.sroa.02.06.i.i, ptr %i.ao ; 5 uses
  %.1.i.i = select i1 %i.an, i64 %i.al, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit", !llvm.loop !156

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.as = icmp eq ptr %.sroa.02.1.i.i, %i.ac
  br i1 %i.as, label %.thread36, label %bb.l

bb.l:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_16object_compactor9to_offsetEP11lean_objectE3$_0ET_SE_SE_RKT0_T1_.exit"
  %i.at = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %.not13 = icmp ult ptr %1, %i.ax
  br i1 %.not13, label %bb.m, label %.thread36

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
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
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !118 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread36
  store ptr %1, ptr %i.bj, align 8, !tbaa !67
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !118
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !118
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %.thread36
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !100 ; 4 uses
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
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #27 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store ptr %1, ptr %i.ca, align 8, !tbaa !67
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
  %i.cd = load ptr, ptr %i.bk, align 8, !tbaa !101
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cf) #26
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bz, ptr %i.bh, align 8, !tbaa !100
  store ptr %i.cc, ptr %i.bi, align 8, !tbaa !118
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cg, ptr %i.bk, align 8, !tbaa !101
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.n, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ch = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
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
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !93   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !65
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
  store ptr %i.t, ptr %i.c, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.u, ptr %i.d, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.j) #25
  store ptr %i.q, ptr %i.i, align 8, !tbaa !65
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !93   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.y = icmp ugt ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !3

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.d, %bb.c
  %.lcssa.i = phi ptr [ %i.e, %bb.c ], [ %i.v, %bb.d ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 0, i64 %.0.i, i1 false)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa.i, ptr align 4 %1, i64 %.0, i1 false)
  %i.ab = getelementptr i8, ptr %1, i64 4
  %.val.a = load i32, ptr %i.ab, align 4
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %3 = and i32 %.val.a, -65536
  %i.ad = trunc i64 %.0 to i32
  %i.ae = and i32 %i.ad, 65535
  %i.af = or disjoint i32 %3, %i.ae
  store i32 %i.af, ptr %i.ac, align 4
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
  %.val = load i64, ptr %i.a, align 8, !tbaa !66  ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val18 = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val18, 16
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 256) %i.e, i64 %.val) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZL22lean_usize_mul_checkedmm.exit, !prof !74

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_mul_checkedmm.exit:               ; preds = %bb.a
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.h, i64 24) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZL22lean_usize_add_checkedmm.exit, !prof !74

bb.c:                                             ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_add_checkedmm.exit:               ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %.biased.i = add i64 %i.k, 7
  %.0.i = and i64 %.biased.i, -8                  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !93   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !94   ; 2 uses
  %i.q = icmp ugt ptr %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_add_checkedmm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !65
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
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.s) #25
  store ptr %i.z, ptr %i.r, align 8, !tbaa !65
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !93  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.i
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !94  ; 2 uses
  %i.ah = icmp ugt ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !3

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.d, %_ZL22lean_usize_add_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.n, %_ZL22lean_usize_add_checkedmm.exit ], [ %i.ae, %bb.d ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 0, i64 %.0.i, i1 false)
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.i
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !93
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.al = shl nuw nsw i32 %i.d, 16
  %i.am = or disjoint i32 %i.al, -134217727
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i64 %.val, ptr %i.an, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store i64 %.val, ptr %i.ao, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = mul i64 %.val, %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  store i64 %i.aw, ptr %4, align 8, !tbaa !108
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.ax, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.ba = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4lean16object_compactor5allocEm.exit
  store ptr %.lcssa.i, ptr %i.l, align 8, !tbaa !93
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !108
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %.pre7.i = ptrtoint ptr %i.bf to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.f:                                             ; preds = %_ZN4lean16object_compactor5allocEm.exit
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bg, ptr %3, align 8, !tbaa !111
  %i.bh = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i19 = load ptr, ptr %i.as, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.e, %bb.f
  %.pre-phi.i = phi i64 [ %i.au, %bb.f ], [ %.pre7.i, %bb.e ]
  %i.bi = phi ptr [ %.pre.i19, %bb.f ], [ %i.bc, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %.pre-phi.i, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !92
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = add i64 %i.bk, %i.bn
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %1, ptr %2, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean16object_compactor13insert_stringEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !66  ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 24
  %.val17 = load i64, ptr %i.b, align 8, !tbaa !66
  %i.c = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val, i64 32) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZL22lean_usize_add_checkedmm.exit, !prof !74

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_add_checkedmm.exit:               ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.c, 0         ; 2 uses
  %.biased.i = add i64 %i.e, 7
  %.0.i = and i64 %.biased.i, -8                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_add_checkedmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i ], [ %i.aa, %bb.c ]
  %i.o = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.c ]
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl i64 %i.r, 1                          ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #29 ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.q                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.m, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.f, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !65
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !3

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.c, %_ZL22lean_usize_add_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.h, %_ZL22lean_usize_add_checkedmm.exit ], [ %i.y, %bb.c ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 0, i64 %.0.i, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.i
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !93
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  store i32 -117440511, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i64 %.val, ptr %i.af, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store i64 %.val, ptr %i.ag, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24
  store i64 %.val17, ptr %i.ah, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.aj, i64 %.val, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.am = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  store i64 %i.ao, ptr %4, align 8, !tbaa !108
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.ap, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.as = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4lean16object_compactor5allocEm.exit
  store ptr %.lcssa.i, ptr %i.f, align 8, !tbaa !93
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !65 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !108
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %.pre7.i = ptrtoint ptr %i.ax to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.e:                                             ; preds = %_ZN4lean16object_compactor5allocEm.exit
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.ay, ptr %3, align 8, !tbaa !111
  %i.az = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i18 = load ptr, ptr %i.ak, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.am, %bb.e ], [ %.pre7.i, %bb.d ]
  %i.ba = phi ptr [ %.pre.i18, %bb.e ], [ %i.au, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %.pre-phi.i, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !92
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bc, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %1, ptr %2, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor18insert_constructorEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val28 = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val28, 16                     ; 2 uses
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.n)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !118
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit
  %i.q = and i32 %i.c, 255
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %.02630 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.e ]
  %i.s = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.v = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.u) ; 2 uses
  %i.w = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.x = icmp eq ptr %i.v, %i.w
  %spec.select = select i1 %i.x, i1 true, i1 %.02630 ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.s
  store ptr %i.v, ptr %i.z, align 8, !tbaa !67
  %.not.wide = icmp eq i64 %i.s, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.e, !llvm.loop !159

._crit_edge:                                      ; preds = %bb.e
  br i1 %spec.select, label %bb.j, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, %._crit_edge
  %i.aa = tail call i64 @lean_object_byte_size(ptr noundef nonnull %1) ; 3 uses
  %.biased.i.i = add i64 %i.aa, 7
  %.0.i.i = and i64 %.biased.i.i, -8              ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.i.i
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ag = icmp ugt ptr %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.ah, align 8, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.ai = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ap, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.aw, %bb.f ]
  %i.ak = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.au, %bb.f ]
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = shl i64 %i.an, 1                        ; 2 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #29 ; 5 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ai, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !93
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.ai) #25
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !65
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0.i.i
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ax = icmp ugt ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !3

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.f, %._crit_edge.thread
  %.lcssa.i.i = phi ptr [ %i.ad, %._crit_edge.thread ], [ %i.au, %bb.f ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i, i8 0, i64 %.0.i.i, i1 false)
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !93
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.0.i.i
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa.i.i, ptr nonnull align 4 %1, i64 %i.aa, i1 false)
  %.val.i.a = load i32, ptr %i.b, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !115
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %5 = and i32 %.val.i.a, -65536
  %i.bb = trunc i64 %i.aa to i32
  %i.bc = and i32 %i.bb, 65535
  %i.bd = or disjoint i32 %5, %i.bc
  store i32 %i.bd, ptr %i.ba, align 4
  %.val32 = load i32, ptr %i.b, align 4
  %i.be = and i32 %.val32, 16711680
  %.not36 = icmp eq i32 %i.be, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  br label %bb.i

._crit_edge35:                                    ; preds = %bb.i, %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.bg = tail call i64 @lean_object_byte_size(ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !65
  %i.bj = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %4, align 8, !tbaa !108
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !109
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !88
  %i.bp = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge35
  store ptr %.lcssa.i.i, ptr %i.ab, align 8, !tbaa !93
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !65 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !108
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %.pre7.i = ptrtoint ptr %i.bu to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.h:                                             ; preds = %._crit_edge35
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bv, ptr %3, align 8, !tbaa !111
  %i.bw = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.g, %bb.h
  %.pre-phi.i = phi i64 [ %i.bj, %bb.h ], [ %.pre7.i, %bb.g ]
  %i.bx = phi ptr [ %.pre.i, %bb.h ], [ %i.br, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %.pre-phi.i, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.bz, %i.cc
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %1, ptr %2, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph34, %bb.i
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38, %bb.i ] ; 3 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv37
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !67
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv37
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !67
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %.val = load i32, ptr %i.b, align 4
  %i.cl = lshr i32 %.val, 16
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next38, %i.cn
  br i1 %i.co, label %bb.i, label %._crit_edge35, !llvm.loop !160

bb.j:                                             ; preds = %._crit_edge, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  %.027 = phi i1 [ false, %._crit_edge ], [ true, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit ]
  ret i1 %.027
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor12insert_arrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !66 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = icmp ugt i64 %.val.i, %i.i
  br i1 %i.j, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit.thread, label %bb.b

_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit.thread: ; preds = %bb.a
  %i.k = sub nuw i64 %.val.i, %i.i
  tail call void @_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.k)
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %.val.i, %i.i
  br i1 %i.l, label %bb.c, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.val.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.c
  store ptr %i.m, ptr %i.c, align 8, !tbaa !118
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i
  %.not35 = icmp eq i64 %.val.i, 0
  br i1 %.not35, label %_ZL22lean_usize_mul_checkedmm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit.thread, %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03137 = phi i64 [ %.val.i, %.lr.ph ], [ %i.o, %bb.d ]
  %.03236 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.o = add i64 %.03137, -1                      ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.q) ; 2 uses
  %i.s = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.t = icmp eq ptr %i.r, %i.s
  %spec.select = select i1 %i.t, i1 true, i1 %.03236 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.o
  store ptr %i.r, ptr %i.v, align 8, !tbaa !67
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.d
  br i1 %spec.select, label %bb.m, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.w = icmp ugt i64 %.val.i, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZL22lean_usize_mul_checkedmm.exit, !prof !164

bb.f:                                             ; preds = %bb.e
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_mul_checkedmm.exit:               ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, %bb.e
  %.not35475056 = phi i1 [ false, %bb.e ], [ true, %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit ]
  %i.x = shl nuw i64 %.val.i, 3
  %i.y = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.x, i64 24) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.g, label %_ZL22lean_usize_add_checkedmm.exit, !prof !74

bb.g:                                             ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  tail call void @lean_internal_panic_overflow() #28
  unreachable

_ZL22lean_usize_add_checkedmm.exit:               ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.aa = extractvalue { i64, i1 } %i.y, 0        ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ag = icmp ugt ptr %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_add_checkedmm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ai = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.aj = phi ptr [ %i.af, %.lr.ph.i ], [ %i.aw, %bb.h ]
  %i.ak = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.au, %bb.h ]
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = shl i64 %i.an, 1                        ; 2 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #29 ; 5 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ai, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !93
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.ai) #25
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN4lean16object_compactor12insert_arrayEP11lean_object:bb.a
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !93
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !115
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  store i32 -167772159, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i64 %.val.i, ptr %i.bb, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store i64 %.val.i, ptr %i.bc, align 8, !tbaa !66
  br i1 %.not35475056, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZN4lean16object_compactor5allocEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24 ; 5 uses
  %i.be = add i64 %.val.i, -1
  %xtraiter = and i64 %.val.i, 3                  ; 3 uses
  %i.bf = icmp ult i64 %i.be, 3
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph39.new

.lr.ph39.new:                                     ; preds = %.lr.ph39
  %unroll_iter = and i64 %.val.i, -4
  br label %bb.l

._crit_edge40.loopexit.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge40, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge40.loopexit.unr-lcssa, %.lr.ph39
  %.038.epil.init = phi i64 [ 0, %.lr.ph39 ], [ %i.de, %._crit_edge40.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.038.epil = phi i64 [ %.038.epil.init, %.epil.preheader ], [ %i.bk, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.038.epil
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.038.epil
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !67
  %i.bk = add nuw nsw i64 %.038.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge40, label %bb.i, !llvm.loop !162

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit.unr-lcssa, %bb.i, %_ZN4lean16object_compactor5allocEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bn = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !108
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.bq, align 8, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88
  %i.bt = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge40
  store ptr %.lcssa.i, ptr %i.ab, align 8, !tbaa !93
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !108
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %.pre7.i = ptrtoint ptr %i.by to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.k:                                             ; preds = %._crit_edge40
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bz, ptr %3, align 8, !tbaa !111
  %i.ca = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i34 = load ptr, ptr %i.bl, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.j, %bb.k
  %.pre-phi.i = phi i64 [ %i.bn, %bb.k ], [ %.pre7.i, %bb.j ]
  %i.cb = phi ptr [ %.pre.i34, %bb.k ], [ %i.bv, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %.pre-phi.i, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !92
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %i.cd, %i.cg
  %i.ci = inttoptr i64 %i.ch to ptr
  store ptr %1, ptr %2, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph39.new
  %.038 = phi i64 [ 0, %.lr.ph39.new ], [ %i.de, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph39.new ], [ %niter.next.3, %bb.l ]
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.038
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.038
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !67
  %i.cp = or disjoint i64 %.038, 1                ; 2 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cp
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !67
  %i.cu = or disjoint i64 %.038, 2                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cu
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !67
  %i.cz = or disjoint i64 %.038, 3                ; 2 uses
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cz
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !67
  %i.de = add nuw nsw i64 %.038, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge40.loopexit.unr-lcssa, label %bb.l, !llvm.loop !163

bb.m:                                             ; preds = %._crit_edge, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  %.033 = phi i1 [ false, %._crit_edge ], [ true, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit ]
  ret i1 %.033
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor12insert_thunkEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZL14lean_thunk_getP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lean_thunk_get_core(ptr noundef nonnull %1)
  br label %_ZL14lean_thunk_getP11lean_object.exit

_ZL14lean_thunk_getP11lean_object.exit:           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.d = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %.0.i) ; 2 uses
  %i.e = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.f = icmp ne ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZL14lean_thunk_getP11lean_object.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !93   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %i.l = icmp ugt ptr %i.j, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.n = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.o = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.ab, %bb.d ]
  %i.p = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.z, %bb.d ]
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl i64 %i.s, 1                          ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #29 ; 5 uses
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.r                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.n, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store ptr %i.x, ptr %i.g, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.y, ptr %i.h, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.n) #25
  store ptr %i.u, ptr %i.m, align 8, !tbaa !65
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !93   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !94  ; 2 uses
  %i.ac = icmp ugt ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !3

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.d, %bb.c
  %.lcssa.i.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %bb.d ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i.i, i8 0, i64 24, i1 false)
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr i8, ptr %1, i64 4
  %.val.i.a = load i32, ptr %i.af, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %5 = and i32 %.val.i.a, -65536
  %i.ah = or disjoint i32 %5, 24
  store i32 %i.ah, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store atomic ptr %i.d, ptr %i.ai seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.al = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  store i64 %i.an, ptr %4, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 24, ptr %i.ao, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88
  %i.ar = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.g, align 8, !tbaa !93
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %.pre7.i = ptrtoint ptr %i.aw to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.f:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.ax, ptr %3, align 8, !tbaa !111
  %i.ay = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.e, %bb.f
  %.pre-phi.i = phi i64 [ %i.al, %bb.f ], [ %.pre7.i, %bb.e ]
  %i.az = phi ptr [ %.pre.i, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %.pre-phi.i, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !92
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.bb, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %1, ptr %2, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZL14lean_thunk_getP11lean_object.exit, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor10insert_refEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.b) ; 2 uses
  %i.d = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
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
  store ptr %i.w, ptr %i.f, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !65
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !3

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.c, %bb.b
  %.lcssa.i.i = phi ptr [ %i.h, %bb.b ], [ %i.y, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ae = getelementptr i8, ptr %1, i64 4
  %.val.i.a = load i32, ptr %i.ae, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %5 = and i32 %.val.i.a, -65536
  %i.ag = or disjoint i32 %5, 16
  store i32 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ak = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  store i64 %i.am, ptr %4, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.f, align 8, !tbaa !93
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %.pre7.i = ptrtoint ptr %i.av to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.aw, ptr %3, align 8, !tbaa !111
  %i.ax = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.ak, %bb.e ], [ %.pre7.i, %bb.d ]
  %i.ay = phi ptr [ %.pre.i, %bb.e ], [ %i.as, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %.pre-phi.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.ba, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %1, ptr %2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor11insert_taskEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.lean::max_sharing_key", align 8 ; 7 uses
  %i.a = tail call ptr @lean_task_get(ptr noundef %1)
  %i.b = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.a) ; 2 uses
  %i.c = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.d = icmp ne ptr %i.b, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %i.j = icmp ugt ptr %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.l = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 3 uses
  %i.m = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.z, %bb.c ]
  %i.n = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.x, %bb.c ]
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = shl i64 %i.q, 1                          ; 2 uses
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #29 ; 5 uses
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.t, %i.p                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.l, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store ptr %i.v, ptr %i.e, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.w, ptr %i.f, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.l) #25
  store ptr %i.s, ptr %i.k, align 8, !tbaa !65
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %i.aa = icmp ugt ptr %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !3

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.c, %bb.b
  %.lcssa.i.i = phi ptr [ %i.g, %bb.b ], [ %i.x, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i.i, i8 0, i64 24, i1 false)
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false)
  %i.ad = getelementptr i8, ptr %1, i64 4
  %.val.i.a = load i32, ptr %i.ad, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %5 = and i32 %.val.i.a, -65536
  %i.af = or disjoint i32 %5, 24
  store i32 %i.af, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store atomic ptr %i.b, ptr %i.ag seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65
  %i.aj = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  store i64 %i.al, ptr %4, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 24, ptr %i.am, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !88
  %i.ap = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.e, align 8, !tbaa !93
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  %.pre7.i = ptrtoint ptr %i.au to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.av, ptr %3, align 8, !tbaa !111
  %i.aw = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.aj, %bb.e ], [ %.pre7.i, %bb.d ]
  %i.ax = phi ptr [ %.pre.i, %bb.e ], [ %i.ar, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %.pre-phi.i, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add i64 %i.az, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  store ptr %1, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit
  ret i1 %i.d
}

declare ptr @lean_task_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean16object_compactor14insert_closureEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.51", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i8, ptr %i.a, align 8, !tbaa !91, !range !168, !noundef !169
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #25
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.g = getelementptr i8, ptr %1, i64 18
  %.val = load i16, ptr %i.g, align 2, !tbaa !123 ; 3 uses
  %i.h = zext i16 %.val to i64                    ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !100  ; 2 uses
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
  store ptr %i.s, ptr %i.i, align 8, !tbaa !118
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  %i.x = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.w)
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u
  store ptr %i.x, ptr %i.z, align 8, !tbaa !67
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.u
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %spec.select = select i1 %i.ae, i1 true, i1 %.02731 ; 2 uses
  %.not.wide = icmp eq i64 %i.u, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.i, !llvm.loop !165

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE6resizeEm.exit, %._crit_edge
  %i.af = tail call i64 @lean_object_byte_size(ptr noundef nonnull %1) ; 3 uses
  %.biased.i.i = add i64 %i.af, 7
  %.0.i.i = and i64 %.biased.i.i, -8              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.i.i
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !94 ; 2 uses
  %i.al = icmp ugt ptr %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.am, align 8, !tbaa !65
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
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.an) #25
  store ptr %i.au, ptr %i.am, align 8, !tbaa !65
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !94 ; 2 uses
  %i.bc = icmp ugt ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !3

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.j, %._crit_edge.thread
  %.lcssa.i.i = phi ptr [ %i.ai, %._crit_edge.thread ], [ %i.az, %bb.j ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i, i8 0, i64 %.0.i.i, i1 false)
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !93
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.i.i
  store ptr %i.be, ptr %i.ag, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa.i.i, ptr nonnull align 4 %1, i64 %i.af, i1 false)
  %i.bf = getelementptr i8, ptr %1, i64 4
  %.val.i.a = load i32, ptr %i.bf, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !115
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %3 = and i32 %.val.i.a, -65536
  %i.bh = trunc i64 %i.af to i32
  %i.bi = and i32 %i.bh, 65535
  %i.bj = or disjoint i32 %3, %i.bi
  store i32 %i.bj, ptr %i.bg, align 4
  br i1 %.not30, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 5 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.bl = icmp ult i16 %.val, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph34.new

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
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv37.epil
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !67
  %indvars.iv.next38.epil = add nuw nsw i64 %indvars.iv37.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge35, label %bb.k, !llvm.loop !166

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.unr-lcssa, %bb.k, %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !170 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge35
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !170
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %._crit_edge35
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !105 ; 4 uses
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 5 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #27 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i64 %i.bv, ptr %i.co, align 8, !tbaa !66
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %i.cc, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !106
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ct) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cn, ptr %i.bw, align 8, !tbaa !105
  store ptr %i.cq, ptr %i.bx, align 8, !tbaa !170
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cu, ptr %i.bz, align 8, !tbaa !106
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !65
  %.pre40 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.bu, %bb.l ], [ %.pre40, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cv = ptrtoint ptr %.lcssa.i.i to i64
  %i.cw = sub i64 %i.cv, %.pre-phi
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = add i64 %i.cw, %i.cz
  %i.db = inttoptr i64 %i.da to ptr
  store ptr %1, ptr %2, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.db, ptr %i.dc, align 8
  %i.dd = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph34.new
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34.new ], [ %indvars.iv.next38.3, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.3, %bb.q ]
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv37
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv37
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !67
  %indvars.iv.next38 = or disjoint i64 %indvars.iv37, 1 ; 2 uses
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next38
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !67
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next38
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !67
  %indvars.iv.next38.1 = or disjoint i64 %indvars.iv37, 2 ; 2 uses
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next38.1
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !67
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next38.1
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !67
  %indvars.iv.next38.2 = or disjoint i64 %indvars.iv37, 3 ; 2 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next38.2
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !67
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next38.2
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !67
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge35.loopexit.unr-lcssa, label %bb.q, !llvm.loop !167

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.c = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.b) ; 2 uses
  %i.d = load ptr, ptr @_ZN4lean13g_null_offsetE, align 8, !tbaa !67
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
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
  store ptr %i.w, ptr %i.f, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !65
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit, !llvm.loop !3

_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit: ; preds = %bb.c, %bb.b
  %.lcssa.i.i = phi ptr [ %i.h, %bb.b ], [ %i.y, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ae = getelementptr i8, ptr %1, i64 4
  %.val.i.a = load i32, ptr %i.ae, align 4
  store i32 0, ptr %.lcssa.i.i, align 4, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  %5 = and i32 %.val.i.a, -65536
  %i.ag = or disjoint i32 %5, 16
  store i32 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ak = ptrtoint ptr %.lcssa.i.i to i64         ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  store i64 %i.am, ptr %4, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = call ptr @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  store ptr %.lcssa.i.i, ptr %i.f, align 8, !tbaa !93
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %.pre7.i = ptrtoint ptr %i.av to i64
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

bb.e:                                             ; preds = %_ZN4lean16object_compactor11copy_objectEP11lean_objectm.exit
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.aw, ptr %3, align 8, !tbaa !111
  %i.ax = call { ptr, i8 } @_ZNSt10_HashtableIN4lean15max_sharing_keyES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_14max_sharing_eqENS0_16max_sharing_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !65
  br label %_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit

_ZN4lean16object_compactor16save_max_sharingEP11lean_objectS2_m.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.ak, %bb.e ], [ %.pre7.i, %bb.d ]
  %i.ay = phi ptr [ %.pre.i, %bb.e ], [ %i.as, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %.pre-phi.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.ba, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %1, ptr %2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = call { ptr, i8 } @_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S1_EEEES2_INS7_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %.biased.i = add nuw nsw i64 %i.e, 24           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.biased.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %_ZL22lean_usize_mul_checkedmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !65
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
  store ptr %i.w, ptr %i.f, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.m) #25
  store ptr %i.t, ptr %i.l, align 8, !tbaa !65
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.biased.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.a, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !3

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.a, %_ZL22lean_usize_mul_checkedmm.exit
  %.lcssa.i = phi ptr [ %i.h, %_ZL22lean_usize_mul_checkedmm.exit ], [ %i.y, %bb.a ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i, i8 0, i64 %.biased.i, i1 false)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.biased.i
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i32 0, ptr %.lcssa.i, align 4, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.af = trunc i64 %i.e to i32
  %i.ag = add i32 %i.af, 24
  %i.ah = and i32 %i.ag, 65528
  %i.ai = or disjoint i32 %i.ah, -100663296
  store i32 %i.ai, ptr %i.ae, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.am, i64 %i.e, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = add nsw i64 %i.ar, %i.au
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !129
  store i32 %i.c, ptr %i.aj, align 8, !tbaa !171
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
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i, label %_ZN4lean16object_compactor5allocEm.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !65
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
  store ptr %i.r, ptr %i.a, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store ptr %i.s, ptr %i.b, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.h) #25
  store ptr %i.o, ptr %i.g, align 8, !tbaa !65
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.w = icmp ugt ptr %i.u, %i.v
  br i1 %i.w, label %bb.b, label %_ZN4lean16object_compactor5allocEm.exit, !llvm.loop !3

_ZN4lean16object_compactor5allocEm.exit:          ; preds = %bb.b, %bb.a
  %.lcssa.i = phi ptr [ %i.c, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  store i64 0, ptr %.lcssa.i, align 1
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.a, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = and i64 %i.ab, 1
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit

bb.c:                                             ; preds = %_ZN4lean16object_compactor5allocEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.af, align 8, !tbaa !67
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !118
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !173
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 4 uses
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
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #27 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !67
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
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !100
  store ptr %i.ay, ptr %i.ae, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.ag, align 8, !tbaa !101
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
  %i.bj = phi ptr [ %i.bd, %.lr.ph ], [ %i.cy, %bb.w ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !67 ; 15 uses
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !112
  %.not.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.i, %bb.j
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.j ], [ %i.bi, %bb.i ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !103 ; 3 uses
  %i.bn = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.bn, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67
  %i.bq = icmp eq ptr %i.bl, %i.bp
  br i1 %i.bq, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.preheader, !llvm.loop !4

bb.k:                                             ; preds = %bb.i
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = load i64, ptr %i.bh, align 8, !tbaa !76 ; 2 uses
  %i.bt = urem i64 %i.br, %i.bs                   ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !103 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !67
  %i.ca = icmp eq ptr %i.bl, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.cb = icmp eq ptr %i.bl, %i.ce
  br i1 %i.cb, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.cc, %bb.m ], [ %i.bx, %bb.l ]
  %i.cc = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !103 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit, !llvm.loop !5

_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit: ; preds = %bb.m, %bb.j, %bb.l
  br label %.sink.split, !llvm.loop !172

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.k
  %i.ch = getelementptr i8, ptr %i.bl, i64 4
  %.val = load i32, ptr %i.ch, align 4
  %2 = lshr i32 %.val, 24
  %3 = trunc nuw i32 %2 to i8
  switch i8 %3, label %.split [
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
  %i.ci = tail call noundef zeroext i1 @_ZN4lean16object_compactor12insert_arrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.ci, label %.critedge, label %bb.w

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
  %i.cj = tail call noundef zeroext i1 @_ZN4lean16object_compactor12insert_thunkEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cj, label %.critedge, label %bb.w

.split29:                                         ; preds = %.loopexit
  %i.ck = tail call noundef zeroext i1 @_ZN4lean16object_compactor11insert_taskEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.ck, label %.critedge, label %bb.w

.split28:                                         ; preds = %.loopexit
  %i.cl = tail call noundef zeroext i1 @_ZN4lean16object_compactor14insert_promiseEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cl, label %.critedge, label %bb.w

.split27:                                         ; preds = %.loopexit
  %i.cm = tail call noundef zeroext i1 @_ZN4lean16object_compactor10insert_refEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cm, label %.critedge, label %bb.w

bb.r:                                             ; preds = %.loopexit
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull @.str.2)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cn) #25
  resume { ptr, i32 } %i.co

bb.u:                                             ; preds = %.loopexit
  %i.cp = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !72
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %i.cs, align 8, !tbaa !73
  store i8 0, ptr %i.cr, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.cp, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

.split:                                           ; preds = %.loopexit
  %i.ct = tail call noundef zeroext i1 @_ZN4lean16object_compactor18insert_constructorEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.ct, label %.critedge, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.cu = tail call noundef zeroext i1 @_ZN4lean16object_compactor14insert_closureEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.bl)
  br i1 %i.cu, label %.critedge, label %bb.w

.critedge:                                        ; preds = %.split30, %.split29, %.split28, %.split27, %.split26, %.split, %bb.o, %bb.p, %bb.q, %bb.v
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !118
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit, %.critedge
  %.sink = phi ptr [ %i.cw, %.critedge ], [ %i.bk, %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit ]
  store ptr %.sink, ptr %i.ae, align 8, !tbaa !118
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %.split30, %.split29, %.split28, %.split27, %.split26, %.split, %bb.v
  %i.cx = load ptr, ptr %i.ad, align 8, !tbaa !173
  %i.cy = load ptr, ptr %i.ae, align 8, !tbaa !173 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.w, %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !100 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !118
  %.not.i.i = icmp eq ptr %i.dd, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !118
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i, %._crit_edge, %_ZN4lean16object_compactor5allocEm.exit
  %i.de = ptrtoint ptr %.lcssa.i to i64
  %i.df = ptrtoint ptr %i.aa to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  %i.dj = tail call noundef ptr @_ZN4lean16object_compactor9to_offsetEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1)
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4lean13region_readerC2EmPvS1_St6vectorINS_11region_viewESaIS3_EES2_ISt4pairImlESaIS7_EES2_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 40)) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef align 8 captures(none) %4, ptr nofree noundef align 8 captures(none) %5, ptr nofree noundef align 8 captures(none) %6) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !136
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %1
  store ptr %i.e, ptr %i.d, align 8, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !73
  store i8 0, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load <2 x ptr>, ptr %4, align 8, !tbaa !89
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  store ptr %i.m, ptr %i.k, align 8, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load <2 x ptr>, ptr %5, align 8, !tbaa !141
  store <2 x ptr> %i.o, ptr %i.n, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174
  store ptr %i.r, ptr %i.p, align 8, !tbaa !174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load <2 x ptr>, ptr %6, align 8, !tbaa !31
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  store ptr %i.w, ptr %i.u, align 8, !tbaa !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean13region_reader29sort_and_validate_dep_regionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.03.i.i22.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %1 = alloca %"struct.lean::region_view", align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %2 = alloca %"struct.lean::region_view", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_T1_"(ptr %i.b, ptr %i.d, i64 noundef %i.l)
  %i.m = icmp sgt i64 %i.h, 384
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 24
  br label %bb.c

end_hunk_1
begin_hunk_2_@_ZN4lean13region_reader4readEv:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread"
  %.sroa.0116.0135 = phi ptr [ %i.n, %bb.e ], [ %i.aq, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread" ] ; 2 uses
  %i.t = load i64, ptr %.sroa.0116.0135, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !141  ; 3 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.ae = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i.i, i64 %i.ae ; 2 uses
  %.val.i.i.i = load i64, ptr %i.af, align 8, !tbaa !185
  %i.ag = icmp ugt i64 %.val.i.i.i, %i.w          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = xor i64 %i.ae, -1
  %i.aj = add nsw i64 %.07.i.i, %i.ai
  %.sroa.02.1.i.i = select i1 %i.ag, ptr %.sroa.02.06.i.i, ptr %i.ah ; 3 uses
  %.1.i.i = select i1 %i.ag, i64 %i.ae, i64 %i.aj ; 2 uses
  %i.ak = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ak, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit", !llvm.loop !181

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.al = icmp eq ptr %.sroa.02.1.i.i, %i.x
  br i1 %i.al, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit"
  %i.am = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !184 ; 2 uses
  %.not55 = icmp eq i64 %i.an, 0
  br i1 %.not55, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nsw i64 %i.an, %i.w
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !67
  br label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread"

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread": ; preds = %bb.f, %bb.g, %bb.h, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0116.0135, i64 8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.p
  br i1 %i.ar, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.c, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEmZN4lean13region_reader4readEvE3$_0ET_SC_SC_RKT0_T1_.exit.thread", %bb.b, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !137
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %.thread

bb.i:                                             ; preds = %.critedge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !89 ; 2 uses
  %.not126136 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not126136, label %.critedge128, label %.lr.ph139

bb.j:                                             ; preds = %.lr.ph139
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0106.0137, i64 24 ; 2 uses
  %.not126 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not126, label %.critedge128, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.i, %bb.j
  %.sroa.0106.0137 = phi ptr [ %i.bb, %bb.j ], [ %i.ay, %bb.i ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.0106.0137, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0106.0137, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !117
  %.not56 = icmp eq ptr %i.bc, %i.be
  br i1 %.not56, label %bb.j, label %.thread

.critedge128:                                     ; preds = %bb.j, %bb.i
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !140
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph139, %.critedge
  tail call void @_ZN4lean13region_reader29sort_and_validate_dep_regionsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 5 uses
  %i.bk = and i64 %i.bj, 1
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.k, label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit

bb.k:                                             ; preds = %.thread
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !137 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %.not26.i = icmp ult ptr %i.bi, %i.bl
  br i1 %.not26.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %0, align 8, !tbaa !136
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp ugt i64 %i.bo, %i.bj
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.br = sub i64 %i.bj, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  br label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !89 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %bb.n
  %i.cb = udiv exact i64 %i.bz, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %i.bu, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.cc = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !117
  %i.cg = icmp ult ptr %i.bi, %i.cf               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ci = xor i64 %i.cc, -1
  %i.cj = add nsw i64 %.016.i.i.i, %i.ci
  %.sroa.011.1.i.i.i = select i1 %i.cg, ptr %.sroa.011.015.i.i.i, ptr %i.ch ; 5 uses
  %.1.i.i.i = select i1 %i.cg, i64 %i.cc, i64 %i.cj ; 2 uses
  %i.ck = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ck, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i, !llvm.loop !6

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.cl = icmp eq ptr %.sroa.011.1.i.i.i, %i.bu
  br i1 %i.cl, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i
  %i.cm = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -24
  %i.cn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !117
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !116
  %i.cs = add i64 %i.cr, %i.cp
  %.not27.i = icmp ugt i64 %i.cs, %i.bj
  %i.ct = load ptr, ptr %i.cm, align 8
  %i.cu = sub i64 %i.bj, %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  br i1 %.not27.i, label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i: ; preds = %bb.o, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i, %bb.n
  %i.cw = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 0, ptr %i.cz, align 8, !tbaa !73
  store i8 0, ptr %i.cy, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.cw, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit: ; preds = %.thread, %bb.m, %bb.o
  %.2.i = phi ptr [ %i.bi, %.thread ], [ %i.bs, %bb.m ], [ %i.cv, %bb.o ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr %i.da, ptr %i.a, align 8, !tbaa !139
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !140
  %i.dc = icmp ult ptr %i.da, %i.db
  br i1 %i.dc, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph140, %bb.ax
  %i.df = phi ptr [ %i.da, %.lr.ph140 ], [ %i.lk, %bb.ax ] ; 17 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val = load i32, ptr %i.dg, align 4            ; 3 uses
  %i.dh = icmp ult i32 %.val, -201326592
  br i1 %i.dh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4lean13region_reader15fix_constructorEP11lean_object(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.df)
  br label %bb.ax

bb.r:                                             ; preds = %bb.p
  %1 = lshr i32 %.val, 24
  %2 = trunc nuw i32 %1 to i8
  switch i8 %2, label %bb.aw [
    i8 -11, label %bb.s
    i8 -10, label %bb.t
    i8 -8, label %bb.u
    i8 -7, label %bb.v
    i8 -6, label %bb.w
    i8 -5, label %bb.x
    i8 -3, label %bb.ad
    i8 -4, label %bb.aj
    i8 -12, label %bb.ap
    i8 -2, label %bb.av
  ]

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4lean13region_reader11fix_closureEP11lean_object(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.df)
  br label %bb.ax

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4lean13region_reader9fix_arrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.df)
  br label %bb.ax

bb.u:                                             ; preds = %bb.r
  %i.di = getelementptr i8, ptr %i.df, i64 16
  %.val60 = load i64, ptr %i.di, align 8, !tbaa !66
  %i.dj = lshr i32 %.val, 16
  %i.dk = and i32 %i.dj, 255
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = mul i64 %.val60, %i.dl
  %.biased.i = add i64 %i.dm, 31
  %.0.i = and i64 %.biased.i, -8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0.i
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !139
  br label %bb.ax

bb.v:                                             ; preds = %bb.r
  %i.do = getelementptr i8, ptr %i.df, i64 16
  %.val61 = load i64, ptr %i.do, align 8, !tbaa !66
  %.biased.i62 = add i64 %.val61, 39
  %.0.i63 = and i64 %.biased.i62, -8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0.i63
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !139
  br label %bb.ax

bb.w:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !129
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dv = load ptr, ptr %i.au, align 8, !tbaa !137
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx
  store ptr %i.dy, ptr %i.dr, align 8, !tbaa !129
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !128
  %i.eb = tail call i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !139
  br label %bb.ax

bb.x:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.eh = load atomic ptr, ptr %i.eg seq_cst, align 8 ; 4 uses
  %i.ei = ptrtoint ptr %i.eh to i64               ; 5 uses
  %i.ej = and i64 %i.ei, 1
  %.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i, label %bb.y, label %_ZN4lean13region_reader9fix_thunkEP11lean_object.exit

bb.y:                                             ; preds = %bb.x
  %i.ek = load ptr, ptr %i.au, align 8, !tbaa !137 ; 2 uses
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %.not26.i.i = icmp ult ptr %i.eh, %i.ek
  br i1 %.not26.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = load i64, ptr %0, align 8, !tbaa !136
  %i.en = add i64 %i.em, %i.el
  %i.eo = icmp ugt i64 %i.en, %i.ei
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.eq = sub i64 %i.ei, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  br label %_ZN4lean13region_reader9fix_thunkEP11lean_object.exit

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.es = load ptr, ptr %i.dd, align 8, !tbaa !89 ; 3 uses
  %i.et = load ptr, ptr %i.de, align 8, !tbaa !89
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i: ; preds = %bb.ab
  %i.ey = udiv exact i64 %i.ew, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.ey, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.sroa.011.015.i.i.i.i = phi ptr [ %i.es, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.sroa.011.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.ez = lshr i64 %.016.i.i.i.i, 1               ; 3 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i.i.i, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !117
  %i.fd = icmp ult ptr %i.eh, %i.fc               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.ff = xor i64 %i.ez, -1
  %i.fg = add nsw i64 %.016.i.i.i.i, %i.ff
  %.sroa.011.1.i.i.i.i = select i1 %i.fd, ptr %.sroa.011.015.i.i.i.i, ptr %i.fe ; 5 uses
  %.1.i.i.i.i = select i1 %i.fd, i64 %i.ez, i64 %i.fg ; 2 uses
  %i.fh = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.fh, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i, !llvm.loop !6

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.fi = icmp eq ptr %.sroa.011.1.i.i.i.i, %i.es
  br i1 %i.fi, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i
  %i.fj = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i.i, i64 -24
  %i.fk = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i.i, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !117
  %i.fm = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i.i, i64 -16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !116
  %i.fp = add i64 %i.fo, %i.fm
  %.not27.i.i = icmp ugt i64 %i.fp, %i.ei
  %i.fq = load ptr, ptr %i.fj, align 8
  %i.fr = sub i64 %i.ei, %i.fm
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  br i1 %.not27.i.i, label %_ZN4lean13region_reader9fix_thunkEP11lean_object.exit, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i.i

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i.i: ; preds = %bb.ac, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i, %bb.ab
  %i.ft = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !72
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 0, ptr %i.fw, align 8, !tbaa !73
  store i8 0, ptr %i.fv, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.ft, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

_ZN4lean13region_reader9fix_thunkEP11lean_object.exit: ; preds = %bb.x, %bb.aa, %bb.ac
  %.2.i.i = phi ptr [ %i.eh, %bb.x ], [ %i.er, %bb.aa ], [ %i.fs, %bb.ac ]
  store atomic ptr %.2.i.i, ptr %i.eg seq_cst, align 8
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !139
  br label %bb.ax

bb.ad:                                            ; preds = %bb.r
  %i.fz = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !121 ; 4 uses
  %i.gb = ptrtoint ptr %i.ga to i64               ; 5 uses
  %i.gc = and i64 %i.gb, 1
  %.not.i.i64 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i64, label %bb.ae, label %_ZN4lean13region_reader7fix_refEP11lean_object.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gd = load ptr, ptr %i.au, align 8, !tbaa !137 ; 2 uses
  %i.ge = ptrtoint ptr %i.gd to i64               ; 2 uses
  %.not26.i.i66 = icmp ult ptr %i.ga, %i.gd
  br i1 %.not26.i.i66, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = load i64, ptr %0, align 8, !tbaa !136
  %i.gg = add i64 %i.gf, %i.ge
  %i.gh = icmp ugt i64 %i.gg, %i.gb
  br i1 %i.gh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gi = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.gj = sub i64 %i.gb, %i.ge
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj
  br label %_ZN4lean13region_reader7fix_refEP11lean_object.exit

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.gl = load ptr, ptr %i.dd, align 8, !tbaa !89 ; 3 uses
  %i.gm = load ptr, ptr %i.de, align 8, !tbaa !89
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = icmp sgt i64 %i.gp, 0
  br i1 %i.gq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i68, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i.i67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i68: ; preds = %bb.ah
  %i.gr = udiv exact i64 %i.gp, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i68
  %.016.i.i.i.i70 = phi i64 [ %i.gr, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i68 ], [ %.1.i.i.i.i75, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69 ] ; 2 uses
  %.sroa.011.015.i.i.i.i71 = phi ptr [ %i.gl, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i68 ], [ %.sroa.011.1.i.i.i.i74, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69 ] ; 2 uses
  %i.gs = lshr i64 %.016.i.i.i.i70, 1             ; 3 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i.i.i71, i64 %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !117
  %i.gw = icmp ult ptr %i.ga, %i.gv               ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gy = xor i64 %i.gs, -1
  %i.gz = add nsw i64 %.016.i.i.i.i70, %i.gy
  %.sroa.011.1.i.i.i.i74 = select i1 %i.gw, ptr %.sroa.011.015.i.i.i.i71, ptr %i.gx ; 5 uses
  %.1.i.i.i.i75 = select i1 %i.gw, i64 %i.gs, i64 %i.gz ; 2 uses
  %i.ha = icmp sgt i64 %.1.i.i.i.i75, 0
  br i1 %i.ha, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i76, !llvm.loop !6

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i76: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i69
  %i.hb = icmp eq ptr %.sroa.011.1.i.i.i.i74, %i.gl
  br i1 %i.hb, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i.i67, label %bb.ai

bb.ai:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i.i76
  %i.hc = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i.i74, i64 -24
  %i.hd = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i.i74, i64 -8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !117
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i.i74, i64 -16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !116
  %i.hi = add i64 %i.hh, %i.hf
  %.not27.i.i77 = icmp ugt i64 %i.hi, %i.gb
end_hunk_2
