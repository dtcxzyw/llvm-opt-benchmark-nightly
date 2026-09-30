Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.11?download=true
inline.NumInlined: 2170
inline.NumDeleted: 755
begin_hunk_0_@_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lruCshquuC4dCYVj_10polars_sql:bb.a
  %i.k = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !dbg !15778
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15779
  %i.m = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !dbg !15780 ; 2 uses
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.g, i32 noundef %i.i), !dbg !15781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15782
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE6removeCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.i), !dbg !15783
  %i.n = load i64, ptr %i.b, align 8, !dbg !15784, !range !695, !noundef !534 ; 2 uses
  %.not = icmp eq i64 %i.n, 2, !dbg !15784
  br i1 %.not, label %bb.g, label %bb.d, !dbg !15785, !prof !543

bb.c:                                             ; preds = %bb.a, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit
  %.sink = phi i64 [ 24, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit ], [ 16, %bb.a ]
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit ], [ 2, %bb.a ]
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !15786
  store i64 %.sroa.4.0.copyload.sink, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !15786
  ret void, !dbg !15787

bb.d:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15788
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15788
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15788
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15788 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !15788
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15789
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15790 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15757), !dbg !15791
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15759), !dbg !15792
  %i.p = lshr i64 %i.m, 57, !dbg !15793
  %i.q = trunc nuw nsw i64 %i.p to i8, !dbg !15794
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15795
  %i.s = load i64, ptr %i.r, align 8, !dbg !15795, !alias.scope !15760, !noalias !15761, !noundef !534 ; 3 uses
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !15760, !noalias !15761, !nonnull !534, !noundef !534 ; 4 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e, !dbg !15796

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.f ], !dbg !15797
  %.pn.i.i = phi i64 [ %i.m, %bb.d ], [ %i.ap, %bb.f ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.s, !dbg !15797 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i, !dbg !15798
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.w, align 1, !dbg !15799, !noalias !15762 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.v, !dbg !15800
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !15801 ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.y, 0, !dbg !15802
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !15803

.lr.ph.i:                                         ; preds = %bb.e, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.an, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true), !dbg !15804
  %i.aa = zext nneg i16 %i.z to i64, !dbg !15805
  %i.ab = add i64 %.sroa.01.0.i.i, %i.aa, !dbg !15806
  %i.ac = and i64 %i.ab, %i.s, !dbg !15806        ; 3 uses
  %i.ad = sub nsw i64 0, %i.ac, !dbg !15807
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad, !dbg !15808 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -4, !dbg !15809
  %.val3.i.i = load i32, ptr %i.af, align 4, !dbg !15809, !noalias !15763, !noundef !534
  %i.ag = icmp eq i32 %.val3.i.i, %i.i, !dbg !15810
  br i1 %i.ag, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !15810, !prof !593

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i: ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8, !dbg !15811
  %.val2.i.i = load i32, ptr %i.ah, align 4, !dbg !15809, !noalias !15763
  %i.ai = icmp eq i32 %.val2.i.i, %i.g, !dbg !15812
  br i1 %i.ai, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !15813, !prof !595

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.e
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !15814
  %i.ak = bitcast <16 x i1> %i.aj to i16, !dbg !15815
  %i.al = icmp eq i16 %i.ak, 0, !dbg !15816
  br i1 %i.al, label %bb.f, label %bb.h, !dbg !15816, !prof !543

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i, %.lr.ph.i
  %i.am = add i16 %.sroa.05.0.i34.i, -1, !dbg !15817
  %i.an = and i16 %i.am, %.sroa.05.0.i34.i, !dbg !15818 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.an, 0, !dbg !15802
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !15803

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = add i64 %.sroa.011.0.i.i, 16, !dbg !15819 ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao, !dbg !15820
  br label %bb.e, !dbg !15796

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #38, !dbg !15821
  unreachable, !dbg !15821

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15822, !noalias !15765
  store ptr %i.o, ptr %i.a, align 8, !dbg !15822, !noalias !15765
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #43, !dbg !15823, !noalias !15765
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15766), !dbg !15824
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac, !dbg !15825 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15768), !dbg !15826
  %i.ar = add nsw i64 %i.ac, -16, !dbg !15827
  %i.as = and i64 %i.ar, %i.s, !dbg !15828
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.as, !dbg !15829 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.at, align 1, !dbg !15830, !noalias !15769
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1), !dbg !15831
  %i.av = bitcast <16 x i1> %i.au to i16, !dbg !15832
  %.sroa.0.0.copyload.i926.i.i = load <16 x i8>, ptr %i.aq, align 1, !dbg !15833, !noalias !15770
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i, splat (i8 -1), !dbg !15834
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !15835
  %i.ay = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.av, i1 false), !dbg !15836
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 false), !dbg !15837
  %narrow.i.i = add nuw nsw i16 %i.az, %i.ay, !dbg !15838
  %i.ba = icmp samesign ugt i16 %narrow.i.i, 15, !dbg !15838
  br i1 %i.ba, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit, label %bb.i, !dbg !15838

bb.i:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !15839 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !15839, !alias.scope !15771, !noalias !15772, !noundef !534
  %i.bd = add i64 %i.bc, 1, !dbg !15839
  store i64 %i.bd, ptr %i.bb, align 8, !dbg !15839, !alias.scope !15771, !noalias !15772
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit, !dbg !15840

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit, %bb.i
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.i ], [ -128, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit ], !dbg !15841 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.aq, align 1, !dbg !15842, !noalias !15773
  %i.be = getelementptr i8, ptr %i.at, i64 16, !dbg !15843
  store i8 %.sroa.0.0.i.i, ptr %i.be, align 1, !dbg !15844, !noalias !15773
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !15845 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !15845, !alias.scope !15771, !noalias !15772, !noundef !534
  %i.bh = add i64 %i.bg, -1, !dbg !15845
  store i64 %i.bh, ptr %i.bf, align 8, !dbg !15845, !alias.scope !15771, !noalias !15772
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store ptr %.sroa.5.0.copyload, ptr %0, align 8, !dbg !15846
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15846
  store i64 %.sroa.6.0.copyload, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !15846
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15846
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !15846
  br label %bb.c, !dbg !15787
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMs3_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_24TableIdentifierCollector21collect_from_set_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(3408) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15847 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr7 = phi ptr [ %1, %bb.a ], [ %.tr7.be, %tailrecurse.backedge ] ; 5 uses
  %i.e = load i8, ptr %.tr7, align 8, !dbg !15868, !range !866, !noundef !534
  switch i8 %i.e, label %.loopexit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 8, label %bb.d
  ], !dbg !15869

.loopexit:                                        ; preds = %tailrecurse, %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !15870

bb.b:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7, i64 8, !dbg !15871
  %i.g = load ptr, ptr %i.f, align 8, !dbg !15871, !nonnull !534, !noundef !534
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1392, !dbg !15871
  br label %tailrecurse.backedge, !dbg !15872

tailrecurse.backedge:                             ; preds = %bb.b, %bb.c
  %.tr7.be.in = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  %.tr7.be = load ptr, ptr %.tr7.be.in, align 8, !dbg !15873, !nonnull !534, !noundef !534
  br label %tailrecurse, !dbg !15868

bb.c:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %.tr7, i64 8, !dbg !15874
  %i.j = load ptr, ptr %i.i, align 8, !dbg !15874, !nonnull !534, !noundef !534
  tail call fastcc void @_RNvMs3_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_24TableIdentifierCollector21collect_from_set_expr(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3408) %i.j), !dbg !15875
  %i.k = getelementptr inbounds nuw i8, ptr %.tr7, i64 16, !dbg !15876
  br label %tailrecurse.backedge, !dbg !15877

bb.d:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15878
  %i.m = load i8, ptr %i.l, align 8, !dbg !15878, !range !659, !noundef !534
  %i.n = trunc nuw i8 %i.m to i1, !dbg !15878
  %i.o = getelementptr inbounds nuw i8, ptr %.tr7, i64 8, !dbg !15879
  %i.p = load ptr, ptr %i.o, align 8, !dbg !15879, !nonnull !534, !noundef !534 ; 6 uses
  br i1 %i.n, label %bb.h, label %bb.e, !dbg !15878

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.p, align 8, !dbg !15880, !range !707, !alias.scope !15865, !noalias !15866, !noundef !534
  %.not.i = icmp eq i64 %i.q, -9223372036854775808, !dbg !15880
  br i1 %.not.i, label %bb.g, label %bb.f, !dbg !15881

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p), !dbg !15882
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !15883

bb.g:                                             ; preds = %bb.e
  store i64 -9223372036854775808, ptr %i.a, align 8, !dbg !15884
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !15884

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !15885 ; 2 uses
  %i.s = load i64, ptr %i.p, align 8, !dbg !15886, !range !707, !noundef !534
  %.not1 = icmp eq i64 %i.s, -9223372036854775808, !dbg !15886
  br i1 %.not1, label %bb.k, label %bb.i, !dbg !15887

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format.exit, %bb.k, %bb.j
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBT_INtNtCscgRAwXFJnXP_4core6option8IntoIterBT_EE11spec_extendCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !15888
  br label %.loopexit, !dbg !15889

bb.i:                                             ; preds = %bb.h
  %2 = load i64, ptr %i.r, align 8, !dbg !15886, !range !707, !noundef !534
  %.not = icmp eq i64 %2, -9223372036854775808, !dbg !15886
  br i1 %.not, label %bb.j, label %_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format.exit, !dbg !15887

bb.j:                                             ; preds = %bb.i
  call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p), !dbg !15890
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !15891

bb.k:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.a, align 8, !dbg !15892
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !15892

_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format.exit:       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15893
  store ptr %i.r, ptr %i.d, align 8, !dbg !15893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15894
  store ptr %i.p, ptr %i.c, align 8, !dbg !15894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15895
  store ptr %i.d, ptr %i.b, align 8, !dbg !15895
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15895
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB6_7Display3fmtCsaRr8xKSRVhT_9sqlparser, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15895
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15895
  store ptr %i.c, ptr %i.t, align 8, !dbg !15895
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !15895
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB6_7Display3fmtCsaRr8xKSRVhT_9sqlparser, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !15895
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @32, ptr noundef nonnull %i.b), !dbg !15896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15898
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !15898
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvMs4_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !15899 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16025), !dbg !16042
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16026), !dbg !16042
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16043 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.l, !dbg !16044 ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16027), !dbg !16045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16028), !dbg !16045
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16046 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !16046, !alias.scope !16029, !noalias !16030, !noundef !534
  %i.f = icmp eq i64 %i.e, 0, !dbg !16047
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i, !dbg !16048, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.l, !dbg !16049 ; 0 uses

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.c, %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !dbg !16050, !alias.scope !16031, !noalias !16032, !nonnull !534, !noundef !534 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16050
  %.val7.i.i = load i64, ptr %i.h, align 8, !dbg !16050, !alias.scope !16031, !noalias !16032, !noundef !534 ; 4 uses
  %i.i = lshr i64 %i.c, 57, !dbg !16051
  %i.j = trunc nuw nsw i64 %i.i to i8, !dbg !16052 ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !16033, !noalias !16034 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !16033, !noalias !16034, !nonnull !534
  br label %bb.d, !dbg !16053

bb.d:                                             ; preds = %bb.f, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i ], [ %i.ao, %bb.f ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.f ], !dbg !16054
  %.sroa.01.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i ], [ %.sroa.01.122.i.i.i, %bb.f ], !dbg !16054
  %i.o = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i.i ], [ %i.an, %bb.f ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i, !dbg !16055 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i, !dbg !16056
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.p, align 1, !dbg !16057, !noalias !16035 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.l, !dbg !16058
  %i.r = bitcast <16 x i1> %i.q to i16, !dbg !16059 ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.r, 0, !dbg !16060
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !16061

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i
  %.sroa.05.029.i.i.i = phi i16 [ %i.ad, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i, i1 true), !dbg !16062
  %i.t = zext nneg i16 %i.s to i64, !dbg !16063
  %i.u = add i64 %.sroa.0.017.i.i.i, %i.t, !dbg !16064
  %i.v = and i64 %i.u, %.val7.i.i, !dbg !16064
  %i.w = sub nsw i64 0, %i.v, !dbg !16065
  %i.x = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.w, !dbg !16066 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !16067
  %.val3.i.i.i = load i64, ptr %i.y, align 8, !dbg !16067, !noalias !16036, !noundef !534
  %i.z = icmp eq i64 %.val1.i.i.i.i, %.val3.i.i.i, !dbg !16068
  br i1 %i.z, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i, !dbg !16068, !prof !593

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr i8, ptr %i.x, i64 -16, !dbg !16067
  %.val2.i.i.i = load ptr, ptr %i.aa, align 8, !dbg !16067, !noalias !16036, !nonnull !534, !noundef !534
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i.i), !dbg !16069, !noalias !16036
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0, !dbg !16069
  br i1 %i.ab, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i, !dbg !16070, !prof !595

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i, %bb.d
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1, !dbg !16071
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.e, !dbg !16072, !prof !543

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i.i, %.lr.ph.i.i.i
  %i.ac = add i16 %.sroa.05.029.i.i.i, -1, !dbg !16073
  %i.ad = and i16 %i.ac, %.sroa.05.029.i.i.i, !dbg !16074 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ad, 0, !dbg !16060
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !16061

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer, !dbg !16075
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !16075 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.af, 0, !dbg !16076
  br i1 %.not.i.i.i.i, label %bb.f, label %.thread24.i.i.i, !dbg !16077, !prof !543

.thread24.i.i.i:                                  ; preds = %bb.e
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.af, i1 true), !dbg !16078
  %i.ah = zext nneg i16 %i.ag to i64, !dbg !16079
  %i.ai = add i64 %.sroa.0.017.i.i.i, %i.ah, !dbg !16080
  %i.aj = and i64 %i.ai, %.val7.i.i, !dbg !16080
  br label %.thread.i.i.i, !dbg !16081

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.aj, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1), !dbg !16082
  %i.al = bitcast <16 x i1> %i.ak to i16, !dbg !16083
  %i.am = icmp eq i16 %i.al, 0, !dbg !16084
  br i1 %i.am, label %bb.f, label %bb.g, !dbg !16084, !prof !543

bb.f:                                             ; preds = %.thread.i.i.i, %bb.e
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.e ]
  %i.an = add i64 %i.o, 16, !dbg !16085           ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.0.017.i.i.i, !dbg !16086
  br label %bb.d, !dbg !16053

bb.g:                                             ; preds = %.thread.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.121.i.i.i, !dbg !16087
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !16088, !noalias !16028, !noundef !534 ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1, !dbg !16089
  br i1 %i.ar, label %bb.h, label %bb.j, !dbg !16089, !prof !543

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !dbg !16090, !noalias !16028
  %i.as = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer, !dbg !16091
  %i.at = bitcast <16 x i1> %i.as to i16, !dbg !16091 ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.at, 0, !dbg !16092
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true), !dbg !16093
  %i.av = zext nneg i16 %i.au to i64, !dbg !16093 ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i.i), !dbg !16094
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.av
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !dbg !16095, !noalias !16037
  br label %bb.j, !dbg !16096

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i.i
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !16097
  br label %_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCshquuC4dCYVj_10polars_sql.exit, !dbg !16098

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.aw = phi i8 [ %.pre.i, %bb.h ], [ %i.aq, %bb.g ], !dbg !16095
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.av, %bb.h ], [ %.sroa.4.121.i.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !16100, !noalias !16025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16038), !dbg !16101
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i, !dbg !16102
  %i.ay = and i8 %i.aw, 1, !dbg !16103
  %i.az = zext nneg i8 %i.ay to i64, !dbg !16103
  %i.ba = add i64 %.sroa.3.0.i.ph.i.i, -16, !dbg !16104
  %i.bb = and i64 %i.ba, %.val7.i.i, !dbg !16105
  store i8 %i.j, ptr %i.ax, align 1, !dbg !16106, !noalias !16037
  %i.bc = getelementptr i8, ptr %.val.i.i, i64 %i.bb, !dbg !16107
  %i.bd = getelementptr i8, ptr %i.bc, i64 16, !dbg !16107
  store i8 %i.j, ptr %i.bd, align 1, !dbg !16108, !noalias !16037
  %i.be = load <2 x i64>, ptr %i.d, align 8, !dbg !16109, !alias.scope !16040, !noalias !16041
  %i.bf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.az, i64 0, !dbg !16109
  %i.bg = sub <2 x i64> %i.be, %i.bf, !dbg !16109
  store <2 x i64> %i.bg, ptr %i.d, align 8, !dbg !16109, !alias.scope !16040, !noalias !16041
  %i.bh = sub nsw i64 0, %.sroa.3.0.i.ph.i.i, !dbg !16110
  %i.bi = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.bh, !dbg !16111
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -24, !dbg !16112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !16113, !noalias !16038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16114
  br label %_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCshquuC4dCYVj_10polars_sql.exit, !dbg !16098

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bk, !dbg !16115

bb.l:                                             ; preds = %bb.c, %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.k unwind label %bb.m, !dbg !16116

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !16115
  unreachable, !dbg !16115

_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %bb.j
  ret void, !dbg !16117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) unnamed_addr #4 !dbg !16118 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !dbg !16175, !range !724, !noundef !534
  switch i8 %i.a, label %bb.k [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
end_hunk_0
