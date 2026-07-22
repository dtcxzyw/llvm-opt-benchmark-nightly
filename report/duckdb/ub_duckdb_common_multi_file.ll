inline.NumInlined: 8566
inline.NumDeleted: 3991
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6duckdb16MultiFileOptions34AutoDetectHivePartitioningInternalERNS_13MultiFileListERNS_13ClientContextE:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i63 = phi i32 [ %i.dt, %bb.aq ], [ %i.ed, %bb.ar ]
  %i.ee = icmp eq i32 %.0.i.i.i.i.i.i63, 1
  br i1 %i.ee, label %bb.as, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !159

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #32
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ao, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit61
  %i.ef = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ef) #34
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i1 %.6

bb.at:                                            ; preds = %bb.ak, %bb.c
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.ak ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16MultiFileOptions27AutoDetectHiveTypesInternalERNS_13MultiFileListERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(512) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::MultiFileListIterationHelper", align 8 ; 4 uses
  %4 = alloca [3 x %"struct.duckdb::LogicalType"], align 16 ; 15 uses
  %5 = alloca %"class.std::unordered_map.618", align 8 ; 15 uses
  %6 = alloca %"class.duckdb::MultiFileListIterationHelper::MultiFileListIterator", align 8 ; 19 uses
  %7 = alloca %"class.duckdb::MultiFileListIterationHelper::MultiFileListIterator", align 8 ; 15 uses
  %8 = alloca %"class.std::map.423", align 8      ; 12 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 12 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.632", align 8   ; 13 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %14 = alloca %"struct.std::pair.632", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 15)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef zeroext 19)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef zeroext 14)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !794
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.g, align 8, !tbaa !796
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN6duckdb28MultiFileListIterationHelperC1ERKNS_13MultiFileListE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20, !noalias !797
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !noalias !797
  %i.o = invoke noundef zeroext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc unwind label %bb.h, !inline_history !480

.noexc:                                           ; preds = %bb.d
  %i.p = icmp eq i8 %i.o, 0
  %spec.select = select i1 %i.p, ptr null, ptr %i.k
  invoke void @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorC1ENS_12optional_ptrIKNS_13MultiFileListELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr %spec.select)
          to label %_ZN6duckdb28MultiFileListIterationHelper5beginEv.exit unwind label %bb.h

_ZN6duckdb28MultiFileListIterationHelper5beginEv.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorC1ENS_12optional_ptrIKNS_13MultiFileListELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr null)
          to label %_ZN6duckdb28MultiFileListIterationHelper3endEv.exit.preheader unwind label %bb.i

_ZN6duckdb28MultiFileListIterationHelper3endEv.exit.preheader: ; preds = %_ZN6duckdb28MultiFileListIterationHelper5beginEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !257
  %i.t = load ptr, ptr %7, align 8, !tbaa !257
  %i.u = icmp ne ptr %i.s, %i.t
  %i.v = load i64, ptr %i.q, align 8
  %i.w = load i64, ptr %i.r, align 8
  %i.x = icmp ne i64 %i.v, %i.w
  %i.y = select i1 %i.u, i1 true, i1 %i.x
  br i1 %i.y, label %.lr.ph219, label %.critedge82

.lr.ph219:                                        ; preds = %_ZN6duckdb28MultiFileListIterationHelper3endEv.exit.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %i.au = phi ptr [ %.0, %bb.e ], [ %i.av, %bb.f ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #32
  %i.aw = icmp eq ptr %i.av, %4
  br i1 %i.aw, label %.loopexit, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.h:                                             ; preds = %.noexc, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.i:                                             ; preds = %_ZN6duckdb28MultiFileListIterationHelper5beginEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.j:                                             ; preds = %.noexc99, %bb.bl
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.k:                                             ; preds = %.lr.ph219, %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN6duckdb16HivePartitioning5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::map.423") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = load i64, ptr %i.aa, align 8, !tbaa !484
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.critedge80, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !204 ; 2 uses
  %.not160215 = icmp eq ptr %i.be, %i.ac
  br i1 %.not160215, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156, %bb.n
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !483
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.bf)
          to label %bb.bk unwind label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #35
  unreachable

.lr.ph:                                           ; preds = %bb.n, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156
  %.sroa.0149.0216 = phi ptr [ %i.gx, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156 ], [ %i.be, %bb.n ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 32 ; 6 uses
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !482
  %.not.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.q

.preheader:                                       ; preds = %.lr.ph, %.noexc85
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %.noexc85 ], [ %i.ag, %.lr.ph ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !199 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bl = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bk)
          to label %.noexc85 unwind label %.loopexit170

.noexc85:                                         ; preds = %bb.p
  br i1 %i.bl, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156, label %.preheader, !llvm.loop !800

bb.q:                                             ; preds = %.lr.ph
  %i.bm = invoke noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc86:                                         ; preds = %bb.q
  %i.bn = load i64, ptr %i.af, align 8, !tbaa !403
  %i.bo = urem i64 %i.bm, %i.bn                   ; 2 uses
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !402
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !503 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.r

bb.r:                                             ; preds = %.noexc86
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !199 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !504
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bt = phi i64 [ %.pre.i.i.i.i, %bb.r ], [ %i.ca, %bb.t ]
  %.015.i.i.i.i = phi ptr [ %i.br, %bb.r ], [ %.0.i.i.i.i, %bb.t ]
  %.0.i.i.i.i = phi ptr [ %i.bs, %bb.r ], [ %i.bx, %bb.t ] ; 3 uses
  %i.bu = icmp eq i64 %i.bm, %i.bt
  br i1 %i.bu, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i: ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.bw = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bv)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit

.noexc87:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i
  br i1 %i.bw, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc87, %bb.s
  %i.bx = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i
  %i.by = load i64, ptr %i.af, align 8, !tbaa !403
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !504 ; 2 uses
  %i.cb = urem i64 %i.ca, %i.by
  %.not19.i.i.i.i = icmp eq i64 %i.cb, %i.bo
  br i1 %.not19.i.i.i.i, label %bb.s, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, !llvm.loop !506

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %.noexc87
  %i.cc = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !199
  %.not161 = icmp eq ptr %i.cc, null
  br i1 %.not161, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156

.loopexit170:                                     ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.q
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i, %bb.t, %.preheader, %.noexc86, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 25)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 64
  store ptr %i.ah, ptr %11, align 8, !tbaa !11
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !14
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc88 unwind label %bb.ac  ; 2 uses

.noexc88:                                         ; preds = %.noexc.i
  store ptr %i.ci, ptr %11, align 8, !tbaa !16
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !14
  store i64 %i.cj, ptr %i.ah, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc88, %bb.u
  %i.ck = phi ptr [ %i.ci, %.noexc88 ], [ %i.ah, %bb.u ] ; 2 uses
  switch i64 %i.cg, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cl = load i8, ptr %i.ce, align 1, !tbaa !18
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !18
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.ce, i64 %i.cg, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  store i64 %i.cm, ptr %i.ai, align 8, !tbaa !19
  %i.cn = load ptr, ptr %11, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %11)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ah
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cr = invoke noundef zeroext i1 @_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
          to label %.critedge unwind label %bb.ao

bb.z:                                             ; preds = %.critedge
  %i.cs = invoke noundef zeroext i1 @_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i1 noundef zeroext true)
          to label %.critedge.1 unwind label %bb.ao

.critedge.1:                                      ; preds = %bb.z
  br i1 %i.cs, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.critedge.1
  %i.ct = invoke noundef zeroext i1 @_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i1 noundef zeroext true)
          to label %.critedge.2 unwind label %bb.ao

.critedge.2:                                      ; preds = %bb.aa
  br i1 %i.ct, label %bb.ae, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ab:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ac:                                            ; preds = %.noexc.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ad:                                            ; preds = %bb.x
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ah
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.cx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.cr, label %bb.ae, label %bb.z

bb.ae:                                            ; preds = %.critedge, %.critedge.1, %.critedge.2
  %.062.ptr214.lcssa234 = phi ptr [ %4, %.critedge ], [ %i.d, %.critedge.1 ], [ %i.e, %.critedge.2 ] ; 4 uses
  %i.cz = load i8, ptr %.062.ptr214.lcssa234, align 8, !tbaa !441
  store i8 %i.cz, ptr %9, align 8, !tbaa !441
  %i.da = getelementptr inbounds nuw i8, ptr %.062.ptr214.lcssa234, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !442
  store i8 %i.db, ptr %i.aj, align 1, !tbaa !442
  %i.dc = getelementptr inbounds nuw i8, ptr %.062.ptr214.lcssa234, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.062.ptr214.lcssa234, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !266 ; 2 uses
  %i.df = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !267
  %.not.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.dl = load ptr, ptr %i.al, align 8, !tbaa !266 ; 8 uses
  store <2 x ptr> %i.df, ptr %i.ak, align 8, !tbaa !267
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dm, align 8, !tbaa !268
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !270
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #32, !inline_history !461
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #32, !inline_history !461
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dp, %bb.al ], [ %i.dz, %bb.am ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.an, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !159

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #32
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ao:                                            ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %.critedge.2, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.ec = load i64, ptr %i.am, align 8, !tbaa !801
  %.not.i = icmp ugt i64 %i.ec, 20
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %.sroa.06.016.i = load ptr, ptr %i.h, align 8, !tbaa !199 ; 3 uses
  %.not1117.i = icmp eq ptr %.sroa.06.016.i, null
  %.pre = load ptr, ptr %i.bi, align 8            ; 4 uses
  br i1 %.not1117.i, label %.loopexit163, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !19
  %.fr24.i = freeze i64 %i.ee                     ; 3 uses
  %i.ef = icmp eq i64 %.fr24.i, 0
  br i1 %i.ef, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i
  %.sroa.06.018.us.i = phi ptr [ %.sroa.06.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i ], [ %.sroa.06.016.i, %.lr.ph.i ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !19
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.06.0.us.i = load ptr, ptr %.sroa.06.018.us.i, align 8, !tbaa !199 ; 2 uses
  %.not11.us.i = icmp eq ptr %.sroa.06.0.us.i, null
  br i1 %.not11.us.i, label %.loopexit163, label %.lr.ph.split.us.i, !llvm.loop !802

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i
  %.sroa.06.018.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i ], [ %.sroa.06.016.i, %.lr.ph.i ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19
  %i.el = icmp eq i64 %.fr24.i, %i.ek
  br i1 %i.el, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i: ; preds = %.lr.ph.split.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.pre, ptr %i.en, i64 %.fr24.i)
  %i.eo = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.eo, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %.lr.ph.split.i
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.018.i, align 8, !tbaa !199 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not11.i, label %.loopexit163, label %.lr.ph.split.i, !llvm.loop !802

bb.aq:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.ep = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 40 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !19
  %i.es = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ep, i64 noundef %i.er, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.ar ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #35
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %bb.aq
  %i.ev = load i64, ptr %i.g, align 8, !tbaa !796 ; 3 uses
  %i.ew = urem i64 %i.es, %i.ev                   ; 3 uses
  %i.ex = load ptr, ptr %5, align 8, !tbaa !794
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !503 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  %.pre240 = load ptr, ptr %i.bi, align 8         ; 6 uses
  br i1 %.not.i.i.i, label %.loopexit163, label %bb.as

bb.as:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !199 ; 3 uses
  %i.fb = load i64, ptr %i.eq, align 8
  %.fr22.i.i.i = freeze i64 %i.fb                 ; 3 uses
  %i.fc = icmp eq i64 %.fr22.i.i.i, 0
  %.phi.trans.insert25.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %.pre26.i.i.i = load i64, ptr %.phi.trans.insert25.i.i.i, align 8, !tbaa !504 ; 2 uses
  br i1 %i.fc, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.as, %bb.au
  %i.fd = phi i64 [ %i.fk, %bb.au ], [ %.pre26.i.i.i, %bb.as ]
  %.0.us.i.i.i = phi ptr [ %i.fi, %bb.au ], [ %i.fa, %bb.as ] ; 3 uses
  %i.fe = icmp eq i64 %i.es, %i.fd
  br i1 %i.fe, label %bb.at, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i

bb.at:                                            ; preds = %.split.us.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !19
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.at, %.split.us.i.i.i
  %i.fi = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not18.us.i.i.i, label %.loopexit163, label %bb.au

bb.au:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !504 ; 2 uses
  %i.fl = urem i64 %i.fk, %i.ev
  %.not19.us.i.i.i = icmp eq i64 %i.fl, %i.ew
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %.loopexit163, !llvm.loop !803

.split.i.i.i:                                     ; preds = %bb.as, %bb.aw
  %i.fm = phi i64 [ %i.fw, %bb.aw ], [ %.pre26.i.i.i, %bb.as ]
  %.0.i.i.i = phi ptr [ %i.fu, %bb.aw ], [ %i.fa, %bb.as ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.fo = icmp eq i64 %i.es, %i.fm
  br i1 %i.fo, label %bb.av, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i

bb.av:                                            ; preds = %.split.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !19
  %i.fr = icmp eq i64 %.fr22.i.i.i, %i.fq
  br i1 %i.fr, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i: ; preds = %bb.av
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !16
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.pre240, ptr %i.fs, i64 %.fr22.i.i.i)
  %i.ft = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i, %bb.av, %.split.i.i.i
  %i.fu = load ptr, ptr %.0.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not18.i.i.i, label %.loopexit163, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !504 ; 2 uses
  %i.fx = urem i64 %i.fw, %i.ev
  %.not19.i.i.i = icmp eq i64 %i.fx, %i.ew
  br i1 %.not19.i.i.i, label %.split.i.i.i, label %.loopexit163, !llvm.loop !803

.loopexit163:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i, %bb.aw, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i, %bb.au, %bb.ap, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %15 = phi ptr [ %.pre240, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i ], [ %.pre240, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i ], [ %.pre240, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i ], [ %.pre, %bb.ap ], [ %.pre240, %bb.au ], [ %.pre240, %bb.aw ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  store ptr %i.ap, ptr %12, align 8, !tbaa !11, !alias.scope !804
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !19, !noalias !804 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !804
  store i64 %i.fz, ptr %i.b, align 8, !tbaa !14, !noalias !804
  %i.ga = icmp ugt i64 %i.fz, 15
  br i1 %i.ga, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.loopexit163
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bb  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i.i
  store ptr %i.gb, ptr %12, align 8, !tbaa !16, !alias.scope !804
  %i.gc = load i64, ptr %i.b, align 8, !tbaa !14, !noalias !804
  store i64 %i.gc, ptr %i.ap, align 8, !tbaa !18, !alias.scope !804
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc93, %.loopexit163
  %i.gd = phi ptr [ %i.gb, %.noexc93 ], [ %i.ap, %.loopexit163 ] ; 2 uses
  switch i64 %i.fz, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ge = load i8, ptr %15, align 1, !tbaa !18
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !18
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %15, i64 %i.fz, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i.i
  %i.gf = load i64, ptr %i.b, align 8, !tbaa !14, !noalias !804 ; 2 uses
  store i64 %i.gf, ptr %i.aq, align 8, !tbaa !19, !alias.scope !804
  %i.gg = load ptr, ptr %12, align 8, !tbaa !16, !alias.scope !804
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !804
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %9) #32
  %i.gi = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS6_IS5_S9_EEEES6_INSC_14_Node_iteratorISA_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit unwind label %bb.bc ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit: ; preds = %bb.az
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #32
  %i.gj = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ap
  br i1 %i.gk, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit
  call void @_ZdlPv(ptr noundef %i.gj) #34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bh

bb.ba:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bb:                                            ; preds = %.noexc.i.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.bc ], [ %i.gm, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bi

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %.lr.ph.split.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i, %bb.at
  %.sroa.06.1.i = phi ptr [ %.sroa.06.018.us.i, %.lr.ph.split.us.i ], [ %.0.us.i.i.i, %bb.at ], [ %.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i ], [ %.sroa.06.018.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 40 ; 2 uses
  %i.gp = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.be unwind label %bb.ba

bb.be:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit
  br i1 %i.gp, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 noundef zeroext 25)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.bg

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.bf
  %i.gq = load i8, ptr %13, align 8, !tbaa !441
  store i8 %i.gq, ptr %i.go, align 8, !tbaa !441
  %i.gr = load i8, ptr %i.an, align 1, !tbaa !442
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 41
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !442
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 48 ; 2 uses
  %i.gu = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !267
  %i.gv = load <2 x ptr>, ptr %i.gt, align 8, !tbaa !267
  store <2 x ptr> %i.gu, ptr %i.gt, align 8, !tbaa !267
  store <2 x ptr> %i.gv, ptr %i.ao, align 8, !tbaa !267
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156: ; preds = %.noexc85, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit, %bb.bh
  %i.gx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0149.0216) #37 ; 2 uses
  %.not160 = icmp eq ptr %i.gx, %i.ac
  br i1 %.not160, label %._crit_edge, label %.lr.ph

bb.bi:                                            ; preds = %bb.ba, %bb.bd, %bb.bg, %bb.ao
  %.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.ao ], [ %.pn, %bb.bd ], [ %i.gw, %bb.bg ], [ %i.gl, %bb.ba ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bi, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bi ], [ %i.cv, %bb.ac ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.cw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #32
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ab
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.cu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit170, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bj
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.bj ], [ %lpad.loopexit, %.loopexit170 ], [ %lpad.loopexit171, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #32
  br label %bb.bn

bb.bk:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.gy = load ptr, ptr %6, align 8, !tbaa !257
  %.not.i.i98 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i98, label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZNK6duckdb12optional_ptrIKNS_13MultiFileListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %.noexc99 unwind label %bb.j

.noexc99:                                         ; preds = %bb.bl
  %i.gz = load ptr, ptr %6, align 8, !tbaa !257
  %i.ha = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %.noexc99
  br i1 %i.ha, label %.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge, label %bb.bm

.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge: ; preds = %.noexc100
  %.pre241 = load ptr, ptr %6, align 8, !tbaa !257
  br label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit

bb.bm:                                            ; preds = %.noexc100
  store i64 0, ptr %6, align 8, !tbaa !251
  store i64 -1, ptr %i.q, align 8, !tbaa !259
  br label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit

_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit: ; preds = %.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge, %bb.bk, %bb.bm
  %i.hb = phi ptr [ %.pre241, %.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge ], [ null, %bb.bk ], [ null, %bb.bm ]
  %i.hc = load ptr, ptr %7, align 8, !tbaa !257
  %i.hd = icmp ne ptr %i.hb, %i.hc
  %i.he = load i64, ptr %i.q, align 8
  %i.hf = load i64, ptr %i.r, align 8
  %i.hg = icmp ne i64 %i.he, %i.hf
  %i.hh = select i1 %i.hd, i1 true, i1 %i.hg
  br i1 %i.hh, label %bb.k, label %.critedge82

bb.bn:                                            ; preds = %.loopexit.split-lp, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.bd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.cc

.critedge80:                                      ; preds = %bb.l
  %i.hi = load ptr, ptr %i.as, align 8, !tbaa !483
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.hi)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %.critedge80
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #35
  unreachable

bb.bp:                                            ; preds = %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !266 ; 8 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i102, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.ho, align 8, !tbaa !268
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !270
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #32, !inline_history !481
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #32, !inline_history !481
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i.i

bb.bs:                                            ; preds = %bb.bq
end_hunk_0
begin_hunk_1_@_ZN6duckdb21MultiFileColumnMapper16GetConstantValueEm:bb.a
bb.j:                                             ; preds = %bb.d, %bb.b
  %.sink = phi ptr [ %i.ah, %bb.d ], [ %i.t, %bb.b ]
  tail call void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sink)
  ret void

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundConstantExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !624
  %.not = icmp eq i8 %i.b, 31
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1014", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !1261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1261
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !25, !noalias !1261 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28, !noalias !1261 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #34
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !25, !noalias !1261
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !1261
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !1261
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6duckdb21MultiFileColumnMapper23EvaluateConstantFiltersERNS_19ResultColumnMappingERSt3mapImSt17reference_wrapperINS_11TableFilterEESt4lessImESaISt4pairIKmS6_EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1264
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrINS_14TableFilterSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !204  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not3034.not = icmp eq ptr %i.e, %i.f
  br i1 %.not3034.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.sroa.025.035 = phi ptr [ %i.e, %.lr.ph ], [ %i.aj, %select.unfold ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !1265
  %.not.not.i.i = icmp eq i64 %i.l, 0
  %i.m = load i64, ptr %i.j, align 8              ; 5 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !199 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %_ZNSt13unordered_mapImN6duckdb18MultiFileColumnMapESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.preheader, !llvm.loop !1266

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !583  ; 2 uses
  %i.r = urem i64 %i.m, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !582
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !503  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = icmp eq i64 %i.m, %i.x
  br i1 %i.y, label %_ZNSt13unordered_mapImN6duckdb18MultiFileColumnMapESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.z = icmp eq i64 %i.m, %i.ac
  br i1 %i.z, label %_ZNSt13unordered_mapImN6duckdb18MultiFileColumnMapESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1267

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.v, %bb.f ]
  %i.aa = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i = icmp eq i64 %i.ad, %i.r
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1267

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !1267

_ZNSt13unordered_mapImN6duckdb18MultiFileColumnMapESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %i.ae = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.af = call { ptr, i8 } @_ZNSt8_Rb_treeImSt4pairIKmSt17reference_wrapperIN6duckdb11TableFilterEEESt10_Select1stIS6_ESt4lessImESaIS6_EE17_M_emplace_uniqueIJRS1_RS4_EEES0_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(9) %i.ae) ; 0 uses
  br label %select.unfold

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN6duckdb21MultiFileColumnMapper16GetConstantValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.m)
  %i.ag = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.loopexit
  %i.ah = invoke noundef zeroext i1 @_ZN6duckdb21MultiFileColumnMapper29EvaluateFilterAgainstConstantERNS_11TableFilterERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %i.ah, label %select.unfold, label %._crit_edge

bb.k:                                             ; preds = %bb.i, %.loopexit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ai

select.unfold:                                    ; preds = %bb.j, %_ZNSt13unordered_mapImN6duckdb18MultiFileColumnMapESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit
  %i.aj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.025.035) #37 ; 2 uses
  %.not30.not = icmp eq ptr %i.aj, %i.f
  br i1 %.not30.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.j, %select.unfold, %bb.b, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.j ], [ 0, %select.unfold ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14SetIndexToZeroERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.1199", align 8 ; 12 uses
  %2 = alloca %"class.std::function.863", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundReferenceExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_14SetIndexToZeroES8_E3$_0E9_M_invokeERKSt9_Any_dataS2_S8_", ptr %i.b, align 8, !tbaa !1268
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundReferenceExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_14SetIndexToZeroES8_E3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.a, align 8, !tbaa !890
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = ptrtoint ptr %2 to i64
  store i64 %i.f, ptr %1, align 8, !tbaa !1270
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundReferenceExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E9_M_invokeERKSt9_Any_dataS6_, ptr %i.d, align 8, !tbaa !1272
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundReferenceExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.c, align 8, !tbaa !890
  invoke void @_ZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext 36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !890  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !890  ; 2 uses
  %.not.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !890  ; 2 uses
  %.not.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !890  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i
  %i.u = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16CanPropagateCastERKNS_21MultiFileIndexMappingERKNS_11LogicalTypeES5_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !441
  %i.b = icmp eq i8 %i.a, 100
  %i.c = load i8, ptr %2, align 8
  %i.d = icmp eq i8 %i.c, 100
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN6duckdb20StatisticsPropagator16CanPropagateCastERKNS_11LogicalTypeES3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret i1 %i.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.d
  unreachable
}

end_hunk_1
