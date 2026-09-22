Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_gettext-115224af74263944.fish_gettext.778c4f22e7cc23d5-cgu.1?download=true
inline.NumInlined: 126
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_:bb.a
  %i.am = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !101
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit.thread

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 7 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ae, i1 false), !noalias !101
  store ptr %i.c, ptr %i.b, align 8, !noalias !97
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !97
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !97
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !97
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  %i.as = load ptr, ptr %0, align 8, !alias.scope !102, !noalias !103, !nonnull !4, !noundef !4 ; 4 uses
  %i.at = load i64, ptr %i.d, align 8, !alias.scope !102, !noalias !103, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = ptrtoint ptr %i.ar to i64
  br i1 %i.au, label %._crit_edge54, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit
  %.val337 = load <16 x i8>, ptr %i.as, align 16
  %i.aw = icmp sgt <16 x i8> %.val337, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #21
  br label %common.resume

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.az = phi ptr [ %i.df, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.as, %.preheader.preheader ]
  %.sroa.019.053 = phi ptr [ %.sroa.019.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %.sroa.5.052 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.bz, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.at, %.preheader.preheader ]
  %.sroa.13.050 = phi i16 [ %i.bx, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ax, %.preheader.preheader ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre65 = load i64, ptr %i.d, align 8, !alias.scope !102, !noalias !103
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit
  %.sroa.0.0.copyload.i.i.i.i.i.in = phi ptr [ %i.df, %._crit_edge54.loopexit ], [ %i.as, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit ]
  %i.be = phi i64 [ %.pre65, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit ]
  %i.bf = sub i64 %.sroa.07.0.i.i, %i.be
  store i64 %i.av, ptr %0, align 8, !alias.scope !104, !noalias !105
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !106, !noalias !107 ; 3 uses
  store i64 %i.ao, ptr %i.h, align 8, !alias.scope !106, !noalias !107
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !108, !noalias !109
  %i.bh = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge54
  %i.bi = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 4 ; 2 uses
  %i.bj = add i64 %i.bi, 16
  %i.bk = add i64 %i.bi, 31                       ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bj
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = and i64 %i.bk, -16                      ; 3 uses
  %i.bn = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = icmp ult i64 %i.bo, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bp)
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.bo, 0
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bs = sub nsw i64 0, %i.bm
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.in, i64 %i.bs
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !110
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit: ; preds = %._crit_edge54, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bu = add i16 %.sroa.13.1.lcssa, -1
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = and i16 %i.bu, %.sroa.13.1.lcssa
  %i.by = add i64 %.sroa.5.1.lcssa, %i.bw         ; 2 uses
  %i.bz = add i64 %.sroa.9.051, -1                ; 2 uses
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %i.cd = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEB1H_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cc)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.cd, %i.ao            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !111
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !112

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ], [ %i.cx, %.lr.ph.i ]
  %i.ch = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ao                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !4
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.m, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.m:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.ar, align 16
  %i.co = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ao           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !111
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !113

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.m, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.m ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i5.i
  %i.cz = lshr i64 %i.cd, 57
  %i.da = trunc nuw nsw i64 %i.cz to i8           ; 2 uses
  %i.db = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dc = and i64 %i.db, %i.ao
  store i8 %i.da, ptr %i.cy, align 1
  %i.dd = getelementptr i8, ptr %i.ar, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.da, ptr %i.de, align 1
  %i.df = load ptr, ptr %0, align 8, !alias.scope !102, !noalias !103, !nonnull !4, !noundef !4 ; 3 uses
  %i.dg = shl i64 %i.by, 4
  %i.dh = sub nuw nsw i64 -16, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh
  %i.dj = shl i64 %.sroa.0.0.i5.i, 4
  %i.dk = sub nuw nsw i64 -16, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.ar, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dl, ptr noundef nonnull align 1 dereferenceable(16) %i.di, i64 16, i1 false)
  %i.dm = icmp eq i64 %i.bz, 0
  br i1 %i.dm, label %._crit_edge54.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.eq, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  br label %bb.x

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.dn = lshr i64 %i.k, 4
  %i.do = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.do, 0
  %i.dp = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dn, %i.dp ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dq = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.o

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ea, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod110 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dr, align 16, !noalias !114
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.ds = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dt = or <2 x i64> %i.ds, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dt, ptr %i.dr, align 16, !noalias !114
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.28.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %.val13.i, i64 %.28.i, i1 false), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  store ptr null, ptr %i.du, align 8, !noalias !114
  store i64 16, ptr %i.dv, align 8, !noalias !114
  store ptr %0, ptr %i.a, align 8, !noalias !114
  br label %.lr.ph.i13

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ea, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.o ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dx, align 16, !noalias !114
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !114
  %i.ea = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ec, align 16, !noalias !114
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ed = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ee = or <2 x i64> %i.ed, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ee, ptr %i.ec, align 16, !noalias !114
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.o

.lr.ph.i13:                                       ; preds = %bb.v, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ef, %bb.v ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ef = add nuw i64 %.sroa.0.06.i, 1
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.0.06.i
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !4
  %.not.i14 = icmp eq i8 %i.ei, -128
  br i1 %.not.i14, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 4
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 %.neg11.i ; 4 uses
  %i.ek = sub nsw i64 0, %.sroa.0.06.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.p
  %i.em = phi ptr [ %.pre.i, %.preheader.preheader.i ], [ %i.eg, %bb.p ]
  %i.en = getelementptr inbounds [16 x i8], ptr %i.em, i64 %i.ek
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %i.ep = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEB1H_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i unwind label %bb.q ; 3 uses

bb.q:                                             ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.w

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !114, !noundef !4 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.ep      ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.er, align 1, !noalias !115
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !112

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.et, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i ], [ %i.fk, %.lr.ph.i16.i ]
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = add i64 %.sroa.0.0.lcssa.i.i, %i.ev
  %i.ex = and i64 %i.ew, %.val12.i                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noundef !4
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.r, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.r:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i17, align 16
  %i.fb = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fc, 0
  %i.fd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fc, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i ]
  %i.ff = phi i64 [ %i.fg, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i ]
  %i.fg = add i64 %i.ff, 16                       ; 2 uses
  %i.fh = add i64 %i.fg, %.sroa.0.010.i.i
  %.sroa.0.0.i.i18 = and i64 %i.fh, %.val12.i     ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fi, align 1, !noalias !115
  %i.fj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fk, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !113

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.r, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fe, %bb.r ], [ %i.ex, %._crit_edge.i15.i ] ; 4 uses
  %i.fl = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fm = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fn = xor i64 %i.fm, %i.fl
  %.unshifted.i = and i64 %i.fn, %.val12.i
  %i.fo = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fo, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fp = shl i64 %.sroa.0.0.i5.i.i, 4
  %i.fq = sub nuw nsw i64 -16, %i.fp
  %i.fr = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fq ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !noundef !4
  %i.fu = lshr i64 %i.ep, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fx = and i64 %i.fw, %.val12.i
  store i8 %i.fv, ptr %i.fs, align 1
  %i.fy = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  store i8 %i.fv, ptr %i.ga, align 1
  %i.gb = icmp eq i8 %i.ft, -1
  br i1 %i.gb, label %bb.u, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ej, align 1, !alias.scope !116, !noalias !117
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.fr, align 1, !alias.scope !117, !noalias !116
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ej, align 1, !alias.scope !116, !noalias !117
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.fr, align 1, !alias.scope !117, !noalias !116
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.el, align 1, !alias.scope !118, !noalias !119
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.gc, align 1, !alias.scope !119, !noalias !118
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.el, align 1, !alias.scope !118, !noalias !119
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.gc, align 1, !alias.scope !119, !noalias !118
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !120, !noalias !121
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.t:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gd = lshr i64 %i.ep, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.06.i, -16
  %i.gg = and i64 %.val12.i, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i
  store i8 %i.ge, ptr %i.gh, align 1
  %i.gi = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.ge, ptr %i.gk, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.gl = add i64 %.sroa.0.06.i, -16
  %i.gm = load i64, ptr %i.h, align 8, !alias.scope !114, !noundef !4
  %i.gn = and i64 %i.gm, %i.gl
  %i.go = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !noundef !4
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 -1, ptr %i.gs, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fr, ptr noundef nonnull align 1 dereferenceable(16) %i.ej, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

bb.w:                                             ; preds = %bb.q
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.v
  %.pre13.i = load i64, ptr %i.h, align 8, !alias.scope !114
  %.pre13.i.fr = freeze i64 %.pre13.i             ; 3 uses
  %.pre14.i = add i64 %.pre13.i.fr, 1
  %i.gu = lshr i64 %.pre14.i, 3
  %i.gv = mul nuw i64 %i.gu, 7
  %i.gw = icmp ult i64 %.pre13.i.fr, 8
  %spec.select = select i1 %i.gw, i64 %.pre13.i.fr, i64 %i.gv
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !114
  br label %bb.x

bb.x:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gx = phi i64 [ %i.e, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gy = phi i64 [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = sub i64 %i.gy, %i.gx
  store i64 %i.ha, ptr %i.gz, align 8, !alias.scope !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit, %bb.c, %bb.x
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.x ], [ %.sroa.12.033, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit.thread ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.x ], [ %.sroa.7.034, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext.exit.thread ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext.exit ]
  %i.hb = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hc = insertvalue { i64, i64 } %i.hb, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hc
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !124 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !124, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !124
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #20, !noalias !124
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !128
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !128, !nonnull !4, !align !6, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !128, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !128, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !128, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !128, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !128
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !128, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !128
  %i.q = load i64, ptr %i.e, align 8, !noalias !128, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !128
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !128, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !128, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !128, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !128
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !128, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !128
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !128, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !128, !inline_history !127
  %i.af = load i64, ptr %i.e, align 8, !noalias !128, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !128
  br label %bb.d

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaglNHct1YhZ_12fish_gettext.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !128, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !128, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !128
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB6_7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2G_8adapters3map3MapINtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtB48_3MapReB5y_EENCNCNvBQ_19AVAILABLE_LANGUAGES00EEBQ_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2I_8adapters3map3MapIB3J_INtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtB4i_3MapReB5I_EENCNCNvBR_19AVAILABLE_LANGUAGES00ENCINvXs8_NtB9_3setINtB6w_7HashSetBP_B1N_EIB2C_BP_E6extendB4a_E0EEBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB2J_EEEE4lockCsaglNHct1YhZ_12fish_gettext(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  %spec.select.i = zext i1 %.not.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.k, align 8, !alias.scope !131
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01.0.i, ptr %i.l, align 8, !alias.scope !131
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !131
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RNvMs8_NtCs4gXUGq9oE06_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE20finish128_with_stateCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i64 %1, 56
  %i.b = or i64 %i.a, %2                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = xor i64 %i.d, %i.b                       ; 3 uses
  %i.f = load i64, ptr %0, align 8, !alias.scope !134, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !134, !noundef !4 ; 3 uses
  %i.i = add i64 %i.h, %i.f                       ; 3 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 13)
  %i.k = xor i64 %i.j, %i.i                       ; 3 uses
  %i.l = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 32)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !134, !noundef !4
  %i.o = add i64 %i.n, %i.e                       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 16)
  %i.q = xor i64 %i.o, %i.p                       ; 3 uses
  %i.r = add i64 %i.q, %i.l                       ; 2 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 21)
  %i.t = xor i64 %i.s, %i.r                       ; 3 uses
  %i.u = add i64 %i.o, %i.k                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 17)
  %i.w = xor i64 %i.u, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.y = xor i64 %i.r, %i.b
  %i.z = xor i64 %i.x, 238
  %i.aa = add i64 %i.y, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ae = add i64 %i.t, %i.z                      ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.ag, %i.ad                    ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 21)
  %i.aj = xor i64 %i.ai, %i.ah                    ; 3 uses
  %i.ak = add i64 %i.ac, %i.ae                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 17)
  %i.am = xor i64 %i.ak, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ao = add i64 %i.am, %i.ah                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.aq = xor i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.as = add i64 %i.aj, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.au, %i.ar                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 21)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = add i64 %i.aq, %i.as                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ba = xor i64 %i.az, %i.ay                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bc = add i64 %i.ba, %i.av                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.be = xor i64 %i.bd, %i.bc                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bg = add i64 %i.ax, %i.bb                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 21) ; 2 uses
  %i.bl = xor i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = add i64 %i.be, %i.bg                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bo = xor i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32) ; 2 uses
  %i.bq = xor i64 %i.bp, %i.bk
  %i.br = xor i64 %i.bq, %i.bo
  %i.bs = xor i64 %i.bo, 221                      ; 3 uses
  %i.bt = add i64 %i.bs, %i.bj                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 13)
  %i.bv = xor i64 %i.bu, %i.bt                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.bx = add i64 %i.bl, %i.bp                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bz = xor i64 %i.by, %i.bx                    ; 3 uses
  %i.ca = add i64 %i.bw, %i.bz                    ; 2 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 21)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = add i64 %i.bv, %i.bx                    ; 3 uses
  %i.ce = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  %i.cf = xor i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = tail call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 32)
  %i.ch = add i64 %i.cf, %i.ca                    ; 3 uses
  %i.ci = tail call noundef i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 13)
  %i.cj = xor i64 %i.ci, %i.ch                    ; 3 uses
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 32)
  %i.cl = add i64 %i.cc, %i.cg                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 16)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cn, %i.ck                    ; 2 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 21)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = add i64 %i.cj, %i.cl                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 17)
  %i.ct = xor i64 %i.cs, %i.cr                    ; 3 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 32)
  %i.cv = add i64 %i.ct, %i.co
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 13)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 3 uses
  %i.cy = add i64 %i.cq, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 16)
  %i.da = xor i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 21)
  %i.dc = add i64 %i.cx, %i.cy                    ; 3 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 17)
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = xor i64 %i.df, %i.db
  %i.dh = xor i64 %i.dg, %i.dc
  %i.di = insertvalue { i64, i64 } poison, i64 %i.br, 0
  %i.dj = insertvalue { i64, i64 } %i.di, i64 %i.dh, 1
  ret { i64, i64 } %i.dj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtNtB9_11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEB1y_.exit
    i32 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEB1y_.exit
    i32 0, label %bb.c
  ], !prof !139

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !alias.scope !140 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !alias.scope !140, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEB1y_.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = shl i64 %.val1, 4                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEB1y_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !141
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEB1y_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEEB1y_.exit: ; preds = %bb.d, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.c, %bb.a, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs7_NtCs5HGUHib7p01_3phf3mapINtB5_7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtB5_3MapReB1A_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCsaglNHct1YhZ_12fish_gettext(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs5HGUHib7p01_3phf3map3MapReB37_EEEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #20
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_CslSwhfOFuxKz_17fish_localizationNtB6_8LanguageNtCs77aWKNvxMmo_10phf_shared7PhfHash8phf_hashNtNtCs4gXUGq9oE06_9siphasher6sip12811SipHasher13ECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2I_8adapters3map3MapIB3J_INtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtB4i_3MapReB5I_EENCNCNvBR_19AVAILABLE_LANGUAGES00ENCINvXs8_NtB9_3setINtB6w_7HashSetBP_B1N_EIB2C_BP_E6extendB4a_E0EEBR_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEB1H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noinline noreturn }
attributes #19 = { inlinehint }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{i64 4}
!6 = !{i64 8}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsaglNHct1YhZ_12fish_gettext"}
!11 = distinct !{!11, !10, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsaglNHct1YhZ_12fish_gettext: argument 0"}
!12 = distinct !{null}
!13 = !{!11}
!14 = distinct !{!14, !"_RINvCs77aWKNvxMmo_10phf_shared4hashNtCslSwhfOFuxKz_17fish_localization8LanguageECsaglNHct1YhZ_12fish_gettext"}
!15 = distinct !{!15, !14, !"_RINvCs77aWKNvxMmo_10phf_shared4hashNtCslSwhfOFuxKz_17fish_localization8LanguageECsaglNHct1YhZ_12fish_gettext: argument 1"}
!16 = distinct !{!16, !14, !"_RINvCs77aWKNvxMmo_10phf_shared4hashNtCslSwhfOFuxKz_17fish_localization8LanguageECsaglNHct1YhZ_12fish_gettext: argument 0"}
!17 = distinct !{!17, !"_RNvCs77aWKNvxMmo_10phf_shared9get_index"}
!18 = distinct !{!18, !17, !"_RNvCs77aWKNvxMmo_10phf_shared9get_index: argument 1"}
!19 = distinct !{!19, !17, !"_RNvCs77aWKNvxMmo_10phf_shared9get_index: argument 0"}
!20 = distinct !{!20, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!21 = distinct !{!21, !20, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!22 = distinct !{!22, !20, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!23 = !{!16, !15}
!24 = !{!16}
!25 = !{!18}
!26 = !{!19, !18}
!27 = !{!19}
!28 = !{!22, !21}
!29 = distinct !{!29, !"_RINvCs77aWKNvxMmo_10phf_shared4hasheECsaglNHct1YhZ_12fish_gettext"}
!30 = distinct !{!30, !29, !"_RINvCs77aWKNvxMmo_10phf_shared4hasheECsaglNHct1YhZ_12fish_gettext: argument 1"}
!31 = distinct !{!31, !"_RINvXs7_Cs77aWKNvxMmo_10phf_sharedeNtB6_7PhfHash8phf_hashNtNtCs4gXUGq9oE06_9siphasher6sip12811SipHasher13ECsaglNHct1YhZ_12fish_gettext"}
!32 = distinct !{!32, !31, !"_RINvXs7_Cs77aWKNvxMmo_10phf_sharedeNtB6_7PhfHash8phf_hashNtNtCs4gXUGq9oE06_9siphasher6sip12811SipHasher13ECsaglNHct1YhZ_12fish_gettext: argument 0"}
!33 = distinct !{!33, !"_RNvXsb_NtCs4gXUGq9oE06_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write"}
!34 = distinct !{!34, !33, !"_RNvXsb_NtCs4gXUGq9oE06_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write: argument 1"}
!35 = distinct !{!35, !"_RNvXsd_NtCs4gXUGq9oE06_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsaglNHct1YhZ_12fish_gettext"}
!36 = distinct !{!36, !35, !"_RNvXsd_NtCs4gXUGq9oE06_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsaglNHct1YhZ_12fish_gettext: argument 1"}
!37 = distinct !{!37, !"_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le"}
!38 = distinct !{!38, !37, !"_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le: argument 0"}
!39 = distinct !{!39, !29, !"_RINvCs77aWKNvxMmo_10phf_shared4hasheECsaglNHct1YhZ_12fish_gettext: argument 0"}
!40 = distinct !{!40, !31, !"_RINvXs7_Cs77aWKNvxMmo_10phf_sharedeNtB6_7PhfHash8phf_hashNtNtCs4gXUGq9oE06_9siphasher6sip12811SipHasher13ECsaglNHct1YhZ_12fish_gettext: argument 1"}
!41 = distinct !{!41, !33, !"_RNvXsb_NtCs4gXUGq9oE06_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write: argument 0"}
!42 = distinct !{!42, !35, !"_RNvXsd_NtCs4gXUGq9oE06_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsaglNHct1YhZ_12fish_gettext: argument 0"}
!43 = distinct !{!43, !"_RNvCs77aWKNvxMmo_10phf_shared9get_index"}
!44 = distinct !{!44, !43, !"_RNvCs77aWKNvxMmo_10phf_shared9get_index: argument 1"}
!45 = distinct !{!45, !43, !"_RNvCs77aWKNvxMmo_10phf_shared9get_index: argument 0"}
!46 = distinct !{!46, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!47 = distinct !{!47, !46, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!48 = distinct !{!48, !46, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!49 = !{!30}
!50 = !{!38, !36, !34, !32, !30}
!51 = !{!42, !41, !40, !39}
!52 = !{!36, !34, !32, !30}
!53 = !{!39, !30}
!54 = !{!44}
!55 = !{!45, !44}
!56 = !{!45}
!57 = !{!48, !47}
!58 = distinct !{!58, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext"}
!59 = distinct !{!59, !58, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext: argument 0"}
!60 = distinct !{!60, !58, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext: argument 1"}
!61 = distinct !{!61, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext"}
!62 = distinct !{!62, !61, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsaglNHct1YhZ_12fish_gettext: argument 0"}
end_hunk_0
