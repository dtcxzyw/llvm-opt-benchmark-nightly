inline.NumInlined: 5305
inline.NumDeleted: 2879
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6duckdb13ParquetWriter23GatherWrittenStatisticsEv:bb.a
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i225
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.ak
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.hj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #22
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %bb.ba
  %.pn103.pn = phi { ptr, i32 } [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.hh, %bb.ba ] ; 2 uses
  %i.hl = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ai
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.hl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.az
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.az ], [ %.pn103.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %.pn103.pn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ee

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.at
  %i.hn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.be unwind label %bb.y

bb.be:                                            ; preds = %bb.bd
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 153
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !665, !range !296, !noundef !165
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 136
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !664
  invoke void @_ZN6duckdb5Value7UBIGINTEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, i64 noundef %i.ht)
          to label %._crit_edge.i.i243 unwind label %bb.bh

._crit_edge.i.i243:                               ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %i.am, ptr %18, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.am, ptr noundef nonnull align 1 dereferenceable(10) @.str.12, i64 10, i1 false)
  store i64 10, ptr %i.an, align 8, !tbaa !174
  store i8 0, ptr %i.br, align 2, !tbaa !102
  %i.hu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit248 unwind label %bb.bi

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit248: ; preds = %._crit_edge.i.i243
  %i.hv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hu, ptr noundef nonnull align 8 dereferenceable(64) %17) #22 ; 0 uses
  %i.hw = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.am
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit248
  call void @_ZdlPv(ptr noundef %i.hw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i243
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.am
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.ia) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #22
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.bh
  %.pn107.pn = phi { ptr, i32 } [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.hy, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ee

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.be
  %i.ic = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.bl unwind label %bb.y

bb.bl:                                            ; preds = %bb.bk
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 168
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !651, !range !296, !noundef !165
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ig = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 169
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !661, !range !296, !noundef !165
  %i.ij = trunc nuw i8 %i.ii to i1
  invoke void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, i1 noundef zeroext %i.ij)
          to label %._crit_edge.i.i255 unwind label %bb.bo

._crit_edge.i.i255:                               ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %i.ao, ptr %20, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(7) @.str.13, i64 7, i1 false)
  store i64 7, ptr %i.ap, align 8, !tbaa !174
  store i8 0, ptr %i.bs, align 1, !tbaa !102
  %i.ik = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit260 unwind label %bb.bp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit260: ; preds = %._crit_edge.i.i255
  %i.il = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ik, ptr noundef nonnull align 8 dereferenceable(64) %19) #22 ; 0 uses
  %i.im = load ptr, ptr %20, align 8, !tbaa !19   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ao
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit260
  call void @_ZdlPv(ptr noundef %i.im) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.br

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i255
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %20, align 8, !tbaa !19   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ao
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef %i.iq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #22
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.bo
  %.pn110.pn = phi { ptr, i32 } [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %i.io, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ee

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %bb.bl
  %i.is = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.bs unwind label %bb.y

bb.bs:                                            ; preds = %bb.br
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 176
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !686
  %.not = icmp eq ptr %i.iu, null
  br i1 %.not, label %bb.ea, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.bu unwind label %bb.cc

bb.bu:                                            ; preds = %bb.bt
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 176
  %i.ix = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17GeometryStatsDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iw)
          to label %bb.bv unwind label %bb.cc     ; 8 uses

bb.bv:                                            ; preds = %bb.bu
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.bw unwind label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 176
  %i.jb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17GeometryStatsDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ja)
          to label %bb.bx unwind label %bb.cd     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.jc = load double, ptr %i.iy, align 8, !tbaa !687 ; 2 uses
  %i.jd = call double @llvm.fabs.f64(double %i.jc)
  %i.je = fcmp ueq double %i.jd, +inf
  br i1 %i.je, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !689
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %i.ji = fcmp ueq double %i.jh, +inf
  br i1 %i.ji, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 40 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !690
  %i.jl = call double @llvm.fabs.f64(double %i.jk)
  %i.jm = fcmp ueq double %i.jl, +inf
  br i1 %i.jm, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit

_ZNK6duckdb14GeometryExtent5HasXYEv.exit:         ; preds = %bb.bz
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 48 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !691
  %i.jp = call double @llvm.fabs.f64(double %i.jo)
  %i.jq = fcmp ueq double %i.jp, +inf
  br i1 %i.jq, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %_ZNK6duckdb14GeometryExtent5HasXYEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %21, double noundef %i.jc)
          to label %._crit_edge.i.i267 unwind label %bb.ce

._crit_edge.i.i267:                               ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %i.aq, ptr %22, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aq, ptr noundef nonnull align 1 dereferenceable(9) @.str.14, i64 9, i1 false)
  store i64 9, ptr %i.ar, align 8, !tbaa !174
  store i8 0, ptr %i.bt, align 1, !tbaa !102
  %i.jr = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit272 unwind label %bb.cf

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit272: ; preds = %._crit_edge.i.i267
  %i.js = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.jr, ptr noundef nonnull align 8 dereferenceable(64) %21) #22 ; 0 uses
  %i.jt = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.aq
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit272
  call void @_ZdlPv(ptr noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.jv = load double, ptr %i.jj, align 8, !tbaa !690
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %23, double noundef %i.jv)
          to label %._crit_edge.i.i276 unwind label %bb.ch

._crit_edge.i.i276:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr %i.as, ptr %24, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.as, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false)
  store i64 9, ptr %i.at, align 8, !tbaa !174
  store i8 0, ptr %i.bu, align 1, !tbaa !102
  %i.jw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit281 unwind label %bb.ci

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit281: ; preds = %._crit_edge.i.i276
  %i.jx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.jw, ptr noundef nonnull align 8 dereferenceable(64) %23) #22 ; 0 uses
  %i.jy = load ptr, ptr %24, align 8, !tbaa !19   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.as
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit281
  call void @_ZdlPv(ptr noundef %i.jy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ka = load double, ptr %i.jf, align 8, !tbaa !689
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %25, double noundef %i.ka)
          to label %._crit_edge.i.i285 unwind label %bb.ck

._crit_edge.i.i285:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr %i.au, ptr %26, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, ptr noundef nonnull align 1 dereferenceable(9) @.str.16, i64 9, i1 false)
  store i64 9, ptr %i.av, align 8, !tbaa !174
  store i8 0, ptr %i.bv, align 1, !tbaa !102
  %i.kb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit290 unwind label %bb.cl

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit290: ; preds = %._crit_edge.i.i285
  %i.kc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.kb, ptr noundef nonnull align 8 dereferenceable(64) %25) #22 ; 0 uses
  %i.kd = load ptr, ptr %26, align 8, !tbaa !19   ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.au
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit290
  call void @_ZdlPv(ptr noundef %i.kd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.kf = load double, ptr %i.jn, align 8, !tbaa !691
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %27, double noundef %i.kf)
          to label %._crit_edge.i.i294 unwind label %bb.cn

._crit_edge.i.i294:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %i.aw, ptr %28, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aw, ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  store i64 9, ptr %i.ax, align 8, !tbaa !174
  store i8 0, ptr %i.bw, align 1, !tbaa !102
  %i.kg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit299 unwind label %bb.co

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit299: ; preds = %._crit_edge.i.i294
  %i.kh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.kg, ptr noundef nonnull align 8 dereferenceable(64) %27) #22 ; 0 uses
  %i.ki = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.aw
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit299
  call void @_ZdlPv(ptr noundef %i.ki) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !692 ; 2 uses
  %i.km = call double @llvm.fabs.f64(double %i.kl)
  %i.kn = fcmp one double %i.km, +inf
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ix, i64 56 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8
  %i.kq = call double @llvm.fabs.f64(double %i.kp)
  %i.kr = fcmp one double %i.kq, +inf
  %i.ks = select i1 %i.kn, i1 %i.kr, i1 false
  br i1 %i.ks, label %bb.cb, label %bb.cw

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %29, double noundef %i.kl)
          to label %._crit_edge.i.i303 unwind label %bb.cq

._crit_edge.i.i303:                               ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  store ptr %i.ay, ptr %30, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ay, ptr noundef nonnull align 1 dereferenceable(9) @.str.18, i64 9, i1 false)
  store i64 9, ptr %i.az, align 8, !tbaa !174
  store i8 0, ptr %i.bx, align 1, !tbaa !102
  %i.kt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit308 unwind label %bb.cr

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit308: ; preds = %._crit_edge.i.i303
  %i.ku = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.kt, ptr noundef nonnull align 8 dereferenceable(64) %29) #22 ; 0 uses
  %i.kv = load ptr, ptr %30, align 8, !tbaa !19   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.ay
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit308
  call void @_ZdlPv(ptr noundef %i.kv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.kx = load double, ptr %i.ko, align 8, !tbaa !693
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %31, double noundef %i.kx)
          to label %._crit_edge.i.i312 unwind label %bb.ct

._crit_edge.i.i312:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store ptr %i.ba, ptr %32, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ba, ptr noundef nonnull align 1 dereferenceable(9) @.str.19, i64 9, i1 false)
  store i64 9, ptr %i.bb, align 8, !tbaa !174
  store i8 0, ptr %i.by, align 1, !tbaa !102
  %i.ky = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit317 unwind label %bb.cu

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit317: ; preds = %._crit_edge.i.i312
  %i.kz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ky, ptr noundef nonnull align 8 dereferenceable(64) %31) #22 ; 0 uses
  %i.la = load ptr, ptr %32, align 8, !tbaa !19   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.ba
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit317
  call void @_ZdlPv(ptr noundef %i.la) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.cw

bb.cc:                                            ; preds = %bb.bu, %bb.bt
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cd:                                            ; preds = %bb.bw, %bb.bv
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ce:                                            ; preds = %bb.ca
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %._crit_edge.i.i267
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.aq
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.lg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #22
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %bb.ce
  %.pn113.pn = phi { ptr, i32 } [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %i.le, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.ee

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i276
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %24, align 8, !tbaa !19   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.as
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.lk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #22
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.ch
  %.pn116.pn = phi { ptr, i32 } [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %i.li, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ee

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %._crit_edge.i.i285
  %i.ln = landingpad { ptr, i32 }
          cleanup
  %i.lo = load ptr, ptr %26, align 8, !tbaa !19   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.au
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.lo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #22
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %bb.ck
  %.pn119.pn = phi { ptr, i32 } [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ %i.lm, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.ee

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %._crit_edge.i.i294
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.aw
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.co
  call void @_ZdlPv(ptr noundef %i.ls) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #22
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %bb.cn
  %.pn122.pn = phi { ptr, i32 } [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ], [ %i.lq, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.ee

bb.cq:                                            ; preds = %bb.cb
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i303
  %i.lv = landingpad { ptr, i32 }
          cleanup
  %i.lw = load ptr, ptr %30, align 8, !tbaa !19   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.ay
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.lw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #22
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %bb.cq
  %.pn125.pn = phi { ptr, i32 } [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335 ], [ %i.lu, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.ee

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %._crit_edge.i.i312
  %i.lz = landingpad { ptr, i32 }
          cleanup
  %i.ma = load ptr, ptr %32, align 8, !tbaa !19   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.ba
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.ma) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %31) #22
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %bb.ct
  %.pn128.pn = phi { ptr, i32 } [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ], [ %i.ly, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.ee

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.md = load double, ptr %i.mc, align 8, !tbaa !694 ; 2 uses
  %i.me = call double @llvm.fabs.f64(double %i.md)
  %i.mf = fcmp one double %i.me, +inf
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ix, i64 64 ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8
  %i.mi = call double @llvm.fabs.f64(double %i.mh)
  %i.mj = fcmp one double %i.mi, +inf
  %i.mk = select i1 %i.mf, i1 %i.mj, i1 false
  br i1 %i.mk, label %bb.cx, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %33, double noundef %i.md)
          to label %._crit_edge.i.i339 unwind label %bb.cy

._crit_edge.i.i339:                               ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store ptr %i.bc, ptr %34, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bc, ptr noundef nonnull align 1 dereferenceable(9) @.str.20, i64 9, i1 false)
  store i64 9, ptr %i.bd, align 8, !tbaa !174
  store i8 0, ptr %i.bz, align 1, !tbaa !102
  %i.ml = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit344 unwind label %bb.cz

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit344: ; preds = %._crit_edge.i.i339
  %i.mm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ml, ptr noundef nonnull align 8 dereferenceable(64) %33) #22 ; 0 uses
  %i.mn = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.bc
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit344
  call void @_ZdlPv(ptr noundef %i.mn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.mp = load double, ptr %i.mg, align 8, !tbaa !695
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %35, double noundef %i.mp)
          to label %._crit_edge.i.i348 unwind label %bb.db

._crit_edge.i.i348:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store ptr %i.be, ptr %36, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.be, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  store i64 9, ptr %i.bf, align 8, !tbaa !174
  store i8 0, ptr %i.ca, align 1, !tbaa !102
  %i.mq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb5ValueEESaISB_ENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit353 unwind label %bb.dc

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit353: ; preds = %._crit_edge.i.i348
  %i.mr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.mq, ptr noundef nonnull align 8 dereferenceable(64) %35) #22 ; 0 uses
  %i.ms = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.be
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit353
  call void @_ZdlPv(ptr noundef %i.ms) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEixEOS5_.exit353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i339
  %i.mv = landingpad { ptr, i32 }
          cleanup
  %i.mw = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.bc
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef %i.mw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %33) #22
  br label %bb.da

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %bb.cy
  %.pn131.pn = phi { ptr, i32 } [ %i.mv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ], [ %i.mu, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.ee

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %._crit_edge.i.i348
  %i.mz = landingpad { ptr, i32 }
          cleanup
  %i.na = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.be
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.dc
  call void @_ZdlPv(ptr noundef %i.na) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %35) #22
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %bb.db
  %.pn134.pn = phi { ptr, i32 } [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %i.my, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.ee

_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread:  ; preds = %bb.bx, %bb.by, %bb.bz, %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, %_ZNK6duckdb14GeometryExtent5HasXYEv.exit
  %i.nc = load <4 x i8>, ptr %i.jb, align 1
  %.fr = freeze <4 x i8> %i.nc
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.nd = icmp eq i32 %.fr.scalar, 0
  br i1 %i.nd, label %bb.ea, label %bb.de

bb.de:                                            ; preds = %_ZNK6duckdb14GeometryExtent5HasXYEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  invoke void @_ZNK6duckdb15GeometryTypeSet8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.82") align 8 %38, ptr noundef nonnull align 1 dereferenceable(4) %i.jb, i1 noundef zeroext true)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.ne = load ptr, ptr %38, align 8, !tbaa !177  ; 3 uses
  %i.nf = load ptr, ptr %i.bg, align 8, !tbaa !177 ; 2 uses
  %.not422742 = icmp eq ptr %i.ne, %i.nf
  br i1 %.not422742, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
  %.pre = load ptr, ptr %38, align 8, !tbaa !338  ; 3 uses
  %.pre749 = load ptr, ptr %i.bg, align 8, !tbaa !339 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre749
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.ng = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ng) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nj, %.pre749
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !360

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %38, align 8, !tbaa !338
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.df, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.nk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.ne, %bb.df ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.nk) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.du

bb.dh:                                            ; preds = %bb.de
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.lr.ph:                                           ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
  %.sroa.0404.0743 = phi ptr [ %i.oj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367 ], [ %i.ne, %bb.df ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0404.0743)
          to label %bb.di unwind label %bb.do

bb.di:                                            ; preds = %.lr.ph
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %39, ptr noundef nonnull %40)
          to label %bb.dj unwind label %bb.dp

bb.dj:                                            ; preds = %bb.di
  %i.nm = load ptr, ptr %i.bh, align 8, !tbaa !696 ; 5 uses
  %i.nn = load ptr, ptr %i.bi, align 8, !tbaa !699
  %.not.i.i = icmp eq ptr %i.nm, %i.nn
  br i1 %.not.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.nm, ptr noundef nonnull align 8 dereferenceable(64) %39) #22
  %i.no = load ptr, ptr %i.bh, align 8, !tbaa !696
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 64
  store ptr %i.np, ptr %i.bh, align 8, !tbaa !696
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

bb.dl:                                            ; preds = %bb.dj
  %i.nq = load ptr, ptr %37, align 8, !tbaa !700  ; 5 uses
  %i.nr = ptrtoint ptr %i.nm to i64
  %i.ns = ptrtoint ptr %i.nq to i64
end_hunk_0
