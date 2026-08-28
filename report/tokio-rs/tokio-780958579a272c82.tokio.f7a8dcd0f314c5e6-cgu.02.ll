Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.02?download=true
inline.NumInlined: 301
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio:bb.a
  br label %.preheader

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.032 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.033 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.018.052 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.018.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.051 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.049 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i144 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i144, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.018.146 = phi ptr [ %i.ay, %.noexc2 ], [ %.sroa.018.052, %.preheader ] ; 2 uses
  %.sroa.5.145 = phi i64 [ %i.bb, %.noexc2 ], [ %.sroa.5.051, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.146) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.018.146, i64 16 ; 3 uses
  %.val437 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val437, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %i.bb = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ba, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge53.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre66 = load i64, ptr %i.d, align 8, !alias.scope !70, !noalias !71
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit
  %i.bc = phi i64 [ %.pre66, %._crit_edge53.loopexit ], [ 0, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit ] ; 2 uses
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslghKHtsL3a4_5tokio(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge53
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit: ; preds = %._crit_edge53
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !78 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !78 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !78, !noundef !23 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !78
  %i.bg = add i64 %.val3.i.i, 1
  %i.bh = mul nuw i64 %.val.i.i, %i.bg            ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  call void @llvm.assume(i1 %i.bk)
  %i.bl = sub i64 0, %.val1.i.i
  %i.bm = and i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bt = icmp eq i64 %i.bo, 0
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #24, !noalias !78
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.ba, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.bb, %.noexc2 ] ; 2 uses
  %.sroa.018.1.lcssa = phi ptr [ %.sroa.018.052, %.preheader ], [ %i.ay, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !alias.scope !79, !noalias !82, !nonnull !23, !noundef !23
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [32 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -32
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ap, %i.cg            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !84
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !87

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ], [ %i.da, %.lr.ph.i ]
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cl
  %i.cn = and i64 %i.cm, %i.ap                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !23
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.n, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !31

bb.n:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.an, align 16
  %i.cr = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cs, 0
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ]
  %i.cw = add i64 %i.cv, 16                       ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cx, %i.ap            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !noalias !84
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !88

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %._crit_edge.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i
  %i.dc = lshr i64 %i.cg, 57
  %i.dd = trunc nuw nsw i64 %i.dc to i8           ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.df = and i64 %i.de, %i.ap
  store i8 %i.dd, ptr %i.db, align 1
  %i.dg = getelementptr i8, ptr %i.an, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store i8 %i.dd, ptr %i.dh, align 1
  %i.di = load ptr, ptr %0, align 8, !alias.scope !70, !noalias !71, !nonnull !23, !noundef !23
  %i.dj = shl i64 %i.ca, 5
  %i.dk = sub nuw nsw i64 -32, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = shl i64 %.sroa.0.0.i5.i, 5
  %i.dn = sub nuw nsw i64 -32, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.do, ptr noundef nonnull align 1 dereferenceable(32) %i.dl, i64 32, i1 false)
  %i.dp = icmp eq i64 %i.cb, 0
  br i1 %i.dp, label %._crit_edge53.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !89 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4
  %i.dr = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dr, 0
  %i.ds = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dt = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.du = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !noalias !89
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !noalias !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i11 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  store ptr @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtB13_4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCslghKHtsL3a4_5tokio, ptr %i.dx, align 8, !noalias !89
  store i64 32, ptr %i.dy, align 8, !noalias !89
  store ptr %0, ptr %i.a, align 8, !noalias !89
  br label %.lr.ph.i12

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !noalias !89
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !noalias !89
  %i.ed = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !noalias !89
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !noalias !89
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i12:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ei = add nuw i64 %.sroa.0.06.i, 1
  %i.ej = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !23, !noundef !23 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i
  %i.el = load i8, ptr %i.ek, align 1, !noundef !23
  %.not.i13 = icmp eq i8 %i.el, -128
  br i1 %.not.i13, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i12
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 5
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg11.i ; 2 uses
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eo = load ptr, ptr %0, align 8, !alias.scope !92, !noalias !95, !nonnull !23, !noundef !23
  %i.ep = getelementptr inbounds [32 x i8], ptr %i.eo, i64 %i.en
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %i.er = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i16 = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !23, !noundef !23 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !89, !noundef !23 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.er      ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !noalias !97
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !87

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ], [ %i.fm, %.lr.ph.i16.i ]
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex
  %i.ez = and i64 %i.ey, %.val12.i                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !23
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !31

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i16, align 16
  %i.fd = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ]
  %i.fi = add i64 %i.fh, 16                       ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.fj, %.val12.i     ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !noalias !97
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !88

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i15.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val12.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.u, label %bb.t, !prof !30

bb.t:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.fs = sub nuw nsw i64 -32, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %.val.i16, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !23
  %i.fw = lshr i64 %i.er, 57
  %i.fx = trunc nuw nsw i64 %i.fw to i8           ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fz = and i64 %i.fy, %.val12.i
  store i8 %i.fx, ptr %i.fu, align 1
  %i.ga = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !23, !noundef !23
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 %i.fx, ptr %i.gc, align 1
  %i.gd = icmp eq i8 %i.fv, -1
  br i1 %i.gd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.er, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16
  %i.gh = and i64 %.val12.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.06.i
  store i8 %i.gf, ptr %i.gi, align 1
  %i.gj = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !23, !noundef !23
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.gf, ptr %i.gl, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gm = add i64 %.sroa.0.06.i, -16
  %i.gn = load i64, ptr %i.h, align 8, !alias.scope !89, !noundef !23
  %i.go = and i64 %i.gn, %i.gm
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !23, !noundef !23
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gq, align 1
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !23, !noundef !23
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store i8 -1, ptr %i.gt, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ft, ptr noundef nonnull align 1 dereferenceable(32) %i.em, i64 32, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslghKHtsL3a4_5tokio(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 4)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i12
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i12

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !89
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gv = lshr i64 %.pre13.i, 3
  %i.gw = mul nuw i64 %i.gv, 7
  %i.gx = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !89
  br label %bb.z
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio:bb.a
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #24, !noalias !103
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !106
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !106, !nonnull !23, !align !109, !noundef !23 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !106, !noundef !23 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !106, !noundef !23
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !106, !noundef !23
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !106
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !23, !noundef !23
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !106
  %i.q = load i64, ptr %i.e, align 8, !noalias !106, !noundef !23
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !23, !noundef !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !106, !noundef !23
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !106, !noundef !23
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !106
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !23, !noundef !23
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !106
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !23, !noundef !23
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !106, !inline_history !110
  %i.af = load i64, ptr %i.e, align 8, !noalias !106, !noundef !23
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !106
  br label %bb.d

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !106, !noundef !23 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !106, !noundef !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !106
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs1_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6ThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !123, !nonnull !23, !noundef !23
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !126
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !139, !nonnull !23, !noundef !23
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !140
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.f, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !147, !nonnull !23, !noundef !23
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !148
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !155, !nonnull !23, !noundef !23
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !156
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECslghKHtsL3a4_5tokio.exit

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch13maybe_changeduEB6_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = load i64, ptr %1, align 8, !noundef !23
  %.not = icmp eq i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = and i64 %i.b, 1
  %.not1 = icmp eq i64 %2, 0
  %. = select i1 %.not1, i8 2, i8 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.c, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %., %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch7channeljEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [256 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %.sroa.5)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !157
  %i.a = tail call noundef align 8 dereferenceable_or_null(344) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 344, i64 noundef 8) #24, !noalias !157 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 344) #28, !noalias !157
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5, i64 256, i1 false)
  %.sroa.6.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx24, i8 0, i64 40, i1 false)
  store i64 %1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 1, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 1, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.c = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  store ptr %i.a, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8
  ret void

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch7channeluEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [256 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %.sroa.5)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !160
  %i.a = tail call noundef align 8 dereferenceable_or_null(336) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 336, i64 noundef 8) #24, !noalias !160 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 336) #28, !noalias !160
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5, i64 256, i1 false)
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx23, i8 0, i64 48, i1 false)
  store i64 1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 1, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.c = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  store ptr %i.a, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8
  ret void

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio4sync7oneshot7channeluEB6_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !163
  %i.a = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #24, !noalias !163 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEE3newB17_.exit, !prof !31

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEE3newB17_.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.c = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEE3newB17_.exit
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.a, 1
  ret { ptr, ptr } %i.f

bb.c:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEE3newB17_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp ult i64 %1, 2305843009213693952
  br i1 %i.b, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @21, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 1                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.03.0 = phi i64 [ %i.e, %bb.c ], [ %.sroa.01.0.i, %bb.g ] ; 4 uses
  %2 = and i64 %.sroa.03.0, 1
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %.sroa.03.0, %i.c
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 2, %bb.g ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  %i.g = sub nuw i64 %.sroa.03.0, %i.c
  %i.h = cmpxchg ptr %i.d, i64 %.sroa.03.0, i64 %i.g acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.h, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.h, 0
  br i1 %.sroa.18.0.in.i, label %bb.f, label %bb.d
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore14forget_permits(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %..i6, %bb.e ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.03.0 = phi i64 [ %i.c, %bb.b ], [ %.sroa.01.0.i, %bb.d ] ; 3 uses
  %i.d = lshr i64 %.sroa.03.0, 1                  ; 2 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %1)
  %i.f = shl nuw i64 %i.e, 1
  %i.g = and i64 %.sroa.03.0, 1
  %i.h = or disjoint i64 %i.f, %i.g
  %i.i = cmpxchg weak ptr %i.b, i64 %.sroa.03.0, i64 %i.h acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %..i6 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d)
  br label %bb.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore17available_permits(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = lshr i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [520 x i8], align 8               ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 5 uses
  store i64 0, ptr %i.e, align 8
  %.not76 = icmp eq i64 %1, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph79, %bb.v
  %.sroa.0.078 = phi i1 [ false, %.lr.ph79 ], [ %.sroa.0.3, %bb.v ] ; 2 uses
  %.sroa.0.04977 = phi ptr [ %2, %.lr.ph79 ], [ null, %bb.v ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.0.04977, null
  br i1 %.not27, label %bb.g, label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore18add_permits_locked0B8_.exit

._crit_edge:                                      ; preds = %bb.a
  %i.g = cmpxchg ptr %2, i8 1, i8 0 release monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %._crit_edge
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit40: ; preds = %bb.ad, %bb.ae, %bb.m, %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.m ], [ %lpad.phi, %bb.ae ], [ %lpad.phi, %bb.ad ]
  invoke void @_RNvXs_NtNtCslghKHtsL3a4_5tokio4util9wake_listNtB4_8WakeListNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4util9wake_list8WakeListEBH_.exit unwind label %bb.af

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit40

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit: ; preds = %bb.v, %._crit_edge, %bb.c
  call void @_RNvXs_NtNtCslghKHtsL3a4_5tokio4util9wake_listNtB4_8WakeListNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit40

bb.f:                                             ; preds = %bb.ac, %bb.y
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.k = cmpxchg weak ptr %0, i8 0, i8 1 acquire monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore18add_permits_locked0B8_.exit, label %bb.h, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %0, i64 undef, i32 noundef -1)
          to label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore18add_permits_locked0B8_.exit unwind label %bb.e ; 0 uses

_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore18add_permits_locked0B8_.exit: ; preds = %bb.g, %bb.h, %bb.b
  %storemerge = phi ptr [ %.sroa.0.04977, %bb.b ], [ %0, %bb.h ], [ %0, %bb.g ] ; 6 uses
  %i.n = load i64, ptr %i.e, align 8, !noundef !23
  %i.o = icmp ult i64 %i.n, 32
  br i1 %i.o, label %.lr.ph, label %thread-pre-split

.lr.ph:                                           ; preds = %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore18add_permits_locked0B8_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %bb.i

thread-pre-split:                                 ; preds = %bb.aa, %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore18add_permits_locked0B8_.exit
  %.pr50 = load i64, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %thread-pre-split
  %.pr52 = phi i64 [ %.pr50, %thread-pre-split ], [ %i.aa, %bb.n ] ; 2 uses
  %.not30 = icmp eq i64 %.pr52, 0                 ; 2 uses
  %.sroa.0.0.not = xor i1 %.sroa.0.078, true
  %brmerge = select i1 %.not30, i1 true, i1 %.sroa.0.0.not
  %.sroa.0.0.mux = select i1 %.not30, i1 %.sroa.0.078, i1 false
  br i1 %brmerge, label %bb.p, label %thread-pre-split51

bb.i:                                             ; preds = %.lr.ph, %bb.aa
  %i.r = load ptr, ptr %i.p, align 8, !noundef !23 ; 2 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8, !noalias !166
  %i.u = load i64, ptr %i.d, align 8, !alias.scope !166, !noundef !23 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.sroa.02.0.i = phi i64 [ %i.t, %bb.j ], [ %.sroa.01.0.i.i, %bb.k ] ; 4 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.02.0.i) ; 2 uses
  %i.v = sub nuw i64 %.sroa.02.0.i, %..i.i
  %i.w = cmpxchg ptr %i.s, i64 %.sroa.02.0.i, i64 %i.v acq_rel acquire, align 8, !noalias !166 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.w, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.w, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.k

bb.l:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.d, align 8, !noundef !23 ; 2 uses
  %.not29 = icmp eq i64 %i.x, 0
  br i1 %.not29, label %bb.p, label %thread-pre-split51

thread-pre-split51:                               ; preds = %.loopexit, %bb.l
  %i.y = phi i64 [ %i.x, %bb.l ], [ %.pr52, %.loopexit ] ; 3 uses
  %i.z = icmp ult i64 %i.y, 2305843009213693952
  br i1 %i.z, label %bb.s, label %bb.r, !prof !30

bb.m:                                             ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit40

bb.n:                                             ; preds = %bb.k
  %i.aa = sub nuw i64 %i.u, %..i.i                ; 2 uses
  store i64 %i.aa, ptr %i.d, align 8, !alias.scope !166
  %.not56 = icmp ugt i64 %.sroa.02.0.i, %i.u
  br i1 %.not56, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = invoke noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE8pop_backB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.w unwind label %.loopexit57 ; 4 uses

bb.p:                                             ; preds = %.loopexit, %bb.l, %bb.u
  %.sroa.0.3 = phi i1 [ true, %bb.u ], [ true, %bb.l ], [ %.sroa.0.0.mux, %.loopexit ]
  %i.ac = cmpxchg ptr %storemerge, i8 1, i8 0 release monotonic, align 1
  %i.ad = extractvalue { i8, i1 } %i.ac, 1
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit, label %bb.q, !prof !30

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge, i1 noundef zeroext false)
end_hunk_1
begin_hunk_2_@_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore5close:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = cmpxchg weak ptr %0, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.a, %bb.e
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %0, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 %0)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore9const_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 2305843009213693952
  br i1 %i.a, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %1, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore9is_closed(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = trunc i64 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task8set_task(ptr nofree noundef nonnull writeonly align 8 captures(none) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !23, !align !109, !noundef !23 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !align !109, !noundef !23
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !23, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !23
  %i.f = tail call { ptr, ptr } %i.c(ptr noundef %i.e) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !23, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !23
  tail call void %i.c(ptr noundef %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State11unset_waker(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.g ] ; 6 uses
  %i.b = and i64 %.sroa.06.0.i, 8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 2
  %.not4.i.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i.i, label %bb.e, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_11unset_waker0EB9_.exit

bb.e:                                             ; preds = %bb.d
  %i.d = and i64 %.sroa.06.0.i, 16
  %.not5.i.i = icmp eq i64 %i.d, 0
  br i1 %.not5.i.i, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = and i64 %.sroa.06.0.i, -19               ; 2 uses
  %i.f = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_11unset_waker0EB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_11unset_waker0EB9_.exit: ; preds = %bb.d, %bb.g
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.g ], [ %.sroa.06.0.i, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ 1, %bb.d ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State13ref_dec_twice(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw sub ptr %0, i64 128 acq_rel, align 8 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 127
  br i1 %i.b, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 192
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State14set_join_waker(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.f ] ; 6 uses
  %i.b = and i64 %.sroa.06.0.i, 8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 16
  %.not4.i.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i.i, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
  unreachable

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i: ; preds = %bb.d
  %i.d = and i64 %.sroa.06.0.i, 2
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.f, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_14set_join_waker0EB9_.exit

bb.f:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i
  %i.e = or disjoint i64 %.sroa.06.0.i, 16        ; 2 uses
  %i.f = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_14set_join_waker0EB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_14set_join_waker0EB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i, %bb.f
  %.sroa.3.0.i = phi i64 [ %.sroa.06.0.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i ], [ %i.e, %bb.f ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State14set_join_waker0Ba_.exit.i ], [ 0, %bb.f ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.510.i = alloca i64, align 8              ; 5 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.k ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %1 = and i64 %.sroa.06.0.i, 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !169
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = and i64 %.sroa.06.0.i, 32
  %.not1.i.i.a = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i.a, label %bb.e, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.c = and i64 %.sroa.06.0.i, -34               ; 2 uses
  %i.d = and i64 %.sroa.06.0.i, 4
  %.not2.i.i = icmp eq i64 %i.d, 0
  br i1 %.not2.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i, !prof !31

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !172
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i: ; preds = %bb.f
  %i.e = add i64 %i.c, -64                        ; 2 uses
  %i.f = icmp ult i64 %i.e, 64
  %..i.i = select i1 %i.f, i8 2, i8 0
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.g = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.g, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !175
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.h
  %i.h = add nuw i64 %i.c, 64
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  %.sroa.0.04.i.i = phi i64 [ %i.e, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ], [ %i.h, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  %.sroa.0.0.i.i = phi i8 [ %..i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ], [ 1, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  store i64 1, ptr %.sroa.510.i, align 8, !alias.scope !169
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i: ; preds = %bb.j, %bb.d
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.i.i, %bb.j ], [ 3, %bb.d ]
  %.sink5.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.j ], [ %.sroa.510.i, %bb.d ]
  %.sroa.0.04.sink.i.i = phi i64 [ %.sroa.0.04.i.i, %bb.j ], [ 0, %bb.d ]
  store i64 %.sroa.0.04.sink.i.i, ptr %.sink5.i.sroa.phi.i, align 8, !alias.scope !169
  %.sroa.510.i.0..sroa.510.i.0..sroa.510.i.0..sroa.510.0..sroa.510.0..sroa.510.8..i = load i64, ptr %.sroa.510.i, align 8, !range !178, !noundef !23
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.i = trunc nuw i64 %.sroa.510.i.0..sroa.510.i.0..sroa.510.i.0..sroa.510.0..sroa.510.0..sroa.510.8..i to i1
  br i1 %i.i, label %bb.k, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_18transition_to_idle0NtB3_16TransitionToIdleEB9_.exit

bb.k:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i
  %i.j = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.j, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.j, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_18transition_to_idle0NtB3_16TransitionToIdleEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_18transition_to_idle0NtB3_16TransitionToIdleEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State18transition_to_idle0Ba_.exit.i, %bb.k
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = cmpxchg weak ptr %0, i64 204, i64 132 release monotonic, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.a, 1
  %not..sroa.18.0.in.i = xor i1 %.sroa.18.0.in.i, true
  ret i1 %not..sroa.18.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i ] ; 7 uses
  %i.b = and i64 %.sroa.06.0.i, 4
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !179
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i.i.i, label %bb.f, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !182
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i: ; preds = %bb.e
  %i.e = add i64 %.sroa.06.0.i, -64               ; 2 uses
  %i.f = icmp ult i64 %i.e, 64
  %..i.i = select i1 %i.f, i8 3, i8 2
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.g = and i64 %.sroa.06.0.i, -8
  %i.h = or disjoint i64 %i.g, 1
  %i.i = trunc i64 %.sroa.06.0.i to i8
  %i.j = lshr i8 %i.i, 5
  %.2.i.i = and i8 %i.j, 1
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i: ; preds = %bb.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  %.sroa.0.03.i.i = phi i64 [ %i.h, %bb.g ], [ %i.e, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %.sroa.0.0.i.i = phi i8 [ %.2.i.i, %bb.g ], [ %..i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %i.k = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.0.03.i.i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.k, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.k, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_21transition_to_running0NtB3_19TransitionToRunningEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_21transition_to_running0NtB3_19TransitionToRunningEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State21transition_to_running0Ba_.exit.i
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw xor ptr %0, i64 3 acq_rel, align 8 ; 3 uses
  %1 = and i64 %i.a, 1
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = and i64 %i.a, 2
  %.not1 = icmp eq i64 %i.b, 0
  br i1 %.not1, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.c = xor i64 %i.a, 3
  ret i64 %i.c

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #29
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8, !noalias !185
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.b ] ; 3 uses
  %i.b = and i64 %.sroa.06.0.i, 3
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = zext i1 %i.c to i64
  %spec.select.i.i = or i64 %.sroa.06.0.i, %i.d
  %i.e = or i64 %spec.select.i.i, 32
  %i.f = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %i.e acq_rel acquire, align 8, !noalias !185 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_22transition_to_shutdown0EB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State12fetch_updateNCNvB2_22transition_to_shutdown0EB9_.exit: ; preds = %bb.b
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = shl i64 %1, 6
  %i.e = atomicrmw sub ptr %0, i64 %i.d acq_rel, align 8
  %i.f = lshr i64 %i.e, 6                         ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !noundef !23 ; 2 uses
  %.not = icmp ult i64 %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, %i.g
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -16) i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw and ptr %0, i64 -17 acq_rel, align 8 ; 3 uses
  %i.b = and i64 %i.a, 2
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 16
  %.not1 = icmp eq i64 %i.c, 0
  br i1 %.not1, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = and i64 %i.a, -17
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State29transition_to_notified_by_ref(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.711.i = alloca i64, align 8              ; 5 uses
  %.sroa.12.i = alloca i64, align 8               ; 4 uses
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.h ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.b = and i64 %.sroa.06.0.i, 2
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 4
  %.not1.i.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i.i, label %bb.d, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i

bb.d:                                             ; preds = %bb.c
  %1 = and i64 %.sroa.06.0.i, 1
  %.not2.i.i = icmp eq i64 %1, 0
  br i1 %.not2.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.d, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !191
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.e
  %i.e = add nuw i64 %.sroa.06.0.i, 68
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i

bb.g:                                             ; preds = %bb.d
  %i.f = or disjoint i64 %.sroa.06.0.i, 4
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i: ; preds = %bb.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %bb.c
  %.sroa.0.0.ph.i = phi i1 [ true, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ false, %bb.g ], [ false, %bb.c ]
  %.sink.i.ph.i = phi i64 [ %i.e, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ %i.f, %bb.g ], [ %.sroa.06.0.i, %bb.c ]
  store i64 1, ptr %.sroa.711.i, align 8, !alias.scope !188
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ %.sroa.0.0.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i ]
  %.sink3.i.sroa.phi.i = phi ptr [ %.sroa.711.i, %bb.b ], [ %.sroa.12.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i ]
  %.sink.i.i = phi i64 [ 0, %bb.b ], [ %.sink.i.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.sink.split.i ]
  store i64 %.sink.i.i, ptr %.sink3.i.sroa.phi.i, align 8, !alias.scope !188
  %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i = load i64, ptr %.sroa.711.i, align 8, !range !178, !noundef !23
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i = load i64, ptr %.sroa.12.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.g = trunc nuw i64 %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i to i1
  br i1 %i.g, label %bb.h, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_ref0NtB3_25TransitionToNotifiedByRefEB9_.exit

bb.h:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i
  %i.h = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.h, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.h, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_ref0NtB3_25TransitionToNotifiedByRefEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_ref0NtB3_25TransitionToNotifiedByRefEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_ref0Ba_.exit.i, %bb.h
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State29transition_to_notified_by_val(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i ] ; 9 uses
  %1 = and i64 %.sroa.06.0.i, 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = and i64 %.sroa.06.0.i, 6
  %or.cond.i.i = icmp eq i64 %i.b, 0
  br i1 %or.cond.i.i, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i.i.i, label %bb.e, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !194
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i: ; preds = %bb.d
  %i.c = or i64 %.sroa.06.0.i, 4
  %i.d = add i64 %i.c, -64                        ; 2 uses
  %.not3.i.i = icmp ult i64 %i.d, 64
  br i1 %.not3.i.i, label %bb.j, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i, !prof !31

bb.f:                                             ; preds = %bb.c
  %i.e = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.e, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !199
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.f
  %i.f = add nuw i64 %.sroa.06.0.i, 68
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i

bb.h:                                             ; preds = %bb.c
  %.not.i4.i.i = icmp ult i64 %.sroa.06.0.i, 64
  br i1 %.not.i4.i.i, label %bb.i, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !202
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i: ; preds = %bb.h
  %i.g = add i64 %.sroa.06.0.i, -64               ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  %..i.i = select i1 %i.h, i8 2, i8 0
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i

bb.j:                                             ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !205
  unreachable

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i: ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.f, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ %i.g, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i ], [ %i.d, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %.sroa.0.0.i.i = phi i8 [ 1, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ], [ %..i.i, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit5.i.i ], [ 0, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_dec.exit.i.i ]
  %i.i = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.0.06.i.i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_val0NtB3_25TransitionToNotifiedByValEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_29transition_to_notified_by_val0NtB3_25TransitionToNotifiedByValEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State29transition_to_notified_by_val0Ba_.exit.i
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define { i1, i1 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.d ] ; 4 uses
  %i.b = and i64 %.sroa.06.0.i, 8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29, !noalias !206
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.06.0.i, 2                 ; 2 uses
  %.not7.not.i.i = icmp eq i64 %i.c, 0
  %.sroa.0.0.v.i.i = select i1 %.not7.not.i.i, i64 -27, i64 -9
  %.sroa.0.0.i.i = and i64 %.sroa.0.0.v.i.i, %.sroa.06.0.i ; 2 uses
  %i.d = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.0.0.i.i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.d, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_join_handle_dropped0NtB3_26TransitionToJoinHandleDropEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_join_handle_dropped0NtB3_26TransitionToJoinHandleDropEB9_.exit: ; preds = %bb.d
  %i.e = and i64 %.sroa.0.0.i.i, 16
  %.not8.i.i = icmp eq i64 %i.e, 0
  %i.f = icmp ne i64 %i.c, 0
  %i.g = insertvalue { i1, i1 } poison, i1 %.not8.i.i, 0
  %i.h = insertvalue { i1, i1 } %i.g, i1 %i.f, 1
  ret { i1, i1 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State33transition_to_notified_and_cancel(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.711.i = alloca i64, align 8              ; 5 uses
  %.sroa.12.i = alloca i64, align 8               ; 4 uses
  %i.a = load atomic i64, ptr %0 acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.b = and i64 %.sroa.06.0.i, 34
  %or.cond.i.i = icmp eq i64 %i.b, 0
  br i1 %or.cond.i.i, label %bb.c, label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i

bb.c:                                             ; preds = %bb.b
  %1 = and i64 %.sroa.06.0.i, 1
  %.not2.i.i = icmp eq i64 %1, 0
  br i1 %.not2.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = and i64 %.sroa.06.0.i, 4
  %.not3.i.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.d = or i64 %.sroa.06.0.i, 36
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.e = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.e, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !212
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i: ; preds = %bb.f
  %i.f = add nuw i64 %.sroa.06.0.i, 100
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.g = or disjoint i64 %.sroa.06.0.i, 32
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i: ; preds = %bb.h, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i, %bb.e
  %.sroa.0.0.ph.i = phi i1 [ false, %bb.e ], [ false, %bb.h ], [ true, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  %.sink.i.ph.i = phi i64 [ %i.d, %bb.e ], [ %i.g, %bb.h ], [ %i.f, %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_8Snapshot7ref_inc.exit.i.i ]
  store i64 1, ptr %.sroa.711.i, align 8, !alias.scope !209
  br label %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i

_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ %.sroa.0.0.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i ]
  %.sink3.i.sroa.phi.i = phi ptr [ %.sroa.711.i, %bb.b ], [ %.sroa.12.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i ]
  %.sink.i.i = phi i64 [ 0, %bb.b ], [ %.sink.i.ph.i, %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.sink.split.i ]
  store i64 %.sink.i.i, ptr %.sink3.i.sroa.phi.i, align 8, !alias.scope !209
  %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i = load i64, ptr %.sroa.711.i, align 8, !range !178, !noundef !23
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i = load i64, ptr %.sroa.12.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.711.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.h = trunc nuw i64 %.sroa.711.i.0..sroa.711.i.0..sroa.711.i.0..sroa.711.0..sroa.711.0..sroa.711.8..i to i1
  br i1 %i.h, label %bb.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_notified_and_cancel0bEB9_.exit

bb.i:                                             ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i
  %i.i = cmpxchg ptr %0, i64 %.sroa.06.0.i, i64 %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.16..i acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_notified_and_cancel0bEB9_.exit, label %bb.b

_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB3_5State19fetch_update_actionNCNvB2_33transition_to_notified_and_cancel0bEB9_.exit: ; preds = %_RNCNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB4_5State33transition_to_notified_and_cancel0Ba_.exit.i, %bb.i
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State4load(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw sub ptr %0, i64 64 acq_rel, align 8
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_inc(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 64 monotonic, align 8
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBV_4hash6random11RandomStateE6insertCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !215, !noalias !220, !noundef !23
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true) #27
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !224, !noalias !225, !nonnull !23, !noundef !23 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.h, align 8, !alias.scope !224, !noalias !225, !noundef !23 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %.sroa.4.124.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %.sroa.04.126.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !226 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.033.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.021.i.i, %i.r
  %i.t = and i64 %i.s, %.val5.i
  %i.u = load ptr, ptr %1, align 8, !alias.scope !224, !noalias !229, !nonnull !23, !noundef !23
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownjINtB2_10EquivalentjE10equivalentCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !30

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.f, !prof !31

bb.e:                                             ; preds = %.noexc6
  %i.z = add i16 %.sroa.01.033.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.033.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread28.i.i, !prof !31

.thread28.i.i:                                    ; preds = %bb.f
  %i.ad = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.021.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ag, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !31

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.021.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !23
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.l, !prof !31

bb.i:                                             ; preds = %bb.h
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aq, 0
  %i.ar = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.l

bb.j:                                             ; preds = %.noexc6
  %i.at = load ptr, ptr %1, align 8, !alias.scope !224, !noalias !225, !nonnull !23
  %i.au = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.v
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  ret void

bb.l:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.125.i.i, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !232, !noalias !235, !nonnull !23, !noundef !23 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !237, !noundef !23
  %i.az = and i8 %i.ay, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = load i64, ptr %i.h, align 8, !alias.scope !232, !noalias !235, !noundef !23
  %i.bd = and i64 %i.bc, %i.bb
  store i8 %i.j, ptr %i.ax, align 1, !noalias !237
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16
end_hunk_2
begin_hunk_3_@_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6SenderuE9subscribeB9_:bb.a
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.f = invoke noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.e)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !238
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = and i64 %i.f, -2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.j, 1
  ret { ptr, i64 } %i.n

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define noundef i64 @_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.02.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i, %bb.c ] ; 4 uses
  %i.b = and i64 %.sroa.02.0, 4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = or i64 %.sroa.02.0, 2
  %i.d = cmpxchg weak ptr %0, i64 %.sroa.02.0, i64 %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.d, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.d, 0
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i64 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State4load(ptr nofree noundef nonnull align 8 captures(none) %0, i8 noundef range(i8 0, 5) %1) unnamed_addr #0 {
bb.a:
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ], !prof !243

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %0 seq_cst, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.d, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ %i.c, %bb.f ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCs3oUPovFnLWP_4core6future6futureQINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruENtB2_6Future4pollBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !244, !noalias !247, !noundef !23 ; 9 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.r, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !252
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i8, ptr %i.f, align 8, !range !253, !noalias !254, !noundef !23
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i, !prof !30

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.e), !noalias !254 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i, %bb.b
  %.sroa.0.0.i.i2.i.i.i = phi ptr [ %i.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 68
  %i.l = load i8, ptr %i.k, align 1, !range !257, !noalias !258, !noundef !23 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 69 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !258 ; 4 uses
  br i1 %i.m, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.i.i

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.thread.i, label %bb.d

_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.thread.i: ; preds = %bb.c
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  store i24 0, ptr %i.a, align 4, !noalias !252
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !252
  br label %_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = add i8 %i.o, -1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.i.i: ; preds = %bb.d, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i
  %.sroa.33.0.i.i.i.i.i = phi i8 [ %i.q, %bb.d ], [ %i.o, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i.i ]
  store i8 %.sroa.33.0.i.i.i.i.i, ptr %i.n, align 1, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  store i24 0, ptr %i.a, align 4, !noalias !252
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.r), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread.i.i

bb.e:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task9drop_task.exit.thread.i.i, %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %common.resume.i unwind label %bb.q, !noalias !263

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.i.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i
  %.sroa.03.011.i34.off8.i.i = phi i8 [ %i.l, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.i.i ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i ]
  %.sroa.03.011.i34.off16.i.i = phi i8 [ %i.o, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.i.i ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i.i ]
  store i8 %.sroa.03.011.i34.off8.i.i, ptr %i.b, align 1, !noalias !252
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i34.off16.i.i, ptr %i.t, align 1, !noalias !252
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8, !noalias !252 ; 3 uses
  %i.w = and i64 %i.v, 2
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread.i.i
  %i.x = and i64 %i.v, 4
  %.not26.i.i = icmp eq i64 %i.x, 0
  br i1 %.not26.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread.i.i
  store i8 0, ptr %i.b, align 1, !noalias !252
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !257, !noalias !252, !noundef !23
  store i8 0, ptr %i.y, align 8, !noalias !252
  %not..i.i = xor i8 %i.z, 1
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %2 = and i64 %i.v, 1
  %.not27.i.i = icmp eq i64 %2, 0
  br i1 %.not27.i.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task9drop_task.exit.thread.i.i, label %bb.j

bb.i:                                             ; preds = %bb.f
  store i8 0, ptr %i.b, align 1, !noalias !252
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !264, !noalias !244, !nonnull !23, !align !109, !noundef !23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !252, !noundef !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !263, !noundef !23
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ab, align 8, !noalias !263, !nonnull !23, !align !109, !noundef !23
  %i.ai = load ptr, ptr %i.aa, align 8, !noalias !252, !nonnull !23, !align !109, !noundef !23
  %i.aj = icmp eq ptr %i.ai, %i.ah
  br i1 %i.aj, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = atomicrmw and ptr %i.u, i64 -2 acq_rel, align 8, !noalias !252
  %i.al = and i64 %i.ak, 2
  %.not28.i.i.a = icmp eq i64 %i.al, 0
  br i1 %.not28.i.i.a, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.aa, align 8, !noalias !252, !nonnull !23, !align !109, !noundef !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !263, !nonnull !23, !noundef !23
  %i.ap = load ptr, ptr %i.ac, align 8, !noalias !252, !noundef !23
  invoke void %i.ao(ptr noundef %i.ap)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task9drop_task.exit.thread.i.i unwind label %bb.e, !noalias !263, !inline_history !265

bb.n:                                             ; preds = %bb.l
  %i.aq = atomicrmw or ptr %i.u, i64 1 acq_rel, align 8, !noalias !252 ; 0 uses
  store i8 0, ptr %i.b, align 1, !noalias !252
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !257, !noalias !252, !noundef !23
  store i8 0, ptr %i.ar, align 8, !noalias !252
  %not.37.i.i = xor i8 %i.as, 1
  br label %bb.s

_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task9drop_task.exit.thread.i.i: ; preds = %bb.m, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !269, !noalias !244, !nonnull !23, !align !109, !noundef !23 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !noalias !270, !nonnull !23, !align !109, !noundef !23
  %i.av = load ptr, ptr %i.au, align 8, !noalias !270, !nonnull !23, !noundef !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !270, !noundef !23
  %i.ay = invoke { ptr, ptr } %i.av(ptr noundef %i.ax)
          to label %bb.o unwind label %bb.e, !noalias !263, !inline_history !271 ; 2 uses

bb.o:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB2_4Task9drop_task.exit.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ba = extractvalue { ptr, ptr } %i.ay, 0
  %i.bb = extractvalue { ptr, ptr } %i.ay, 1
  store ptr %i.ba, ptr %i.az, align 8, !noalias !272
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.bb, ptr %i.bc, align 8, !noalias !272
  %i.bd = atomicrmw or ptr %i.u, i64 1 acq_rel, align 8, !noalias !252
  %i.be = and i64 %i.bd, 2
  %.not30.i.i = icmp eq i64 %i.be, 0
  br i1 %.not30.i.i, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.b, align 1, !noalias !252
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !range !257, !noalias !252, !noundef !23
  store i8 0, ptr %i.bf, align 8, !noalias !252
  %not.38.i.i = xor i8 %i.bg, 1
  br label %bb.s

bb.q:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !263
  unreachable

common.resume.i:                                  ; preds = %bb.v, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i: ; preds = %bb.o, %bb.k
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !252
  br label %_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_.exit

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #29, !noalias !263
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.i, %bb.g
  %.sroa.0.5.ph.i.ph.i = phi i8 [ %not.38.i.i, %bb.p ], [ 1, %bb.i ], [ %not..i.i, %bb.g ], [ %not.37.i.i, %bb.n ]
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !252
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.bi = load ptr, ptr %i.c, align 8, !alias.scope !276, !noalias !247, !noundef !23 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !277
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i unwind label %bb.v, !noalias !247

bb.v:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.c, align 8, !alias.scope !244, !noalias !247
  br label %common.resume.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  store ptr null, ptr %i.c, align 8, !alias.scope !244, !noalias !247
  br label %_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_.exit

_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_.exit: ; preds = %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.thread.i, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.5.ph.i.ph.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i ], [ 2, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i ], [ 2, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.thread.i ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !23  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.02.0.i.i = phi i64 [ %i.c, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.d ] ; 4 uses
  %i.d = and i64 %.sroa.02.0.i.i, 4
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.e = or i64 %.sroa.02.0.i.i, 2
  %i.f = cmpxchg weak ptr %i.b, i64 %.sroa.02.0.i.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i, label %bb.c

_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i: ; preds = %bb.d
  %1 = and i64 %.sroa.02.0.i.i, 1
  %.not1.i = icmp eq i64 %1, 0
  br i1 %.not1.i, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !23, !align !109, !noundef !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !23, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noundef !23
  tail call void %i.j(ptr noundef %i.l), !inline_history !282
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit

_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit: ; preds = %bb.c, %bb.e, %_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_5StateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i64, ptr %0 acquire, align 8
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_8SnapshotNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !253, !noalias !283, !noundef !23
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !30

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.k = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.g), !noalias !283 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.k, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.n = load i8, ptr %i.m, align 1, !range !257, !noalias !286, !noundef !23 ; 2 uses
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !noalias !286 ; 4 uses
  br i1 %i.o, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.s = add i8 %i.q, -1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit: ; preds = %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.s, %bb.c ], [ %i.q, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.p, align 1, !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %.sroa.03.011.i22.off8 = phi i8 [ %i.n, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %.sroa.03.011.i22.off16 = phi i8 [ %i.q, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 %.sroa.03.011.i22.off8, ptr %i.b, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i22.off16, ptr %i.v, align 1
  %i.w = load i8, ptr %i.f, align 8, !range !257, !noundef !23
  %i.x = trunc nuw i8 %i.w to i1                  ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load atomic i64, ptr %i.y acquire, align 8
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i: ; preds = %bb.af, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %.split.i, %bb.r, %.loopexit.split-lp.i
  %.sroa.0.09.i = phi ptr [ %.sroa.0.340.i, %bb.ae ], [ %.sroa.0.340.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %.sroa.0.340.i, %bb.r ], [ %.sroa.0.340.i, %.split.i ], [ %.sroa.0.340.i, %bb.af ], [ %.sroa.0.110.ph.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn32.i = phi { ptr, i32 } [ %.pn63.i, %bb.ae ], [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm.split-lp.i, %bb.r ], [ %i.az, %.split.i ], [ %.pn63.i, %bb.af ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.020.0.i = phi i8 [ %.sroa.020.5.i, %bb.ae ], [ %.sroa.020.5.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %.sroa.020.5.i, %bb.r ], [ %.sroa.020.5.i, %.split.i ], [ %.sroa.020.5.i, %bb.af ], [ %.sroa.020.1.ph.i, %.loopexit.split-lp.i ]
  %i.aa = trunc nuw i8 %.sroa.020.0.i to i1
  %i.ab = icmp ne ptr %.sroa.0.09.i, null
  %or.cond85.not.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond85.not.i, label %bb.ah, label %.body

.loopexit.split-lp.i:                             ; preds = %bb.q, %bb.m
  %.sroa.0.110.ph.i = phi ptr [ %.sroa.0.340.i, %bb.q ], [ null, %bb.m ]
  %.sroa.020.1.ph.i = phi i8 [ %.sroa.020.5.i, %bb.q ], [ 1, %bb.m ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.e:                                             ; preds = %bb.d, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %.sroa.01.0.in.i = phi i64 [ %i.z, %bb.d ], [ %i.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ] ; 2 uses
  %.sroa.01.0.i = shl i64 %.sroa.01.0.in.i, 1     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %2 = and i64 %i.ad, 1
  %.not94.i = icmp eq i64 %2, 0
  br i1 %.not94.i, label %.lr.ph.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread: ; preds = %bb.e
  store i8 0, ptr %i.b, align 1
  br label %bb.aj

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.014.096.i = phi i64 [ %.sroa.01.0.i42.i, %bb.i ], [ %i.ad, %bb.e ] ; 5 uses
  %.sroa.0.295.i = phi ptr [ %.sroa.0.338.i, %bb.i ], [ null, %bb.e ] ; 7 uses
  %.not26.i = icmp ult i64 %.sroa.014.096.i, %.sroa.01.0.i
  br i1 %.not26.i, label %bb.f, label %.thread27.i

bb.f:                                             ; preds = %.lr.ph.i
  %.not28.i = icmp eq ptr %.sroa.0.295.i, null
  br i1 %.not28.i, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.ae = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.af = extractvalue { i8, i1 } %i.ae, 1
  br i1 %i.af, label %.noexc, label %bb.h, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.3.i = phi ptr [ %i.c, %bb.g ], [ %.sroa.0.295.i, %bb.f ], [ %i.c, %bb.h ] ; 3 uses
  %i.ah = cmpxchg ptr %i.ac, i64 %.sroa.014.096.i, i64 0 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ah, 1
  br i1 %.sroa.18.0.in.i.i, label %.thread.loopexit.i, label %bb.i

.thread27.i:                                      ; preds = %.lr.ph.i
  %i.ai = sub nuw i64 %.sroa.014.096.i, %.sroa.01.0.i
  %i.aj = cmpxchg ptr %i.ac, i64 %.sroa.014.096.i, i64 %i.ai acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i32.i = extractvalue { i64, i1 } %i.aj, 1
  br i1 %.sroa.18.0.in.i32.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread27.i, %.noexc
  %.pn.i = phi { i64, i1 } [ %i.aj, %.thread27.i ], [ %i.ah, %.noexc ]
  %.sroa.0.338.i = phi ptr [ %.sroa.0.295.i, %.thread27.i ], [ %.sroa.0.3.i, %.noexc ] ; 2 uses
  %.sroa.01.0.i42.i = extractvalue { i64, i1 } %.pn.i, 0 ; 2 uses
  %3 = and i64 %.sroa.01.0.i42.i, 1
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.lr.ph.i, label %.thread52.i

bb.j:                                             ; preds = %.thread27.i
  %i.ak = and i64 %.sroa.01.0.in.i, 9223372036854775807 ; 3 uses
  br i1 %i.x, label %bb.k, label %.thread52.i

bb.k:                                             ; preds = %bb.j
  %.not29.i = icmp eq ptr %.sroa.0.295.i, null
  br i1 %.not29.i, label %bb.l, label %.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i: ; preds = %bb.t, %bb.q, %bb.p
  %.sroa.0.0.i18 = phi i8 [ 0, %bb.t ], [ 1, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.al = trunc nuw i8 %.sroa.020.5.i to i1
  br i1 %i.al, label %.thread52.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.an = extractvalue { i8, i1 } %i.am, 1
  br i1 %i.an, label %.thread.i, label %bb.m, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.ao = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1)
          to label %.thread.i unwind label %.loopexit.split-lp.i ; 0 uses

.thread.loopexit.i:                               ; preds = %.noexc
  %i.ap = lshr exact i64 %.sroa.014.096.i, 1
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.m, %bb.l, %bb.k
  %.sroa.09.0243749.i = phi i64 [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.k ], [ %i.ap, %.thread.loopexit.i ] ; 3 uses
  %.sroa.0.340.i = phi ptr [ null, %bb.l ], [ null, %bb.m ], [ %.sroa.0.295.i, %bb.k ], [ %.sroa.0.3.i, %.thread.loopexit.i ] ; 10 uses
  %storemerge.i = phi ptr [ %i.c, %bb.l ], [ %i.c, %bb.m ], [ %.sroa.0.295.i, %bb.k ], [ %.sroa.0.3.i, %.thread.loopexit.i ] ; 12 uses
  %.sroa.020.5.i = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %.thread.loopexit.i ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !range !257, !noundef !23
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !291
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %i.au, %bb.n ], [ %.sroa.01.0.i.i.i, %bb.o ] ; 4 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.09.0243749.i, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.av = sub nuw i64 %.sroa.02.0.i.i, %..i.i.i
  %i.aw = cmpxchg ptr %i.at, i64 %.sroa.02.0.i.i, i64 %i.av acq_rel acquire, align 8, !noalias !291 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aw, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.aw, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.s, label %bb.o

bb.p:                                             ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.ax = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.ay = extractvalue { i8, i1 } %i.ax, 1
  br i1 %i.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, label %bb.q, !prof !30

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i unwind label %.loopexit.split-lp.i

bb.r:                                             ; preds = %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

.split.i:                                         ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.s:                                             ; preds = %bb.o
  %.not86.i = icmp ugt i64 %.sroa.02.0.i.i, %.sroa.09.0243749.i
  br i1 %.not86.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = sub nuw nsw i64 %.sroa.09.0243749.i, %..i.i.i
  invoke fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %i.c, i64 noundef %i.ba, ptr noundef nonnull align 8 %storemerge.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i unwind label %.split.i

bb.u:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr %i.u, align 8, !noalias !294, !align !109, !noundef !23 ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  br i1 %.not.i.i, label %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i, label %bb.v

._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i: ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %.val, align 8, !noalias !294
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre4.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !294
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %.val5.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !297, !noalias !294, !noundef !23
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !300, !noundef !23 ; 2 uses
  %i.bf = icmp eq ptr %.val5.i.i.i, %i.be
  %.pre3.i.i = load ptr, ptr %.val, align 8, !noalias !294 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.bb, %.pre3.i.i
  %or.cond.i.i = select i1 %i.bf, i1 %.not2.i.i, i1 false
  br i1 %or.cond.i.i, label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i: ; preds = %bb.v, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i
  %i.bg = phi ptr [ %.pre4.i.i, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i ], [ %i.be, %bb.v ]
  %i.bh = phi ptr [ %.pre.i.i, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i ], [ %.pre3.i.i, %bb.v ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !294, !nonnull !23, !noundef !23
  %i.bj = invoke { ptr, ptr } %i.bi(ptr noundef %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i, !inline_history !301 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i
  %lpad.thr_comm78.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0      ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bm = load ptr, ptr %i.u, align 8, !noalias !294, !align !109, !noundef !23
  %i.bn = load ptr, ptr %i.bc, align 8, !noalias !294
  store ptr %i.bk, ptr %i.u, align 8, !noalias !294
  store ptr %i.bl, ptr %i.bc, align 8, !noalias !294
  br label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i

_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i, %bb.v
  %.sroa.8.0.i = phi ptr [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ undef, %bb.v ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ null, %bb.v ] ; 4 uses
  br i1 %i.x, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  invoke void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE10push_frontB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 %i.u)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w, %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.bp = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.bq = extractvalue { i8, i1 } %i.bp, 1
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i, label %bb.y, !prof !30

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i: ; preds = %bb.y, %bb.x
  %i.br = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !23, !noundef !23
  invoke void %i.bt(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.r, !inline_history !302

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bu = trunc nuw i8 %.sroa.020.5.i to i1
  %i.bv = icmp ne ptr %.sroa.0.340.i, null
  %or.cond.not.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.not.i, label %bb.aa, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i
  %i.bw = cmpxchg ptr %.sroa.0.340.i, i8 1, i8 0 release monotonic, align 1
  %i.bx = extractvalue { i8, i1 } %i.bw, 1
  br i1 %i.bx, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !30

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i: ; preds = %bb.ag, %bb.aa
  %.sroa.0.456.sink.i = phi ptr [ %.sroa.0.456.i, %bb.ag ], [ %.sroa.0.340.i, %bb.aa ]
  %.sroa.0.1.ph.i = phi i8 [ %.sroa.0.058.i, %bb.ag ], [ 2, %bb.aa ] ; 2 uses
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.456.sink.i, i1 noundef zeroext false)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.y, %bb.w
  %.sroa.023.3.ph.i = phi i1 [ false, %bb.y ], [ true, %bb.w ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !23, !noundef !23
  invoke void %i.ca(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i unwind label %bb.ad, !inline_history !302

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i: ; preds = %bb.ac, %bb.ab
  br i1 %.sroa.023.3.ph.i, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.ad:                                            ; preds = %bb.ai, %bb.af, %bb.ac
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i
  %.pn63.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm78.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cc = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
end_hunk_3
begin_hunk_4_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtB6_5Debug3fmtBD_:bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !303
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !303
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !303
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !23  ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8 ; 3 uses
  %i.d = and i64 %i.c, 10
  %or.cond.not.i = icmp eq i64 %i.d, 8
  br i1 %or.cond.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = and i64 %i.c, 3
  %or.cond3.not.i = icmp eq i64 %i.e, 1
  br i1 %or.cond3.not.i, label %bb.e, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !23, !align !109, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !23, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noundef !23
  tail call void %i.i(ptr noundef %i.k), !inline_history !307
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw and ptr %i.b, i64 -2 acq_rel, align 8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !23, !align !109, !noundef !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !23, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !noundef !23
  tail call void %i.p(ptr noundef %i.r), !inline_history !308
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit

_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit: ; preds = %bb.c, %bb.e
  %i.s = and i64 %i.c, 2
  %.not1 = icmp eq i64 %i.s, 0
  br i1 %.not1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.t, align 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !257, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23 ; 8 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.c, !prof !30

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = invoke noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE6removeB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %i.h)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !23 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %.not = icmp eq i64 %i.l, %i.n
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit

bb.h:                                             ; preds = %bb.e
  %i.q = sub i64 %i.l, %i.n
  %i.r = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %i.r, i64 noundef %i.q, ptr noundef nonnull align 8 %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit4: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit4, label %bb.j, !prof !30

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit4 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.c = atomicrmw sub ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_7VersionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_12AcquireErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !23, !align !109, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16) #30
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.f = atomicrmw or ptr %i.e, i64 1 release, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify14notify_waiters(ptr noundef nonnull align 8 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !23 ; 2 uses
  %1 = and i64 %i.b, 1
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = and i64 %i.b, 8
  %.not1 = icmp eq i64 %i.c, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !23, !align !109, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noundef !23
  tail call void %i.g(ptr noundef %i.i), !inline_history !265
  br label %bb.b

bb.d:                                             ; preds = %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !nonnull !23, !align !109, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !23
  tail call void %i.l(ptr noundef %i.n), !inline_history !265
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_15TryAcquireErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !257, !noundef !23
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !23, !align !109, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !23, !nonnull !23 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 20) #30
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !309, !noundef !23 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !312
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !312 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !312
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !312
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !312
  br label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val79.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !312
  %i.k = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !312
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !309
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v), !noalias !309
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit, label %bb.b

_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE9next_implKb0_ECslghKHtsL3a4_5tokio.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !316, !noundef !23 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !23 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !23, !noundef !23
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.e, %bb.d, %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE13drop_elementsCslghKHtsL3a4_5tokio.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBV_4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val13.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !317
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.sroa.43.0.copyload, 576460752303423487
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.sroa.43.0.copyload, 5          ; 2 uses
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = add nsw i64 %.sroa.43.0.copyload, 17
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = icmp uge i64 %i.f, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nuw nsw i64 -32, %i.c
  %i.j = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.i
  br label %_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio.exit

_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.511.0.i = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.410.0.i = phi i64 [ undef, %bb.a ], [ %i.f, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.l = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.n = getelementptr i8, ptr %i.m, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !23 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
end_hunk_4
