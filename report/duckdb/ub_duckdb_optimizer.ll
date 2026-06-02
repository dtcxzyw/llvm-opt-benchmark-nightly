inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS_16LogicalAggregateE:bb.a
  %i.ar = icmp eq i64 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.ao, %i.at
  %i.av = select i1 %i.ar, i1 %i.au, i1 false
  br i1 %i.av, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %bb.l, !llvm.loop !626

bb.n:                                             ; preds = %bb.j
  %i.aw = lshr i64 %i.am, 32
  %i.ax = xor i64 %i.aw, %i.am
  %i.ay = mul i64 %i.ax, -2960836687051489901     ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -2960836687051489901     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !250 ; 3 uses
  %i.be = lshr i64 %i.bd, 32
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -2960836687051489901     ; 2 uses
  %i.bh = lshr i64 %i.bg, 32
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, -2960836687051489901     ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = lshr i64 %i.bk, 32
  %i.bm = xor i64 %i.bb, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = load i64, ptr %i.r, align 8, !tbaa !575 ; 2 uses
  %i.bp = urem i64 %i.bn, %i.bo                   ; 2 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !573
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %.loopexit288, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !168 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !254
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bu = phi i64 [ %.pre.i.i.i.i, %bb.o ], [ %i.cg, %bb.q ]
  %i.bv = phi ptr [ %i.bt, %bb.o ], [ %i.ce, %bb.q ] ; 4 uses
  %i.bw = icmp eq i64 %i.bn, %i.bu
  br i1 %i.bw, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !239
  %i.bz = icmp eq i64 %i.am, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = icmp eq i64 %i.bd, %i.cb
  %i.cd = select i1 %i.bz, i1 %i.cc, i1 false
  br i1 %i.cd, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.p
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not18.i.i.i.i, label %.loopexit288, label %bb.q

bb.q:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !254 ; 2 uses
  %i.ch = urem i64 %i.cg, %i.bo
  %.not19.i.i.i.i = icmp eq i64 %i.ch, %i.bp
  br i1 %.not19.i.i.i.i, label %bb.p, label %.loopexit288, !llvm.loop !618

.loopexit288:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.q, %bb.l, %bb.n
  %i.ci = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_RmEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE7emplaceIJRS5_RmEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb1EEEbEDpOT_.exit unwind label %.loopexit291 ; 0 uses

bb.r:                                             ; preds = %bb.i, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit291:                                     ; preds = %.loopexit288, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp292:                            ; preds = %bb.u
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.m
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.m ], [ %i.bv, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !3114 ; 7 uses
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !3116
  %.not.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  %i.cn = load i64, ptr %i.ck, align 8, !tbaa !66
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !3117
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !3119
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cq, ptr %i.z, align 8, !tbaa !3114
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE7emplaceIJRS5_RmEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb1EEEbEDpOT_.exit

bb.t:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  %i.cr = load ptr, ptr %3, align 8, !tbaa !3120  ; 5 uses
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775792
  br i1 %i.cv, label %bb.u, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc unwind label %.loopexit.split-lp292

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.cw = ashr exact i64 %i.cu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 576460752303423487)
  %i.da = select i1 %i.cy, i64 576460752303423487, i64 %i.cz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.db = shl nuw nsw i64 %i.da, 4
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #36
          to label %.noexc93 unwind label %.loopexit291 ; 5 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu ; 2 uses
  %i.de = load i64, ptr %i.ck, align 8, !tbaa !66
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !3117
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.dg, ptr %i.df, align 8, !tbaa !3119
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc93, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %.noexc93 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ %i.cr, %.noexc93 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !3121
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.cl
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3125

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc93
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dc, %.noexc93 ], [ %i.di, %.lr.ph.i.i.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #34
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dc, ptr %3, align 8, !tbaa !3120
  store ptr %i.dj, ptr %i.z, align 8, !tbaa !3114
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dk, ptr %i.aa, align 8, !tbaa !3116
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE7emplaceIJRS5_RmEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb1EEEbEDpOT_.exit

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE7emplaceIJRS5_RmEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb1EEEbEDpOT_.exit: ; preds = %.loopexit288, %bb.s, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !66
  %i.dm = add i64 %i.dl, 1                        ; 3 uses
  store i64 %i.dm, ptr %i.a, align 8, !tbaa !66
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !326
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !325
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3
  %i.dt = icmp ult i64 %i.dm, %i.ds
  br i1 %i.dt, label %bb.d, label %._crit_edge, !llvm.loop !3126

bb.w:                                             ; preds = %.loopexit291, %.loopexit.split-lp292, %bb.r, %bb.g
  %.pn89.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.cj, %bb.r ], [ %lpad.loopexit293, %.loopexit291 ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp292 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.cn

bb.x:                                             ; preds = %._crit_edge
  %i.du = ptrtoint ptr %.pre396 to i64
  %i.dv = ptrtoint ptr %.pre to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 4
  %i.dy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dx, i1 true)
  %i.dz = shl nuw nsw i64 %i.dy, 1
  %i.ea = xor i64 %i.dz, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_T1_"(ptr %.pre, ptr %.pre396, i64 noundef %i.ea)
  %i.eb = icmp sgt i64 %i.dw, 256
  br i1 %i.eb, label %.lr.ph.i.i.i.i, label %.preheader.i21.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x
  %i.ec = getelementptr i8, ptr %.pre, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.aa ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %bb.aa ], [ 16, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.a, %bb.aa ], [ %.pre, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.08.020.i.ptr.i.i.i.a = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.08.020.i.idx.i.i.i ; 6 uses
  %.val1.i.i.i.i.i.a = load i64, ptr %i.ec, align 8, !tbaa !3119
  %7 = load <2 x i64>, ptr %.sroa.08.020.i.ptr.i.i.i.a, align 8 ; 3 uses
  %8 = extractelement <2 x i64> %7, i64 1         ; 3 uses
  %9 = icmp ugt i64 %8, %.val1.i.i.i.i.i.a
  br i1 %9, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.z

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.y
  %i.ed = add i64 %indvar, 1
  %i.ee = lshr exact i64 %.sroa.08.020.i.idx.i.i.i, 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32 ; 2 uses
  %xtraiter563 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  br i1 %lcmp.mod564.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ee, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %.069.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ef, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i.i.i.a, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter565 = phi i64 [ %prol.iter565.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %i.eg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !66
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !3117
  %i.ej = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !66
  %i.el = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !3119
  %i.em = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter565.next = add i64 %prol.iter565, 1   ; 2 uses
  %prol.iter565.cmp.not = icmp eq i64 %prol.iter565.next, %xtraiter563
  br i1 %prol.iter565.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !3127

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.a, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.en = icmp ult i64 %indvar, 3
  br i1 %i.en, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.eo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.ep = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !66
  store i64 %i.eq, ptr %i.ep, align 8, !tbaa !3117
  %i.er = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !66
  %i.et = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !3119
  %i.eu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.ev = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !66
  store i64 %i.ew, ptr %i.ev, align 8, !tbaa !3117
  %i.ex = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !66
  %i.ez = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !3119
  %i.fa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -48
  %i.fb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -48
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !66
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !3117
  %i.fd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -40
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !66
  %i.ff = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -40
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !3119
  %i.fg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !66
  store i64 %i.fi, ptr %i.fh, align 8, !tbaa !3117
  %i.fj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !66
  %i.fl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !3119
  %i.fm = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -4
  %i.fn = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, !llvm.loop !3129

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store <2 x i64> %7, ptr %.pre, align 8, !tbaa !66
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr i8, ptr %.pn19.i.i.i.i, i64 8
  %.val2.i8.i.i.i.i.i = load i64, ptr %i.fo, align 8, !tbaa !3119 ; 2 uses
  %i.fp = icmp ugt i64 %8, %.val2.i8.i.i.i.i.i
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %i.fq = phi i64 [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val2.i8.i.i.i.i.i, %bb.z ]
  %.sroa.05.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.a, %bb.z ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i.i.i, i64 -16 ; 3 uses
  %i.fr = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !66
  store i64 %i.fr, ptr %.sroa.05.09.i.i.i.i.i, align 8, !tbaa !3117
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i.i, i64 8
  store i64 %i.fq, ptr %i.fs, align 8, !tbaa !3119
  %i.ft = getelementptr i8, ptr %.sroa.05.09.i.i.i.i.i, i64 -24
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ft, align 8, !tbaa !3119 ; 2 uses
  %i.fu = icmp ugt i64 %8, %.val2.i.i.i.i.i.i
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !3130

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.sroa.05.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.a, %bb.z ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store <2 x i64> %7, ptr %.sroa.05.0.lcssa.i.i.i.i.i, align 8, !tbaa !66
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i95 = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i95, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_.exit.i.i.i", label %bb.y, !llvm.loop !3131

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_.exit.i.i.i": ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre, i64 256 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.fv, %.pre396
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i14.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ge, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i14.i.i.i" ], [ %i.fv, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_.exit.i.i.i" ] ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8 ; 2 uses
  %i.fw = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i, align 8
  %i.fx = getelementptr i8, ptr %.sroa.0.07.i.i.i.i, i64 -8
  %.val2.i8.i.i13.i.i.i = load i64, ptr %i.fx, align 8, !tbaa !3119 ; 2 uses
  %i.fy = icmp ugt i64 %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i8.i.i13.i.i.i
  br i1 %i.fy, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i14.i.i.i"

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i17.i.i.i
  %i.fz = phi i64 [ %.val2.i.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.val2.i8.i.i13.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.05.09.i.i18.i.i.i = phi ptr [ %.sroa.0.0.i.i19.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i19.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.09.i.i18.i.i.i, i64 -16 ; 3 uses
  %i.ga = load i64, ptr %.sroa.0.0.i.i19.i.i.i, align 8, !tbaa !66
  store i64 %i.ga, ptr %.sroa.05.09.i.i18.i.i.i, align 8, !tbaa !3117
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i18.i.i.i, i64 8
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !3119
  %i.gc = getelementptr i8, ptr %.sroa.05.09.i.i18.i.i.i, i64 -24
  %.val2.i.i.i20.i.i.i = load i64, ptr %i.gc, align 8, !tbaa !3119 ; 2 uses
  %i.gd = icmp ugt i64 %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i.i.i20.i.i.i
  br i1 %i.gd, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i14.i.i.i", !llvm.loop !3130

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i14.i.i.i": ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.05.0.lcssa.i.i15.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.0.i.i19.i.i.i, %.lr.ph.i.i17.i.i.i ]
  store <2 x i64> %i.fw, ptr %.sroa.05.0.lcssa.i.i15.i.i.i, align 8, !tbaa !66
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.ge, %.pre396
  br i1 %.not.i16.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !3132

.preheader.i21.i.i.i:                             ; preds = %bb.x
  %.sroa.08.017.i22.i.i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %.not18.i23.i.i.i = icmp eq ptr %.sroa.08.017.i22.i.i.i, %.pre396
  br i1 %.not18.i23.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit", label %.lr.ph.i24.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.preheader.i21.i.i.i
  %i.gf = getelementptr i8, ptr %.pre, i64 8      ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i24.i.i.i
  %.sroa.08.020.i25.i.i.i = phi ptr [ %.sroa.08.017.i22.i.i.i, %.lr.ph.i24.i.i.i ], [ %.sroa.08.0.i33.i.i.i, %bb.ae ] ; 8 uses
  %.pn19.i26.i.i.i = phi ptr [ %.pre, %.lr.ph.i24.i.i.i ], [ %.sroa.08.020.i25.i.i.i, %bb.ae ] ; 3 uses
  %i.gg = getelementptr i8, ptr %.pn19.i26.i.i.i, i64 24
  %.val.i.i27.i.i.i = load i64, ptr %i.gg, align 8, !tbaa !3119 ; 5 uses
  %.val1.i.i28.i.i.i = load i64, ptr %i.gf, align 8, !tbaa !3119
  %i.gh = icmp ugt i64 %.val.i.i27.i.i.i, %.val1.i.i28.i.i.i
  %.sroa.0.0.copyload.i29.i.i.i = load i64, ptr %.sroa.08.020.i25.i.i.i, align 8 ; 2 uses
  br i1 %i.gh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gi = ptrtoint ptr %.sroa.08.020.i25.i.i.i to i64
  %i.gj = sub i64 %i.gi, %i.dv
  %i.gk = ashr exact i64 %i.gj, 4                 ; 5 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

.lr.ph.i.i.i.i.i.preheader.i40.i.i.i:             ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %.pn19.i26.i.i.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.gk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i41.i.i.i.prol

.lr.ph.i.i.i.i.i.i41.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol
  %.010.i.i.i.i.i.i42.i.i.i.prol = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ], [ %i.gk, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ]
  %.069.i.i.i.i.i.i43.i.i.i.prol = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ], [ %i.gm, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i44.i.i.i.prol = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ], [ %.sroa.08.020.i25.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ]
  %i.gn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i.prol, i64 -16 ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i.prol, i64 -16 ; 3 uses
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !66
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !3117
  %i.gq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i.prol, i64 -8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !66
  %i.gs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i.prol, i64 -8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !3119
  %i.gt = add nsw i64 %.010.i.i.i.i.i.i42.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i41.i.i.i.prol, !llvm.loop !3133

.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i41.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i
  %.010.i.i.i.i.i.i42.i.i.i.unr = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ], [ %i.gt, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ]
  %.069.i.i.i.i.i.i43.i.i.i.unr = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ], [ %i.go, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ]
  %.078.i.i.i.i.i.i44.i.i.i.unr = phi ptr [ %.sroa.08.020.i25.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i40.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol ]
  %i.gu = icmp ult i64 %i.gk, 4
  br i1 %i.gu, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i, label %.lr.ph.i.i.i.i.i.i41.i.i.i

.lr.ph.i.i.i.i.i.i41.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i41.i.i.i
  %.010.i.i.i.i.i.i42.i.i.i = phi i64 [ %i.ht, %.lr.ph.i.i.i.i.i.i41.i.i.i ], [ %.010.i.i.i.i.i.i42.i.i.i.unr, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i43.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i41.i.i.i ], [ %.069.i.i.i.i.i.i43.i.i.i.unr, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i44.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i41.i.i.i ], [ %.078.i.i.i.i.i.i44.i.i.i.unr, %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit ] ; 8 uses
  %i.gv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -16
  %i.gw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -16
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !66
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !3117
  %i.gy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !66
  %i.ha = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !3119
  %i.hb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -32
  %i.hc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -32
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !66
  store i64 %i.hd, ptr %i.hc, align 8, !tbaa !3117
  %i.he = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -24
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !66
  %i.hg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -24
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !3119
  %i.hh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -48
  %i.hi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -48
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !66
  store i64 %i.hj, ptr %i.hi, align 8, !tbaa !3117
  %i.hk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -40
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !66
  %i.hm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -40
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !3119
  %i.hn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -64 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -64 ; 2 uses
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !66
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !3117
  %i.hq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i44.i.i.i, i64 -56
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !66
  %i.hs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i43.i.i.i, i64 -56
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !3119
  %i.ht = add nsw i64 %.010.i.i.i.i.i.i42.i.i.i, -4
  %i.hu = icmp sgt i64 %.010.i.i.i.i.i.i42.i.i.i, 4
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i.i41.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i, !llvm.loop !3129

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i41.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i41.i.i.i, %bb.ac
  store i64 %.sroa.0.0.copyload.i29.i.i.i, ptr %.pre, align 8, !tbaa !3117
  store i64 %.val.i.i27.i.i.i, ptr %i.gf, align 8, !tbaa !3119
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hv = getelementptr i8, ptr %.pn19.i26.i.i.i, i64 8
  %.val2.i8.i.i30.i.i.i = load i64, ptr %i.hv, align 8, !tbaa !3119 ; 2 uses
  %i.hw = icmp ugt i64 %.val.i.i27.i.i.i, %.val2.i8.i.i30.i.i.i
  br i1 %i.hw, label %.lr.ph.i.i35.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i31.i.i.i"

.lr.ph.i.i35.i.i.i:                               ; preds = %bb.ad, %.lr.ph.i.i35.i.i.i
  %i.hx = phi i64 [ %.val2.i.i.i38.i.i.i, %.lr.ph.i.i35.i.i.i ], [ %.val2.i8.i.i30.i.i.i, %bb.ad ]
  %.sroa.05.09.i.i36.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ], [ %.sroa.08.020.i25.i.i.i, %bb.ad ] ; 4 uses
  %.sroa.0.0.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.09.i.i36.i.i.i, i64 -16 ; 3 uses
  %i.hy = load i64, ptr %.sroa.0.0.i.i37.i.i.i, align 8, !tbaa !66
  store i64 %i.hy, ptr %.sroa.05.09.i.i36.i.i.i, align 8, !tbaa !3117
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i36.i.i.i, i64 8
  store i64 %i.hx, ptr %i.hz, align 8, !tbaa !3119
  %i.ia = getelementptr i8, ptr %.sroa.05.09.i.i36.i.i.i, i64 -24
  %.val2.i.i.i38.i.i.i = load i64, ptr %i.ia, align 8, !tbaa !3119 ; 2 uses
  %i.ib = icmp ugt i64 %.val.i.i27.i.i.i, %.val2.i.i.i38.i.i.i
  br i1 %i.ib, label %.lr.ph.i.i35.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i31.i.i.i", !llvm.loop !3130

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i31.i.i.i": ; preds = %.lr.ph.i.i35.i.i.i, %bb.ad
  %.sroa.05.0.lcssa.i.i32.i.i.i = phi ptr [ %.sroa.08.020.i25.i.i.i, %bb.ad ], [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i29.i.i.i, ptr %.sroa.05.0.lcssa.i.i32.i.i.i, align 8, !tbaa !3117
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i32.i.i.i, i64 8
  store i64 %.val.i.i27.i.i.i, ptr %i.ic, align 8, !tbaa !3119
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i31.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i
  %.sroa.08.0.i33.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i25.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i.i = icmp eq ptr %.sroa.08.0.i33.i.i.i, %.pre396
  br i1 %.not.i34.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit", label %bb.ab, !llvm.loop !3131

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit": ; preds = %bb.ae, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_.exit.i14.i.i.i", %.preheader.i21.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.id, ptr %4, align 8, !tbaa !409
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.ie, align 8, !tbaa !410
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !275
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  %i.ii = load ptr, ptr %i.v, align 8, !tbaa !326
  %i.ij = load ptr, ptr %i.p, align 8, !tbaa !325
  %.not364 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not364, label %.preheader281, label %.lr.ph327

.lr.ph327:                                        ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit"
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.af

.preheader281:                                    ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingES1_NS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S1_EEE7emplaceIJS1_S1_EEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb1EEEbEDpOT_.exit, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS9_16LogicalAggregateEE3$_0EvT_SE_T0_.exit"
end_hunk_0
