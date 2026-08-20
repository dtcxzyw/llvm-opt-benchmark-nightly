inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE14reserve_rehashNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort:bb.a

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.y, %bb.f ] ; 5 uses
  %i.aa = shl nuw i64 %.sroa.4.0.i.ph7.i, 4       ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16  ; 2 uses
  %i.ac = add i64 %i.ab, %i.aa                    ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = icmp ugt i64 %i.ac, 9223372036854775792
  %or.cond.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !6

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1254
  %i.af = tail call noundef align 16 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !1254 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #34, !noalias !1254
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit.thread.i

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ai = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ac) #34, !noalias !1254
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit.thread.i

bb.j:                                             ; preds = %bb.e
  %i.aj = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #34, !noalias !1259 ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.ah, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %.sroa.12.011.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.012.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.07.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aa ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ab, i1 false), !noalias !1259
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = load ptr, ptr %0, align 8, !alias.scope !1260, !noalias !1263, !nonnull !5, !noundef !5 ; 5 uses
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit
  %.val241 = load <16 x i8>, ptr %i.as, align 16
  %i.au = icmp sgt <16 x i8> %.val241, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %.val.i.i = load i64, ptr %2, align 8, !alias.scope !1265, !noalias !1268, !noundef !5
  %i.aw = load i64, ptr @_RNvNtNtCs8xMRKdnofT_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1273, !noundef !5
  %i.ax = zext i64 %i.aw to i128
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.025.055 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.sroa.025.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.054 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.053 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.052 = phi i16 [ %i.av, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i147 = icmp eq i16 %.sroa.13.052, 0
  br i1 %.not.i147, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.025.149 = phi ptr [ %i.ay, %.lr.ph ], [ %.sroa.025.055, %.preheader ] ; 2 uses
  %.sroa.5.148 = phi i64 [ %i.bb, %.lr.ph ], [ %.sroa.5.054, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.149) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.025.149, i64 16 ; 3 uses
  %.val42 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val42, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %i.bb = add i64 %.sroa.5.148, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ba, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.052, %.preheader ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.054, %.preheader ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.sroa.025.1.lcssa = phi ptr [ %.sroa.025.055, %.preheader ], [ %i.ay, %.lr.ph ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.053, -1                ; 2 uses
  %i.bi = sub nsw i64 0, %i.bg
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %.val2.i = load i64, ptr %i.bk, align 8, !alias.scope !1278, !noalias !1281, !noundef !5
  %i.bl = xor i64 %.val.i.i, %.val2.i
  %i.bm = zext i64 %i.bl to i128
  %i.bn = mul nuw i128 %i.ax, %i.bm               ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = xor i128 %i.bo, %i.bn
  %i.bq = trunc i128 %i.bp to i64                 ; 2 uses
  %.sroa.0.07.i = and i64 %i.an, %i.bq            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.br, align 1, !noalias !1284
  %i.bs = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1287

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bt, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.ck, %.lr.ph.i ]
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bv
  %i.bx = and i64 %i.bw, %i.an                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !5
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.k, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !82

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.cb = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cc, 0
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cc, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cf = phi i64 [ %i.cg, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ch, %i.an            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !1284
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1288

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.0.i5.i = phi i64 [ %i.ce, %bb.k ], [ %i.bx, %._crit_edge.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.cm = lshr i64 %i.bq, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 2 uses
  %i.co = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cp = and i64 %i.co, %i.an
  store i8 %i.cn, ptr %i.cl, align 1
  %i.cq = getelementptr i8, ptr %i.aq, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store i8 %i.cn, ptr %i.cr, align 1
  %i.cs = shl i64 %i.bg, 4
  %i.ct = sub nuw nsw i64 -16, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.as, i64 %i.ct
  %i.cv = shl i64 %.sroa.0.0.i5.i, 4
  %i.cw = sub nuw nsw i64 -16, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.aq, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cy = icmp eq i64 %i.bh, 0
  br i1 %i.cy, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit
  %i.cz = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.ar, ptr %0, align 8, !alias.scope !1289, !noalias !1292
  store i64 %i.an, ptr %i.e, align 8, !alias.scope !1294, !noalias !1296
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %i.da, align 8, !alias.scope !1298, !noalias !1300
  %i.db = icmp eq i64 %i.f, 0
  br i1 %i.db, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.dc = shl nuw i64 %i.h, 4                     ; 3 uses
  %i.dd = add i64 %i.f, 17
  %i.de = add i64 %i.dd, %i.dc                    ; 4 uses
  %i.df = icmp uge i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.de, 9223372036854775793
  tail call void @llvm.assume(i1 %i.df)
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.di = sub nsw i64 0, %i.dc
  %i.dj = getelementptr inbounds i8, ptr %i.as, i64 %i.di
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !1302
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !1307 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.dk = lshr i64 %i.h, 4                        ; 2 uses
  %i.dl = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dl, 0
  %i.dm = zext i1 %.not10.i.i.i.i to i64          ; 2 uses
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dk, %i.dm ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %4 = add nuw nsw i64 %i.dk, %i.dm
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dn = icmp eq i64 %4, 1
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dv, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.do = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.do, align 16, !noalias !1307
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dp = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dq = or <2 x i64> %i.dp, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dq, ptr %i.do, align 16, !noalias !1307
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i11 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !1307
  %.val.i.i.i = load i64, ptr %2, align 8
  br label %.lr.ph.i12

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dv, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !1307
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !1307
  %i.dv = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dx, align 16, !noalias !1307
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !1307
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

.lr.ph.i12:                                       ; preds = %bb.t, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.ea, %bb.t ], [ 0, %._crit_edge.i.i ] ; 8 uses
  %i.ea = add nuw i64 %.sroa.014.04.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !1307, !noundef !5
  %.not.i13 = icmp eq i8 %i.ec, -128
  br i1 %.not.i13, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph.i12
  %.neg.i = xor i64 %.sroa.014.04.i, -1
  %.neg23.i = shl i64 %.neg.i, 4
  %i.ed = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 3 uses
  %i.ee = sub nsw i64 0, %.sroa.014.04.i
  %i.ef = getelementptr inbounds [16 x i8], ptr %.val25.i, i64 %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -16
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.o
  %.val2.i.i16 = load i64, ptr %i.eg, align 8, !alias.scope !1310, !noalias !1313, !noundef !5
  %i.eh = xor i64 %.val.i.i.i, %.val2.i.i16
  %i.ei = load i64, ptr @_RNvNtNtCs8xMRKdnofT_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1319, !noundef !5
  %i.ej = zext i64 %i.eh to i128
  %i.ek = zext i64 %i.ei to i128
  %i.el = mul nuw i128 %i.ek, %i.ej               ; 2 uses
  %i.em = lshr i128 %i.el, 64
  %i.en = xor i128 %i.em, %i.el
  %i.eo = trunc i128 %i.en to i64                 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.f, %i.eo           ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ep, align 1, !noalias !1324
  %i.eq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.er, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !1287

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.er, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.fi, %.lr.ph.i28.i ]
  %i.es = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = add i64 %.sroa.0.0.lcssa.i.i, %i.et
  %i.ev = and i64 %i.eu, %i.f                     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !1307, !noundef !5
  %i.ey = icmp sgt i8 %i.ex, -1
  br i1 %i.ey, label %bb.p, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !82

bb.p:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !1307
  %i.ez = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fa, 0
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fa, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.fd = phi i64 [ %i.fe, %.lr.ph.i28.i ], [ 0, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.fe = add i64 %i.fd, 16                       ; 2 uses
  %i.ff = add i64 %i.fe, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.ff, %i.f          ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fg, align 1, !noalias !1324
  %i.fh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fi = bitcast <16 x i1> %i.fh to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fi, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !1288

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.p, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fc, %bb.p ], [ %i.ev, %._crit_edge.i27.i ] ; 4 uses
  %i.fj = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fk = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fl = xor i64 %i.fk, %i.fj
  %.unshifted.i = and i64 %i.fl, %i.f
  %i.fm = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fm, label %bb.r, label %bb.q, !prof !34

bb.q:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fn = shl i64 %.sroa.0.0.i5.i.i, 4
  %i.fo = sub nuw nsw i64 -16, %i.fn
  %i.fp = getelementptr inbounds i8, ptr %.val25.i, i64 %i.fo ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !1307, !noundef !5
  %i.fs = lshr i64 %i.eo, 57
  %i.ft = trunc nuw nsw i64 %i.fs to i8           ; 2 uses
  %i.fu = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fv = and i64 %i.fu, %i.f
  store i8 %i.ft, ptr %i.fq, align 1, !noalias !1307
  %i.fw = getelementptr i8, ptr %.val25.i, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  store i8 %i.ft, ptr %i.fx, align 1, !noalias !1307
  %i.fy = icmp eq i8 %i.fr, -1
  br i1 %i.fy, label %bb.s, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.q
  %i.fz = load <2 x i64>, ptr %i.ed, align 1, !alias.scope !1327, !noalias !1307
  %i.ga = load <2 x i64>, ptr %i.fp, align 1, !alias.scope !1331, !noalias !1307
  store <2 x i64> %i.ga, ptr %i.ed, align 1, !alias.scope !1327, !noalias !1307
  store <2 x i64> %i.fz, ptr %i.fp, align 1, !alias.scope !1331, !noalias !1307
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gb = lshr i64 %i.eo, 57
  %i.gc = trunc nuw nsw i64 %i.gb to i8           ; 2 uses
  %i.gd = add i64 %.sroa.014.04.i, -16
  %i.ge = and i64 %i.gd, %i.f
  store i8 %i.gc, ptr %i.eb, align 1, !noalias !1307
  %i.gf = getelementptr i8, ptr %.val25.i, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  store i8 %i.gc, ptr %i.gg, align 1, !noalias !1307
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.gh = add i64 %.sroa.014.04.i, -16
  %i.gi = and i64 %i.gh, %i.f
  store i8 -1, ptr %i.eb, align 1, !noalias !1307
  %i.gj = getelementptr i8, ptr %.val25.i, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 -1, ptr %i.gk, align 1, !noalias !1307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fp, ptr noundef nonnull align 1 dereferenceable(16) %i.ed, i64 16, i1 false), !noalias !1307
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i12
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i12

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.t, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.gm, ptr %i.gl, align 8, !alias.scope !1307
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.011.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.al, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgcf5BHVXlUt_7uu_sort.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.ak, %bb.j ]
  %i.gn = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.go = insertvalue { i64, i64 } %i.gn, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.go
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_Csgcf5BHVXlUt_7uu_sortNtB6_4Line5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBR_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEB6_(ptr captures(address, read_provenance) %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendBS_:bb.a
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs0_0B1E_(ptr nonnull %i.o) #38, !noalias !13712
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13712
  %i.ct = load atomic i64, ptr %i.u monotonic, align 16, !noalias !13738 ; 2 uses
  %i.cu = load i64, ptr %i.v, align 16, !noalias !13738, !noundef !5 ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cx = extractvalue { i64, i32 } %i.cc, 1      ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 1000000000
  call void @llvm.assume(i1 %i.cy)
  %.not30.i = icmp samesign ult i32 %i.cx, %i.bx
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.cd, %i.cb
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 8
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, %bb.u, %bb.t
  %i.cz = phi i64 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %.sroa.02.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8, !noalias !13740 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.dd = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !13740
  %i.de = and i64 %i.db, 1
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.db, %.lr.ph.i.i3 ], [ %i.dp, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.dd, %.lr.ph.i.i3 ], [ %i.dq, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dh = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.di = and i64 %i.dh, 31                       ; 3 uses
  %i.dj = icmp eq i64 %i.di, 31
  br i1 %i.dj, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dk = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dk, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13740
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dl = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter123 = and i32 %i.dl, 7                 ; 3 uses
  %i.dm = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dm, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter127 = and i32 %i.dl, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter128 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter128.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %niter128.next.7 = add i32 %niter128, 8         ; 2 uses
  %niter128.ncmp.7 = icmp eq i32 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod125.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod126 = icmp ne i32 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter124 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter124.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %epil.iter124.next = add i32 %epil.iter124, 1   ; 2 uses
  %epil.iter124.cmp.not = icmp eq i32 %epil.iter124.next, %xtraiter123
  br i1 %epil.iter124.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !13746

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dn = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.do = icmp eq i64 %i.di, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.do, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dw, %bb.ag ], [ %i.dw, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ee, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dp = load atomic i64, ptr %i.da acquire, align 8, !noalias !13740 ; 2 uses
  %i.dq = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !13740
  %i.dr = and i64 %i.dp, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.du, %bb.aa ] ; 7 uses
  %i.dt = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dt, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13740
  %i.du = tail call noalias noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7200, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13740 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i, !prof !82

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #37, !noalias !13740
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13740
  %i.dw = tail call noalias noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7200, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13740 ; 6 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i, !prof !82

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #37, !noalias !13740
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ac
  %i.dy = cmpxchg ptr %i.dc, ptr null, ptr %i.dw release monotonic, align 8, !noalias !13740
  %i.dz = extractvalue { ptr, i1 } %i.dy, 1
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dw, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i ] ; 3 uses
  %i.ea = add i64 %.sroa.03.049.i.i, 2
  %i.eb = cmpxchg weak ptr %i.da, i64 %.sroa.03.049.i.i, i64 %i.ea seq_cst acquire, align 8, !noalias !13740
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.eb, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.dw, ptr %i.dg release, align 8, !noalias !13740
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i
  %i.ec = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ec, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !13740
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %..i.i.i.i5 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5   ; 2 uses
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.ed = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ed, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !13747

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ee = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.do, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i, !prof !82

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.dc release, align 8, !noalias !13740
  %i.ef = atomicrmw add ptr %i.da, i64 2 release, align 8, !noalias !13740 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.2.i.i release, align 8, !noalias !13740
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63, i64 216, i1 false), !noalias !13748
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !13740
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.di, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !13740
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13752)
  %i.eh = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eh, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.43.126.i, i64 8
  %i.ej = getelementptr inbounds nuw [232 x i8], ptr %i.ei, i64 %.sroa.9.125.i ; 3 uses
  store i64 %.sroa.02.0.copyload, ptr %i.ej, align 8, !noalias !13754
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, i64 216, i1 false), !noalias !13754
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 224
  %i.el = atomicrmw or ptr %i.ek, i64 1 release, align 8, !noalias !13755 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.em) #38, !noalias !13755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, i64 216, i1 false), !alias.scope !13756, !noalias !13757
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.i1 = icmp eq i64 %.sroa.02.0.copyload, -1
  br i1 %.not.i1, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, i64 216, i1 false)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.02.0.copyload, ptr %.sroa.4.0..sroa_idx.i2, align 8
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, %bb.am
  %i.en = phi i64 [ 1, %bb.am ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  br label %bb.ca

bb.an:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.eo, align 8, !noalias !13761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13761
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !13761
  %i.eq = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !13763
  %i.er = extractvalue { i32, i1 } %i.eq, 1
  br i1 %i.er, label %bb.ap, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #34, !noalias !13763
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.es = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13763
  %i.et = and i64 %i.es, 9223372036854775807
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.aq, !prof !34

bb.aq:                                            ; preds = %bb.ap
  %i.ev = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13763
  %i.ew = xor i1 %i.ev, true
  %i.ex = zext i1 %i.ew to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.01.0.i.i.i = phi i8 [ %i.ex, %bb.aq ], [ 0, %bb.ap ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ez = load atomic i8, ptr %i.ey monotonic, align 1, !noalias !13763
  %.not.i.i.not.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ar, !prof !34

bb.ar:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13766
  store ptr %.8.val, ptr %i.g, align 8, !noalias !13766
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.fa, align 8, !noalias !13766
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #40, !noalias !13770
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.fb = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13771)
  %i.fc = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !13771, !noalias !13774, !noundef !5 ; 6 uses
  %i.fe = icmp ult i64 %i.fd, 384307168202282326
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.fg = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !13771, !noalias !13774, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fd, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.idx.i.i
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.as
  %.sroa.02.010.i.i.i = phi i64 [ %i.ge, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.as ] ; 5 uses
  %i.fl = phi ptr [ %i.fm, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.fj, %bb.as ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13776)
  %i.fn = load ptr, ptr %i.fl, align 8, !alias.scope !13776, !noalias !13779, !nonnull !5, !noundef !5 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !13783, !noundef !5
  %.not.i.i.i.i17 = icmp eq i64 %i.fp, %i.fh
  br i1 %.not.i.i.i.i17, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !13776, !noalias !13779, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.ft = cmpxchg ptr %i.fs, i64 0, i64 %i.fr acq_rel acquire, align 8, !noalias !13783
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ft, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.au, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !13776, !noalias !13779, !noundef !5 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendBS_:bb.a
  store ptr %i.p, ptr %i.l, align 8, !noalias !13869
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.ch) #38, !noalias !13869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13869
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13869, !noundef !5 ; 3 uses
  store ptr %i.cn, ptr %i.k, align 8, !noalias !13869
  store ptr %i.ch, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13869
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !13886
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #39, !noalias !13869
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13869
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs0_0B1E_(ptr nonnull %i.o) #38, !noalias !13869
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13869
  %i.cr = load atomic i64, ptr %i.t monotonic, align 16, !noalias !13895 ; 2 uses
  %i.cs = load i64, ptr %i.u, align 16, !noalias !13895, !noundef !5 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.m
  %i.cv = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not20.i = icmp samesign ult i32 %i.cv, %i.bv
  br i1 %.not20.i, label %bb.n, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

bb.t:                                             ; preds = %bb.m
  %.not19.i = icmp slt i64 %i.cb, %i.bz
  br i1 %.not19.i, label %bb.n, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit: ; preds = %.split.i, %bb.t, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i
  %.sroa.4.0.i = phi ptr [ %.sroa.0.0.i11.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i ], [ %0, %bb.t ], [ %0, %.split.i ]
  %.sroa.02.0.i = phi i64 [ %..i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i ], [ 0, %bb.t ], [ 0, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bv

bb.u:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8, !noalias !13897 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.da = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !13897
  %i.db = and i64 %i.cy, 1
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i10, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit

.lr.ph.i.i10:                                     ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i10
  %.sroa.03.049.i.i = phi i64 [ %i.cy, %.lr.ph.i.i10 ], [ %i.dm, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.da, %.lr.ph.i.i10 ], [ %i.dn, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i10 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i10 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.de = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.df = and i64 %i.de, 31                       ; 3 uses
  %i.dg = icmp eq i64 %i.df, 31
  br i1 %i.dg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dh, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13897
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15: ; preds = %bb.w
  %.not.i.i.i16 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i16, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15
  %i.di = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter119 = and i32 %i.di, 7                 ; 3 uses
  %i.dj = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dj, label %.lr.ph.i.i.i19.epil.preheader, label %.lr.ph.i.i.i19.preheader.new

.lr.ph.i.i.i19.preheader.new:                     ; preds = %.lr.ph.i.i.i19.preheader
  %unroll_iter123 = and i32 %i.di, 56
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19, %.lr.ph.i.i.i19.preheader.new
  %niter124 = phi i32 [ 0, %.lr.ph.i.i.i19.preheader.new ], [ %niter124.next.7, %.lr.ph.i.i.i19 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %niter124.next.7 = add i32 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i32 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i19

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i19
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.epil.preheader

.lr.ph.i.i.i19.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i19.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i19.epil

.lr.ph.i.i.i19.epil:                              ; preds = %.lr.ph.i.i.i19.epil, %.lr.ph.i.i.i19.epil.preheader
  %epil.iter120 = phi i32 [ 0, %.lr.ph.i.i.i19.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i.i.i19.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.epil, !llvm.loop !13900

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i19.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15, %bb.x
  %i.dk = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.y:                                             ; preds = %bb.v
  %i.dl = icmp eq i64 %i.df, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dl, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ag, %bb.af, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dt, %bb.af ], [ %i.dt, %bb.ag ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.eb, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.af ], [ %.sroa.0.047.i.i, %bb.ag ]
  %i.dm = load atomic i64, ptr %i.cx acquire, align 8, !noalias !13897 ; 2 uses
  %i.dn = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !13897
  %i.do = and i64 %i.dm, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.v, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i: ; preds = %bb.z, %bb.y
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.y ], [ %i.dr, %bb.z ] ; 7 uses
  %i.dq = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dq, label %bb.ab, label %bb.ad

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13897
  %i.dr = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13897 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i, !prof !82

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #37, !noalias !13897
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13897
  %i.dt = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13897 ; 6 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i, !prof !82

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #37, !noalias !13897
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ab
  %i.dv = cmpxchg ptr %i.cz, ptr null, ptr %i.dt release monotonic, align 8, !noalias !13897
  %i.dw = extractvalue { ptr, i1 } %i.dv, 1
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dt, %bb.ae ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i ] ; 3 uses
  %i.dx = add i64 %.sroa.03.049.i.i, 2
  %i.dy = cmpxchg weak ptr %i.cx, i64 %.sroa.03.049.i.i, i64 %i.dx seq_cst acquire, align 8, !noalias !13897
  %.sroa.18.0.in.i.i.i11 = extractvalue { i64, i1 } %i.dy, 1
  br i1 %.sroa.18.0.in.i.i.i11, label %bb.ah, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.ae:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.dt, ptr %i.dd release, align 8, !noalias !13897
  br label %bb.ad

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i
  %i.dz = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.dz, label %.backedge.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 504, i64 noundef 8) #34, !noalias !13897
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ad
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %..i.i.i.i12 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %1 = mul nuw nsw i32 %..i.i.i.i12, %..i.i.i.i12 ; 2 uses
  %xtraiter = and i32 %1, 5                       ; 3 uses
  %i.ea = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ea, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %1, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !13901

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.eb = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.dl, label %bb.ai, label %._crit_edge.i.i

bb.ai:                                            ; preds = %bb.ah
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.aj, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i, !prof !82

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i: ; preds = %bb.ai
  store atomic ptr %.sroa.035.2.i.i, ptr %i.cz release, align 8, !noalias !13897
  %i.ec = atomicrmw add ptr %i.cx, i64 2 release, align 8, !noalias !13897 ; 0 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 496
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ed release, align 8, !noalias !13897
  br label %.thread58

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !13897
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ah
  %.sroa.9.0.i = phi i64 [ %i.df, %bb.ah ], [ 0, %.backedge.i.i ]
  %.sroa.4.0.i13 = phi ptr [ %.sroa.07.2.i.i, %bb.ah ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ah ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ee = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ee, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 504, i64 noundef 8) #34, !noalias !13897
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i: ; preds = %bb.ak, %._crit_edge.i.i
  %i.ef = icmp eq ptr %.sroa.4.0.i13, null
  br i1 %i.ef, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit, label %.thread58

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  %i.ei = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !13902
  %i.ej = extractvalue { i32, i1 } %i.ei, 1
  br i1 %i.ej, label %bb.an, label %bb.am, !prof !34

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #34, !noalias !13902
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ek = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13902
  %i.el = and i64 %i.ek, 9223372036854775807
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  %i.en = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13902
  %i.eo = xor i1 %i.en, true
  %i.ep = zext i1 %i.eo to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.ao, %bb.an
  %.sroa.01.0.i.i.i = phi i8 [ %i.ep, %bb.ao ], [ 0, %bb.an ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.er = load atomic i8, ptr %i.eq monotonic, align 1, !noalias !13902
  %.not.i.i.not.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ap, !prof !34

bb.ap:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13905
  store ptr %.8.val, ptr %i.f, align 8, !noalias !13905
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.es, align 8, !noalias !13905
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #40, !noalias !13909
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.et = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13910)
  %i.eu = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !13910, !noalias !13913, !noundef !5 ; 6 uses
  %i.ew = icmp ult i64 %i.ev, 384307168202282326
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i64 %i.ev, 0
  br i1 %i.ex, label %.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.ey = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !13910, !noalias !13913, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.ev, 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx.i.i
  br label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.aq
  %.sroa.02.010.i.i.i = phi i64 [ %i.fw, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.aq ] ; 5 uses
  %i.fd = phi ptr [ %i.fe, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.fb, %bb.aq ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13915)
  %i.ff = load ptr, ptr %i.fd, align 8, !alias.scope !13915, !noalias !13918, !nonnull !5, !noundef !5 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !13922, !noundef !5
  %.not.i.i.i.i24 = icmp eq i64 %i.fh, %i.ez
  br i1 %.not.i.i.i.i24, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i23
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !13915, !noalias !13918, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fl = cmpxchg ptr %i.fk, i64 0, i64 %i.fj acq_rel acquire, align 8, !noalias !13922
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fl, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.as, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !13915, !noalias !13918, !noundef !5 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store atomic ptr %i.fn, ptr %i.fp release, align 8, !noalias !13922
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !13922, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40 ; 2 uses
  %i.ft = atomicrmw xchg ptr %i.fs, i32 1 release, align 4, !noalias !13922
  %i.fu = icmp eq i32 %i.ft, -1
  br i1 %i.fu, label %bb.av, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.fv = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.fs) #34, !noalias !13922 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.ar, %.lr.ph.i.i.i23
  %i.fw = add nuw nsw i64 %.sroa.02.010.i.i.i, 1
  %i.fx = icmp eq ptr %i.fe, %i.fc
  br i1 %i.fx, label %.loopexit.i, label %.lr.ph.i.i.i23

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.av, %bb.au
  %i.fy = icmp samesign ult i64 %.sroa.02.010.i.i.i, %i.ev
  tail call void @llvm.assume(i1 %i.fy)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13926)
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %.sroa.02.010.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i = load ptr, ptr %i.fz, align 8, !noalias !13929 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !13929
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = xor i64 %.sroa.02.010.i.i.i, -1
  %i.gc = add nsw i64 %i.ev, %i.gb
  %i.gd = mul nuw nsw i64 %i.gc, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fz, ptr nonnull align 8 %i.ga, i64 %i.gd, i1 false), !noalias !13932
  %i.ge = add nsw i64 %i.ev, -1                   ; 2 uses
  store i64 %i.ge, ptr %i.eu, align 8, !alias.scope !13934, !noalias !13935
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendBU_:bb.a
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEs_0uEB3y_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14001
  %i.cs = load atomic i64, ptr %i.u monotonic, align 16, !noalias !14027 ; 2 uses
  %i.ct = load i64, ptr %i.v, align 16, !noalias !14027, !noundef !5 ; 2 uses
  %i.cu = and i64 %i.ct, %i.cs
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cw = extractvalue { i64, i32 } %i.cb, 1      ; 2 uses
  %i.cx = icmp ult i32 %i.cw, 1000000000
  call void @llvm.assume(i1 %i.cx)
  %.not32.i = icmp samesign ult i32 %i.cw, %i.bw
  br i1 %.not32.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not31.i = icmp slt i64 %i.cc, %i.ca
  br i1 %.not31.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i
  %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 8
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, align 8
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, %bb.u, %bb.t
  %i.cy = phi i64 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.64.0.copyload = load i64, ptr %.sroa.64.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8, !noalias !14029 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.dc = load atomic ptr, ptr %i.db acquire, align 8, !noalias !14029
  %i.dd = and i64 %i.da, 1
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.da, %.lr.ph.i.i3 ], [ %i.do, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.dc, %.lr.ph.i.i3 ], [ %i.dp, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dg = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dh = and i64 %i.dg, 31                       ; 3 uses
  %i.di = icmp eq i64 %i.dh, 31
  br i1 %i.di, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dj = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !14029
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9: ; preds = %bb.x
  %.not.i.i.i10 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i10, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.preheader

.lr.ph.i.i.i13.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9
  %i.dk = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter116 = and i32 %i.dk, 7                 ; 3 uses
  %i.dl = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dl, label %.lr.ph.i.i.i13.epil.preheader, label %.lr.ph.i.i.i13.preheader.new

.lr.ph.i.i.i13.preheader.new:                     ; preds = %.lr.ph.i.i.i13.preheader
  %unroll_iter120 = and i32 %i.dk, 56
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13, %.lr.ph.i.i.i13.preheader.new
  %niter121 = phi i32 [ 0, %.lr.ph.i.i.i13.preheader.new ], [ %niter121.next.7, %.lr.ph.i.i.i13 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %niter121.next.7 = add i32 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i32 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i13

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i13
  %lcmp.mod118.not = icmp eq i32 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.epil.preheader

.lr.ph.i.i.i13.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i13.preheader
  %lcmp.mod119 = icmp ne i32 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.i.i.i13.epil

.lr.ph.i.i.i13.epil:                              ; preds = %.lr.ph.i.i.i13.epil, %.lr.ph.i.i.i13.epil.preheader
  %epil.iter117 = phi i32 [ 0, %.lr.ph.i.i.i13.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.i.i13.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.epil, !llvm.loop !14035

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i13.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9, %bb.y
  %i.dm = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dn = icmp eq i64 %i.dh, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dn, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dv, %bb.ag ], [ %i.dv, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ed, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.do = load atomic i64, ptr %i.cz acquire, align 8, !noalias !14029 ; 2 uses
  %i.dp = load atomic ptr, ptr %i.db acquire, align 8, !noalias !14029
  %i.dq = and i64 %i.do, 1
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.dt, %bb.aa ] ; 7 uses
  %i.ds = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.ds, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14029
  %i.dt = tail call noalias noundef align 8 dereferenceable_or_null(7448) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7448, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14029 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i, !prof !82

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7448) #37, !noalias !14029
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14029
  %i.dv = tail call noalias noundef align 8 dereferenceable_or_null(7448) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7448, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14029 ; 6 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i, !prof !82

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7448) #37, !noalias !14029
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i: ; preds = %bb.ac
  %i.dx = cmpxchg ptr %i.db, ptr null, ptr %i.dv release monotonic, align 8, !noalias !14029
  %i.dy = extractvalue { ptr, i1 } %i.dx, 1
  br i1 %i.dy, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dv, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i ] ; 3 uses
  %i.dz = add i64 %.sroa.03.049.i.i, 2
  %i.ea = cmpxchg weak ptr %i.cz, i64 %.sroa.03.049.i.i, i64 %i.dz seq_cst acquire, align 8, !noalias !14029
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.ea, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i
  store atomic ptr %i.dv, ptr %i.df release, align 8, !noalias !14029
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i
  %i.eb = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.eb, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !14029
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %..i.i.i.i5 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5   ; 2 uses
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.ec = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ec, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod115 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !14036

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ed = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dn, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i, !prof !82

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.db release, align 8, !noalias !14029
  %i.ee = atomicrmw add ptr %i.cz, i64 2 release, align 8, !noalias !14029 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 7440
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ef release, align 8, !noalias !14029
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !14029
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.dh, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !14029
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14040)
  %i.eh = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eh, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i
  %.sroa.43.138.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i ]
  %.sroa.9.137.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i ]
  %i.ei = getelementptr inbounds nuw [240 x i8], ptr %.sroa.43.138.i, i64 %.sroa.9.137.i ; 4 uses
  store i64 %.sroa.03.0.copyload, ptr %i.ei, align 8, !noalias !14042
  %.sroa.5.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.64.0.copyload, ptr %.sroa.5.0..sroa_idx12.i, align 8, !noalias !14042
  %.sroa.614.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.0..sroa_idx15.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, i64 216, i1 false), !noalias !14042
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 232
  %i.ek = atomicrmw or ptr %i.ej, i64 1 release, align 8, !noalias !14043 ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.el) #38, !noalias !14043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, i64 216, i1 false), !alias.scope !14044, !noalias !14045
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  %.not.i1 = icmp eq i64 %.sroa.64.0.copyload, -1
  br i1 %.not.i1, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, i64 216, i1 false)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.03.0.copyload, ptr %.sroa.4.0..sroa_idx.i2, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.64.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, %bb.am
  %i.em = phi i64 [ 1, %bb.am ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ca

bb.an:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.en, align 8, !noalias !14049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14049
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !14049
  %i.ep = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !14051
  %i.eq = extractvalue { i32, i1 } %i.ep, 1
  br i1 %i.eq, label %bb.ap, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #34, !noalias !14051
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.er = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !14051
  %i.es = and i64 %i.er, 9223372036854775807
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.aq, !prof !34

bb.aq:                                            ; preds = %bb.ap
  %i.eu = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !14051
  %i.ev = xor i1 %i.eu, true
  %i.ew = zext i1 %i.ev to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.01.0.i.i.i = phi i8 [ %i.ew, %bb.aq ], [ 0, %bb.ap ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ey = load atomic i8, ptr %i.ex monotonic, align 1, !noalias !14051
  %.not.i.i.not.i = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ar, !prof !34

bb.ar:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14054
  store ptr %.8.val, ptr %i.g, align 8, !noalias !14054
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.ez, align 8, !noalias !14054
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #40, !noalias !14058
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.fa = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14059)
  %i.fb = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !14059, !noalias !14062, !noundef !5 ; 6 uses
  %i.fd = icmp ult i64 %i.fc, 384307168202282326
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fc, 0
  br i1 %i.fe, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.ff = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !14059, !noalias !14062, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fc, 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx.i.i
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.as
  %.sroa.02.010.i.i.i = phi i64 [ %i.gd, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.as ] ; 5 uses
  %i.fk = phi ptr [ %i.fl, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.fi, %bb.as ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14064)
  %i.fm = load ptr, ptr %i.fk, align 8, !alias.scope !14064, !noalias !14067, !nonnull !5, !noundef !5 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !14071, !noundef !5
  %.not.i.i.i.i18 = icmp eq i64 %i.fo, %i.fg
  br i1 %.not.i.i.i.i18, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i17
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !14064, !noalias !14067, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fs = cmpxchg ptr %i.fr, i64 0, i64 %i.fq acq_rel acquire, align 8, !noalias !14071
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fs, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.au, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i

end_hunk_3
