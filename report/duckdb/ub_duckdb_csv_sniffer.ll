Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_sniffer?download=true
inline.NumInlined: 6648
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN6duckdb10CSVSniffer10SniffTypesERNS_9DataChunkERNS_15CSVStateMachineERSt13unordered_mapImNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEEm:bb.a
  store ptr null, ptr %i.as, align 8, !tbaa !215
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %storemerge458, ptr %i.at, align 8, !tbaa !534
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store ptr %i.as, ptr %i.l, align 8, !tbaa !536
  %i.av = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %i.af, i64 noundef %storemerge458, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.i

_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEixERSA_.exit

bb.i:                                             ; preds = %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %.body

_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEixERSA_.exit: ; preds = %bb.g, %bb.f, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i
  %.pn.i.i = phi ptr [ %i.av, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.aj, %bb.f ], [ %i.ao, %bb.g ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 8 uses
  br i1 %i.m, label %.lr.ph455, label %._crit_edge

.lr.ph455:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEixERSA_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 10 uses
  %.not.i = icmp eq ptr %i.w, null                ; 2 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.fd, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEixERSA_.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i)
          to label %bb.fe unwind label %bb.j

bb.j:                                             ; preds = %.loopexit.i.i, %bb.fe, %._crit_edge
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph455, %bb.fd
  %.085454 = phi i64 [ %4, %.lr.ph455 ], [ %i.pn, %bb.fd ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.ba = load ptr, ptr %.1.i.i, align 8, !tbaa !449 ; 3 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !449 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.q unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %12, align 8, !tbaa !103  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.bg) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br i1 %.0.i, label %bb.p, label %.body136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br i1 %.0.i, label %bb.p, label %.body136

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bd) #31
  br label %.body136

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.k
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = ptrtoint ptr %i.ba to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr i8, ptr %i.ba, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.preheader283 unwind label %bb.co

.preheader283:                                    ; preds = %bb.r
  %i.bo = lshr i64 %.085454, 6
  %i.bp = and i64 %.085454, 63
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bo ; 2 uses
  %i.br = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.085454 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %.not.not = icmp eq i64 %.085454, %4
  br label %bb.s

bb.s:                                             ; preds = %.preheader283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !137 ; 2 uses
  %i.bw = load ptr, ptr %.1.i.i, align 8, !tbaa !138 ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = sdiv exact i64 %i.bz, 24
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %bb.t, label %bb.fd

bb.t:                                             ; preds = %bb.s
  %i.cc = icmp eq ptr %i.bw, %i.bv
  br i1 %i.cc, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i138

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.z unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i138: ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i142 = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cg = load ptr, ptr %10, align 8, !tbaa !103  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.cg) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.0.i142, label %bb.y, label %.body145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.0.i142, label %bb.y, label %.body145

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i138
  %.pn9.i139 = phi { ptr, i32 } [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i138 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144 ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143 ]
  call void @__cxa_free_exception(ptr %i.cd) #31
  br label %.body145

bb.z:                                             ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.t
  %i.cj = getelementptr i8, ptr %i.bw, i64 %i.bz
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  store ptr %i.n, ptr %16, align 8, !tbaa !98
  store i64 0, ptr %i.o, align 8, !tbaa !99
  store i8 0, ptr %i.n, align 8, !tbaa !100
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.aa
  %i.cl = load i64, ptr %i.bq, align 8, !tbaa !233
  %i.cm = and i64 %i.cl, %i.br
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.aa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cn = load i32, ptr %i.bs, align 8, !tbaa !100 ; 2 uses
  %i.co = icmp ult i32 %i.cn, 13
  %i.cp = load ptr, ptr %i.bu, align 8
  %i.cq = select i1 %i.co, ptr %i.bt, ptr %i.cp   ; 4 uses
  %i.cr = zext i32 %i.cn to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr ; 6 uses
  %i.ct = ptrtoint ptr %i.cs to i64               ; 9 uses
  %i.cu = lshr i64 %i.cr, 2                       ; 2 uses
  %.not122.i = icmp eq i64 %i.cu, 0
  br i1 %.not122.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %25 = and i64 %i.cr, 4294967292
  %scevgep.i = getelementptr i8, ptr %i.cq, i64 %25
  br label %.lr.ph.i.i.i.i149

.lr.ph.i.i.i.i149:                                ; preds = %bb.ae, %.lr.ph.i.i.i.preheader.i
  %.047.i.i.i.i = phi i64 [ %i.dd, %bb.ae ], [ %i.cu, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.dc, %bb.ae ], [ %i.cq, %.lr.ph.i.i.i.preheader.i ] ; 9 uses
  %i.cv = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.cv, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i [
    i8 32, label %bb.ab
    i8 12, label %bb.ab
    i8 11, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.ab
    i8 13, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i149, %.lr.ph.i.i.i.i149, %.lr.ph.i.i.i.i149, %.lr.ph.i.i.i.i149, %.lr.ph.i.i.i.i149, %.lr.ph.i.i.i.i149
  %i.cw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.cx, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit [
    i8 32, label %bb.ac
    i8 12, label %bb.ac
    i8 11, label %bb.ac
    i8 10, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.cz, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit694 [
    i8 32, label %bb.ad
    i8 12, label %bb.ad
    i8 11, label %bb.ad
    i8 10, label %bb.ad
    i8 9, label %bb.ad
    i8 13, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.db = load i8, ptr %i.da, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.db, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit697 [
    i8 32, label %bb.ae
    i8 12, label %bb.ae
    i8 11, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.dd = add nsw i64 %.047.i.i.i.i, -1
  %i.de = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.de, label %.lr.ph.i.i.i.i149, label %._crit_edge.i.i.i.i, !llvm.loop !587

._crit_edge.i.i.i.i:                              ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.029.lcssa.i.i.i.i = phi ptr [ %i.cq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %scevgep.i, %bb.ae ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.df = sub i64 %i.ct, %.pre-phi.i.i.i.i
  switch i64 %i.df, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread [
    i64 3, label %bb.af
    i64 2, label %bb.ah
    i64 1, label %bb.aj
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dg = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.dg, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i [
    i8 32, label %bb.ag
    i8 12, label %bb.ag
    i8 11, label %bb.ag
    i8 10, label %bb.ag
    i8 9, label %bb.ag
    i8 13, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.dh, %bb.ag ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.di = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.di, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i [
    i8 32, label %bb.ai
    i8 12, label %bb.ai
    i8 11, label %bb.ai
    i8 10, label %bb.ai
    i8 9, label %bb.ai
    i8 13, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.dj, %bb.ai ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dk = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.dk, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i [
    i8 32, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread
    i8 12, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread
    i8 11, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread
    i8 10, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread
    i8 9, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread
    i8 13, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread
  ]

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit694: ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit697: ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i:    ; preds = %.lr.ph.i.i.i.i149, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit694, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit697, %bb.aj, %bb.ah, %bb.af
  %i.do = phi i8 [ %i.dg, %bb.af ], [ %i.dk, %bb.aj ], [ %i.di, %bb.ah ], [ %i.db, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit697 ], [ %i.cx, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit ], [ %i.cz, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit694 ], [ %i.cv, %.lr.ph.i.i.i.i149 ]
  %.028.i.i.i.i = phi ptr [ %.029.lcssa.i.i.i.i, %bb.af ], [ %.2.i.i.i.i, %bb.aj ], [ %.1.i.i.i.i, %bb.ah ], [ %i.dn, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit697 ], [ %i.dl, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit ], [ %i.dm, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit694 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i149 ] ; 5 uses
  %i.dp = icmp ne ptr %.028.i.i.i.i, %i.cs
  %i.dq = add i8 %i.do, -48
  %i.dr = icmp ult i8 %i.dq, 10
  %or.cond.i = and i1 %i.dp, %i.dr
  br i1 %or.cond.i, label %bb.ak, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread

bb.ak:                                            ; preds = %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit.i
  %i.ds = ptrtoint ptr %.028.i.i.i.i to i64       ; 2 uses
  %i.dt = sub i64 %i.ct, %i.ds                    ; 2 uses
  %i.du = ashr i64 %i.dt, 2                       ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i56.preheader.i, label %._crit_edge.i.i.i50.i

.lr.ph.i.i.i56.preheader.i:                       ; preds = %bb.ak
  %i.dw = and i64 %i.dt, -4
  %scevgep192.i.a = getelementptr i8, ptr %.028.i.i.i.i, i64 %i.dw ; 2 uses
  br label %.lr.ph.i.i.i56.i

.lr.ph.i.i.i56.i:                                 ; preds = %bb.ao, %.lr.ph.i.i.i56.preheader.i
  %.047.i.i.i57.i = phi i64 [ %i.en, %bb.ao ], [ %i.du, %.lr.ph.i.i.i56.preheader.i ] ; 2 uses
  %.02946.i.i.i58.i = phi ptr [ %i.em, %bb.ao ], [ %.028.i.i.i.i, %.lr.ph.i.i.i56.preheader.i ] ; 9 uses
  %i.dx = load i8, ptr %.02946.i.i.i58.i, align 1, !tbaa !100
  %i.dy = add i8 %i.dx, -48
  %i.dz = icmp ult i8 %i.dy, 10
  br i1 %i.dz, label %bb.al, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

bb.al:                                            ; preds = %.lr.ph.i.i.i56.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !100
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %bb.am, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit

bb.am:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !100
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10
  br i1 %i.eh, label %bb.an, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit705

bb.an:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !100
  %i.ek = add i8 %i.ej, -48
  %i.el = icmp ult i8 %i.ek, 10
  br i1 %i.el, label %bb.ao, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit707

bb.ao:                                            ; preds = %bb.an
  %i.em = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 4
  %i.en = add nsw i64 %.047.i.i.i57.i, -1
  %i.eo = icmp sgt i64 %.047.i.i.i57.i, 1
  br i1 %i.eo, label %.lr.ph.i.i.i56.i, label %._crit_edge.loopexit.i.i.i62.i, !llvm.loop !587

._crit_edge.loopexit.i.i.i62.i:                   ; preds = %bb.ao
  %.pre.i.i.i63.i = ptrtoint ptr %scevgep192.i.a to i64
  br label %._crit_edge.i.i.i50.i

._crit_edge.i.i.i50.i:                            ; preds = %._crit_edge.loopexit.i.i.i62.i, %bb.ak
  %.pre-phi.i.i.i51.i = phi i64 [ %.pre.i.i.i63.i, %._crit_edge.loopexit.i.i.i62.i ], [ %i.ds, %bb.ak ]
  %.029.lcssa.i.i.i52.i = phi ptr [ %scevgep192.i.a, %._crit_edge.loopexit.i.i.i62.i ], [ %.028.i.i.i.i, %bb.ak ] ; 5 uses
  %i.ep = sub i64 %i.ct, %.pre-phi.i.i.i51.i
  switch i64 %i.ep, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread [
    i64 3, label %bb.ap
    i64 2, label %bb.ar
    i64 1, label %bb.at
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i50.i
  %i.eq = load i8, ptr %.029.lcssa.i.i.i52.i, align 1, !tbaa !100
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.aq, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

bb.aq:                                            ; preds = %bb.ap
  %i.et = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i52.i, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i50.i
  %.1.i.i.i55.i = phi ptr [ %i.et, %bb.aq ], [ %.029.lcssa.i.i.i52.i, %._crit_edge.i.i.i50.i ] ; 3 uses
  %i.eu = load i8, ptr %.1.i.i.i55.i, align 1, !tbaa !100
  %i.ev = add i8 %i.eu, -48
  %i.ew = icmp ult i8 %i.ev, 10
  br i1 %i.ew, label %bb.as, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

bb.as:                                            ; preds = %bb.ar
  %i.ex = getelementptr inbounds nuw i8, ptr %.1.i.i.i55.i, i64 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i.i.i50.i
  %.2.i.i.i53.i = phi ptr [ %i.ex, %bb.as ], [ %.029.lcssa.i.i.i52.i, %._crit_edge.i.i.i50.i ] ; 2 uses
  %i.ey = load i8, ptr %.2.i.i.i53.i, align 1, !tbaa !100
  %i.ez = add i8 %i.ey, -48
  %i.fa = icmp ult i8 %i.ez, 10
  br i1 %i.fa, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread, label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit: ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit705: ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit707: ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i58.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i

_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i:  ; preds = %.lr.ph.i.i.i56.i, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit705, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit707, %bb.at, %bb.ar, %bb.ap
  %.028.i.i.i54.i = phi ptr [ %.1.i.i.i55.i, %bb.ar ], [ %.029.lcssa.i.i.i52.i, %bb.ap ], [ %.2.i.i.i53.i, %bb.at ], [ %i.fd, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit707 ], [ %i.fb, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit ], [ %i.fc, %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i.loopexit.split.loop.exit705 ], [ %.02946.i.i.i58.i, %.lr.ph.i.i.i56.i ] ; 9 uses
  %i.fe = icmp eq ptr %.028.i.i.i54.i, %i.cs
  br i1 %i.fe, label %_ZN6duckdbL21StartsWithNumericDateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8string_tE.exit.thread, label %bb.au

bb.au:                                            ; preds = %_ZSt11find_if_notIPKcPFbcEET_S4_S4_T0_.exit64.i
  %i.ff = ptrtoint ptr %.028.i.i.i54.i to i64     ; 3 uses
  %i.fg = sub i64 %i.ct, %i.ff                    ; 2 uses
  %i.fh = ashr i64 %i.fg, 2                       ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i.i71.preheader.i, label %._crit_edge.i.i.i65.i

.lr.ph.i.i.i71.preheader.i:                       ; preds = %bb.au
  %i.fj = and i64 %i.fg, -4
  %scevgep193.i.a = getelementptr i8, ptr %.028.i.i.i54.i, i64 %i.fj ; 2 uses
  br label %.lr.ph.i.i.i71.i

.lr.ph.i.i.i71.i:                                 ; preds = %bb.ay, %.lr.ph.i.i.i71.preheader.i
  %.047.i.i.i72.i = phi i64 [ %i.ga, %bb.ay ], [ %i.fh, %.lr.ph.i.i.i71.preheader.i ] ; 2 uses
  %.02946.i.i.i73.i = phi ptr [ %i.fz, %bb.ay ], [ %.028.i.i.i54.i, %.lr.ph.i.i.i71.preheader.i ] ; 9 uses
  %i.fk = load i8, ptr %.02946.i.i.i73.i, align 1, !tbaa !100
  %i.fl = add i8 %i.fk, -48
  %i.fm = icmp ult i8 %i.fl, 10
  br i1 %i.fm, label %_ZSt7find_ifIPKcPFbcEET_S4_S4_T0_.exit.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i71.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i73.i, i64 1
end_hunk_0
