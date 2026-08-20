inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_:bb.a
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.y, %bb.f ] ; 5 uses
  %i.aa = shl nuw i64 %.sroa.4.0.i.ph7.i, 5       ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16  ; 2 uses
  %i.ac = add i64 %i.ab, %i.aa                    ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = icmp ugt i64 %i.ac, 9223372036854775792
  %or.cond.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !168

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !169
  %i.af = tail call noundef align 16 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !169 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #25, !noalias !169
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit.thread.i

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ai = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ac) #25, !noalias !169
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit.thread.i

bb.j:                                             ; preds = %bb.e
  %i.aj = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #25, !noalias !174 ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.ah, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %.sroa.12.011.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.012.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.07.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aa ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ab, i1 false), !noalias !174
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = load ptr, ptr %0, align 8, !alias.scope !175, !noalias !178, !nonnull !4, !noundef !4 ; 5 uses
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit
  %.val239 = load <16 x i8>, ptr %i.as, align 16
  %i.au = icmp sgt <16 x i8> %.val239, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.023.053 = phi ptr [ %.sroa.023.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %.sroa.5.052 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.bf, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.b, %.preheader.preheader ]
  %.sroa.13.050 = phi i16 [ %i.bd, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.av, %.preheader.preheader ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.023.147 = phi ptr [ %i.aw, %.lr.ph ], [ %.sroa.023.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.az, %.lr.ph ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.147) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.023.147, i64 16 ; 3 uses
  %.val40 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val40, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ay, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.ay, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.sroa.023.1.lcssa = phi ptr [ %.sroa.023.053, %.preheader ], [ %i.aw, %.lr.ph ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.051, -1                ; 2 uses
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -32
  %.val.i = load i128, ptr %i.bi, align 16, !alias.scope !180, !noalias !183, !noundef !4 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 -16
  %.val2.i = load i64, ptr %i.bj, align 16, !alias.scope !180, !noalias !183, !noundef !4
  %i.bk = trunc i128 %.val.i to i64
  %i.bl = mul i64 %i.bk, -1065810590584100411
  %i.bm = lshr i128 %.val.i, 64
  %i.bn = trunc nuw i128 %i.bm to i64
  %i.bo = add i64 %i.bl, %i.bn
  %i.bp = mul i64 %i.bo, -1065810590584100411
  %i.bq = add i64 %i.bp, %.val2.i
  %i.br = mul i64 %i.bq, -1065810590584100411     ; 2 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.bs, %i.an            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bt, align 1, !noalias !188
  %i.bu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !191

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bv, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.cm, %.lr.ph.i ]
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bx
  %i.bz = and i64 %i.by, %i.an                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !4
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.k, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !165

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.cd = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ce, 0
  %i.cf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ce, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.ch = phi i64 [ %i.ci, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.ci = add i64 %i.ch, 16                       ; 2 uses
  %i.cj = add i64 %i.ci, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cj, %i.an            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !188
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !192

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.0.i5.i = phi i64 [ %i.cg, %bb.k ], [ %i.bz, %._crit_edge.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.co = lshr i64 %i.bs, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8           ; 2 uses
  %i.cq = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cr = and i64 %i.cq, %i.an
  store i8 %i.cp, ptr %i.cn, align 1
  %i.cs = getelementptr i8, ptr %i.aq, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store i8 %i.cp, ptr %i.ct, align 1
  %i.cu = shl i64 %i.be, 5
  %i.cv = sub nuw nsw i64 -32, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.as, i64 %i.cv
  %i.cx = shl i64 %.sroa.0.0.i5.i, 5
  %i.cy = sub nuw nsw i64 -32, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.aq, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cz, ptr noundef nonnull align 1 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.da = icmp eq i64 %i.bf, 0
  br i1 %i.da, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit
  %i.db = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.ar, ptr %0, align 8, !alias.scope !193, !noalias !196
  store i64 %i.an, ptr %i.e, align 8, !alias.scope !198, !noalias !200
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.db, ptr %i.dc, align 8, !alias.scope !202, !noalias !204
  %i.dd = icmp eq i64 %i.f, 0
  br i1 %i.dd, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.de = shl nuw i64 %i.h, 5                     ; 3 uses
  %i.df = add i64 %i.f, 17
  %i.dg = add i64 %i.df, %i.de                    ; 4 uses
  %i.dh = icmp uge i64 %i.dg, %i.de
  %i.di = icmp ult i64 %i.dg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dh)
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.dk = sub nsw i64 0, %i.de
  %i.dl = getelementptr inbounds i8, ptr %i.as, i64 %i.dk
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !206
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !211 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.dm = lshr i64 %i.h, 4                        ; 2 uses
  %i.dn = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dn, 0
  %i.do = zext i1 %.not10.i.i.i.i to i64          ; 2 uses
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dm, %i.do ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %4 = add nuw nsw i64 %i.dm, %i.do
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dp = icmp eq i64 %4, 1
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dx, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod95 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dq, align 16, !noalias !211
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dr = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !noalias !211
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i9 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dt = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !211
  br label %.lr.ph.i10

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dx, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.du = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.du, align 16, !noalias !211
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !noalias !211
  %i.dx = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dz, align 16, !noalias !211
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ea = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eb = or <2 x i64> %i.ea, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eb, ptr %i.dz, align 16, !noalias !211
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

.lr.ph.i10:                                       ; preds = %bb.v, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.ec, %bb.v ], [ 0, %._crit_edge.i.i ] ; 8 uses
  %i.ec = add nuw i64 %.sroa.014.04.i, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !211, !noundef !4
  %.not.i11 = icmp eq i8 %i.ee, -128
  br i1 %.not.i11, label %bb.o, label %bb.v

bb.o:                                             ; preds = %.lr.ph.i10
  %.neg.i = xor i64 %.sroa.014.04.i, -1
  %.neg23.i = shl i64 %.neg.i, 5
  %i.ef = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 4 uses
  %i.eg = sub nsw i64 0, %.sroa.014.04.i
  %i.eh = getelementptr inbounds [32 x i8], ptr %.val25.i, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -32
  %i.ej = getelementptr i8, ptr %i.eh, i64 -16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  %.val.i.i13 = load i128, ptr %i.ei, align 16, !alias.scope !214, !noalias !217, !noundef !4 ; 2 uses
  %.val2.i.i14 = load i64, ptr %i.ej, align 16, !alias.scope !214, !noalias !217, !noundef !4
  %i.el = trunc i128 %.val.i.i13 to i64
  %i.em = mul i64 %i.el, -1065810590584100411
  %i.en = lshr i128 %.val.i.i13, 64
  %i.eo = trunc nuw i128 %i.en to i64
  %i.ep = add i64 %i.em, %i.eo
  %i.eq = mul i64 %i.ep, -1065810590584100411
  %i.er = add i64 %i.eq, %.val2.i.i14
  %i.es = mul i64 %i.er, -1065810590584100411     ; 2 uses
  %i.et = tail call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 26) ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.et, %i.f           ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.eu, align 1, !noalias !222
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ew = bitcast <16 x i1> %i.ev to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !191

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %bb.p
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.p ], [ %.sroa.0.0.i.i15, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.ew, %bb.p ], [ %i.fn, %.lr.ph.i28.i ]
  %i.ex = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add i64 %.sroa.0.0.lcssa.i.i, %i.ey
  %i.fa = and i64 %i.ez, %i.f                     ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !211, !noundef !4
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.q, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !165

bb.q:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !211
  %i.fe = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ff = bitcast <16 x i1> %i.fe to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.ff, 0
  %i.fg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ff, i1 true)
  %i.fh = zext nneg i16 %i.fg to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.p, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i15, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %bb.p ]
  %i.fi = phi i64 [ %i.fj, %.lr.ph.i28.i ], [ 0, %bb.p ]
  %i.fj = add i64 %i.fi, 16                       ; 2 uses
  %i.fk = add i64 %i.fj, %.sroa.0.010.i.i
  %.sroa.0.0.i.i15 = and i64 %i.fk, %i.f          ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i15
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fl, align 1, !noalias !222
  %i.fm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !192

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.q, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fh, %bb.q ], [ %i.fa, %._crit_edge.i27.i ] ; 4 uses
  %i.fo = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fp = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fq = xor i64 %i.fp, %i.fo
  %.unshifted.i = and i64 %i.fq, %i.f
  %i.fr = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fr, label %bb.s, label %bb.r, !prof !225

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fs = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.ft = sub nuw nsw i64 -32, %i.fs
  %i.fu = getelementptr inbounds i8, ptr %.val25.i, i64 %i.ft ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !211, !noundef !4
  %i.fx = lshr i64 %i.et, 57
  %i.fy = trunc nuw nsw i64 %i.fx to i8           ; 2 uses
  %i.fz = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ga = and i64 %i.fz, %i.f
  store i8 %i.fy, ptr %i.fv, align 1, !noalias !211
  %i.gb = getelementptr i8, ptr %.val25.i, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 %i.fy, ptr %i.gc, align 1, !noalias !211
  %i.gd = icmp eq i8 %i.fw, -1
  br i1 %i.gd, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.et, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.014.04.i, -16
  %i.gh = and i64 %i.gg, %i.f
  store i8 %i.gf, ptr %i.ed, align 1, !noalias !211
  %i.gi = getelementptr i8, ptr %.val25.i, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.gf, ptr %i.gj, align 1, !noalias !211
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.gk = add i64 %.sroa.014.04.i, -16
  %i.gl = and i64 %i.gk, %i.f
  store i8 -1, ptr %i.ed, align 1, !noalias !211
  %i.gm = getelementptr i8, ptr %.val25.i, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store i8 -1, ptr %i.gn, align 1, !noalias !211
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fu, ptr noundef nonnull align 1 dereferenceable(32) %i.ef, i64 32, i1 false), !noalias !211
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.go = load <2 x i64>, ptr %i.ef, align 1, !alias.scope !226, !noalias !211
  %i.gp = load <2 x i64>, ptr %i.fu, align 1, !alias.scope !230, !noalias !211
  store <2 x i64> %i.gp, ptr %i.ef, align 1, !alias.scope !226, !noalias !211
  store <2 x i64> %i.go, ptr %i.fu, align 1, !alias.scope !230, !noalias !211
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %i.gr = load <2 x i64>, ptr %i.ek, align 1, !alias.scope !233, !noalias !211
  %i.gs = load <2 x i64>, ptr %i.gq, align 1, !alias.scope !236, !noalias !211
  store <2 x i64> %i.gs, ptr %i.ek, align 1, !alias.scope !233, !noalias !211
  store <2 x i64> %i.gr, ptr %i.gq, align 1, !alias.scope !236, !noalias !211
  br label %bb.p

bb.v:                                             ; preds = %bb.t, %bb.s, %.lr.ph.i10
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i10

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.v, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gu = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.gu, ptr %i.gt, align 8, !alias.scope !211
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.011.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.al, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsfIwuYbgPzJV_5uu_du.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.ak, %bb.j ]
  %i.gv = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gw = insertvalue { i64, i64 } %i.gv, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gw
}
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1s_:bb.a
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3731
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs0_0B2e_(ptr nonnull %i.o) #31, !noalias !3731
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3731
  %i.ct = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3757 ; 2 uses
  %i.cu = load i64, ptr %i.v, align 16, !noalias !3757, !noundef !4 ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

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
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 16
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i, %bb.u, %bb.t
  %i.cz = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ck

bb.v:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8, !noalias !3759 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.dd = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !3759
  %i.de = and i64 %i.db, 1
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

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
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3759
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dl = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter149 = and i32 %i.dl, 7                 ; 3 uses
  %i.dm = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dm, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter153 = and i32 %i.dl, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter154 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter154.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter150 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !3765

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dn = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.do = icmp eq i64 %i.di, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.do, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dw, %bb.ag ], [ %i.dw, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ee, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dp = load atomic i64, ptr %i.da acquire, align 8, !noalias !3759 ; 2 uses
  %i.dq = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !3759
  %i.dr = and i64 %i.dp, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.du, %bb.aa ] ; 7 uses
  %i.dt = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dt, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !3759
  %i.du = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef 16) #25, !noalias !3759 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i, !prof !165

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #30, !noalias !3759
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !3759
  %i.dw = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef 16) #25, !noalias !3759 ; 6 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i, !prof !165

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #30, !noalias !3759
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i: ; preds = %bb.ac
  %i.dy = cmpxchg ptr %i.dc, ptr null, ptr %i.dw release monotonic, align 8, !noalias !3759
  %i.dz = extractvalue { ptr, i1 } %i.dy, 1
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dw, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i ] ; 3 uses
  %i.ea = add i64 %.sroa.03.049.i.i, 2
  %i.eb = cmpxchg weak ptr %i.da, i64 %.sroa.03.049.i.i, i64 %i.ea seq_cst acquire, align 8, !noalias !3759
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.eb, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i
  store atomic ptr %i.dw, ptr %i.dg release, align 8, !noalias !3759
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i
  %i.ec = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ec, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 9936, i64 noundef 16) #25, !noalias !3759
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %..i.i.i.i5 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5   ; 2 uses
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.ed = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ed, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3759
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !3766

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ee = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.do, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i, !prof !165

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.dc release, align 8, !noalias !3759
  %i.ef = atomicrmw add ptr %i.da, i64 2 release, align 8, !noalias !3759 ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 9920
  store atomic ptr %.sroa.035.2.i.i, ptr %i.eg release, align 8, !noalias !3759
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #29, !noalias !3759
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.di, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.eh = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.eh, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 9936, i64 noundef 16) #25, !noalias !3759
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.ei = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.ei, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i ]
  %i.ej = getelementptr inbounds nuw [320 x i8], ptr %.sroa.43.126.i, i64 %.sroa.9.125.i ; 3 uses
  store i128 %.sroa.02.0.copyload, ptr %i.ej, align 16, !noalias !3772
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..sroa_idx9.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, i64 288, i1 false), !noalias !3772
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 304
  %i.el = atomicrmw or ptr %i.ek, i64 1 release, align 8, !noalias !3773 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.em) #31, !noalias !3773
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, i64 288, i1 false), !alias.scope !3774, !noalias !3775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.i1 = icmp eq i128 %.sroa.02.0.copyload, -1
  br i1 %.not.i1, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i, i64 288, i1 false)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.02.0.copyload, ptr %.sroa.4.0..sroa_idx.i2, align 16
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i, %bb.am
  %i.en = phi i128 [ 1, %bb.am ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ck

bb.an:                                            ; preds = %bb.a
  %.sroa.04.0.copyload = load i128, ptr %1, align 16 ; 8 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 16 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 9 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 16 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 7 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.eo, align 8, !noalias !3776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3776
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !3776
  %i.eq = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !3780
  %i.er = extractvalue { i32, i1 } %i.eq, 1
  br i1 %i.er, label %bb.ap, label %bb.ao, !prof !225

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #25, !noalias !3780
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.es = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3780
  %i.et = and i64 %i.es, 9223372036854775807
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i, label %bb.aq, !prof !225

bb.aq:                                            ; preds = %bb.ap
  %i.ev = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !3780
  %i.ew = xor i1 %i.ev, true
  %i.ex = zext i1 %i.ew to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.01.0.i.i.i = phi i8 [ %i.ex, %bb.aq ], [ 0, %bb.ap ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ez = load atomic i8, ptr %i.ey monotonic, align 1, !noalias !3780
  %.not.i.i.not.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i, label %bb.ar, !prof !225

bb.ar:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3783
  store ptr %.8.val, ptr %i.g, align 8, !noalias !3783
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.fa, align 8, !noalias !3783
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #29, !noalias !3787
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i
  %i.fb = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3788)
  %i.fc = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !3788, !noalias !3791, !noundef !4 ; 6 uses
  %i.fe = icmp ult i64 %i.fd, 384307168202282326
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i
  %i.fg = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !3788, !noalias !3791, !nonnull !4, !noundef !4 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fd, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.idx.i.i
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i, %bb.as
  %.sroa.02.010.i.i.i = phi i64 [ %i.gf, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i ], [ 0, %bb.as ] ; 5 uses
  %i.fl = phi ptr [ %i.fm, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i ], [ %i.fj, %bb.as ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  %i.fn = load ptr, ptr %i.fl, align 8, !alias.scope !3793, !noalias !3796, !nonnull !4, !noundef !4 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !3800, !noundef !4
  %.not.i.i.i.i17 = icmp eq i64 %i.fp, %i.fh
  br i1 %.not.i.i.i.i17, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
end_hunk_1
