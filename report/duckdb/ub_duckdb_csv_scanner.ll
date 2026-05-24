inline.NumInlined: 6120
inline.NumDeleted: 2467
begin_hunk_0_@_ZNK6duckdb9CSVSchema12SchemasMatchERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_13SnifferResultERKS6_b:bb.a
  br i1 %or.cond.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142, label %bb.az

bb.az:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit144
  switch i8 %i.ga, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209 [
    i8 1, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 11, label %bb.ba
    i8 12, label %bb.bb
    i8 13, label %bb.bc
    i8 14, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit
    i8 22, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  switch i8 %i.gc, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209 [
    i8 22, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 21, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 14, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 13, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 12, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 23, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  ]

bb.bb:                                            ; preds = %bb.az
  switch i8 %i.gc, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209 [
    i8 22, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 21, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 14, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 13, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 23, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  ]

bb.bc:                                            ; preds = %bb.az
  switch i8 %i.gc, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209 [
    i8 22, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 21, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 14, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
    i8 23, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  ]

bb.bd:                                            ; preds = %bb.az
  %i.gf = icmp eq i8 %i.gc, 23
  br i1 %i.gf, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209

_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit: ; preds = %bb.az
  %i.gg = add i8 %i.gc, -21
  %spec.select.i = icmp ult i8 %i.gg, 3
  br i1 %spec.select.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209

_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.bd, %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.9, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209
  %i.gi = load ptr, ptr %.sroa.0191.0250, align 8, !tbaa !74
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0191.0250, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !83
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.gi, i64 noundef %i.gk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit148 unwind label %bb.ax ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit148: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.11, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %i.gn = load ptr, ptr %10, align 8, !tbaa !74
  %i.go = load i64, ptr %i.fh, align 8, !tbaa !83
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef %i.gn, i64 noundef %i.go)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152 unwind label %bb.bh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152: ; preds = %bb.be
  %i.gq = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fi
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152
  call void @_ZdlPv(ptr noundef %i.gq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.12, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11TypeIdxPairEESaISB_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0191.0250)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156 unwind label %bb.bi

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156
  %i.gu = load ptr, ptr %11, align 8, !tbaa !74
  %i.gv = load i64, ptr %i.fj, align 8, !tbaa !83
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158 unwind label %bb.bj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158: ; preds = %bb.bf
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158
  %i.gy = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fk
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160
  call void @_ZdlPv(ptr noundef %i.gy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bh:                                            ; preds = %bb.be
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fi
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.hc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.bg
  %.pn80 = phi { ptr, i32 } [ %i.ha, %bb.bg ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.hb, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bv

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.bj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158, %bb.bf
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fk
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.hg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.bi
  %.pn82 = phi { ptr, i32 } [ %i.he, %bb.bi ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.hf, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bv

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142: ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.az, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit144, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140, %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.150 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.049251, %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140 ], [ %.049251, %bb.bd ], [ %.049251, %bb.bc ], [ %.049251, %bb.bc ], [ %.049251, %bb.bc ], [ %.049251, %bb.bc ], [ %.049251, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit144 ], [ %.049251, %bb.az ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0191.0250, i64 56 ; 2 uses
  %.not213 = icmp eq ptr %i.hi, %i.fg
  br i1 %.not213, label %._crit_edge253, label %bb.au

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %._crit_edge253
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.14, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.15, i64 noundef 79)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177
  br i1 %.049.lcssa, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.ho, ptr %12, align 8, !tbaa !82, !alias.scope !366
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 0, ptr %i.hp, align 8, !tbaa !83, !alias.scope !366
  store i8 0, ptr %i.ho, align 8, !tbaa !62, !alias.scope !366
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !367, !noalias !366 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.hr, null
  br i1 %.not5.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %14 = load ptr, ptr %13, align 8, !noalias !366 ; 2 uses
  %15 = icmp ugt ptr %i.hr, %14
  %.08.i.i.i = select i1 %15, ptr %i.hr, ptr %14
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !371, !noalias !366 ; 2 uses
  %i.hu = ptrtoint ptr %.08.i.i.i to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.ht, i64 noundef %i.hw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %12, align 8, !tbaa !74, !alias.scope !366 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ho
  br i1 %i.ia, label %.body180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.hz) #35
  br label %.body180

bb.bn:                                            ; preds = %bb.bk
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ib)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bn, %bb.bl
  %i.ic = load ptr, ptr %1, align 8, !tbaa !74    ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  %i.if = load ptr, ptr %12, align 8, !tbaa !74   ; 6 uses
  %i.ig = icmp eq ptr %i.if, %i.ho                ; 2 uses
  br i1 %i.ie, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ig, label %bb.bo, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ig, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ih = load i64, ptr %i.hp, align 8, !tbaa !83 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, 16
  call void @llvm.assume(i1 %i.ii)
  %.not21.i = icmp eq ptr %12, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.bp, !prof !63

bb.bp:                                            ; preds = %bb.bo
  switch i64 %i.ih, label %bb.br [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !62
  store i8 %i.ij, ptr %i.ic, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ic, ptr align 1 %i.if, i64 %i.ih, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.ik = load i64, ptr %i.hp, align 8, !tbaa !83 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !83
  %i.im = load ptr, ptr %1, align 8, !tbaa !74
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ik
  store i8 0, ptr %i.in, align 1, !tbaa !62
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.if, ptr %1, align 8, !tbaa !74
  %i.ip = load <2 x i64>, ptr %i.hp, align 8, !tbaa !62
  store <2 x i64> %i.ip, ptr %i.io, align 8, !tbaa !62
  br label %bb.bt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.iq = load i64, ptr %i.id, align 8, !tbaa !62
  store ptr %i.if, ptr %1, align 8, !tbaa !74
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.is = load <2 x i64>, ptr %i.hp, align 8, !tbaa !62
  store <2 x i64> %i.is, ptr %i.ir, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.ic, null
  br i1 %.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ic, ptr %12, align 8, !tbaa !74
  store i64 %i.iq, ptr %i.ho, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ho, ptr %12, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bs, %bb.bt
  %i.it = phi ptr [ %i.ic, %bb.bs ], [ %i.ho, %bb.bt ], [ %i.if, %bb.bo ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hp, align 8, !tbaa !83
  store i8 0, ptr %i.it, align 1, !tbaa !62
  %i.iu = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.ho
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.iu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bu

.body180:                                         ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  %i.iw = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.iw, ptr %9, align 8, !tbaa !18
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.iy = getelementptr i8, ptr %i.iw, i64 -24
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds i8, ptr %9, i64 %i.iz
  store ptr %i.ix, ptr %i.ja, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jb, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !74 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.jd) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jb, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jg) #33
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jh) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bx

bb.bv:                                            ; preds = %bb.aw, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %.body180, %bb.at
  %.pn84.pn = phi { ptr, i32 } [ %i.fn, %bb.at ], [ %i.hy, %.body180 ], [ %i.fy, %bb.ax ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.fx, %bb.aw ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #33
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.as
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %bb.bv ], [ %i.fm, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bz

bb.bx:                                            ; preds = %_ZN6duckdb13SnifferResultD2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.3 = phi i1 [ %.049.lcssa, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ true, %_ZN6duckdb13SnifferResultD2Ev.exit ]
  %i.ji = load ptr, ptr %i.c, align 8, !tbaa !372 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i185

.lr.ph.i.i.i.i185:                                ; preds = %bb.bx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.ji, %bb.bx ] ; 5 uses
  %i.jj = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !337 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.jl) #33
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !74 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i185
  call void @_ZdlPv(ptr noundef %i.jm) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #35
  %.not.i.i.i.i186 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i186, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i185, !llvm.loop !373

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.bx
  %i.jp = load ptr, ptr %5, align 8, !tbaa !342
  %i.jq = load i64, ptr %i.b, align 8, !tbaa !344
  %i.jr = shl i64 %i.jq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jp, i8 0, i64 %i.jr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.js = load ptr, ptr %5, align 8, !tbaa !342   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.a
  br i1 %i.jt, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.js) #35
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.3

bb.bz:                                            ; preds = %bb.bw, %.body, %bb.t
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.t ], [ %.pn84.pn.pn, %bb.bw ], [ %.pn.pn, %.body ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  br label %.body248

bb.bo:                                            ; preds = %bb.bl
  unreachable

_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit260: ; preds = %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.thread
  %i.ju = phi ptr [ %.pre1221.a, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.thread ], [ %i.hm, %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.jx = invoke noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr noundef nonnull align 8 dereferenceable(1033) %i.jw)
          to label %bb.bp unwind label %.loopexit.split-lp739

bb.bp:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit260
  br i1 %i.jx, label %bb.dn, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  %i.jy = load i64, ptr %i.ab, align 8, !tbaa !389
  %i.jz = load i64, ptr %i.ac, align 8, !tbaa !270
  %i.ka = load i64, ptr %i.de, align 8, !tbaa !679
  %i.kb = add i64 %i.jz, %.0700.lcssa
  %i.kc = sub i64 %i.kb, %i.ka
  invoke void @_ZN6duckdb16LinesPerBoundaryC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %23, i64 noundef %i.jy, i64 noundef %i.kc)
          to label %bb.br unwind label %bb.cq

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  store i8 0, ptr %i.n, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.kd = load i64, ptr %i.ae, align 8, !tbaa !517 ; 2 uses
  %i.ke = urem i64 %.0700.lcssa, %i.kd            ; 3 uses
  %i.kf = load ptr, ptr %i.ad, align 8, !tbaa !516
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ke
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !536 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !337 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !55
  %i.kl = icmp eq i64 %.0700.lcssa, %i.kk
  br i1 %i.kl, label %.loopexit748, label %.lr.ph.i.i.i.i

bb.bt:                                            ; preds = %bb.bu
  %i.km = icmp eq i64 %.0700.lcssa, %i.kp
  br i1 %i.km, label %.loopexit748, label %.lr.ph.i.i.i.i, !llvm.loop !890

.lr.ph.i.i.i.i:                                   ; preds = %bb.bs, %bb.bt
  %.020.i.i.i.i = phi ptr [ %i.kn, %bb.bt ], [ %i.ki, %bb.bs ]
  %i.kn = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !337 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !55 ; 2 uses
  %i.kq = urem i64 %i.kp, %i.kd
  %.not19.i.i.i.i = icmp eq i64 %i.kq, %i.ke
  br i1 %.not19.i.i.i.i, label %bb.bt, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !890

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bu
  br label %.loopexit.i.i, !llvm.loop !890

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.br
  %i.kr = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc261 unwind label %bb.cr ; 5 uses

.noexc261:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.kr, align 8, !tbaa !337
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i64 %.0700.lcssa, ptr %i.ks, align 8, !tbaa !891
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kt, i8 0, i64 48, i1 false)
  %i.ku = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 noundef %i.ke, i64 noundef %.0700.lcssa, ptr noundef nonnull %i.kr, i64 noundef 1)
          to label %.loopexit748 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc261
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.kr) #35
  br label %.body262

.loopexit748:                                     ; preds = %bb.bt, %.noexc261, %bb.bs
  %.pn.i.i = phi ptr [ %i.ku, %.noexc261 ], [ %i.ki, %bb.bs ], [ %i.kn, %bb.bt ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.kw = load i64, ptr %i.af, align 8, !tbaa !7
  %.not.i264 = icmp eq i64 %i.kw, 1
  br i1 %.not.i264, label %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit, label %bb.bv

bb.bv:                                            ; preds = %.loopexit748
  %i.kx = load ptr, ptr %i.ag, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !215, !nonnull !146, !align !214 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 147
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !56, !range !145, !noundef !146
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 145
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !56, !range !145, !noundef !146
  %i.lf = trunc nuw i8 %i.le to i1
  %i.lg = xor i1 %i.lf, true
  br label %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit

_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit: ; preds = %bb.bw, %bb.bv, %.loopexit748
  %i.lh = phi i1 [ false, %.loopexit748 ], [ true, %bb.bv ], [ %i.lg, %bb.bw ]
  invoke void @_ZNK6duckdb16FullLinePosition22ReconstructCurrentLineISt13unordered_mapImNS_10shared_ptrINS_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbRT_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i1 noundef zeroext %i.lh)
          to label %bb.bx unwind label %bb.cr

bb.bx:                                            ; preds = %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %25)
          to label %bb.by unwind label %bb.cs

bb.by:                                            ; preds = %bb.bx
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ct ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %26, ptr noundef nonnull align 8 dereferenceable(104) %i.fb, i64 noundef %.0700.lcssa)
          to label %bb.bz unwind label %bb.cu

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %26)
          to label %.noexc266 unwind label %bb.cv

.noexc266:                                        ; preds = %bb.bz
  %i.lj = load ptr, ptr %7, align 8, !tbaa !74
  %i.lk = load i64, ptr %i.ai, align 8, !tbaa !83
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %i.lj, i64 noundef %i.lk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.ca ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc266
  %i.lm = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.aj
  br i1 %i.ln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  call void @_ZdlPv(ptr noundef %i.lm) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.ca:                                            ; preds = %.noexc266
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.aj
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.ca
  call void @_ZdlPv(ptr noundef %i.lp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.body267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %bb.cb unwind label %bb.cw

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.ls = load ptr, ptr %27, align 8, !tbaa !74
  %i.lt = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %i.ls, i64 noundef %i.lt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.cx

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.cb
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lu, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.lw = load ptr, ptr %27, align 8, !tbaa !74   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.al
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273
  call void @_ZdlPv(ptr noundef %i.lw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  store ptr %i.am, ptr %28, align 8, !tbaa !82, !alias.scope !899
  store i64 0, ptr %i.an, align 8, !tbaa !83, !alias.scope !899
  store i8 0, ptr %i.am, align 8, !tbaa !62, !alias.scope !899
  %i.ly = load ptr, ptr %i.ao, align 8, !tbaa !367, !noalias !899 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ly, null
  br i1 %.not5.i.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %40 = load ptr, ptr %i.ap, align 8, !noalias !899 ; 2 uses
  %41 = icmp ugt ptr %i.ly, %40
  %.08.i.i.i = select i1 %41, ptr %i.ly, ptr %40
  %i.lz = load ptr, ptr %i.aq, align 8, !tbaa !371, !noalias !899 ; 2 uses
  %i.ma = ptrtoint ptr %.08.i.i.i to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef 0, i64 noundef 0, ptr noundef %i.lz, i64 noundef %i.mc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cd ; 0 uses

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mf = load ptr, ptr %28, align 8, !tbaa !74, !alias.scope !899 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.am
  br i1 %i.mg, label %.body280, label %.body280.sink.split

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cd

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ce, %bb.cc
  invoke void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cf unwind label %bb.cz

bb.cf:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.mh = load i64, ptr %i.ae, align 8, !tbaa !517 ; 4 uses
  %i.mi = urem i64 %.0700.lcssa, %i.mh            ; 5 uses
  %i.mj = load ptr, ptr %i.ad, align 8, !tbaa !516
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !536 ; 4 uses
  %.not.i.i.i.i282 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.i282, label %.loopexit.i.i288, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !337 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !55
  %i.mp = icmp eq i64 %.0700.lcssa, %i.mo
  br i1 %i.mp, label %.loopexit747.thread, label %.lr.ph.i.i.i.i283

.loopexit747.thread:                              ; preds = %bb.cg
  %.1.i.i2911332 = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ci
  %i.mq = icmp eq i64 %.0700.lcssa, %i.mt
  br i1 %i.mq, label %.loopexit747, label %.lr.ph.i.i.i.i283, !llvm.loop !890

.lr.ph.i.i.i.i283:                                ; preds = %bb.cg, %bb.ch
  %.020.i.i.i.i284 = phi ptr [ %i.mr, %bb.ch ], [ %i.mm, %bb.cg ]
  %i.mr = load ptr, ptr %.020.i.i.i.i284, align 8, !tbaa !337 ; 4 uses
  %.not18.i.i.i.i285 = icmp eq ptr %i.mr, null
  br i1 %.not18.i.i.i.i285, label %.loopexit.i.i288, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i283
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !55 ; 2 uses
  %i.mu = urem i64 %i.mt, %i.mh
  %.not19.i.i.i.i286 = icmp eq i64 %i.mu, %i.mi
  br i1 %.not19.i.i.i.i286, label %bb.ch, label %..loopexit_crit_edge21.i.i.i.i287, !llvm.loop !890

..loopexit_crit_edge21.i.i.i.i287:                ; preds = %bb.ci
  br label %.loopexit.i.i288, !llvm.loop !890

.loopexit.i.i288:                                 ; preds = %.lr.ph.i.i.i.i283, %..loopexit_crit_edge21.i.i.i.i287, %bb.cf
  %i.mv = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc292 unwind label %bb.da ; 5 uses

.noexc292:                                        ; preds = %.loopexit.i.i288
  store ptr null, ptr %i.mv, align 8, !tbaa !337
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i64 %.0700.lcssa, ptr %i.mw, align 8, !tbaa !891
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i8 0, i64 48, i1 false)
  %i.my = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 noundef %i.mi, i64 noundef %.0700.lcssa, ptr noundef nonnull %i.mv, i64 noundef 1)
          to label %.noexc292..loopexit747_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i289

.noexc292..loopexit747_crit_edge:                 ; preds = %.noexc292
  %.pre1222.a = load i64, ptr %i.ae, align 8, !tbaa !517 ; 2 uses
  %.pre1223 = load ptr, ptr %i.ad, align 8, !tbaa !516
  %.pre1224 = urem i64 %.0700.lcssa, %.pre1222.a  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre1223, i64 %.pre1224
  %.pre1225 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !536
  br label %.loopexit747

_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i289: ; preds = %.noexc292
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.mv) #35
  br label %.body293

.loopexit747:                                     ; preds = %bb.ch, %.noexc292..loopexit747_crit_edge
  %i.na = phi ptr [ %.pre1225, %.noexc292..loopexit747_crit_edge ], [ %i.ml, %bb.ch ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre1224, %.noexc292..loopexit747_crit_edge ], [ %i.mi, %bb.ch ] ; 2 uses
  %i.nb = phi i64 [ %.pre1222.a, %.noexc292..loopexit747_crit_edge ], [ %i.mh, %bb.ch ]
  %.pn.i.i290 = phi ptr [ %i.my, %.noexc292..loopexit747_crit_edge ], [ %i.mr, %bb.ch ] ; 3 uses
  %.1.i.i291 = getelementptr inbounds nuw i8, ptr %.pn.i.i290, i64 16 ; 2 uses
  %.not.i.i.i.i296 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i296, label %.loopexit.i.i302, label %bb.cj

bb.cj:                                            ; preds = %.loopexit747.thread, %.loopexit747
  %.1.i.i2911341 = phi ptr [ %.1.i.i2911332, %.loopexit747.thread ], [ %.1.i.i291, %.loopexit747 ] ; 4 uses
  %.pn.i.i2901338 = phi ptr [ %i.mm, %.loopexit747.thread ], [ %.pn.i.i290, %.loopexit747 ] ; 4 uses
  %i.nc = phi i64 [ %i.mh, %.loopexit747.thread ], [ %i.nb, %.loopexit747 ]
  %.pre-phi1334.a = phi i64 [ %i.mi, %.loopexit747.thread ], [ %.pre-phi, %.loopexit747 ] ; 3 uses
  %i.nd = phi ptr [ %i.ml, %.loopexit747.thread ], [ %i.na, %.loopexit747 ]
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !337 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !55
  %i.nh = icmp eq i64 %.0700.lcssa, %i.ng
  br i1 %i.nh, label %.loopexit746, label %.lr.ph.i.i.i.i297

bb.ck:                                            ; preds = %bb.cl
  %i.ni = icmp eq i64 %.0700.lcssa, %i.nl
  br i1 %i.ni, label %.loopexit746, label %.lr.ph.i.i.i.i297, !llvm.loop !890

.lr.ph.i.i.i.i297:                                ; preds = %bb.cj, %bb.ck
  %.020.i.i.i.i298 = phi ptr [ %i.nj, %bb.ck ], [ %i.ne, %bb.cj ]
  %i.nj = load ptr, ptr %.020.i.i.i.i298, align 8, !tbaa !337 ; 4 uses
  %.not18.i.i.i.i299 = icmp eq ptr %i.nj, null
  br i1 %.not18.i.i.i.i299, label %.loopexit.i.i302, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i297
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !55 ; 2 uses
  %i.nm = urem i64 %i.nl, %i.nc
  %.not19.i.i.i.i300 = icmp eq i64 %i.nm, %.pre-phi1334.a
  br i1 %.not19.i.i.i.i300, label %bb.ck, label %..loopexit_crit_edge21.i.i.i.i301, !llvm.loop !890

..loopexit_crit_edge21.i.i.i.i301:                ; preds = %bb.cl
  br label %.loopexit.i.i302, !llvm.loop !890

.loopexit.i.i302:                                 ; preds = %.lr.ph.i.i.i.i297, %..loopexit_crit_edge21.i.i.i.i301, %.loopexit747
  %.1.i.i2911339 = phi ptr [ %.1.i.i291, %.loopexit747 ], [ %.1.i.i2911341, %..loopexit_crit_edge21.i.i.i.i301 ], [ %.1.i.i2911341, %.lr.ph.i.i.i.i297 ]
  %.pn.i.i2901336 = phi ptr [ %.pn.i.i290, %.loopexit747 ], [ %.pn.i.i2901338, %..loopexit_crit_edge21.i.i.i.i301 ], [ %.pn.i.i2901338, %.lr.ph.i.i.i.i297 ]
  %.pre-phi1335 = phi i64 [ %.pre-phi, %.loopexit747 ], [ %.pre-phi1334.a, %..loopexit_crit_edge21.i.i.i.i301 ], [ %.pre-phi1334.a, %.lr.ph.i.i.i.i297 ]
  %i.nn = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc306 unwind label %bb.da ; 5 uses

.noexc306:                                        ; preds = %.loopexit.i.i302
  store ptr null, ptr %i.nn, align 8, !tbaa !337
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i64 %.0700.lcssa, ptr %i.no, align 8, !tbaa !891
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.np, i8 0, i64 48, i1 false)
  %i.nq = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 noundef %.pre-phi1335, i64 noundef %.0700.lcssa, ptr noundef nonnull %i.nn, i64 noundef 1)
          to label %.loopexit746 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i303

_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i303: ; preds = %.noexc306
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.nn) #35
  br label %.body293

.loopexit746:                                     ; preds = %bb.ck, %.noexc306, %bb.cj
  %.1.i.i2911340 = phi ptr [ %.1.i.i2911339, %.noexc306 ], [ %.1.i.i2911341, %bb.cj ], [ %.1.i.i2911341, %bb.ck ]
  %.pn.i.i2901337 = phi ptr [ %.pn.i.i2901336, %.noexc306 ], [ %.pn.i.i2901338, %bb.cj ], [ %.pn.i.i2901338, %bb.ck ] ; 2 uses
  %.pn.i.i304 = phi ptr [ %i.nq, %.noexc306 ], [ %i.ne, %bb.cj ], [ %i.nj, %bb.ck ] ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.pn.i.i304, i64 40
  %i.nt = load i64, ptr %.1.i.i2911340, align 8, !tbaa !212
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !212
  %i.nv = icmp eq i64 %i.nt, %i.nu
  br i1 %i.nv, label %bb.cm, label %_ZNK6duckdb12LinePositioneqERKS0_.exit.thread

bb.cm:                                            ; preds = %.loopexit746
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn.i.i2901337, i64 32
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !211
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn.i.i304, i64 56
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !211
  %i.oa = icmp eq i64 %i.nx, %i.nz
  br i1 %i.oa, label %_ZNK6duckdb12LinePositioneqERKS0_.exit, label %_ZNK6duckdb12LinePositioneqERKS0_.exit.thread

_ZNK6duckdb12LinePositioneqERKS0_.exit:           ; preds = %bb.cm
  %i.ob = getelementptr inbounds nuw i8, ptr %.pn.i.i2901337, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !243
  %i.od = getelementptr inbounds nuw i8, ptr %.pn.i.i304, i64 48
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !243
  %i.of = icmp eq i64 %i.oc, %i.oe
  br i1 %i.of, label %bb.db, label %_ZNK6duckdb12LinePositioneqERKS0_.exit.thread

_ZNK6duckdb12LinePositioneqERKS0_.exit.thread:    ; preds = %.loopexit746, %bb.cm, %_ZNK6duckdb12LinePositioneqERKS0_.exit
  %i.og = load i64, ptr %i.ae, align 8, !tbaa !517 ; 2 uses
  %i.oh = urem i64 %.0700.lcssa, %i.og            ; 3 uses
  %i.oi = load ptr, ptr %i.ad, align 8, !tbaa !516
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.oh
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !536 ; 2 uses
  %.not.i.i.i.i310 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i310, label %.loopexit.i.i316, label %bb.cn

bb.cn:                                            ; preds = %_ZNK6duckdb12LinePositioneqERKS0_.exit.thread
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !337 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !55
  %i.oo = icmp eq i64 %.0700.lcssa, %i.on
  br i1 %i.oo, label %.loopexit745, label %.lr.ph.i.i.i.i311

bb.co:                                            ; preds = %bb.cp
  %i.op = icmp eq i64 %.0700.lcssa, %i.os
  br i1 %i.op, label %.loopexit745, label %.lr.ph.i.i.i.i311, !llvm.loop !890

.lr.ph.i.i.i.i311:                                ; preds = %bb.cn, %bb.co
  %.020.i.i.i.i312 = phi ptr [ %i.oq, %bb.co ], [ %i.ol, %bb.cn ]
end_hunk_1
begin_hunk_2_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
.lr.ph.i.i.i.i367:                                ; preds = %bb.ep, %bb.eq
  %.020.i.i.i.i368 = phi ptr [ %i.vj, %bb.eq ], [ %i.ve, %bb.ep ]
  %i.vj = load ptr, ptr %.020.i.i.i.i368, align 8, !tbaa !337 ; 4 uses
  %.not18.i.i.i.i369 = icmp eq ptr %i.vj, null
  br i1 %.not18.i.i.i.i369, label %.loopexit.i.i372, label %bb.er

bb.er:                                            ; preds = %.lr.ph.i.i.i.i367
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !55 ; 2 uses
  %i.vm = urem i64 %i.vl, %i.uz
  %.not19.i.i.i.i370 = icmp eq i64 %i.vm, %i.va
  br i1 %.not19.i.i.i.i370, label %bb.eq, label %..loopexit_crit_edge21.i.i.i.i371, !llvm.loop !890

..loopexit_crit_edge21.i.i.i.i371:                ; preds = %bb.er
  br label %.loopexit.i.i372, !llvm.loop !890

.loopexit.i.i372:                                 ; preds = %.lr.ph.i.i.i.i367, %..loopexit_crit_edge21.i.i.i.i371, %bb.eo
  %i.vn = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc376 unwind label %bb.ga ; 5 uses

.noexc376:                                        ; preds = %.loopexit.i.i372
  store ptr null, ptr %i.vn, align 8, !tbaa !337
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i64 %.17011092, ptr %i.vo, align 8, !tbaa !891
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.vp, i8 0, i64 48, i1 false)
  %i.vq = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 noundef %i.va, i64 noundef %.17011092, ptr noundef nonnull %i.vn, i64 noundef 1)
          to label %.loopexit731 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i373

_ZNSt10_HashtableImSt4pairIKmN6duckdb16FullLinePositionEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i373: ; preds = %.noexc376
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.vn) #35
  br label %.body377

.loopexit731:                                     ; preds = %bb.eq, %.noexc376, %bb.ep
  %.pn.i.i374 = phi ptr [ %i.vq, %.noexc376 ], [ %i.ve, %bb.ep ], [ %i.vj, %bb.eq ]
  %.1.i.i375 = getelementptr inbounds nuw i8, ptr %.pn.i.i374, i64 16
  %i.vs = load i64, ptr %i.af, align 8, !tbaa !7
  %.not.i380 = icmp eq i64 %i.vs, 1
  br i1 %.not.i380, label %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit381, label %bb.es

bb.es:                                            ; preds = %.loopexit731
  %i.vt = load ptr, ptr %i.ag, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 64
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !215, !nonnull !146, !align !214 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 147
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !56, !range !145, !noundef !146
  %i.vy = trunc nuw i8 %i.vx to i1
  br i1 %i.vy, label %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit381, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 145
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !56, !range !145, !noundef !146
  %i.wb = trunc nuw i8 %i.wa to i1
  %i.wc = xor i1 %i.wb, true
  br label %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit381

_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit381: ; preds = %bb.et, %bb.es, %.loopexit731
  %i.wd = phi i1 [ false, %.loopexit731 ], [ true, %bb.es ], [ %i.wc, %bb.et ]
  invoke void @_ZNK6duckdb16FullLinePosition22ReconstructCurrentLineISt13unordered_mapImNS_10shared_ptrINS_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbRT_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i375, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i1 noundef zeroext %i.wd)
          to label %bb.eu unwind label %bb.ga

bb.eu:                                            ; preds = %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit381
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 16, !tbaa !18
  store ptr null, ptr %i.bl, align 8, !tbaa !904
  store i8 0, ptr %i.bm, align 16, !tbaa !911
  store i8 0, ptr %i.bn, align 1, !tbaa !912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store ptr %i.bp, ptr %33, align 16, !tbaa !18
  %i.we = load i64, ptr %i.br, align 8
  %i.wf = getelementptr inbounds i8, ptr %33, i64 %i.we
  store ptr %i.bq, ptr %i.wf, align 8, !tbaa !18
  %i.wg = load ptr, ptr %33, align 16, !tbaa !18
  %i.wh = getelementptr i8, ptr %i.wg, i64 -24
  %i.wi = load i64, ptr %i.wh, align 8
  %i.wj = getelementptr inbounds i8, ptr %33, i64 %i.wi
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.wj, ptr noundef null)
          to label %bb.ev unwind label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bk, align 16, !tbaa !18
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %33, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bt, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #33
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bs, align 8, !tbaa !18
  store i32 16, ptr %i.bv, align 8, !tbaa !913
  store ptr %i.bx, ptr %i.bw, align 16, !tbaa !82
  store i64 0, ptr %i.by, align 8, !tbaa !83
  store i8 0, ptr %i.bx, align 16, !tbaa !62
  %i.wk = load ptr, ptr %33, align 16, !tbaa !18
  %i.wl = getelementptr i8, ptr %i.wk, i64 -24
  %i.wm = load i64, ptr %i.wl, align 8
  %i.wn = getelementptr inbounds i8, ptr %33, i64 %i.wm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.wn, ptr noundef nonnull %i.bs)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.wp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.bs) #33
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.pn.pn.i = phi { ptr, i32 } [ %i.wo, %bb.ew ], [ %i.wp, %bb.ex ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #33
  br label %.body382

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.ev
  %i.wq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385 unwind label %bb.gb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #33
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %34, ptr noundef nonnull align 8 dereferenceable(104) %i.fb, i64 noundef %.17011092)
          to label %bb.ez unwind label %bb.gc

bb.ez:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %34)
          to label %.noexc393 unwind label %bb.gd

.noexc393:                                        ; preds = %bb.ez
  %i.wr = load ptr, ptr %5, align 8, !tbaa !74
  %i.ws = load i64, ptr %i.bz, align 8, !tbaa !83
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %i.wr, i64 noundef %i.ws)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i389 unwind label %bb.fa ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i389: ; preds = %.noexc393
  %i.wu = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.ca
  br i1 %i.wv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i390: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i389
  call void @_ZdlPv(ptr noundef %i.wu) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i392

bb.fa:                                            ; preds = %.noexc393
  %i.ww = landingpad { ptr, i32 }
          cleanup
  %i.wx = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ca
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i386: ; preds = %bb.fa
  call void @_ZdlPv(ptr noundef %i.wx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.body394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i392: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.wz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit398 unwind label %bb.gd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit398: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i392
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #33
  %i.xa = load i8, ptr %i.ft, align 8, !tbaa !298
  invoke void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, i8 noundef zeroext %i.xa)
          to label %bb.fb unwind label %bb.ge

bb.fb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit398
  %i.xb = load ptr, ptr %35, align 8, !tbaa !74
  %i.xc = load i64, ptr %i.cb, align 8, !tbaa !83
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %i.xb, i64 noundef %i.xc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit400 unwind label %bb.gf

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit400: ; preds = %bb.fb
  %i.xe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xd, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402 unwind label %bb.gf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit400
  %i.xf = load ptr, ptr %35, align 8, !tbaa !74   ; 2 uses
  %i.xg = icmp eq ptr %i.xf, %i.cc
  br i1 %i.xg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402
  call void @_ZdlPv(ptr noundef %i.xf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %34) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  store ptr %i.cd, ptr %36, align 8, !tbaa !82, !alias.scope !922
  store i64 0, ptr %i.ce, align 8, !tbaa !83, !alias.scope !922
  store i8 0, ptr %i.cd, align 8, !tbaa !62, !alias.scope !922
  %i.xh = load ptr, ptr %i.cf, align 16, !tbaa !367, !noalias !922 ; 3 uses
  %.not5.i.i408 = icmp eq ptr %i.xh, null
  br i1 %.not5.i.i408, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %42 = load ptr, ptr %i.cg, align 16, !noalias !922 ; 2 uses
  %43 = icmp ugt ptr %i.xh, %42
  %.08.i.i.i406 = select i1 %43, ptr %i.xh, ptr %42
  %i.xi = load ptr, ptr %i.ch, align 8, !tbaa !371, !noalias !922 ; 2 uses
  %i.xj = ptrtoint ptr %.08.i.i.i406 to i64
  %i.xk = ptrtoint ptr %i.xi to i64
  %i.xl = sub i64 %i.xj, %i.xk
  %i.xm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef %i.xi, i64 noundef %i.xl)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit415 unwind label %bb.fd ; 0 uses

bb.fd:                                            ; preds = %bb.fe, %bb.fc
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xo = load ptr, ptr %36, align 8, !tbaa !74, !alias.scope !922 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.cd
  br i1 %i.xp, label %.body413, label %.body413.sink.split

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit415 unwind label %bb.fd

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit415: ; preds = %bb.fe, %bb.fc
  invoke void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.ff unwind label %bb.gh

bb.ff:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit415
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  %i.xq = load ptr, ptr %i.y, align 8, !tbaa !52  ; 2 uses
  %.not.i416 = icmp eq ptr %i.xq, null
  br i1 %.not.i416, label %.noexc.i639, label %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit425, !prof !63

.noexc.i639:                                      ; preds = %bb.ff
  %i.xr = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.xs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.xs, ptr %4, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 49, ptr %i.c, align 8, !tbaa !55
  %i.xt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc640 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i417 ; 3 uses

.noexc640:                                        ; preds = %.noexc.i639
  store ptr %i.xt, ptr %4, align 8, !tbaa !74
  %i.xu = load i64, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.xt, ptr noundef nonnull align 1 dereferenceable(49) @.str.50, i64 49, i1 false)
  %i.xv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.xu, ptr %i.xv, align 8, !tbaa !83
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xu
  store i8 0, ptr %i.xw, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.xr, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %.noexc640
  invoke void @__cxa_throw(ptr nonnull %i.xr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.fj unwind label %bb.fh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i417: ; preds = %.noexc.i639
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %.noexc640
  %.0.i.i420 = phi i1 [ false, %bb.fg ], [ true, %.noexc640 ] ; 2 uses
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xz = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.xs
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421: ; preds = %bb.fh
  call void @_ZdlPv(ptr noundef %i.xz) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.0.i.i420, label %bb.fi, label %.body423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i422: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.0.i.i420, label %bb.fi, label %.body423

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i417
  %.pn9.i.i418 = phi { ptr, i32 } [ %i.xx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i417 ], [ %i.xy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i422 ], [ %i.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421 ]
  call void @__cxa_free_exception(ptr %i.xr) #33
  br label %.body423

bb.fj:                                            ; preds = %bb.fg
  unreachable

_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit425: ; preds = %bb.ff
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xq, i64 64
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.yd = load ptr, ptr %i.dk, align 8, !tbaa !331
  %i.ye = load ptr, ptr %i.dh, align 8, !tbaa !334 ; 2 uses
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = ashr exact i64 %i.yh, 5                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.0941097, ptr %i.j, align 8, !tbaa !55
  store i64 %i.yi, ptr %i.k, align 8, !tbaa !55
  %.not.i.i.i426 = icmp ult i64 %.0941097, %i.yi
  br i1 %.not.i.i.i426, label %bb.fo, label %.noexc.i643, !prof !311

.noexc.i643:                                      ; preds = %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit425
  %i.yj = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.yk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.yk, ptr %3, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 55, ptr %i.b, align 8, !tbaa !55
  %i.yl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc644 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i427 ; 3 uses

.noexc644:                                        ; preds = %.noexc.i643
  store ptr %i.yl, ptr %3, align 8, !tbaa !74
  %i.ym = load i64, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  store i64 %i.ym, ptr %i.yk, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.yl, ptr noundef nonnull align 1 dereferenceable(55) @.str.44, i64 55, i1 false)
  %i.yn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ym, ptr %i.yn, align 8, !tbaa !83
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.ym
  store i8 0, ptr %i.yo, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.yj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.fk unwind label %bb.fl

bb.fk:                                            ; preds = %.noexc644
  invoke void @__cxa_throw(ptr nonnull %i.yj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.fn unwind label %bb.fl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i427: ; preds = %.noexc.i643
  %i.yp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fk, %.noexc644
  %.0.i.i.i430 = phi i1 [ false, %bb.fk ], [ true, %.noexc644 ] ; 2 uses
  %i.yq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.yr = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.yk
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431: ; preds = %bb.fl
  call void @_ZdlPv(ptr noundef %i.yr) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0.i.i.i430, label %bb.fm, label %.body423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i432: ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0.i.i.i430, label %bb.fm, label %.body423

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i427
  %.pn8.i.i.i428 = phi { ptr, i32 } [ %i.yp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i427 ], [ %i.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i432 ], [ %i.yq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i431 ]
  call void @__cxa_free_exception(ptr %i.yj) #33
  br label %.body423

bb.fn:                                            ; preds = %bb.fk
  unreachable

bb.fo:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.yt = getelementptr inbounds nuw [32 x i8], ptr %i.ye, i64 %.0941097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !704
  %i.yu = load i64, ptr %i.ae, align 8, !tbaa !517 ; 2 uses
  %i.yv = urem i64 %.17011092, %i.yu              ; 3 uses
  %i.yw = load ptr, ptr %i.ad, align 8, !tbaa !516
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yv
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !536 ; 2 uses
  %.not.i.i.i.i435 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i.i435, label %.loopexit.i.i441, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !337 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !55
  %i.zc = icmp eq i64 %.17011092, %i.zb
  br i1 %i.zc, label %.loopexit, label %.lr.ph.i.i.i.i436

bb.fq:                                            ; preds = %bb.fr
  %i.zd = icmp eq i64 %.17011092, %i.zg
  br i1 %i.zd, label %.loopexit, label %.lr.ph.i.i.i.i436, !llvm.loop !890

.lr.ph.i.i.i.i436:                                ; preds = %bb.fp, %bb.fq
  %.020.i.i.i.i437 = phi ptr [ %i.ze, %bb.fq ], [ %i.yz, %bb.fp ]
  %i.ze = load ptr, ptr %.020.i.i.i.i437, align 8, !tbaa !337 ; 4 uses
  %.not18.i.i.i.i438 = icmp eq ptr %i.ze, null
  br i1 %.not18.i.i.i.i438, label %.loopexit.i.i441, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i.i436
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !55 ; 2 uses
  %i.zh = urem i64 %i.zg, %i.yu
  %.not19.i.i.i.i439 = icmp eq i64 %i.zh, %i.yv
  br i1 %.not19.i.i.i.i439, label %bb.fq, label %..loopexit_crit_edge21.i.i.i.i440, !llvm.loop !890

..loopexit_crit_edge21.i.i.i.i440:                ; preds = %bb.fr
  br label %.loopexit.i.i441, !llvm.loop !890

.loopexit.i.i441:                                 ; preds = %.lr.ph.i.i.i.i436, %..loopexit_crit_edge21.i.i.i.i440, %bb.fo
  %i.zi = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
end_hunk_2
begin_hunk_3_@_ZN6duckdb18StringValueScanner22ProcessOverBufferValueEv:bb.a

_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i:    ; preds = %.lr.ph.split.i
  %i.kr = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not23.i = icmp eq i64 %i.kr, %i.kf
  br i1 %exitcond.not23.i, label %.critedge137, label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i
  %.015.i.be = phi i64 [ %i.kr, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %i.kq, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  %.0914.i.be = phi i1 [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %.not.i.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  br label %.lr.ph.split.i, !llvm.loop !660

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.cj, %bb.ci, %bb.ch
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store i8 3, ptr %i.f, align 1, !tbaa !661
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 720
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ks, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(8) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %.noexc164 unwind label %bb.dn

.noexc164:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  %i.ku = load i64, ptr %i.jp, align 8, !tbaa !657
  %i.kv = add i64 %i.ku, 1
  store i64 %i.kv, ptr %i.jp, align 8, !tbaa !657
  br label %.critedge137

bb.ck:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !663, !nonnull !146
  store i8 1, ptr %i.kx, align 1, !tbaa !56
  br label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit

_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit: ; preds = %bb.cf, %bb.ck
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !974
  %i.lb = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, i64 noundef %i.la)
          to label %bb.cl unwind label %bb.do

bb.cl:                                            ; preds = %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
          to label %bb.cm unwind label %bb.dp

bb.cm:                                            ; preds = %bb.cl
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cn unwind label %bb.dq

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.ld, label %bb.ee, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store i8 0, ptr %i.g, align 1, !tbaa !661
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.le, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.cp unwind label %bb.ds

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  %i.lf = load ptr, ptr %i.ae, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.li = invoke noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr noundef nonnull align 8 dereferenceable(1033) %i.lh)
          to label %bb.cq unwind label %bb.do

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.li, label %.critedge139, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.cs unwind label %bb.dt

bb.cs:                                            ; preds = %bb.cr
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.du ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.lk = load ptr, ptr %1, align 8, !tbaa !74    ; 3 uses
  %i.ll = load i64, ptr %i.s, align 8, !tbaa !83  ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.lm, ptr %5, align 8, !tbaa !82
  %i.ln = icmp eq ptr %i.lk, null
  %i.lo = icmp ne i64 %i.ll, 0
  %or.cond.i = and i1 %i.ln, %i.lo
  br i1 %or.cond.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc167 unwind label %bb.dv

.noexc167:                                        ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 %i.ll, ptr %i.e, align 8, !tbaa !55
  %i.lp = icmp ugt i64 %i.ll, 15
  br i1 %i.lp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.cu
  %i.lq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc168 unwind label %bb.dv ; 2 uses

.noexc168:                                        ; preds = %.noexc.i
  store ptr %i.lq, ptr %5, align 8, !tbaa !74
  %i.lr = load i64, ptr %i.e, align 8, !tbaa !55
  store i64 %i.lr, ptr %i.lm, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc168, %bb.cu
  %i.ls = phi ptr [ %i.lq, %.noexc168 ], [ %i.lm, %bb.cu ] ; 2 uses
  switch i64 %i.ll, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %bb.cx
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i
  %i.lt = load i8, ptr %i.lk, align 1, !tbaa !62
  store i8 %i.lt, ptr %i.ls, align 1, !tbaa !62
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ls, ptr align 1 %i.lk, i64 %i.ll, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i
  %i.lu = load i64, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !83
  %i.lw = load ptr, ptr %5, align 8, !tbaa !74
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 0, ptr %i.lx, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.ly = load ptr, ptr %5, align 8, !tbaa !74
  %i.lz = load i64, ptr %i.lv, align 8, !tbaa !83
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ly, i64 noundef %i.lz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.dw ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.cx
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.dw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.md = load i64, ptr %i.kz, align 8, !tbaa !974
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !554
  %i.mf = getelementptr inbounds nuw [5 x i8], ptr %i.me, i64 %i.md
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !557
  invoke void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i8 noundef zeroext %i.mh)
          to label %bb.cy unwind label %bb.dx

bb.cy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.mi = load ptr, ptr %6, align 8, !tbaa !74
  %i.mj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !83
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef %i.mi, i64 noundef %i.mk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173 unwind label %bb.dy

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173: ; preds = %bb.cy
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.dy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173
  %i.mn = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  call void @_ZdlPv(ptr noundef %i.mn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.mq = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.lm
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.mq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.ms = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ms, ptr %7, align 8, !tbaa !82, !alias.scope !981
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.mt, align 8, !tbaa !83, !alias.scope !981
  store i8 0, ptr %i.ms, align 8, !tbaa !62, !alias.scope !981
  %i.mu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !367, !noalias !981 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.mv, null
  br i1 %.not5.i.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %18 = load ptr, ptr %17, align 8, !noalias !981 ; 2 uses
  %19 = icmp ugt ptr %i.mv, %18
  %.08.i.i.i = select i1 %19, ptr %i.mv, ptr %18
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !371, !noalias !981 ; 2 uses
  %i.my = ptrtoint ptr %.08.i.i.i to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.mx, i64 noundef %i.na)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.da ; 0 uses

bb.da:                                            ; preds = %bb.db, %bb.cz
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = load ptr, ptr %7, align 8, !tbaa !74, !alias.scope !981 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.ms
  br i1 %i.ne, label %.body, label %.body.sink.split

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.nf = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.nf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.da

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.db, %bb.cz
  invoke void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.dc unwind label %bb.ea

bb.dc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.ng, ptr %8, align 8, !tbaa !82
  %i.nh = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.ni = load i64, ptr %i.mt, align 8, !tbaa !83 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 %i.ni, ptr %i.d, align 8, !tbaa !55
  %i.nj = icmp ugt i64 %i.ni, 15
  br i1 %i.nj, label %.noexc.i181, label %._crit_edge.i.i180

.noexc.i181:                                      ; preds = %bb.dc
  %i.nk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc182 unwind label %bb.ea ; 2 uses

.noexc182:                                        ; preds = %.noexc.i181
  store ptr %i.nk, ptr %8, align 8, !tbaa !74
  %i.nl = load i64, ptr %i.d, align 8, !tbaa !55
  store i64 %i.nl, ptr %i.ng, align 8, !tbaa !62
  br label %._crit_edge.i.i180

._crit_edge.i.i180:                               ; preds = %.noexc182, %bb.dc
  %i.nm = phi ptr [ %i.nk, %.noexc182 ], [ %i.ng, %bb.dc ] ; 2 uses
  switch i64 %i.ni, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %bb.df
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i180
  %i.nn = load i8, ptr %i.nh, align 1, !tbaa !62
  store i8 %i.nn, ptr %i.nm, align 1, !tbaa !62
  br label %bb.df

bb.de:                                            ; preds = %._crit_edge.i.i180
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nm, ptr align 1 %i.nh, i64 %i.ni, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %._crit_edge.i.i180
  %i.no = load i64, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 %i.no, ptr %i.np, align 8, !tbaa !83
  %i.nq = load ptr, ptr %8, align 8, !tbaa !74
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.no
  store i8 0, ptr %i.nr, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.ns = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb6vectorINS_12CurrentErrorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %i.le)
          to label %.noexc187 unwind label %bb.eb ; 5 uses

.noexc187:                                        ; preds = %bb.df
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32 ; 5 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !74 ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 48 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  %i.nx = load ptr, ptr %8, align 8, !tbaa !74    ; 6 uses
  %i.ny = icmp eq ptr %i.nx, %i.ng                ; 2 uses
  br i1 %i.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %.noexc187
  br i1 %i.ny, label %bb.dg, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i183: ; preds = %.noexc187
  br i1 %i.ny, label %bb.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  %i.nz = load i64, ptr %i.np, align 8, !tbaa !83 ; 3 uses
  %i.oa = icmp ult i64 %i.nz, 16
  call void @llvm.assume(i1 %i.oa)
  %.not21.i.i = icmp eq ptr %8, %i.nt
  br i1 %.not21.i.i, label %bb.dm, label %bb.dh, !prof !63

bb.dh:                                            ; preds = %bb.dg
  switch i64 %i.nz, label %bb.dj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !62
  store i8 %i.ob, ptr %i.nu, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nu, ptr align 1 %i.nx, i64 %i.nz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.dj, %bb.di, %bb.dh
  %i.oc = load i64, ptr %i.np, align 8, !tbaa !83 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !83
  %i.oe = load ptr, ptr %i.nt, align 8, !tbaa !74
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oc
  store i8 0, ptr %i.of, align 1, !tbaa !62
  %.pre.i.i185 = load ptr, ptr %8, align 8, !tbaa !74
  br label %bb.dm

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  %i.og = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  store ptr %i.nx, ptr %i.nt, align 8, !tbaa !74
  %i.oh = load <2 x i64>, ptr %i.np, align 8, !tbaa !62
  store <2 x i64> %i.oh, ptr %i.og, align 8, !tbaa !62
  br label %bb.dl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i183
  %i.oi = load i64, ptr %i.nv, align 8, !tbaa !62
  store ptr %i.nx, ptr %i.nt, align 8, !tbaa !74
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.ok = load <2 x i64>, ptr %i.np, align 8, !tbaa !62
  store <2 x i64> %i.ok, ptr %i.oj, align 8, !tbaa !62
  %.not.i.i184 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i184, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.nu, ptr %8, align 8, !tbaa !74
  store i64 %i.oi, ptr %i.ng, align 8, !tbaa !62
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ng, ptr %8, align 8, !tbaa !74
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.dg
  %i.ol = phi ptr [ %i.nu, %bb.dk ], [ %i.ng, %bb.dl ], [ %i.nx, %bb.dg ], [ %.pre.i.i185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.np, align 8, !tbaa !83
  store i8 0, ptr %i.ol, align 1, !tbaa !62
  %i.om = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.ng
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.dm
  call void @_ZdlPv(ptr noundef %i.om) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  %i.oo = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.ms
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  call void @_ZdlPv(ptr noundef %i.oo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.oq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.oq, ptr %4, align 8, !tbaa !18
  %i.or = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.os = getelementptr i8, ptr %i.oq, i64 -24
  %i.ot = load i64, ptr %i.os, align 8
  %i.ou = getelementptr inbounds i8, ptr %4, i64 %i.ot
  store ptr %i.or, ptr %i.ou, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ov, align 8, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !74 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  call void @_ZdlPv(ptr noundef %i.ox) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ov, align 8, !tbaa !18
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pa) #33
  %i.pb = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.pb) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.critedge139

bb.dn:                                            ; preds = %.critedge.i
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.do:                                            ; preds = %bb.cp, %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit
end_hunk_3
begin_hunk_4_@_ZN6duckdb18StringValueScanner22ProcessOverBufferValueEv:bb.a
  %i.qr = load i64, ptr %i.s, align 8, !tbaa !83  ; 2 uses
  %i.qs = trunc i64 %i.qr to i32                  ; 3 uses
  %i.qt = icmp ult i32 %i.qs, 13
  br i1 %i.qt, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5325, i8 0, i64 12, i1 false)
  %i.qu = icmp eq i32 %i.qs, 0
  br i1 %i.qu, label %_ZN6duckdb8string_tC2EPKcj.exit206, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qv = and i64 %i.qr, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5325, ptr align 1 %i.qq, i64 %i.qv, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit206

bb.en:                                            ; preds = %bb.ek
  %i.qw = load i32, ptr %i.qq, align 1
  store i32 %i.qw, ptr %.sroa.5325, align 4
  %.sroa.5325.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5325, i64 4
  store ptr %i.qq, ptr %.sroa.5325.4..sroa_idx, align 4, !tbaa !62
  br label %_ZN6duckdb8string_tC2EPKcj.exit206

_ZN6duckdb8string_tC2EPKcj.exit206:               ; preds = %bb.en, %bb.em, %bb.el
  store i32 %i.qs, ptr %2, align 8
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5325.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5325, i64 12, i1 false), !tbaa.struct !973
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5325)
  %i.qx = load i8, ptr %i.af, align 2, !tbaa !272, !range !145, !noundef !146
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.eo, label %.critedge137

bb.eo:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit206
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 5 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !974
  %i.rc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qz, i64 noundef %i.rb)
          to label %bb.ep unwind label %bb.fr

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 25)
          to label %bb.eq unwind label %bb.fs

bb.eq:                                            ; preds = %bb.ep
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.rd, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.er unwind label %bb.ft

bb.er:                                            ; preds = %bb.eq
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.re, label %bb.gh, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store i8 0, ptr %i.h, align 1, !tbaa !661
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.rf, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr noundef nonnull align 8 dereferenceable(8) %i.ra, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.et unwind label %bb.fv

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  %i.rh = load ptr, ptr %i.ae, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 64
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.rk = invoke noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr noundef nonnull align 8 dereferenceable(1033) %i.rj)
          to label %bb.eu unwind label %bb.fr

bb.eu:                                            ; preds = %bb.et
  br i1 %i.rk, label %.critedge139, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.ew unwind label %bb.fw

bb.ew:                                            ; preds = %bb.ev
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 unwind label %bb.fx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210: ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.rm = load ptr, ptr %1, align 8, !tbaa !74    ; 3 uses
  %i.rn = load i64, ptr %i.s, align 8, !tbaa !83  ; 5 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ro, ptr %11, align 8, !tbaa !82
  %i.rp = icmp eq ptr %i.rm, null
  %i.rq = icmp ne i64 %i.rn, 0
  %or.cond.i211 = and i1 %i.rp, %i.rq
  br i1 %or.cond.i211, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc214.a unwind label %bb.fy

.noexc214.a:                                      ; preds = %bb.ex
  unreachable

bb.ey:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %i.rn, ptr %i.c, align 8, !tbaa !55
  %i.rr = icmp ugt i64 %i.rn, 15
  br i1 %i.rr, label %.noexc.i213, label %._crit_edge.i.i212

.noexc.i213:                                      ; preds = %bb.ey
  %i.rs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc215 unwind label %bb.fy ; 2 uses

.noexc215:                                        ; preds = %.noexc.i213
  store ptr %i.rs, ptr %11, align 8, !tbaa !74
  %i.rt = load i64, ptr %i.c, align 8, !tbaa !55
  store i64 %i.rt, ptr %i.ro, align 8, !tbaa !62
  br label %._crit_edge.i.i212

._crit_edge.i.i212:                               ; preds = %.noexc215, %bb.ey
  %i.ru = phi ptr [ %i.rs, %.noexc215 ], [ %i.ro, %bb.ey ] ; 2 uses
  switch i64 %i.rn, label %bb.fa [
    i64 1, label %bb.ez
    i64 0, label %bb.fb
  ]

bb.ez:                                            ; preds = %._crit_edge.i.i212
  %i.rv = load i8, ptr %i.rm, align 1, !tbaa !62
  store i8 %i.rv, ptr %i.ru, align 1, !tbaa !62
  br label %bb.fb

bb.fa:                                            ; preds = %._crit_edge.i.i212
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ru, ptr align 1 %i.rm, i64 %i.rn, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %._crit_edge.i.i212
  %i.rw = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.rw, ptr %i.rx, align 8, !tbaa !83
  %i.ry = load ptr, ptr %11, align 8, !tbaa !74
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rw
  store i8 0, ptr %i.rz, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.sa = load ptr, ptr %11, align 8, !tbaa !74
  %i.sb = load i64, ptr %i.rx, align 8, !tbaa !83
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.sa, i64 noundef %i.sb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218 unwind label %bb.fz ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218: ; preds = %bb.fb
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220 unwind label %bb.fz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.sf = load i64, ptr %i.ra, align 8, !tbaa !974
  %i.sg = load ptr, ptr %i.se, align 8, !tbaa !554
  %i.sh = getelementptr inbounds nuw [5 x i8], ptr %i.sg, i64 %i.sf
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !557
  invoke void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i8 noundef zeroext %i.sj)
          to label %bb.fc unwind label %bb.ga

bb.fc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.sk = load ptr, ptr %12, align 8, !tbaa !74
  %i.sl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !83
  %i.sn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, ptr noundef %i.sk, i64 noundef %i.sm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit222 unwind label %bb.gb

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit222: ; preds = %bb.fc
  %i.so = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.gb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit222
  %i.sp = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  call void @_ZdlPv(ptr noundef %i.sp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.ss = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.ro
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  call void @_ZdlPv(ptr noundef %i.ss) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.su = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.su, ptr %13, align 8, !tbaa !82, !alias.scope !988
  %i.sv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.sv, align 8, !tbaa !83, !alias.scope !988
  store i8 0, ptr %i.su, align 8, !tbaa !62, !alias.scope !988
  %i.sw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !367, !noalias !988 ; 3 uses
  %.not5.i.i233 = icmp eq ptr %i.sx, null
  br i1 %.not5.i.i233, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %21 = load ptr, ptr %20, align 8, !noalias !988 ; 2 uses
  %22 = icmp ugt ptr %i.sx, %21
  %.08.i.i.i231 = select i1 %22, ptr %i.sx, ptr %21
  %i.sy = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !371, !noalias !988 ; 2 uses
  %i.ta = ptrtoint ptr %.08.i.i.i231 to i64
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.sz, i64 noundef %i.tc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit240 unwind label %bb.fe ; 0 uses

bb.fe:                                            ; preds = %bb.ff, %bb.fd
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tf = load ptr, ptr %13, align 8, !tbaa !74, !alias.scope !988 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.su
  br i1 %i.tg, label %.body238, label %.body238.sink.split

bb.ff:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.th = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.th)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit240 unwind label %bb.fe

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit240: ; preds = %bb.ff, %bb.fd
  invoke void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.fg unwind label %bb.gd

bb.fg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit240
  %i.ti = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.ti, ptr %14, align 8, !tbaa !82
  %i.tj = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.tk = load i64, ptr %i.sv, align 8, !tbaa !83 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.tk, ptr %i.b, align 8, !tbaa !55
  %i.tl = icmp ugt i64 %i.tk, 15
  br i1 %i.tl, label %.noexc.i242, label %._crit_edge.i.i241

.noexc.i242:                                      ; preds = %bb.fg
  %i.tm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc243 unwind label %bb.gd ; 2 uses

.noexc243:                                        ; preds = %.noexc.i242
  store ptr %i.tm, ptr %14, align 8, !tbaa !74
  %i.tn = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.tn, ptr %i.ti, align 8, !tbaa !62
  br label %._crit_edge.i.i241

._crit_edge.i.i241:                               ; preds = %.noexc243, %bb.fg
  %i.to = phi ptr [ %i.tm, %.noexc243 ], [ %i.ti, %bb.fg ] ; 2 uses
  switch i64 %i.tk, label %bb.fi [
    i64 1, label %bb.fh
    i64 0, label %bb.fj
  ]

bb.fh:                                            ; preds = %._crit_edge.i.i241
  %i.tp = load i8, ptr %i.tj, align 1, !tbaa !62
  store i8 %i.tp, ptr %i.to, align 1, !tbaa !62
  br label %bb.fj

bb.fi:                                            ; preds = %._crit_edge.i.i241
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.to, ptr align 1 %i.tj, i64 %i.tk, i1 false)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %._crit_edge.i.i241
  %i.tq = load i64, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i64 %i.tq, ptr %i.tr, align 8, !tbaa !83
  %i.ts = load ptr, ptr %14, align 8, !tbaa !74
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tq
  store i8 0, ptr %i.tt, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.tu = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb6vectorINS_12CurrentErrorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %i.rf)
          to label %.noexc253 unwind label %bb.ge ; 5 uses

.noexc253:                                        ; preds = %bb.fj
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32 ; 5 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !74 ; 6 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 48 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  %i.tz = load ptr, ptr %14, align 8, !tbaa !74   ; 6 uses
  %i.ua = icmp eq ptr %i.tz, %i.ti                ; 2 uses
  br i1 %i.ty, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %.noexc253
  br i1 %i.ua, label %bb.fk, label %.thread.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i245: ; preds = %.noexc253
  br i1 %i.ua, label %bb.fk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i246

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  %i.ub = load i64, ptr %i.tr, align 8, !tbaa !83 ; 3 uses
  %i.uc = icmp ult i64 %i.ub, 16
  call void @llvm.assume(i1 %i.uc)
  %.not21.i.i248 = icmp eq ptr %14, %i.tv
  br i1 %.not21.i.i248, label %bb.fq, label %bb.fl, !prof !63

bb.fl:                                            ; preds = %bb.fk
  switch i64 %i.ub, label %bb.fn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i249
    i64 1, label %bb.fm
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.ud = load i8, ptr %i.tz, align 1, !tbaa !62
  store i8 %i.ud, ptr %i.tw, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i249

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tw, ptr align 1 %i.tz, i64 %i.ub, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i249: ; preds = %bb.fn, %bb.fm, %bb.fl
  %i.ue = load i64, ptr %i.tr, align 8, !tbaa !83 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tu, i64 40
  store i64 %i.ue, ptr %i.uf, align 8, !tbaa !83
  %i.ug = load ptr, ptr %i.tv, align 8, !tbaa !74
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.ue
  store i8 0, ptr %i.uh, align 1, !tbaa !62
  %.pre.i.i250 = load ptr, ptr %14, align 8, !tbaa !74
  br label %bb.fq

.thread.i.i252:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tu, i64 40
  store ptr %i.tz, ptr %i.tv, align 8, !tbaa !74
  %i.uj = load <2 x i64>, ptr %i.tr, align 8, !tbaa !62
  store <2 x i64> %i.uj, ptr %i.ui, align 8, !tbaa !62
  br label %bb.fp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i246: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i245
  %i.uk = load i64, ptr %i.tx, align 8, !tbaa !62
  store ptr %i.tz, ptr %i.tv, align 8, !tbaa !74
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tu, i64 40
  %i.um = load <2 x i64>, ptr %i.tr, align 8, !tbaa !62
  store <2 x i64> %i.um, ptr %i.ul, align 8, !tbaa !62
  %.not.i.i247 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i247, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i246
  store ptr %i.tw, ptr %14, align 8, !tbaa !74
  store i64 %i.uk, ptr %i.ti, align 8, !tbaa !62
  br label %bb.fq

bb.fp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i246, %.thread.i.i252
  store ptr %i.ti, ptr %14, align 8, !tbaa !74
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i249, %bb.fk
  %i.un = phi ptr [ %i.tw, %bb.fo ], [ %i.ti, %bb.fp ], [ %i.tz, %bb.fk ], [ %.pre.i.i250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i249 ]
  store i64 0, ptr %i.tr, align 8, !tbaa !83
  store i8 0, ptr %i.un, align 1, !tbaa !62
  %i.uo = load ptr, ptr %14, align 8, !tbaa !74   ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.ti
  br i1 %i.up, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.a: ; preds = %bb.fq
  call void @_ZdlPv(ptr noundef %i.uo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.a: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.a
  %i.uq = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.su
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.a
  call void @_ZdlPv(ptr noundef %i.uq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.us = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.us, ptr %10, align 8, !tbaa !18
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.uu = getelementptr i8, ptr %i.us, i64 -24
  %i.uv = load i64, ptr %i.uu, align 8
  %i.uw = getelementptr inbounds i8, ptr %10, i64 %i.uv
  store ptr %i.ut, ptr %i.uw, align 8, !tbaa !18
  %i.ux = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ux, align 8, !tbaa !18
  %i.uy = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !74 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.vb = icmp eq ptr %i.uz, %i.va
  br i1 %i.vb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @_ZdlPv(ptr noundef %i.uz) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit263

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ux, align 8, !tbaa !18
  %i.vc = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.vc) #33
  %i.vd = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.vd) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.critedge139

bb.fr:                                            ; preds = %.critedge.i278, %bb.gv, %bb.gt, %bb.et, %bb.eo
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.fs:                                            ; preds = %bb.ep
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu
end_hunk_4
begin_hunk_5_@_ZN6duckdb18StringValueScanner22ProcessOverBufferValueEv:bb.a
  br i1 %i.abn, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 633
  store i8 1, ptr %i.abo, align 1, !tbaa !989
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hv
  %i.abp = load i8, ptr %i.ab, align 1, !tbaa !207
  %i.abq = icmp eq i8 %i.abp, 6
  br i1 %i.abq, label %bb.ia, label %.critedge18

bb.ia:                                            ; preds = %bb.hz
  %i.abr = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.ib unwind label %bb.bz

bb.ib:                                            ; preds = %bb.ia
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 119
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !400
  %i.abu = icmp eq i8 %i.abt, 2
  br i1 %i.abu, label %bb.ic, label %.critedge18

bb.ic:                                            ; preds = %bb.ib
  %i.abv = load i64, ptr %i.hw, align 8, !tbaa !126
  %i.abw = load i64, ptr %i.fr, align 8, !tbaa !127 ; 2 uses
  %i.abx = add i64 %i.abw, 1
  store i64 %i.abx, ptr %i.fr, align 8, !tbaa !127
  %i.aby = add i64 %i.abw, 2
  br label %bb.id

.critedge18:                                      ; preds = %bb.hz, %bb.ib
  %i.abz = load i64, ptr %i.hw, align 8, !tbaa !126
  %i.aca = load i64, ptr %i.fr, align 8, !tbaa !127
  %i.acb = add i64 %i.aca, 1                      ; 2 uses
  store i64 %i.acb, ptr %i.fr, align 8, !tbaa !127
  br label %bb.id

bb.id:                                            ; preds = %.critedge18, %bb.ic
  %.sink484 = phi i64 [ %i.acb, %.critedge18 ], [ %i.aby, %bb.ic ]
  %.sink = phi i64 [ %i.abz, %.critedge18 ], [ %i.abv, %bb.ic ]
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !952
  store i64 %.sink484, ptr %i.j, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.acd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sink, ptr %.sroa.5.0..sroa_idx319, align 8, !tbaa !55
  store i8 0, ptr %i.i, align 8, !tbaa !275
  store i8 0, ptr %i.af, align 2, !tbaa !272
  br label %.critedge10

.critedge139:                                     ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.cq, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit263, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.critedge10

.critedge10:                                      ; preds = %bb.ay, %bb.av, %bb.aw, %bb.id, %.critedge139
  %i.ace = load ptr, ptr %1, align 8, !tbaa !74   ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %i.r
  br i1 %i.acf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313.a: ; preds = %.critedge10
  call void @_ZdlPv(ptr noundef %i.ace) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.a: ; preds = %.critedge10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.i, %bb.hi, %bb.bz, %bb.h
  %.pn125.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn115.pn.pn.pn.pn, %bb.hi ], [ %i.ao, %bb.i ], [ %i.in, %bb.bz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit359.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit362, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.acg = load ptr, ptr %1, align 8, !tbaa !74   ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.r
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.acg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn125.pn

bb.ie:                                            ; preds = %bb.hb
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9LineError29ModifyErrorMessageOfLastErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb6vectorINS_12CurrentErrorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %1, align 8, !tbaa !74     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !83   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %i.b
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !62
  store i8 %i.l, ptr %i.c, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !83
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !62
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.f, ptr %i.b, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  store i64 %i.s, ptr %i.q, align 8, !tbaa !83
  %i.t = load i64, ptr %i.g, align 8, !tbaa !62
  store i64 %i.t, ptr %i.d, align 8, !tbaa !62
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !62
  store ptr %i.f, ptr %i.b, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.w, ptr %i.x, align 8, !tbaa !83
  %i.y = load i64, ptr %i.g, align 8, !tbaa !62
  store i64 %i.y, ptr %i.d, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %1, align 8, !tbaa !74
  store i64 %i.u, ptr %i.g, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !83
  store i8 0, ptr %i.z, align 1, !tbaa !62
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17StringValueResult16AddValueToVectorEPKcmb(ptr noundef nonnull align 8 dereferenceable(930) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %.sroa.0268 = alloca %struct.anon, align 8      ; 7 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 7 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 16 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !657  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !403
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  %.not.i = icmp ult i64 %i.l, %i.o
  br i1 %.not.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !213, !nonnull !146, !align !214 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 57
  %i.s = load i8, ptr %i.r, align 1, !tbaa !56, !range !145, !noundef !146
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.l, %i.o
  br i1 %i.u, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %0, align 8, !tbaa !275, !range !145, !noundef !146
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 273
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !658, !range !145, !noundef !146
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !607 ; 3 uses
  %.not17.i = icmp eq i64 %i.ad, 0
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %2, 0
  br i1 %i.ag, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i
  br i1 %.not.i.i, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.critedge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i.backedge
  %.015.i = phi i64 [ %.015.i.be, %.lr.ph.split.i.backedge ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0914.i = phi i1 [ %.0914.i.be, %.lr.ph.split.i.backedge ], [ false, %.lr.ph.i ]
  br i1 %.0914.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.015.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !631
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0810.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0810.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.0810.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !62
  %.not.i.i = icmp eq i8 %i.ak, %i.am             ; 3 uses
  %i.an = add nuw i64 %.0810.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %i.an, %2
  %or.cond.not.i = select i1 %.not.i.i, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i, !llvm.loop !659

_ZN6duckdb11IsValueNullEPKcS1_m.exit.i:           ; preds = %.lr.ph.i.i
  %i.ao = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ad
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i.backedge

_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i:    ; preds = %.lr.ph.split.i
  %i.ap = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not23.i = icmp eq i64 %i.ap, %i.ad
  br i1 %exitcond.not23.i, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i
  %.015.i.be = phi i64 [ %i.ap, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %i.ao, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  %.0914.i.be = phi i1 [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %.not.i.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  br label %.lr.ph.split.i, !llvm.loop !660

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.f, %bb.e, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 3, ptr %i.c, align 1, !tbaa !661
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.at = load i64, ptr %i.k, align 8, !tbaa !657
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.k, align 8, !tbaa !657
  br label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !663, !nonnull !146
  store i8 1, ptr %i.aw, align 1, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !213, !nonnull !146, !align !214 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !56, !range !145, !noundef !146
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !663, !nonnull !146
  store i8 1, ptr %i.bd, align 1, !tbaa !56
  br label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.be = icmp eq i64 %i.l, %i.o
  br i1 %i.be, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bf = load i8, ptr %0, align 8, !tbaa !275, !range !145, !noundef !146
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 273
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !658, !range !145, !noundef !146
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !607 ; 3 uses
  %.not325 = icmp eq i64 %i.bn, 0
  br i1 %.not325, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp eq i64 %2, 0
  br i1 %i.bq, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit
  br i1 %.not.i184, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %.0104320 = phi i1 [ %.0104320.be, %.lr.ph.split.backedge ], [ false, %.lr.ph ]
  %.0105319 = phi i64 [ %.0105319.be, %.lr.ph.split.backedge ], [ 0, %.lr.ph ] ; 3 uses
  br i1 %.0104320, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread, label %.lr.ph.i183.preheader

.lr.ph.i183.preheader:                            ; preds = %.lr.ph.split
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.0105319
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !631
  br label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph.i183, %.lr.ph.i183.preheader
  %.0810.i = phi i64 [ %i.bx, %.lr.ph.i183 ], [ 0, %.lr.ph.i183.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.0810.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.0810.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62
  %.not.i184 = icmp eq i8 %i.bu, %i.bw            ; 3 uses
  %i.bx = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond.not.i186 = icmp ne i64 %i.bx, %2
  %or.cond417.not = select i1 %.not.i184, i1 %exitcond.not.i186, i1 false
  br i1 %or.cond417.not, label %.lr.ph.i183, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit, !llvm.loop !659

_ZN6duckdb11IsValueNullEPKcS1_m.exit:             ; preds = %.lr.ph.i183
  %i.by = add nuw i64 %.0105319, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.bn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread
  %.0104320.be = phi i1 [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread ], [ %.not.i184, %_ZN6duckdb11IsValueNullEPKcS1_m.exit ]
  %.0105319.be = phi i64 [ %i.bz, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread ], [ %i.by, %_ZN6duckdb11IsValueNullEPKcS1_m.exit ]
  br label %.lr.ph.split, !llvm.loop !990

_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread:      ; preds = %.lr.ph.split
  %i.bz = add nuw i64 %.0105319, 1                ; 2 uses
  %exitcond.not411 = icmp eq i64 %i.bz, %i.bn
  br i1 %exitcond.not411, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.lr.ph.split.backedge

.critedge:                                        ; preds = %bb.l, %bb.i, %bb.k, %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i8 3, ptr %i.d, align 1, !tbaa !661
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.cd = load i64, ptr %i.k, align 8, !tbaa !657
end_hunk_5
begin_hunk_6_@_ZN6duckdb17StringValueResult16AddValueToVectorEPKcmb:bb.a
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split418

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.0107 = phi i1 [ false, %bb.cp ], [ true, %bb.co ] ; 2 uses
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ug = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.ug) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  %i.uj = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread: ; preds = %bb.cn
  %i.um = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.un = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.up = icmp eq ptr %i.un, %i.uo
  br i1 %i.up, label %.sink.split418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread
  call void @_ZdlPv(ptr noundef %i.un) #35
  br label %.sink.split418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  call void @_ZdlPv(ptr noundef %i.uj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0107, label %bb.cr, label %bb.fi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0107, label %bb.cr, label %bb.fi

.sink.split418:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.thread
  %.pn144.pn300.ph = phi { ptr, i32 } [ %i.um, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.thread ], [ %i.ue, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.thread ], [ %i.um, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %.pn144.pn300 = phi { ptr, i32 } [ %i.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn144.pn300.ph, %.sink.split418 ]
  call void @__cxa_free_exception(ptr %i.ty) #33
  br label %bb.fi

bb.cs:                                            ; preds = %bb.bv
  %i.uq = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ct unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.uq, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @__cxa_throw(ptr nonnull %i.uq, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.fj unwind label %bb.cv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread: ; preds = %bb.cs
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.0106 = phi i1 [ false, %bb.cu ], [ true, %bb.ct ] ; 2 uses
  %i.us = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ut = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.cv
  call void @_ZdlPv(ptr noundef %i.ut) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %.0106, label %bb.cw, label %bb.fi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %.0106, label %bb.cw, label %bb.fi

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.pn312 = phi { ptr, i32 } [ %i.ur, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread ], [ %i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ]
  call void @__cxa_free_exception(ptr %i.uq) #33
  br label %bb.fi

bb.cx:                                            ; preds = %bb.au
  %i.uw = load i8, ptr %i.jb, align 1, !tbaa !555, !range !145, !noundef !146
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.cy, label %bb.dj

bb.cy:                                            ; preds = %bb.cx
  %i.uy = and i64 %.0102, 4294967295
  %i.uz = invoke noundef zeroext i1 @_ZN6duckdb8Utf8Proc7IsValidEPKcm(ptr noundef %.0, i64 noundef %i.uy)
          to label %bb.cz unwind label %bb.at

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.uz, label %bb.dj, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 64
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 145
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !56, !range !145, !noundef !146
  %i.vg = trunc nuw i8 %i.vf to i1
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.vi = load i8, ptr %i.vh, align 8, !range !145
  %i.vj = trunc nuw i8 %i.vi to i1
  %not. = xor i1 %i.vg, true
  %i.vk = select i1 %not., i1 %i.vj, i1 false
  br i1 %i.vk, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.vl = load i64, ptr %i.k, align 8, !tbaa !657
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6duckdb17StringValueResult18HandleUnicodeErrorEmRNS_12LinePositionE(ptr noundef nonnull align 8 dereferenceable(930) %0, i64 noundef %i.vl, ptr noundef nonnull align 8 dereferenceable(24) %i.vm)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.dd:                                            ; preds = %bb.db, %bb.da
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store i8 8, ptr %i.i, align 1, !tbaa !661
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.vo, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.vp, i64 noundef 0)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.vr = load i64, ptr %i.gy, align 8, !tbaa !525
  %i.vs = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 noundef %i.vr)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.vt = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %i.vs, i64 0, ptr null)
          to label %bb.dg unwind label %bb.di     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.vv = load i64, ptr %i.gy, align 8, !tbaa !525
  %i.vw = load ptr, ptr %i.vu, align 8, !tbaa !623
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.vv
  %i.vy = extractvalue { i64, ptr } %i.vt, 1
  %i.vz = extractvalue { i64, ptr } %i.vt, 0
  %i.wa = load ptr, ptr %i.vx, align 8, !tbaa !23
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !678
  %i.wd = getelementptr inbounds [16 x i8], ptr %i.wa, i64 %i.wc ; 2 uses
  store i64 %i.vz, ptr %i.wd, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store ptr %i.vy, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !62
  br label %.critedge181

bb.dh:                                            ; preds = %bb.dd
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  br label %bb.fi

bb.di:                                            ; preds = %bb.df, %bb.de
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.dj:                                            ; preds = %bb.cz, %bb.cx
  br i1 %3, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.wh = load i64, ptr %i.gy, align 8, !tbaa !525
  %i.wi = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wg, i64 noundef %i.wh)
          to label %bb.dl unwind label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.wj = trunc i64 %.0102 to i32                 ; 3 uses
  store i32 %i.wj, ptr %.sroa.0268, align 8, !tbaa !62
  %i.wk = icmp ult i32 %i.wj, 13
  br i1 %i.wk, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %.sroa.0269.4..sroa_idx428 = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0269.4..sroa_idx428, i8 0, i64 12, i1 false)
  %i.wl = icmp eq i32 %i.wj, 0
  br i1 %i.wl, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wm = and i64 %.0102, 15
  %.sroa.0269.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0269.4..sroa_idx, ptr align 1 %.0, i64 %i.wm, i1 false)
  %.sroa.0269.8..sroa_idx429 = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 8
  %.sroa.0269.8..sroa.0269.8..sroa.0269.8..sroa.0269.8..pre = load ptr, ptr %.sroa.0269.8..sroa_idx429, align 8
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.do:                                            ; preds = %bb.dl
  %i.wn = load i32, ptr %.0, align 1
  %.sroa.0269.4..sroa_idx427 = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 4
  store i32 %i.wn, ptr %.sroa.0269.4..sroa_idx427, align 4
  %.sroa.0269.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0268, i64 8
  store ptr %.0, ptr %.sroa.0269.8..sroa_idx, align 8, !tbaa !62
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.do, %bb.dn, %bb.dm
  %.sroa.0269.8..sroa.0269.8..sroa.0269.8. = phi ptr [ %.0, %bb.do ], [ %.sroa.0269.8..sroa.0269.8..sroa.0269.8..sroa.0269.8..pre, %bb.dn ], [ null, %bb.dm ]
  %.sroa.0269.0..sroa.0269.0..sroa.0269.0..sroa.0269.0. = load i64, ptr %.sroa.0268, align 8
  %i.wo = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %i.wi, i64 %.sroa.0269.0..sroa.0269.0..sroa.0269.0..sroa.0269.0., ptr %.sroa.0269.8..sroa.0269.8..sroa.0269.8.)
          to label %bb.dp unwind label %bb.dq     ; 2 uses

bb.dp:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.wq = load i64, ptr %i.gy, align 8, !tbaa !525
  %i.wr = load ptr, ptr %i.wp, align 8, !tbaa !623
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wq
  %i.wt = extractvalue { i64, ptr } %i.wo, 1
  %i.wu = extractvalue { i64, ptr } %i.wo, 0
  %i.wv = load ptr, ptr %i.ws, align 8, !tbaa !23
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !678
  %i.wy = getelementptr inbounds [16 x i8], ptr %i.wv, i64 %i.wx ; 2 uses
  store i64 %i.wu, ptr %i.wy, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  store ptr %i.wt, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !62
  br label %.critedge181

bb.dq:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %bb.dk
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.dr:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.xa = trunc i64 %.0102 to i32                 ; 3 uses
  %i.xb = icmp ult i32 %i.xa, 13
  br i1 %i.xb, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i8 0, i64 12, i1 false)
  %i.xc = icmp eq i32 %i.xa, 0
  br i1 %i.xc, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xd = and i64 %.0102, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5, ptr align 1 %.0, i64 %i.xd, i1 false)
  br label %bb.dv

bb.du:                                            ; preds = %bb.dr
  %i.xe = load i32, ptr %.0, align 1
  store i32 %i.xe, ptr %.sroa.5, align 4
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  store ptr %.0, ptr %.sroa.5.4..sroa_idx, align 4, !tbaa !62
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ds, %bb.dt, %bb.du
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.xg = load i64, ptr %i.gy, align 8, !tbaa !525
  %i.xh = load ptr, ptr %i.xf, align 8, !tbaa !623
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %i.xg
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !23
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !678
  %i.xm = getelementptr inbounds [16 x i8], ptr %i.xj, i64 %i.xl ; 2 uses
  store i32 %i.xa, ptr %i.xm, align 8
  %.sroa.5.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx268, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !973
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %.critedge181

bb.dw:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.br, %bb.bi
  %.0130.shrunk = phi i1 [ %i.sn, %bb.ci ], [ %i.sz, %bb.cj ], [ %i.tx, %bb.cl ], [ %i.rh, %bb.ca ], [ %i.tl, %bb.ck ], [ %i.jt, %bb.aw ], [ %i.kb, %bb.ax ], [ %i.kj, %bb.ay ], [ %i.kr, %bb.az ], [ %i.kz, %bb.ba ], [ %i.lh, %bb.bb ], [ %i.lp, %bb.bc ], [ %i.qv, %bb.bz ], [ %i.qj, %bb.by ], [ %i.px, %bb.bx ], [ %i.lx, %bb.bd ], [ %i.or, %bb.br ], [ %i.nm, %bb.bi ]
  br i1 %.0130.shrunk, label %.critedge181, label %bb.dx

bb.dx:                                            ; preds = %bb.bt, %bb.bn, %bb.bk, %bb.bf, %bb.be, %bb.av, %bb.dw
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !661
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.xn, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.xo, i64 noundef 0)
          to label %bb.dy unwind label %bb.ew

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 64
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.xt = invoke noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr noundef nonnull align 8 dereferenceable(1033) %i.xs)
          to label %bb.dz unwind label %bb.at

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.xt, label %.critedge181, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.eb unwind label %bb.ex

bb.eb:                                            ; preds = %bb.ea
  %i.xu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ey ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.xv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.xv, ptr %13, align 8, !tbaa !82
  %i.xw = icmp eq ptr %.0, null
  %i.xx = icmp ne i64 %.0102, 0
  %or.cond.i = and i1 %i.xx, %i.xw
  br i1 %or.cond.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc unwind label %bb.ez

.noexc:                                           ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %.0102, ptr %i.b, align 8, !tbaa !55
  %i.xy = icmp ugt i64 %.0102, 15
  br i1 %i.xy, label %.noexc.i217, label %._crit_edge.i.i

.noexc.i217:                                      ; preds = %bb.ed
  %i.xz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc218 unwind label %bb.ez ; 2 uses

.noexc218:                                        ; preds = %.noexc.i217
  store ptr %i.xz, ptr %13, align 8, !tbaa !74
  %i.ya = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.ya, ptr %i.xv, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc218, %bb.ed
  %i.yb = phi ptr [ %i.xz, %.noexc218 ], [ %i.xv, %bb.ed ] ; 2 uses
  switch i64 %.0102, label %bb.ef [
    i64 1, label %bb.ee
    i64 0, label %bb.eg
  ]

bb.ee:                                            ; preds = %._crit_edge.i.i
  %i.yc = load i8, ptr %.0, align 1, !tbaa !62
  store i8 %i.yc, ptr %i.yb, align 1, !tbaa !62
  br label %bb.eg

bb.ef:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yb, ptr align 1 %.0, i64 %.0102, i1 false)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %._crit_edge.i.i
  %i.yd = load i64, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.yd, ptr %i.ye, align 8, !tbaa !83
  %i.yf = load ptr, ptr %13, align 8, !tbaa !74
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yd
  store i8 0, ptr %i.yg, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.yh = load ptr, ptr %13, align 8, !tbaa !74
  %i.yi = load i64, ptr %i.ye, align 8, !tbaa !83
  %i.yj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.yh, i64 noundef %i.yi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.fa ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.eg
  %i.yk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yj, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221 unwind label %bb.fa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.yl = load i64, ptr %i.gy, align 8, !tbaa !525
  %i.ym = load ptr, ptr %i.gx, align 8, !tbaa !554
  %i.yn = getelementptr inbounds nuw [5 x i8], ptr %i.ym, i64 %i.yl
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !557
  invoke void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i8 noundef zeroext %i.yp)
          to label %bb.eh unwind label %bb.fb

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.yq = load ptr, ptr %14, align 8, !tbaa !74
  %i.yr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !83
  %i.yt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yj, ptr noundef %i.yq, i64 noundef %i.ys)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223 unwind label %bb.fc

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223: ; preds = %bb.eh
  %i.yu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yt, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225 unwind label %bb.fc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit223
  %i.yv = load ptr, ptr %14, align 8, !tbaa !74   ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.yx = icmp eq ptr %i.yv, %i.yw
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225
  call void @_ZdlPv(ptr noundef %i.yv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.yy = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.xv
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  call void @_ZdlPv(ptr noundef %i.yy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.za = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.za, ptr %15, align 8, !tbaa !82, !alias.scope !1004
  %i.zb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.zb, align 8, !tbaa !83, !alias.scope !1004
  store i8 0, ptr %i.za, align 8, !tbaa !62, !alias.scope !1004
  %i.zc = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !367, !noalias !1004 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.zd, null
  br i1 %.not5.i.i, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %18 = load ptr, ptr %17, align 8, !noalias !1004 ; 2 uses
  %19 = icmp ugt ptr %i.zd, %18
  %.08.i.i.i = select i1 %19, ptr %i.zd, ptr %18
  %i.ze = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !371, !noalias !1004 ; 2 uses
  %i.zg = ptrtoint ptr %.08.i.i.i to i64
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = sub i64 %i.zg, %i.zh
  %i.zj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.zf, i64 noundef %i.zi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ej ; 0 uses

bb.ej:                                            ; preds = %bb.ek, %bb.ei
  %i.zk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zl = load ptr, ptr %15, align 8, !tbaa !74, !alias.scope !1004 ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.za
  br i1 %i.zm, label %.body233, label %.body233.sink.split

bb.ek:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.zn = getelementptr inbounds nuw i8, ptr %12, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.zn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ej

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ek, %bb.ei
  invoke void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.el unwind label %bb.fe

bb.el:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.zo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 9 uses
  store ptr %i.zo, ptr %16, align 8, !tbaa !82
  %i.zp = load ptr, ptr %15, align 8, !tbaa !74   ; 2 uses
  %i.zq = load i64, ptr %i.zb, align 8, !tbaa !83 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.zq, ptr %i.a, align 8, !tbaa !55
  %i.zr = icmp ugt i64 %i.zq, 15
  br i1 %i.zr, label %.noexc.i236, label %._crit_edge.i.i235

.noexc.i236:                                      ; preds = %bb.el
  %i.zs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc237 unwind label %bb.fe ; 2 uses

.noexc237:                                        ; preds = %.noexc.i236
  store ptr %i.zs, ptr %16, align 8, !tbaa !74
  %i.zt = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.zt, ptr %i.zo, align 8, !tbaa !62
  br label %._crit_edge.i.i235

._crit_edge.i.i235:                               ; preds = %.noexc237, %bb.el
  %i.zu = phi ptr [ %i.zs, %.noexc237 ], [ %i.zo, %bb.el ] ; 2 uses
  switch i64 %i.zq, label %bb.en [
    i64 1, label %bb.em
    i64 0, label %bb.eo
  ]

bb.em:                                            ; preds = %._crit_edge.i.i235
  %i.zv = load i8, ptr %i.zp, align 1, !tbaa !62
  store i8 %i.zv, ptr %i.zu, align 1, !tbaa !62
  br label %bb.eo

bb.en:                                            ; preds = %._crit_edge.i.i235
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zu, ptr align 1 %i.zp, i64 %i.zq, i1 false)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %._crit_edge.i.i235
  %i.zw = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %i.zw, ptr %i.zx, align 8, !tbaa !83
  %i.zy = load ptr, ptr %16, align 8, !tbaa !74
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zw
  store i8 0, ptr %i.zz, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb6vectorINS_12CurrentErrorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %i.xn)
          to label %.noexc242 unwind label %bb.ff ; 5 uses

.noexc242:                                        ; preds = %bb.eo
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32 ; 5 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !74 ; 6 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 48 ; 2 uses
  %i.aae = icmp eq ptr %i.aac, %i.aad
  %i.aaf = load ptr, ptr %16, align 8, !tbaa !74  ; 6 uses
  %i.aag = icmp eq ptr %i.aaf, %i.zo              ; 2 uses
  br i1 %i.aae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %.noexc242
  br i1 %i.aag, label %bb.ep, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i238: ; preds = %.noexc242
  br i1 %i.aag, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  %i.aah = load i64, ptr %i.zx, align 8, !tbaa !83 ; 3 uses
  %i.aai = icmp ult i64 %i.aah, 16
  call void @llvm.assume(i1 %i.aai)
  %.not21.i.i = icmp eq ptr %16, %i.aab
  br i1 %.not21.i.i, label %bb.ev, label %bb.eq, !prof !63

bb.eq:                                            ; preds = %bb.ep
  switch i64 %i.aah, label %bb.es [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.aaj = load i8, ptr %i.aaf, align 1, !tbaa !62
  store i8 %i.aaj, ptr %i.aac, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.es:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aac, ptr align 1 %i.aaf, i64 %i.aah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.es, %bb.er, %bb.eq
  %i.aak = load i64, ptr %i.zx, align 8, !tbaa !83 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40
  store i64 %i.aak, ptr %i.aal, align 8, !tbaa !83
  %i.aam = load ptr, ptr %i.aab, align 8, !tbaa !74
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aak
  store i8 0, ptr %i.aan, align 1, !tbaa !62
  %.pre.i.i240 = load ptr, ptr %16, align 8, !tbaa !74
  br label %bb.ev

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40
  store ptr %i.aaf, ptr %i.aab, align 8, !tbaa !74
  %i.aap = load <2 x i64>, ptr %i.zx, align 8, !tbaa !62
  store <2 x i64> %i.aap, ptr %i.aao, align 8, !tbaa !62
  br label %bb.eu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i238
  %i.aaq = load i64, ptr %i.aad, align 8, !tbaa !62
  store ptr %i.aaf, ptr %i.aab, align 8, !tbaa !74
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40
  %i.aas = load <2 x i64>, ptr %i.zx, align 8, !tbaa !62
  store <2 x i64> %i.aas, ptr %i.aar, align 8, !tbaa !62
  %.not.i.i239 = icmp eq ptr %i.aac, null
  br i1 %.not.i.i239, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.aac, ptr %16, align 8, !tbaa !74
  store i64 %i.aaq, ptr %i.zo, align 8, !tbaa !62
  br label %bb.ev

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.zo, ptr %16, align 8, !tbaa !74
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ep
  %i.aat = phi ptr [ %i.aac, %bb.et ], [ %i.zo, %bb.eu ], [ %i.aaf, %bb.ep ], [ %.pre.i.i240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.zx, align 8, !tbaa !83
  store i8 0, ptr %i.aat, align 1, !tbaa !62
  %i.aau = load ptr, ptr %16, align 8, !tbaa !74  ; 2 uses
  %i.aav = icmp eq ptr %i.aau, %i.zo
  br i1 %i.aav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.ev
  call void @_ZdlPv(ptr noundef %i.aau) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  %i.aaw = load ptr, ptr %15, align 8, !tbaa !74  ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.za
  br i1 %i.aax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  call void @_ZdlPv(ptr noundef %i.aaw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.aay = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aay, ptr %12, align 8, !tbaa !18
  %i.aaz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aba = getelementptr i8, ptr %i.aay, i64 -24
  %i.abb = load i64, ptr %i.aba, align 8
  %i.abc = getelementptr inbounds i8, ptr %12, i64 %i.abb
  store ptr %i.aaz, ptr %i.abc, align 8, !tbaa !18
  %i.abd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.abd, align 8, !tbaa !18
  %i.abe = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !74 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.abh = icmp eq ptr %i.abf, %i.abg
  br i1 %i.abh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  call void @_ZdlPv(ptr noundef %i.abf) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.abd, align 8, !tbaa !18
  %i.abi = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abi) #33
  %i.abj = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.abj) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.critedge181

bb.ew:                                            ; preds = %bb.dx
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  br label %bb.fi

end_hunk_6
begin_hunk_7_@_ZN6duckdb17StringValueResult23AddPossiblyEscapedValueERS0_mPKcmb:bb.a
  br i1 %.0914.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.015.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !631
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0810.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0810.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.0810.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %.not.i.i = icmp eq i8 %i.av, %i.ax             ; 3 uses
  %i.ay = add nuw i64 %.0810.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %i.ay, %3
  %or.cond.not.i = select i1 %.not.i.i, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i, !llvm.loop !659

_ZN6duckdb11IsValueNullEPKcS1_m.exit.i:           ; preds = %.lr.ph.i.i
  %i.az = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.ao
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i.backedge

_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i:    ; preds = %.lr.ph.split.i
  %i.ba = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not23.i = icmp eq i64 %i.ba, %i.ao
  br i1 %exitcond.not23.i, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread, label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i
  %.015.i.be = phi i64 [ %i.ba, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %i.az, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  %.0914.i.be = phi i1 [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %.not.i.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  br label %.lr.ph.split.i, !llvm.loop !660

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.k, %bb.j, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 3, ptr %i.c, align 1, !tbaa !661
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.be = load i64, ptr %i.u, align 8, !tbaa !657
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.u, align 8, !tbaa !657
  br label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit.thread

_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit: ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 9 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !525
  %i.bj = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 25)
  %i.bl = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.l unwind label %bb.ai

bb.l:                                             ; preds = %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.bl, label %bb.at, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i8 0, ptr %i.d, align 1, !tbaa !661
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !213, !nonnull !146, !align !214
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !215, !nonnull !146, !align !214
  %i.bs = call noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr noundef nonnull align 8 dereferenceable(1033) %i.br)
  br i1 %i.bs, label %bb.as, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !82
  %i.bv = icmp eq ptr %2, null
  %i.bw = icmp ne i64 %3, 0
  %or.cond.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %3, ptr %i.b, align 8, !tbaa !55
  %i.bx = icmp ugt i64 %3, 15
  br i1 %i.bx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc83 unwind label %bb.ak  ; 2 uses

.noexc83:                                         ; preds = %.noexc.i
  store ptr %i.by, ptr %7, align 8, !tbaa !74
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc83, %bb.p
  %i.ca = phi ptr [ %i.by, %.noexc83 ], [ %i.bu, %bb.p ] ; 2 uses
  switch i64 %3, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cb = load i8, ptr %2, align 1, !tbaa !62
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !62
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !83
  %i.ce = load ptr, ptr %7, align 8, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cg = load ptr, ptr %7, align 8, !tbaa !74
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !83
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.cg, i64 noundef %i.ch)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.al ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.s
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cl = load i64, ptr %i.bh, align 8, !tbaa !525
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !554
  %i.cn = getelementptr inbounds nuw [5 x i8], ptr %i.cm, i64 %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !557
  invoke void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.cp)
          to label %bb.t unwind label %bb.am

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.cq = load ptr, ptr %8, align 8, !tbaa !74
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !83
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88 unwind label %bb.an

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88: ; preds = %bb.t
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88
  %i.cv = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  call void @_ZdlPv(ptr noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.cy = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bu
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.da, ptr %9, align 8, !tbaa !82, !alias.scope !1114
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.db, align 8, !tbaa !83, !alias.scope !1114
  store i8 0, ptr %i.da, align 8, !tbaa !62, !alias.scope !1114
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !367, !noalias !1114 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.dd, null
  br i1 %.not5.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %21 = load ptr, ptr %20, align 8, !noalias !1114 ; 2 uses
  %22 = icmp ugt ptr %i.dd, %21
  %.08.i.i.i = select i1 %22, ptr %i.dd, ptr %21
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !371, !noalias !1114 ; 2 uses
  %i.dg = ptrtoint ptr %.08.i.i.i to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.df, i64 noundef %i.di)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %9, align 8, !tbaa !74, !alias.scope !1114 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.da
  br i1 %i.dm, label %.body, label %.body.sink.split

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.w, %bb.u
  invoke void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.x unwind label %bb.ap

bb.x:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.do, ptr %10, align 8, !tbaa !82
  %i.dp = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.dq = load i64, ptr %i.db, align 8, !tbaa !83 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.dq, ptr %i.a, align 8, !tbaa !55
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i96, label %._crit_edge.i.i95

.noexc.i96:                                       ; preds = %bb.x
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc97 unwind label %bb.ap  ; 2 uses

.noexc97:                                         ; preds = %.noexc.i96
  store ptr %i.ds, ptr %10, align 8, !tbaa !74
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.dt, ptr %i.do, align 8, !tbaa !62
  br label %._crit_edge.i.i95

._crit_edge.i.i95:                                ; preds = %.noexc97, %bb.x
  %i.du = phi ptr [ %i.ds, %.noexc97 ], [ %i.do, %bb.x ] ; 2 uses
  switch i64 %i.dq, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i95
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !62
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !62
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dp, i64 %i.dq, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i95
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !83
  %i.dy = load ptr, ptr %10, align 8, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ea = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb6vectorINS_12CurrentErrorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %.noexc101 unwind label %bb.aq ; 5 uses

.noexc101:                                        ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 5 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !74 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  %i.ef = load ptr, ptr %10, align 8, !tbaa !74   ; 6 uses
  %i.eg = icmp eq ptr %i.ef, %i.do                ; 2 uses
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.noexc101
  br i1 %i.eg, label %bb.ab, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i98: ; preds = %.noexc101
  br i1 %i.eg, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !83 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %.not21.i.i = icmp eq ptr %10, %i.eb
  br i1 %.not21.i.i, label %bb.ah, label %bb.ac, !prof !63

bb.ac:                                            ; preds = %bb.ab
  switch i64 %i.eh, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !62
  store i8 %i.ej, ptr %i.ec, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ek = load i64, ptr %i.dx, align 8, !tbaa !83 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !83
  %i.em = load ptr, ptr %i.eb, align 8, !tbaa !74
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !62
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !74
  br label %bb.ah

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !74
  %i.ep = load <2 x i64>, ptr %i.dx, align 8, !tbaa !62
  store <2 x i64> %i.ep, ptr %i.eo, align 8, !tbaa !62
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i98
  %i.eq = load i64, ptr %i.ed, align 8, !tbaa !62
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.es = load <2 x i64>, ptr %i.dx, align 8, !tbaa !62
  store <2 x i64> %i.es, ptr %i.er, align 8, !tbaa !62
  %.not.i.i99 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i99, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ec, ptr %10, align 8, !tbaa !74
  store i64 %i.eq, ptr %i.do, align 8, !tbaa !62
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.do, ptr %10, align 8, !tbaa !74
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ab
  %i.et = phi ptr [ %i.ec, %bb.af ], [ %i.do, %bb.ag ], [ %i.ef, %bb.ab ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.dx, align 8, !tbaa !83
  store i8 0, ptr %i.et, align 1, !tbaa !62
  %i.eu = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.do
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.eu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.ew = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.da
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @_ZdlPv(ptr noundef %i.ew) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.ey = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ey, ptr %6, align 8, !tbaa !18
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fa = getelementptr i8, ptr %i.ey, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %6, i64 %i.fb
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fd, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !74 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @_ZdlPv(ptr noundef %i.ff) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fd, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fi) #33
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fj) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.as

bb.ai:                                            ; preds = %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bt
end_hunk_7
