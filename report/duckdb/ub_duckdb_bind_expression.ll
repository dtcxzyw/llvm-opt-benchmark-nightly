inline.NumInlined: 7467
inline.NumDeleted: 3072
begin_hunk_0_@_ZN6duckdb16ExpressionBinder14BindExpressionERNS_17BetweenExpressionEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.an
  %.pn80.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn, %bb.cq ], [ %i.di, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ct

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit183
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !112 ; 2 uses
  %.not5.i.i.i.i.i224 = icmp eq ptr %i.mf, null
  br i1 %.not5.i.i.i.i.i224, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i232, label %.lr.ph.i.i.i.i.i225

.lr.ph.i.i.i.i.i225:                              ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i230
  %.06.i.i.i.i.i226 = phi ptr [ %i.mg, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i230 ], [ %i.mf, %_ZN6duckdb9ErrorDataD2Ev.exit ] ; 6 uses
  %i.mg = load ptr, ptr %.06.i.i.i.i.i226, align 8, !tbaa !113 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i226, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i226, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !55 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i226, i64 56
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i227: ; preds = %.lr.ph.i.i.i.i.i225
  call void @_ZdlPv(ptr noundef %i.mj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i228: ; preds = %.lr.ph.i.i.i.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i227
  %i.mm = load ptr, ptr %i.mh, align 8, !tbaa !55 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i226, i64 24
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i228
  call void @_ZdlPv(ptr noundef %i.mm) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i230

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i229
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i226) #25
  %.not.i.i.i.i.i231 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i231, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i232, label %.lr.ph.i.i.i.i.i225, !llvm.loop !114

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i232: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i230, %_ZN6duckdb9ErrorDataD2Ev.exit
  %i.mp = load ptr, ptr %i.md, align 8, !tbaa !115
  %i.mq = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !116
  %i.ms = shl i64 %i.mr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mp, i8 0, i64 %i.ms, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, i8 0, i64 16, i1 false)
  %i.mt = load ptr, ptr %i.md, align 8, !tbaa !115 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i233, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i232
  call void @_ZdlPv(ptr noundef %i.mt) #25
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i233

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i233: ; preds = %bb.cs, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i232
  %i.mw = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !55 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i233
  call void @_ZdlPv(ptr noundef %i.mx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i235: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234
  %i.na = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !55 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZN6duckdb9ErrorDataD2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i235
  call void @_ZdlPv(ptr noundef %i.nb) #25
  br label %_ZN6duckdb9ErrorDataD2Ev.exit241

_ZN6duckdb9ErrorDataD2Ev.exit241:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret void

bb.ct:                                            ; preds = %bb.ak, %bb.am, %bb.cr, %bb.al, %bb.p
  %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.p ], [ %i.df, %bb.ak ], [ %i.dg, %bb.al ], [ %.pn80.pn.pn.pn.pn.pn, %bb.cr ], [ %i.dh, %bb.am ]
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  resume { ptr, i32 } %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.cu:                                            ; preds = %bb.bb, %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !357
  %i.c = icmp eq i8 %i.b, 31
  br i1 %i.c, label %bb.b, label %.thread18

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 25)
  %i.e = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6duckdb10StringType12GetCollationB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.l = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.l)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #25
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.h, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.critedge
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef zeroext 37)
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.m, %bb.g ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %.critedge.thread, %.critedge
  %i.o = call noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br i1 %i.o, label %bb.k, label %.thread18

bb.k:                                             ; preds = %bb.j
  %i.p = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundConstantExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %1) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load i8, ptr %i.q, align 8, !tbaa !411, !range !82, !noundef !40
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread18, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  call void @_ZN6duckdb11LogicalType15INTEGER_LITERALERKNS_5ValueE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  br label %bb.m

.thread18:                                        ; preds = %bb.k, %bb.j, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread18, %bb.f
  ret void
}

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb25BoundComparisonExpression17TryBindComparisonERNS_13ClientContextERKNS_11LogicalTypeES5_RS3_NS_14ExpressionTypeE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 28 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %7 = alloca %"class.duckdb::vector.436", align 8 ; 17 uses
  %8 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5)
  switch i8 %4, label %.critedge [
    i8 25, label %bb.b
    i8 26, label %bb.b
    i8 35, label %bb.b
    i8 36, label %bb.b
    i8 37, label %bb.b
    i8 40, label %bb.b
  ]

.critedge:                                        ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN6duckdb11LogicalType20TryGetMaxLogicalTypeERNS_13ClientContextERKS0_S4_RS0_(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.e

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.c

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.b
  %i.d = load i8, ptr %6, align 8, !tbaa !86
  store i8 %i.d, ptr %5, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !417
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !417
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !187
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !187
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !187
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !187
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bh

bb.d:                                             ; preds = %.critedge
  br i1 %i.c, label %bb.f, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit136

bb.e:                                             ; preds = %.critedge
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.f:                                             ; preds = %bb.d, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.n = load i8, ptr %5, align 8, !tbaa !86
  switch i8 %i.n, label %bb.aw [
    i8 21, label %bb.g
    i8 25, label %bb.af
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.h unwind label %.thread

.thread:                                          ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %.loopexit.loopexit183

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc unwind label %.body148.thread ; 6 uses

.noexc:                                           ; preds = %bb.i
  store ptr %i.q, ptr %7, align 8, !tbaa !354
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !136
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread213

.thread213:                                       ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #23 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.ab = load ptr, ptr %7, align 8, !tbaa !354
  %.not75.not176.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not75.not176.not, label %._crit_edge, label %.lr.ph

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = call ptr @__cxa_begin_catch(ptr %i.ad) #23 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #23
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread213
  invoke void @__cxa_rethrow() #24
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body148 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body148.thread:                                  ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body148:                                         ; preds = %bb.j
  %.pr150 = load ptr, ptr %7, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr150, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.m

bb.m:                                             ; preds = %.body148
  call void @_ZdlPv(ptr noundef nonnull %.pr150) #25
  br label %.body

.loopexit.loopexit183:                            ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  br label %.loopexit

.body:                                            ; preds = %.body148.thread, %.body148, %bb.m
  %eh.lpad-body149218 = phi { ptr, i32 } [ %i.ai, %.body148.thread ], [ %i.af, %.body148 ], [ %i.af, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit183, %.body, %.thread
  %.pn73 = phi { ptr, i32 } [ %eh.lpad-body149218, %.body ], [ %i.o, %.thread ], [ %i.aj, %.loopexit.loopexit183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ae

.lr.ph:                                           ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %bb.aa
  %.043180 = phi i64 [ %i.bz, %bb.aa ], [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ] ; 2 uses
  %.044179 = phi i8 [ %i.by, %bb.aa ], [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ]
  %.047178 = phi i8 [ %i.bw, %bb.aa ], [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ]
  %.050177 = phi i8 [ %i.bu, %bb.aa ], [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.043180)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %.lr.ph
  %i.am = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType20GetDecimalPropertiesERhS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  br i1 %i.am, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load i8, ptr %5, align 8, !tbaa !86
  store i8 %i.an, ptr %3, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !417
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !417
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !186 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.as, align 8, !tbaa !187
  %.not.i.i.i.i.i.i83 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i83, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i84 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !186 ; 8 uses
  store <2 x ptr> %i.av, ptr %i.ar, align 8, !tbaa !187
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %.critedge81, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bd, align 8, !tbaa !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !224
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #23, !inline_history !418
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #23, !inline_history !418
  br label %.critedge81

bb.v:                                             ; preds = %bb.t
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.w ], [ %i.bq, %bb.x ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.y, label %.critedge81, !prof !226

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #23
  br label %.critedge81

bb.z:                                             ; preds = %bb.n, %.lr.ph
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ad

bb.aa:                                            ; preds = %bb.o
  %i.bt = load i8, ptr %i.a, align 1, !tbaa !119  ; 2 uses
  %i.bu = call noundef i8 @llvm.umax.i8(i8 %i.bt, i8 %.050177) ; 2 uses
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !119  ; 2 uses
  %i.bw = call noundef i8 @llvm.umax.i8(i8 %i.bv, i8 %.047178) ; 2 uses
  %i.bx = sub i8 %i.bt, %i.bv
  %i.by = call noundef i8 @llvm.umax.i8(i8 %i.bx, i8 %.044179) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bz = add nuw i64 %.043180, 1                 ; 2 uses
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.cb = load ptr, ptr %7, align 8, !tbaa !354
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24
  %.not75.not = icmp ult i64 %i.bz, %i.cf
  br i1 %.not75.not, label %.lr.ph, label %._crit_edge, !llvm.loop !419

._crit_edge:                                      ; preds = %bb.aa, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.050.lcssa = phi i8 [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.bu, %bb.aa ]
  %.047.lcssa = phi i8 [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.bw, %bb.aa ] ; 2 uses
  %.044.lcssa = phi i8 [ 0, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.by, %bb.aa ]
  %i.cg = add i8 %.044.lcssa, %.047.lcssa
  %i.ch = call noundef i8 @llvm.umax.i8(i8 %i.cg, i8 %.050.lcssa)
  %spec.store.select = call i8 @llvm.umin.i8(i8 %i.ch, i8 38)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN6duckdb11LogicalType7DECIMALEhh(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %9, i8 noundef zeroext %spec.store.select, i8 noundef zeroext %.047.lcssa)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i89 unwind label %bb.ac

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i89: ; preds = %._crit_edge
  %i.ci = load i8, ptr %9, align 8, !tbaa !86
  store i8 %i.ci, ptr %5, align 8, !tbaa !86
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !417
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !417
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.co = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !187
  %i.cp = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !187
  store <2 x ptr> %i.co, ptr %i.cm, align 8, !tbaa !187
  store <2 x ptr> %i.cp, ptr %i.cn, align 8, !tbaa !187
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cq = load ptr, ptr %7, align 8, !tbaa !354   ; 3 uses
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !133 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i89, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i ], [ %i.cq, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i89 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !354
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i89
  %i.ct = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cq, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i89 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ct) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aw

bb.ac:                                            ; preds = %._crit_edge
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn76 = phi { ptr, i32 } [ %i.cu, %bb.ac ], [ %i.bs, %bb.z ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.ad ], [ %.pn73, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bh

bb.af:                                            ; preds = %bb.f
  %i.cv = load i8, ptr %1, align 8, !tbaa !86
  switch i8 %i.cv, label %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit [
    i8 38, label %bb.ag
    i8 10, label %bb.ag
    i8 11, label %bb.ag
    i8 12, label %bb.ag
    i8 13, label %bb.ag
    i8 14, label %bb.ag
    i8 50, label %bb.ag
    i8 22, label %bb.ag
    i8 23, label %bb.ag
    i8 21, label %bb.ag
    i8 28, label %bb.ag
    i8 29, label %bb.ag
    i8 30, label %bb.ag
    i8 31, label %bb.ag
    i8 49, label %bb.ag
    i8 15, label %bb.ag
    i8 16, label %bb.ag
    i8 17, label %bb.ag
    i8 18, label %bb.ag
    i8 19, label %bb.ag
    i8 20, label %bb.ag
    i8 27, label %bb.ag
    i8 32, label %bb.ag
    i8 34, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN6duckdb11LogicalType13NormalizeTypeERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i99 unwind label %bb.ah

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i99: ; preds = %bb.ag
  %i.cw = load i8, ptr %10, align 8, !tbaa !86
  store i8 %i.cw, ptr %5, align 8, !tbaa !86
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !417
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !417
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !tbaa !187
  %i.dd = load <2 x ptr>, ptr %i.da, align 8, !tbaa !187
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !187
  store <2 x ptr> %i.dd, ptr %i.db, align 8, !tbaa !187
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bh

_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit: ; preds = %bb.af
  %i.df = load i8, ptr %2, align 8, !tbaa !86
  switch i8 %i.df, label %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit106 [
    i8 38, label %bb.ai
    i8 10, label %bb.ai
    i8 11, label %bb.ai
    i8 12, label %bb.ai
    i8 13, label %bb.ai
    i8 14, label %bb.ai
    i8 50, label %bb.ai
    i8 22, label %bb.ai
    i8 23, label %bb.ai
    i8 21, label %bb.ai
    i8 28, label %bb.ai
    i8 29, label %bb.ai
    i8 30, label %bb.ai
    i8 31, label %bb.ai
    i8 49, label %bb.ai
    i8 15, label %bb.ai
    i8 16, label %bb.ai
    i8 17, label %bb.ai
    i8 18, label %bb.ai
    i8 19, label %bb.ai
    i8 20, label %bb.ai
    i8 27, label %bb.ai
    i8 32, label %bb.ai
    i8 34, label %bb.ai
  ]

bb.ai:                                            ; preds = %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit, %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6duckdb11LogicalType13NormalizeTypeERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i111 unwind label %bb.aj

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i111: ; preds = %bb.ai
  %i.dg = load i8, ptr %11, align 8, !tbaa !86
  store i8 %i.dg, ptr %5, align 8, !tbaa !86
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !417
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !417
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dm = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !187
  %i.dn = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !187
  store <2 x ptr> %i.dm, ptr %i.dk, align 8, !tbaa !187
  store <2 x ptr> %i.dn, ptr %i.dl, align 8, !tbaa !187
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bh

_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit106: ; preds = %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN6duckdb10StringType12GetCollationB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN6duckdb10StringType12GetCollationB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !51 ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !51 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = icmp eq i64 %i.dq, %i.dt
  br i1 %i.dv, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.an
  %i.dw = load ptr, ptr %13, align 8, !tbaa !55
  %i.dx = load ptr, ptr %12, align 8, !tbaa !55
  %bcmp.i.i = call i32 @bcmp(ptr %i.dx, ptr %i.dw, i64 %i.dq)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %bb.av, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.an, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ao:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.bi unwind label %bb.as

bb.aq:                                            ; preds = %_ZN6duckdbL23SwitchVarcharComparisonERKNS_11LogicalTypeE.exit106
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.ar:                                            ; preds = %bb.ak
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %.0 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ed = load ptr, ptr %14, align 8, !tbaa !55   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.ed) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.0, label %bb.at, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.0, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn167 = phi { ptr, i32 } [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.dy) #23
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn166 = phi { ptr, i32 } [ %.pn167, %bb.at ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.eg = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.eg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.av:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.am, %bb.al
  %i.ej = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.ej) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.em = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @_ZdlPv(ptr noundef %i.em) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.ar ], [ %.pn166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn166, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ep = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  call void @_ZdlPv(ptr noundef %i.ep) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.aq
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.aq ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bh

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.f, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i111
  %i.es = load i8, ptr %5, align 8, !tbaa !86
  store i8 %i.es, ptr %3, align 8, !tbaa !86
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !417
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !417
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !186 ; 2 uses
  %i.fa = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !187
  %.not.i.i.i.i.i.i129 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i129, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i130 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i.i.i.i130, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131

bb.az:                                            ; preds = %bb.ax
  %i.ff = atomicrmw volatile add ptr %i.fb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131: ; preds = %bb.az, %bb.ay, %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !186 ; 8 uses
  store <2 x ptr> %i.fa, ptr %i.ew, align 8, !tbaa !187
  %.not.i.i.i.i.i132 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i132, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit136, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load atomic i64, ptr %i.fi acquire, align 8 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 4294967297
  %i.fl = trunc i64 %i.fj to i32                  ; 2 uses
  br i1 %i.fk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fi, align 8, !tbaa !222
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 0, ptr %i.fm, align 4, !tbaa !224
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !83
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #23, !inline_history !418
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !83
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #23, !inline_history !418
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit136

bb.bc:                                            ; preds = %bb.ba
  %i.ft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i5.i.i133 = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i.i5.i.i133, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134

bb.be:                                            ; preds = %bb.bc
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i135 = phi i32 [ %i.fl, %bb.bd ], [ %i.fv, %bb.be ]
  %i.fw = icmp eq i32 %.0.i.i.i.i.i.i.i135, 1
  br i1 %i.fw, label %bb.bf, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit136, !prof !226

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit136

.critedge81:                                      ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.u, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.fx = load ptr, ptr %7, align 8, !tbaa !354   ; 3 uses
  %i.fy = load ptr, ptr %i.y, align 8, !tbaa !133 ; 2 uses
  %.not4.i.i.i137 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not4.i.i.i137, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i143, label %.lr.ph.i.i.i138

.lr.ph.i.i.i138:                                  ; preds = %.critedge81, %.lr.ph.i.i.i138
  %.05.i.i.i139 = phi ptr [ %i.fz, %.lr.ph.i.i.i138 ], [ %i.fx, %.critedge81 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i139) #23
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i139, i64 24 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.fz, %i.fy
  br i1 %.not.i.i.i140, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i141, label %.lr.ph.i.i.i138, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i141: ; preds = %.lr.ph.i.i.i138
  %.pr.i142 = load ptr, ptr %7, align 8, !tbaa !354
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i143

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i143: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i141, %.critedge81
  %i.ga = phi ptr [ %.pr.i142, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i141 ], [ %i.fx, %.critedge81 ] ; 2 uses
  %.not.i.i1.i144 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i144, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit145, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i143
  call void @_ZdlPv(ptr noundef nonnull %i.ga) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit145

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit145: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i143, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit136

_ZN6duckdb11LogicalTypeaSERKS0_.exit136:          ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134, %bb.bb, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit145, %bb.d
  %.3 = phi i1 [ false, %bb.d ], [ true, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit145 ], [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i131 ], [ true, %bb.bb ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134 ], [ true, %bb.bf ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.3

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.aj, %bb.ah, %bb.ae, %bb.e, %bb.c
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.ae ], [ %i.de, %bb.ah ], [ %i.do, %bb.aj ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.l, %bb.c ], [ %i.m, %bb.e ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn76.pn.pn

bb.bi:                                            ; preds = %bb.ap
  unreachable
}

declare void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKNS_16ParsedExpressionERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.1276", align 8  ; 9 uses
  %6 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ERKNS_16ParsedExpressionE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !420
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !379, !noalias !420 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !382, !noalias !420 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !383

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !379, !noalias !420
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !420
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !420
  invoke void @_ZN6duckdb15BinderExceptionC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %7, align 8, !tbaa !55     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i8
  call void @_ZdlPv(ptr noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #25
  %.not.i.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !114

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %6, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !116
  %i.ab = shl i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !115   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #25
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ag) #25
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_22BoundBetweenExpressionEJNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_S6_bbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.689") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.b, ptr %6, align 8, !tbaa !95
  store ptr null, ptr %1, align 8, !tbaa !95
  %i.c = load i64, ptr %2, align 8, !tbaa !95
  store i64 %i.c, ptr %7, align 8, !tbaa !95
  store ptr null, ptr %2, align 8, !tbaa !95
  %i.d = load i64, ptr %3, align 8, !tbaa !95
  store i64 %i.d, ptr %8, align 8, !tbaa !95
  store ptr null, ptr %3, align 8, !tbaa !95
  %i.e = load i8, ptr %4, align 1, !tbaa !384, !range !82, !noundef !40
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr %5, align 1, !tbaa !384, !range !82, !noundef !40
  %i.h = trunc nuw i8 %i.g to i1
  invoke void @_ZN6duckdb22BoundBetweenExpressionC1ENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEES5_S5_bb(ptr noundef nonnull align 8 dereferenceable(114) %i.a, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i1 noundef zeroext %i.f, i1 noundef zeroext %i.h)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !408
  %i.i = load ptr, ptr %8, align 8, !tbaa !95     ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #23, !inline_history !132
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
end_hunk_0
