inline.NumInlined: 1092
inline.NumDeleted: 585
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6duckdb25CompressedMaterialization22CompressComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.lg = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.ba
  br i1 %i.lh, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.lg) #20
  br label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.li = load ptr, ptr %i.ax, align 8, !tbaa !117 ; 2 uses
  %.not5.i.i.i.i130 = icmp eq ptr %i.li, null
  br i1 %.not5.i.i.i.i130, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i134, label %.lr.ph.i.i.i.i131

.lr.ph.i.i.i.i131:                                ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i131
  %.06.i.i.i.i132 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i131 ], [ %i.li, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit ] ; 2 uses
  %i.lj = load ptr, ptr %.06.i.i.i.i132, align 8, !tbaa !34 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i132) #20
  %.not.i.i.i.i133 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i133, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i134, label %.lr.ph.i.i.i.i131, !llvm.loop !118

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i134: ; preds = %.lr.ph.i.i.i.i131, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit
  %i.lk = load ptr, ptr %4, align 8, !tbaa !12
  %i.ll = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.lm = shl i64 %i.ll, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lk, i8 0, i64 %i.lm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ln = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.av
  br i1 %i.lo, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit135, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i134
  call void @_ZdlPv(ptr noundef %i.ln) #20
  br label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit135

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit135: ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i134, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit135, %bb.j, %bb.e, %bb.a
  ret void

bb.cs:                                            ; preds = %._crit_edge200
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ct:                                            ; preds = %bb.ce
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit137

bb.cu:                                            ; preds = %bb.cf
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = load ptr, ptr %11, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorImSaImEED2Ev.exit137, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef nonnull %i.ls) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit137

_ZNSt6vectorImSaImEED2Ev.exit137:                 ; preds = %bb.cv, %bb.cu, %bb.ct
  %.pn = phi { ptr, i32 } [ %i.lq, %bb.ct ], [ %i.lr, %bb.cu ], [ %i.lr, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.cz

bb.cw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit139

bb.cx:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = load ptr, ptr %12, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit139, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_ZdlPv(ptr noundef nonnull %i.lv) #20
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit139

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit139: ; preds = %bb.cy, %bb.cx, %bb.cw
  %.pn79 = phi { ptr, i32 } [ %i.lt, %bb.cw ], [ %i.lu, %bb.cx ], [ %i.lu, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN6duckdb29CompressedMaterializationInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %10) #17
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit139, %_ZNSt6vectorImSaImEED2Ev.exit137, %bb.cs
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit139 ], [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit137 ], [ %i.lp, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.da

bb.da:                                            ; preds = %bb.cd, %bb.cz
  %.pn82.pn = phi { ptr, i32 } [ %.pn79.pn, %bb.cz ], [ %i.ko, %bb.cd ] ; 2 uses
  %i.lw = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit141, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZdlPv(ptr noundef nonnull %i.lw) #20
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit141

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit141: ; preds = %bb.db, %bb.da, %bb.bu
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.bu ], [ %.pn82.pn, %bb.da ], [ %.pn82.pn, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.dc

bb.dc:                                            ; preds = %bb.az, %bb.bb, %bb.ba, %bb.bk, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit141, %bb.bs
  %.pn94.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit141 ], [ %i.ig, %bb.bs ], [ %i.he, %bb.az ], [ %i.hf, %bb.ba ], [ %i.hg, %bb.bb ], [ %.pn86.pn.pn, %bb.bk ]
  call void @_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn94.pn
}

declare void @_ZNK6duckdb14BaseStatistics4CopyEv(ptr dead_on_unwind writable sret(%"class.duckdb::BaseStatistics") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL18PopulateBindingMapERNS_29CompressedMaterializationInfoERKNS_6vectorINS_13ColumnBindingELb1ESaIS3_EEERKNS2_INS_11LogicalTypeELb1ESaIS8_EEERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(97) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.58", align 8 ; 8 uses
  %6 = alloca %"struct.duckdb::CMBindingInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.d = load ptr, ptr %3, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.58") align 8 %5, ptr noundef nonnull align 8 dereferenceable(97) %3)
  %i.g = load ptr, ptr %5, align 8, !tbaa !208    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !208  ; 2 uses
  %.not44 = icmp eq ptr %i.g, %i.i
  br i1 %.not44, label %._crit_edge46, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  %.pre48 = load ptr, ptr %1, align 8, !tbaa !48  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.n = phi ptr [ %.pre48, %.preheader.lr.ph ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.o = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.p = phi ptr [ %.pre48, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 4 uses
  %i.q = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.w, %._crit_edge ]
  %.sroa.038.045 = phi ptr [ %i.g, %.preheader.lr.ph ], [ %i.x, %._crit_edge ] ; 4 uses
  %.not47 = icmp eq ptr %i.q, %i.p
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.038.045, i64 8
  br label %bb.c

._crit_edge46.loopexit:                           ; preds = %._crit_edge
  %.pre51 = load ptr, ptr %5, align 8, !tbaa !48
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge46.loopexit, %bb.a
  %i.s = phi ptr [ %.pre51, %._crit_edge46.loopexit ], [ %i.g, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge46
  call void @_ZdlPv(ptr noundef nonnull %i.s) #20
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %._crit_edge46, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %i.t = phi ptr [ %i.n, %.preheader ], [ %i.bg, %bb.m ]
  %i.u = phi ptr [ %i.o, %.preheader ], [ %i.bh, %bb.m ]
  %i.v = phi ptr [ %i.p, %.preheader ], [ %i.bg, %bb.m ]
  %i.w = phi ptr [ %i.p, %.preheader ], [ %i.bh, %bb.m ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.038.045, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.i
  br i1 %.not, label %._crit_edge46.loopexit, label %.preheader

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.y = phi ptr [ %i.n, %.lr.ph ], [ %i.bg, %bb.m ]
  %i.z = phi ptr [ %i.o, %.lr.ph ], [ %i.bh, %bb.m ]
  %i.aa = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %bb.m ]
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %bb.m ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.043 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = load i64, ptr %.sroa.038.045, align 8, !tbaa !35
  %i.ae = icmp eq i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i64, ptr %i.r, align 8
  %i.ai = icmp eq i64 %i.ag, %i.ah
  %i.aj = select i1 %i.ae, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.al = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.043, ptr %i.b, align 8, !tbaa !65
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !65
  %.not.i.i.i23 = icmp ult i64 %.043, %i.ap
  br i1 %.not.i.i.i23, label %bb.i, label %.noexc.i35, !prof !157

.noexc.i35:                                       ; preds = %bb.d
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 55, ptr %i.a, align 8, !tbaa !65
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i24 ; 3 uses

.noexc36:                                         ; preds = %.noexc.i35
  store ptr %i.as, ptr %4, align 8, !tbaa !80
  %i.at = load i64, ptr %i.a, align 8, !tbaa !65  ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.as, ptr noundef nonnull align 1 dereferenceable(55) @.str.6, i64 55, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc36
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.h unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i24: ; preds = %.noexc.i35
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %.noexc36
  %.0.i.i.i27 = phi i1 [ false, %bb.e ], [ true, %.noexc36 ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ay) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i.i.i27, label %bb.g, label %.body30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i29: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i.i.i27, label %bb.g, label %.body30

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i24
  %.pn8.i.i.i25 = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i24 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i29 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28 ]
  call void @__cxa_free_exception(ptr %i.aq) #17
  br label %.body30

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.043
  invoke void @_ZN6duckdb13CMBindingInfoC1ENS_13ColumnBindingERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 %i.ac, i64 %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_13CMBindingInfoEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_S4_EEES2_INS7_14_Node_iteratorIS5_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.038.045, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_13CMBindingInfoENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJRS6_S2_EEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.l ; 0 uses

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_13CMBindingInfoENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJRS6_S2_EEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.j
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !66  ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZN6duckdb13CMBindingInfoD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i: ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_13CMBindingInfoENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJRS6_S2_EEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.bc) #17
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #20
  br label %_ZN6duckdb13CMBindingInfoD2Ev.exit

_ZN6duckdb13CMBindingInfoD2Ev.exit:               ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_13CMBindingInfoENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJRS6_S2_EEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pre49 = load ptr, ptr %i.j, align 8, !tbaa !55
  %.pre50 = load ptr, ptr %1, align 8, !tbaa !48
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body30

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13CMBindingInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #17
  br label %.body30

.body30:                                          ; preds = %bb.k, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28, %bb.l
  %.pn = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.bd, %bb.k ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i29 ], [ %.pn8.i.i.i25, %bb.g ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bf = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit33, label %bb.n

bb.m:                                             ; preds = %_ZN6duckdb13CMBindingInfoD2Ev.exit, %bb.c
  %i.bg = phi ptr [ %.pre50, %_ZN6duckdb13CMBindingInfoD2Ev.exit ], [ %i.y, %bb.c ] ; 5 uses
  %i.bh = phi ptr [ %.pre49, %_ZN6duckdb13CMBindingInfoD2Ev.exit ], [ %i.z, %bb.c ] ; 4 uses
  %i.bi = add nuw i64 %.043, 1                    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 4
  %i.bn = icmp ult i64 %i.bi, %i.bm
  br i1 %i.bn, label %bb.c, label %._crit_edge, !llvm.loop !209

bb.n:                                             ; preds = %.body30
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #20
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit33

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit33: ; preds = %.body30, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25CompressedMaterialization25UpdateComparisonJoinStatsERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.49", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.49", align 8 ; 6 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !121
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 184 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !207
  %.not70 = icmp eq ptr %i.o, %i.p
  br i1 %.not70, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %.02568 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %bb.y ] ; 3 uses
  %i.r = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.02568) ; 3 uses
  %i.s = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !25
  %.not27 = icmp eq i8 %i.u, -28
  br i1 %.not27, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !25
  %.not28 = icmp eq i8 %i.y, -28
  br i1 %.not28, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.z = shl i64 %.02568, 1                       ; 3 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %.not29 = icmp ult i64 %i.z, %i.af
  br i1 %.not29, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.ag = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.ah = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.ag) ; 3 uses
  %i.ai = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.aj = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.ai) ; 4 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.z) ; 2 uses
  %i.al = or disjoint i64 %i.z, 1
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.al) ; 2 uses
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !161, !nonnull !167, !align !168 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !169
  %.not.not.i.i = icmp eq i64 %i.aq, 0            ; 2 uses
  br i1 %.not.not.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = load i64, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.au = load i64, ptr %i.at, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.06.0.in.i.i = phi ptr [ %i.ar, %bb.g ], [ %.sroa.06.0.i.i, %bb.i ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !34 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !35
  %i.ax = icmp eq i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.au, %i.az
  %i.bb = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %i.bb, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.h, !llvm.loop !171

bb.j:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !35 ; 3 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, -2960836687051489901     ; 2 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -2960836687051489901     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !39 ; 3 uses
  %i.bl = lshr i64 %i.bk, 32
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, -2960836687051489901     ; 2 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, -2960836687051489901     ; 2 uses
  %i.br = xor i64 %i.bq, %i.bi
  %i.bs = lshr i64 %i.br, 32
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bq                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !172 ; 3 uses
  %i.bx = urem i64 %i.bu, %i.bw                   ; 2 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !173 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %bb.k

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread: ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41
  br label %bb.l
end_hunk_0
