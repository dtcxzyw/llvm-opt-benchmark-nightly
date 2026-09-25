Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_join_order?download=true
inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb20CardinalityEstimator31DetermineMatchingEquivalentSetsENS_12optional_ptrINS_10FilterInfoELb1EEE:bb.a
.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i, %bb.j, %bb.e, %bb.g
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %.loopexit
  %i.cd = load ptr, ptr %3, align 8, !tbaa !401   ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64 ; 2 uses
  %i.cf = load i64, ptr %i.l, align 8, !tbaa !378
  %.not.not.i.i15 = icmp eq i64 %i.cf, 0
  br i1 %.not.not.i.i15, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.043.063, i64 16
  %i.ch = load i64, ptr %i.ce, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.06.0.in.i.i24 = phi ptr [ %i.cg, %bb.q ], [ %.sroa.06.0.i.i25, %bb.s ]
  %.sroa.06.0.i.i25 = load ptr, ptr %.sroa.06.0.in.i.i24, align 8, !tbaa !95 ; 4 uses
  %.not.i.i26 = icmp eq ptr %.sroa.06.0.i.i25, null
  br i1 %.not.i.i26, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i25, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !379
  %i.cm = icmp eq i64 %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i25, i64 16
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.cj, %i.co
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %i.cq, label %_ZNKSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit27, label %bb.r, !llvm.loop !34

bb.t:                                             ; preds = %bb.p
  %i.cr = load i64, ptr %i.ce, align 8, !tbaa !379 ; 3 uses
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = mul i64 %i.ct, -2960836687051489901     ; 2 uses
  %i.cv = lshr i64 %i.cu, 32
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, -2960836687051489901     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !402 ; 3 uses
  %i.da = lshr i64 %i.cz, 32
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, -2960836687051489901     ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, -2960836687051489901     ; 2 uses
  %i.dg = xor i64 %i.df, %i.cx
  %i.dh = lshr i64 %i.dg, 32
  %i.di = xor i64 %i.cx, %i.dh
  %i.dj = xor i64 %i.di, %i.df                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.043.063, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !380 ; 2 uses
  %i.dm = urem i64 %i.dj, %i.dl                   ; 2 uses
  %i.dn = load ptr, ptr %.sroa.043.063, align 8, !tbaa !381
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !95 ; 2 uses
  %.phi.trans.insert.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.pre.i.i.i.i18 = load i64, ptr %.phi.trans.insert.i.i.i.i17, align 8, !tbaa !348
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.dr = phi i64 [ %.pre.i.i.i.i18, %bb.u ], [ %i.ed, %bb.w ]
  %i.ds = phi ptr [ %i.dq, %bb.u ], [ %i.eb, %bb.w ] ; 3 uses
  %i.dt = icmp eq i64 %i.dj, %i.dr
  br i1 %i.dt, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i23, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i23: ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !379
  %i.dw = icmp eq i64 %i.cr, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = icmp eq i64 %i.cz, %i.dy
  %i.ea = select i1 %i.dw, i1 %i.dz, i1 false
  br i1 %i.ea, label %_ZNKSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit27, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i23, %bb.v
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !95 ; 3 uses
  %.not18.i.i.i.i20 = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i20, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.w

bb.w:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !348 ; 2 uses
  %i.ee = urem i64 %i.ed, %i.dl
  %.not19.i.i.i.i21 = icmp eq i64 %i.ee, %i.dm
  br i1 %.not19.i.i.i.i21, label %bb.v, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, !llvm.loop !35

_ZNKSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit27: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i23, %bb.s
  %.not.i28 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit27
  store i64 %.064, ptr %i.h, align 8, !tbaa !88
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ef, ptr %i.d, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.y:                                             ; preds = %_ZNKSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit27
  %i.eg = ptrtoint ptr %i.f to i64
  %i.eh = ptrtoint ptr %i.i to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 5 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i29

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.y
  %i.ek = ashr exact i64 %i.ei, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i30, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 1152921504606846975)
  %i.eo = select i1 %i.em, i64 1152921504606846975, i64 %i.en ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #30
          to label %.noexc36 unwind label %.loopexit56 ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i29
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ei ; 2 uses
  store i64 %.064, ptr %i.er, align 8, !tbaa !88
  %i.es = icmp sgt i64 %i.ei, 0
  br i1 %i.es, label %bb.z, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i32

bb.z:                                             ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %i.i, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i32

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i32: ; preds = %bb.z, %.noexc36
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %.not.i17.i.i33 = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i33, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i32
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34: ; preds = %bb.aa, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i32
  store ptr %i.et, ptr %i.d, align 8, !tbaa !87
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo ; 3 uses
  store ptr %i.eu, ptr %i.e, align 8, !tbaa !108
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ab:                                            ; preds = %.loopexit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.ac

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.w, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19, %bb.r, %bb.t, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34, %bb.x, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k
  %i.ew = phi ptr [ %i.f, %bb.r ], [ %i.f, %bb.k ], [ %i.f, %bb.t ], [ %i.eu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34 ], [ %i.f, %bb.x ], [ %i.cb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.f, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19 ], [ %i.f, %bb.w ]
  %i.ex = phi ptr [ %i.g, %bb.r ], [ %i.g, %bb.k ], [ %i.g, %bb.t ], [ %i.eu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34 ], [ %i.f, %bb.x ], [ %i.cb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.g, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19 ], [ %i.g, %bb.w ]
  %i.ey = phi ptr [ %i.h, %bb.r ], [ %i.bm, %bb.k ], [ %i.h, %bb.t ], [ %i.et, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34 ], [ %i.ef, %bb.x ], [ %i.ca, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.h, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19 ], [ %i.h, %bb.w ]
  %i.ez = phi ptr [ %i.i, %bb.r ], [ %i.i, %bb.k ], [ %i.i, %bb.t ], [ %i.eq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i34 ], [ %i.i, %bb.x ], [ %i.bx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i19 ], [ %i.i, %bb.w ] ; 2 uses
  %i.fa = add i64 %.064, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.043.063, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.fb, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.ac:                                            ; preds = %.loopexit56, %.loopexit.split-lp, %bb.ab, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.o ], [ %i.ev, %bb.ab ], [ %lpad.loopexit, %.loopexit56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i38 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CardinalityEstimator20AddToEquivalenceSetsENS_12optional_ptrINS_10FilterInfoELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::optional_ptr.29", align 8 ; 15 uses
  %10 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 5 uses
  %11 = alloca %"class.std::unordered_set.409", align 8 ; 19 uses
  store ptr %1, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !88   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.m = load ptr, ptr %0, align 8, !tbaa !403    ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 7                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.j, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.j, i64 noundef %i.q) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.074.084 = load ptr, ptr %i.s, align 8, !tbaa !95 ; 2 uses
  %.not85 = icmp eq ptr %.sroa.074.084, null
  br i1 %.not85, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !88   ; 3 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.w = load ptr, ptr %0, align 8, !tbaa !403    ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 7                  ; 2 uses
  %.not.i.i18 = icmp ult i64 %i.u, %i.aa
  br i1 %.not.i.i18, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.u, i64 noundef %i.aa) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19: ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %i.u ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !364 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !364 ; 2 uses
  %.not7787 = icmp eq ptr %i.ad, %i.af
  br i1 %.not7787, label %._crit_edge90, label %.lr.ph89

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21
  %.sroa.074.086 = phi ptr [ %.sroa.074.0, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21 ], [ %.sroa.074.084, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.074.086, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !404
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88 ; 3 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.ak = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 7                 ; 2 uses
  %.not.i.i20 = icmp ult i64 %i.ai, %i.ao
  br i1 %.not.i.i20, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.ai, i64 noundef %i.ao) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21: ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.ap, ptr %8, align 8, !tbaa !386
  %i.aq = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.sroa.074.0 = load ptr, ptr %.sroa.074.086, align 8, !tbaa !95 ; 2 uses
  %.not.a = icmp eq ptr %.sroa.074.0, null
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

._crit_edge90:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !88 ; 3 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.au = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 7                 ; 2 uses
  %.not.i.i22 = icmp ult i64 %i.as, %i.ay
  br i1 %.not.i.i22, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23, label %bb.f

bb.f:                                             ; preds = %._crit_edge90
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.as, i64 noundef %i.ay) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23: ; preds = %._crit_edge90
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.as ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !396 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %i.bb, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23 ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #27
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !381
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !380
  %i.bg = shl i64 %i.bf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.bg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !88 ; 3 uses
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.bk = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 7                 ; 2 uses
  %.not.i.i24 = icmp ult i64 %i.bi, %i.bo
  br i1 %.not.i.i24, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25, label %bb.g

bb.g:                                             ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.bi, i64 noundef %i.bo) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25: ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !327 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !328 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bt, %i.br
  br i1 %.not.i.i.i26, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.br, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25 ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bu) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !328
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !88 ; 3 uses
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.cb = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 7                 ; 2 uses
  %.not.i.i27 = icmp ult i64 %i.bz, %i.cf
  br i1 %.not.i.i27, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.bz, i64 noundef %i.cf) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28: ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.cb, i64 %i.bz ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !140 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 96 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28
  %i.cm = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !143
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !140
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !137 ; 5 uses
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.k, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i29)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #30 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %i.db = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.db, ptr %i.da, align 8, !tbaa !143
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %i.co, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !143, !alias.scope !895, !noalias !894
  store i64 %i.dc, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !143, !alias.scope !894, !noalias !895
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.de, %.lr.ph.i.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.co) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.cz, ptr %i.ch, align 8, !tbaa !137
  store ptr %i.df, ptr %i.ci, align 8, !tbaa !140
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dg, ptr %i.ck, align 8, !tbaa !141
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

.lr.ph89:                                         ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.070.088 = phi ptr [ %i.ek, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %i.ad, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19 ] ; 4 uses
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !88 ; 3 uses
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !397
  %i.dk = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 7                 ; 2 uses
  %.not.i.i30 = icmp ult i64 %i.di, %i.do
  br i1 %.not.i.i30, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31, label %bb.m

bb.m:                                             ; preds = %.lr.ph89
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.di, i64 noundef %i.do) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31: ; preds = %.lr.ph89
  %i.dp = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %i.di ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 112 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !328 ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 120
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !361
  %.not.i32 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i32, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !82
  %i.dv = load ptr, ptr %.sroa.070.088, align 8, !tbaa !90 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.070.088, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !85 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !88
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.dz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dz, ptr %i.dr, align 8, !tbaa !90
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.ea, ptr %i.du, align 8, !tbaa !86
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.n
  %i.eb = phi ptr [ %i.dz, %.noexc.i.i ], [ %i.du, %bb.n ] ; 2 uses
  switch i64 %i.dx, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.ec = load i8, ptr %i.dv, align 1, !tbaa !86
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.dv, i64 %i.dx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !85
  %i.ef = load ptr, ptr %i.dr, align 8, !tbaa !90
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !328
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store ptr %i.ei, ptr %i.dq, align 8, !tbaa !328
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.070.088)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.070.088, i64 32 ; 2 uses
  %.not77 = icmp eq ptr %i.ek, %i.af
  br i1 %.not77, label %._crit_edge90, label %.lr.ph89

bb.r:                                             ; preds = %bb.a
  %i.el = icmp eq i64 %i.g, 8
  br i1 %i.el, label %_ZNSt6vectorImSaImEE2atEm.exit, label %12

_ZNSt6vectorImSaImEE2atEm.exit:                   ; preds = %bb.r
  %i.em = load i64, ptr %i.d, align 8, !tbaa !88  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !397
  %i.ep = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 7                 ; 2 uses
  %.not.i.i34 = icmp ult i64 %i.em, %i.et
  br i1 %.not.i.i34, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.em, i64 noundef %i.et) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35: ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  %i.eu = getelementptr inbounds nuw [128 x i8], ptr %i.ep, i64 %i.em ; 7 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.ev = load ptr, ptr %9, align 8, !tbaa !401
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %i.eu, ptr %7, align 8, !tbaa !386
  %i.ex = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.ey = load ptr, ptr %9, align 8, !tbaa !401
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.eu, ptr %6, align 8, !tbaa !386
  %i.fa = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 80 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 88 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !140 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 96 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !141
  %.not.i36 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i36, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35
  %i.fg = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.fg, ptr %i.fd, align 8, !tbaa !143
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fh, ptr %i.fc, align 8, !tbaa !140
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !137 ; 5 uses
  %i.fj = ptrtoint ptr %i.fd to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %bb.v, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37: ; preds = %bb.u
  %i.fn = ashr exact i64 %i.fl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i38 = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i38, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i39 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i39)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #30 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl
  %i.fv = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !143
  %.not10.i.i.i.i.i.i40 = icmp eq ptr %i.fi, %i.fd
  br i1 %.not10.i.i.i.i.i.i40, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45, label %.lr.ph.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i41:                             ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37, %.lr.ph.i.i.i.i.i.i41
  %.012.i.i.i.i.i.i42 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i41 ], [ %i.ft, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37 ] ; 2 uses
  %.0911.i.i.i.i.i.i43 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i41 ], [ %i.fi, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.fw = load i64, ptr %.0911.i.i.i.i.i.i43, align 8, !tbaa !143, !alias.scope !897, !noalias !896
  store i64 %i.fw, ptr %.012.i.i.i.i.i.i42, align 8, !tbaa !143, !alias.scope !896, !noalias !897
  %i.fx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i43, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i44 = icmp eq ptr %i.fx, %i.fd
  br i1 %.not.i.i.i.i.i.i44, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45, label %.lr.ph.i.i.i.i.i.i41, !llvm.loop !7

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45: ; preds = %.lr.ph.i.i.i.i.i.i41, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37
  %.0.lcssa.i.i.i.i.i.i46 = phi ptr [ %i.ft, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37 ], [ %i.fy, %.lr.ph.i.i.i.i.i.i41 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i46, i64 8
  %.not.i23.i.i47 = icmp eq ptr %i.fi, null
  br i1 %.not.i23.i.i47, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48: ; preds = %bb.w, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45
  store ptr %i.ft, ptr %i.fb, align 8, !tbaa !137
  store ptr %i.fz, ptr %i.fc, align 8, !tbaa !140
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.ga, ptr %i.fe, align 8, !tbaa !141
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

12:                                               ; preds = %bb.r
  %13 = icmp eq ptr %i.d, %i.c
  br i1 %13, label %bb.x, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.x:                                             ; preds = %12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %i.gb, ptr %11, align 8, !tbaa !381
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 1, ptr %i.gc, align 8, !tbaa !380
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ge, align 8, !tbaa !128
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i8 0, i64 16, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.gg = load ptr, ptr %9, align 8, !tbaa !401
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %11, ptr %5, align 8, !tbaa !386
  %i.gi = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %bb.ak      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.gj = load ptr, ptr %9, align 8, !tbaa !401
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %11, ptr %4, align 8, !tbaa !386
  %i.gl = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ab unwind label %bb.ak     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !397 ; 14 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !398
  %.not.i52 = icmp eq ptr %i.gn, %i.gp
  br i1 %.not.i52, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.gn, align 8, !tbaa !381
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gr = load i64, ptr %i.gc, align 8, !tbaa !380
  store i64 %i.gr, ptr %i.gq, align 8, !tbaa !380
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store ptr null, ptr %i.gs, align 8, !tbaa !95
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !378
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !378
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !383
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store ptr null, ptr %i.gx, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.gn, ptr %3, align 8, !tbaa !386
  invoke void @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.gn, ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i64 0, ptr %i.gy, align 8, !tbaa !393
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store i64 -1, ptr %i.gz, align 8, !tbaa !394
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  store i8 0, ptr %i.ha, align 8, !tbaa !395
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, i8 0, i64 48, i1 false)
  %i.hc = load ptr, ptr %i.gm, align 8, !tbaa !397
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  store ptr %i.hd, ptr %i.gm, align 8, !tbaa !397
  br label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE17_M_realloc_insertIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.gn, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit unwind label %bb.ak

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit: ; preds = %.noexc, %bb.ad
  %i.he = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19RelationsSetToStatsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.ae unwind label %bb.ak     ; 3 uses

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 88 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !140 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 96 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !141
  %.not.i54 = icmp eq ptr %i.hh, %i.hj
  br i1 %.not.i54, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.hk, ptr %i.hh, align 8, !tbaa !143
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !140
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69

bb.ag:                                            ; preds = %bb.ae
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !137 ; 5 uses
  %i.hn = ptrtoint ptr %i.hh to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 3 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775800
  br i1 %i.hq, label %bb.ah, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc67 unwind label %bb.ak

.noexc67:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55: ; preds = %bb.ag
  %i.hr = ashr exact i64 %i.hp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i56 = call i64 @llvm.umax.i64(i64 %i.hr, i64 1)
  %i.hs = add nsw i64 %.sroa.speculated.i.i.i56, %i.hr ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.hr
  %i.hu = call i64 @llvm.umin.i64(i64 %i.hs, i64 1152921504606846975)
  %i.hv = select i1 %i.ht, i64 1152921504606846975, i64 %i.hu ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.hv, 0
  call void @llvm.assume(i1 %.not.i.i.i57)
  %i.hw = shl nuw nsw i64 %i.hv, 3
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #30
          to label %.noexc68 unwind label %bb.ak  ; 5 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hp
  %i.hz = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.hz, ptr %i.hy, align 8, !tbaa !143
  %.not10.i.i.i.i.i.i58 = icmp eq ptr %i.hm, %i.hh
  br i1 %.not10.i.i.i.i.i.i58, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.noexc68, %.lr.ph.i.i.i.i.i.i59
  %.012.i.i.i.i.i.i60 = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i59 ], [ %i.hx, %.noexc68 ] ; 2 uses
  %.0911.i.i.i.i.i.i61 = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i59 ], [ %i.hm, %.noexc68 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ia = load i64, ptr %.0911.i.i.i.i.i.i61, align 8, !tbaa !143, !alias.scope !899, !noalias !898
  store i64 %i.ia, ptr %.012.i.i.i.i.i.i60, align 8, !tbaa !143, !alias.scope !898, !noalias !899
  %i.ib = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i60, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i62 = icmp eq ptr %i.ib, %i.hh
  br i1 %.not.i.i.i.i.i.i62, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63, label %.lr.ph.i.i.i.i.i.i59, !llvm.loop !7

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63: ; preds = %.lr.ph.i.i.i.i.i.i59, %.noexc68
  %.0.lcssa.i.i.i.i.i.i64 = phi ptr [ %i.hx, %.noexc68 ], [ %i.ic, %.lr.ph.i.i.i.i.i.i59 ]
  %i.id = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i64, i64 8
  %.not.i23.i.i65 = icmp eq ptr %i.hm, null
  br i1 %.not.i23.i.i65, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63
  call void @_ZdlPv(ptr noundef nonnull %i.hm) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66: ; preds = %bb.ai, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63
  store ptr %i.hx, ptr %i.hf, align 8, !tbaa !137
  store ptr %i.id, ptr %i.hg, align 8, !tbaa !140
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hv
  store ptr %i.ie, ptr %i.hi, align 8, !tbaa !141
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66, %bb.af
  %i.if = load ptr, ptr %i.gd, align 8, !tbaa !396 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i ], [ %i.if, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69 ] ; 2 uses
  %i.ig = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69
  %i.ih = load ptr, ptr %11, align 8, !tbaa !381
  %i.ii = load i64, ptr %i.gc, align 8, !tbaa !380
  %i.ij = shl i64 %i.ii, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ih, i8 0, i64 %i.ij, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  %i.ik = load ptr, ptr %11, align 8, !tbaa !381  ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gb
  br i1 %i.il, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ik) #27
  br label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.ak:                                            ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55, %bb.ah, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %i.im

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48, %bb.t, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.i, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.e = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !88
  store i64 %i.i, ptr %i.b, align 8, !tbaa !88
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19RelationsSetToStatsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !365    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !365  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_19RelationsSetToStatsELb1ESaIS1_EE3getILb1EEERS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_19RelationsSetToStatsELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -128
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CardinalityEstimator23InitEquivalentRelationsERKNS_6vectorINS_10unique_ptrINS_10FilterInfoESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336  ; 2 uses
  %.not27 = icmp eq ptr %i.a, %i.c
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.p, %bb.a
  call void @_ZN6duckdb20CardinalityEstimator23RemoveEmptyTotalDomainsEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.021.028 = phi ptr [ %i.a, %.lr.ph ], [ %i.as, %bb.p ] ; 6 uses
  %i.g = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.021.028) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %_ZN6duckdb20CardinalityEstimator18SingleColumnFilterERNS_10FilterInfoE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !343
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !118
  %i.q = icmp ugt i64 %i.p, 1
end_hunk_0
