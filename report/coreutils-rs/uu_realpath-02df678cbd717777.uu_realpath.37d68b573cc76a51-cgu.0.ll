Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_realpath-02df678cbd717777.uu_realpath.37d68b573cc76a51-cgu.0?download=true
inline.NumInlined: 631
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath:bb.a
  %i.y = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.y, 8
  %.sroa.03.0.i.i = select i1 %i.x, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.w, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 168) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = add nuw i64 %i.ab, 8
  %i.ad = and i64 %i.ac, -16                      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !10

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !124
  %i.ai = tail call noundef align 16 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !124 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #25, !noalias !124
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit.thread.i

bb.k:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af) #25, !noalias !124
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit.thread.i

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #25, !noalias !125 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit.thread.i: ; preds = %bb.k, %bb.j
  %.pn.i = phi { i64, i64 } [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.ae, i1 false), !noalias !125
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = load ptr, ptr %0, align 8, !alias.scope !126, !noalias !127, !nonnull !6, !noundef !6 ; 5 uses
  %i.aw = icmp eq i64 %i.b, 0
  br i1 %i.aw, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit
  %.val241 = load <16 x i8>, ptr %i.av, align 16
  %i.ax = icmp sgt <16 x i8> %.val241, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val.i.i = load i64, ptr %2, align 8, !noalias !128, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.az, align 8, !noalias !128, !noundef !6
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.025.055 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %.sroa.025.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.054 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.053 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.052 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i147 = icmp eq i16 %.sroa.13.052, 0
  br i1 %.not.i147, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.025.149 = phi ptr [ %i.ba, %.lr.ph ], [ %.sroa.025.055, %.preheader ] ; 2 uses
  %.sroa.5.148 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.5.054, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.149) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.025.149, i64 16 ; 3 uses
  %.val42 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val42, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.148, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.052, %.preheader ], [ %i.bc, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.054, %.preheader ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.sroa.025.1.lcssa = phi ptr [ %.sroa.025.055, %.preheader ], [ %i.ba, %.lr.ph ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.053, -1                ; 2 uses
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds [168 x i8], ptr %i.av, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -168
  %i.bn = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECs4NdVKWkRqHB_11uu_realpath(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.bm) #25, !noalias !129 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bn, %i.aq            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !130
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !131

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bq, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.ch, %.lr.ph.i ]
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bs
  %i.bu = and i64 %i.bt, %i.aq                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !6
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.m, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.m:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.at, align 16
  %i.by = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ce, %i.aq            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !130
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !132

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.m
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.m ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i5.i
  %i.cj = lshr i64 %i.bn, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.aq
  store i8 %i.ck, ptr %i.ci, align 1
  %i.cn = getelementptr i8, ptr %i.at, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store i8 %i.ck, ptr %i.co, align 1
  %.neg.i.i = mul i64 %i.bi, -168
  %i.cp = getelementptr i8, ptr %i.av, i64 %.neg.i.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 -168
  %.neg59.i.i = mul i64 %.sroa.0.0.i5.i, -168
  %i.cr = getelementptr i8, ptr %i.at, i64 %.neg59.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cs, ptr noundef nonnull align 1 dereferenceable(168) %i.cq, i64 168, i1 false)
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit
  %i.cu = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.au, ptr %0, align 8, !alias.scope !133, !noalias !134
  store i64 %i.aq, ptr %i.e, align 8, !alias.scope !135, !noalias !136
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cu, ptr %i.cv, align 8, !alias.scope !137, !noalias !138
  %i.cw = icmp eq i64 %i.f, 0
  br i1 %i.cw, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.cx = mul nuw i64 %i.h, 168
  %i.cy = add nuw i64 %i.cx, 8
  %i.cz = icmp ult i64 %i.h, 109802048057794951
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = and i64 %i.cy, -16                      ; 3 uses
  %i.db = add nsw i64 %i.f, 17
  %i.dc = add i64 %i.db, %i.da                    ; 4 uses
  %i.dd = icmp uge i64 %i.dc, %i.da
  %i.de = icmp ult i64 %i.dc, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dd)
  tail call void @llvm.assume(i1 %i.de)
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.dg = sub nsw i64 0, %i.da
  %i.dh = getelementptr inbounds i8, ptr %i.av, i64 %i.dg
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dh, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !139
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !140 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.di = lshr i64 %i.h, 4
  %i.dj = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dj, 0
  %i.dk = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.di, %i.dk ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dl = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.du, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dm, align 16, !noalias !140
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dn = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.do = or <2 x i64> %i.dn, splat (i64 -9187201950435737472)
  store <2 x i64> %i.do, ptr %i.dm, align 16, !noalias !140
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dp = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !140
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dq, align 8
  br label %.lr.ph.i13

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.du, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dr, align 16, !noalias !140
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ds = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dt = or <2 x i64> %i.ds, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dt, ptr %i.dr, align 16, !noalias !140
  %i.du = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dw, align 16, !noalias !140
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dx = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dy = or <2 x i64> %i.dx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dy, ptr %i.dw, align 16, !noalias !140
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i13:                                       ; preds = %bb.v, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.dz, %bb.v ], [ 0, %._crit_edge.i.i ] ; 7 uses
  %i.dz = add nuw i64 %.sroa.014.04.i, 1          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !140, !noundef !6
  %.not.i14 = icmp eq i8 %i.eb, -128
  br i1 %.not.i14, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph.i13
  %.neg.i = mul i64 %i.dz, -168
  %i.ec = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg.i ; 23 uses
  %i.ed = sub nsw i64 0, %.sroa.014.04.i
  %i.ee = getelementptr inbounds [168 x i8], ptr %.val25.i, i64 %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -168
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 64 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 72 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 80 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 88 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 96 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 104 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 112 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 120 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 128 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 136 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 144 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 152 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ec, i64 160 ; 2 uses
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.q
  %i.fa = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECs4NdVKWkRqHB_11uu_realpath(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ef) #25, !noalias !141 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.fa, %i.f           ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.fb, align 1, !noalias !142
  %i.fc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.fd, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !131

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.fd, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.fu, %.lr.ph.i28.i ]
  %i.fe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64
  %i.fg = add i64 %.sroa.0.0.lcssa.i.i, %i.ff
  %i.fh = and i64 %i.fg, %i.f                     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !140, !noundef !6
  %i.fk = icmp sgt i8 %i.fj, -1
  br i1 %i.fk, label %bb.r, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !9

bb.r:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !140
  %i.fl = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fm, 0
  %i.fn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fm, i1 true)
  %i.fo = zext nneg i16 %i.fn to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.fp = phi i64 [ %i.fq, %.lr.ph.i28.i ], [ 0, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.fq = add i64 %i.fp, 16                       ; 2 uses
  %i.fr = add i64 %i.fq, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.fr, %i.f          ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fs, align 1, !noalias !142
  %i.ft = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fu = bitcast <16 x i1> %i.ft to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !132

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.r, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fo, %bb.r ], [ %i.fh, %._crit_edge.i27.i ] ; 4 uses
  %i.fv = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fw = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fx = xor i64 %i.fw, %i.fv
  %.unshifted.i = and i64 %i.fx, %i.f
  %i.fy = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fy, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg23.i = mul i64 %.sroa.0.0.i5.i.i, -168
  %i.fz = getelementptr i8, ptr %.val25.i, i64 %.neg23.i ; 21 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -168   ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !140, !noundef !6
  %i.gd = lshr i64 %i.fa, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gg = and i64 %i.gf, %i.f
  store i8 %i.ge, ptr %i.gb, align 1, !noalias !140
  %i.gh = getelementptr i8, ptr %.val25.i, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  store i8 %i.ge, ptr %i.gi, align 1, !noalias !140
  %i.gj = icmp eq i8 %i.gc, -1
  br i1 %i.gj, label %bb.u, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ec, align 1, !alias.scope !143, !noalias !145
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.ga, align 1, !alias.scope !144, !noalias !146
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ec, align 1, !alias.scope !143, !noalias !145
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ga, align 1, !alias.scope !144, !noalias !146
  %i.gk = getelementptr i8, ptr %i.fz, i64 -160   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.eg, align 1, !alias.scope !147, !noalias !149
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.gk, align 1, !alias.scope !148, !noalias !150
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.eg, align 1, !alias.scope !147, !noalias !149
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.gk, align 1, !alias.scope !148, !noalias !150
  %i.gl = getelementptr i8, ptr %i.fz, i64 -152   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.eh, align 1, !alias.scope !151, !noalias !153
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.gl, align 1, !alias.scope !152, !noalias !154
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.eh, align 1, !alias.scope !151, !noalias !153
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.gl, align 1, !alias.scope !152, !noalias !154
  %i.gm = getelementptr i8, ptr %i.fz, i64 -144   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.sroa.0.0.copyload.i.i.i.3.i = load i64, ptr %i.ei, align 1, !alias.scope !155, !noalias !157
  %.sroa.02.0.copyload.i.i.i.3.i = load i64, ptr %i.gm, align 1, !alias.scope !156, !noalias !158
  store i64 %.sroa.02.0.copyload.i.i.i.3.i, ptr %i.ei, align 1, !alias.scope !155, !noalias !157
  store i64 %.sroa.0.0.copyload.i.i.i.3.i, ptr %i.gm, align 1, !alias.scope !156, !noalias !158
  %i.gn = getelementptr i8, ptr %i.fz, i64 -136   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %.sroa.0.0.copyload.i.i.i.4.i = load i64, ptr %i.ej, align 1, !alias.scope !159, !noalias !161
  %.sroa.02.0.copyload.i.i.i.4.i = load i64, ptr %i.gn, align 1, !alias.scope !160, !noalias !162
  store i64 %.sroa.02.0.copyload.i.i.i.4.i, ptr %i.ej, align 1, !alias.scope !159, !noalias !161
  store i64 %.sroa.0.0.copyload.i.i.i.4.i, ptr %i.gn, align 1, !alias.scope !160, !noalias !162
  %i.go = getelementptr i8, ptr %i.fz, i64 -128   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %.sroa.0.0.copyload.i.i.i.5.i = load i64, ptr %i.ek, align 1, !alias.scope !163, !noalias !165
  %.sroa.02.0.copyload.i.i.i.5.i = load i64, ptr %i.go, align 1, !alias.scope !164, !noalias !166
  store i64 %.sroa.02.0.copyload.i.i.i.5.i, ptr %i.ek, align 1, !alias.scope !163, !noalias !165
  store i64 %.sroa.0.0.copyload.i.i.i.5.i, ptr %i.go, align 1, !alias.scope !164, !noalias !166
  %i.gp = getelementptr i8, ptr %i.fz, i64 -120   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.sroa.0.0.copyload.i.i.i.6.i = load i64, ptr %i.el, align 1, !alias.scope !167, !noalias !169
  %.sroa.02.0.copyload.i.i.i.6.i = load i64, ptr %i.gp, align 1, !alias.scope !168, !noalias !170
  store i64 %.sroa.02.0.copyload.i.i.i.6.i, ptr %i.el, align 1, !alias.scope !167, !noalias !169
  store i64 %.sroa.0.0.copyload.i.i.i.6.i, ptr %i.gp, align 1, !alias.scope !168, !noalias !170
  %i.gq = getelementptr i8, ptr %i.fz, i64 -112   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %.sroa.0.0.copyload.i.i.i.7.i = load i64, ptr %i.em, align 1, !alias.scope !171, !noalias !173
  %.sroa.02.0.copyload.i.i.i.7.i = load i64, ptr %i.gq, align 1, !alias.scope !172, !noalias !174
  store i64 %.sroa.02.0.copyload.i.i.i.7.i, ptr %i.em, align 1, !alias.scope !171, !noalias !173
  store i64 %.sroa.0.0.copyload.i.i.i.7.i, ptr %i.gq, align 1, !alias.scope !172, !noalias !174
  %i.gr = getelementptr i8, ptr %i.fz, i64 -104   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %.sroa.0.0.copyload.i.i.i.8.i = load i64, ptr %i.en, align 1, !alias.scope !175, !noalias !177
  %.sroa.02.0.copyload.i.i.i.8.i = load i64, ptr %i.gr, align 1, !alias.scope !176, !noalias !178
  store i64 %.sroa.02.0.copyload.i.i.i.8.i, ptr %i.en, align 1, !alias.scope !175, !noalias !177
  store i64 %.sroa.0.0.copyload.i.i.i.8.i, ptr %i.gr, align 1, !alias.scope !176, !noalias !178
  %i.gs = getelementptr i8, ptr %i.fz, i64 -96    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %.sroa.0.0.copyload.i.i.i.9.i = load i64, ptr %i.eo, align 1, !alias.scope !179, !noalias !181
  %.sroa.02.0.copyload.i.i.i.9.i = load i64, ptr %i.gs, align 1, !alias.scope !180, !noalias !182
  store i64 %.sroa.02.0.copyload.i.i.i.9.i, ptr %i.eo, align 1, !alias.scope !179, !noalias !181
  store i64 %.sroa.0.0.copyload.i.i.i.9.i, ptr %i.gs, align 1, !alias.scope !180, !noalias !182
  %i.gt = getelementptr i8, ptr %i.fz, i64 -88    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %.sroa.0.0.copyload.i.i.i.10.i = load i64, ptr %i.ep, align 1, !alias.scope !183, !noalias !185
  %.sroa.02.0.copyload.i.i.i.10.i = load i64, ptr %i.gt, align 1, !alias.scope !184, !noalias !186
  store i64 %.sroa.02.0.copyload.i.i.i.10.i, ptr %i.ep, align 1, !alias.scope !183, !noalias !185
  store i64 %.sroa.0.0.copyload.i.i.i.10.i, ptr %i.gt, align 1, !alias.scope !184, !noalias !186
  %i.gu = getelementptr i8, ptr %i.fz, i64 -80    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.sroa.0.0.copyload.i.i.i.11.i = load i64, ptr %i.eq, align 1, !alias.scope !187, !noalias !189
  %.sroa.02.0.copyload.i.i.i.11.i = load i64, ptr %i.gu, align 1, !alias.scope !188, !noalias !190
  store i64 %.sroa.02.0.copyload.i.i.i.11.i, ptr %i.eq, align 1, !alias.scope !187, !noalias !189
  store i64 %.sroa.0.0.copyload.i.i.i.11.i, ptr %i.gu, align 1, !alias.scope !188, !noalias !190
  %i.gv = getelementptr i8, ptr %i.fz, i64 -72    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.sroa.0.0.copyload.i.i.i.12.i = load i64, ptr %i.er, align 1, !alias.scope !191, !noalias !193
  %.sroa.02.0.copyload.i.i.i.12.i = load i64, ptr %i.gv, align 1, !alias.scope !192, !noalias !194
  store i64 %.sroa.02.0.copyload.i.i.i.12.i, ptr %i.er, align 1, !alias.scope !191, !noalias !193
  store i64 %.sroa.0.0.copyload.i.i.i.12.i, ptr %i.gv, align 1, !alias.scope !192, !noalias !194
  %i.gw = getelementptr i8, ptr %i.fz, i64 -64    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %.sroa.0.0.copyload.i.i.i.13.i = load i64, ptr %i.es, align 1, !alias.scope !195, !noalias !197
  %.sroa.02.0.copyload.i.i.i.13.i = load i64, ptr %i.gw, align 1, !alias.scope !196, !noalias !198
  store i64 %.sroa.02.0.copyload.i.i.i.13.i, ptr %i.es, align 1, !alias.scope !195, !noalias !197
  store i64 %.sroa.0.0.copyload.i.i.i.13.i, ptr %i.gw, align 1, !alias.scope !196, !noalias !198
  %i.gx = getelementptr i8, ptr %i.fz, i64 -56    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %.sroa.0.0.copyload.i.i.i.14.i = load i64, ptr %i.et, align 1, !alias.scope !199, !noalias !201
  %.sroa.02.0.copyload.i.i.i.14.i = load i64, ptr %i.gx, align 1, !alias.scope !200, !noalias !202
  store i64 %.sroa.02.0.copyload.i.i.i.14.i, ptr %i.et, align 1, !alias.scope !199, !noalias !201
  store i64 %.sroa.0.0.copyload.i.i.i.14.i, ptr %i.gx, align 1, !alias.scope !200, !noalias !202
  %i.gy = getelementptr i8, ptr %i.fz, i64 -48    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %.sroa.0.0.copyload.i.i.i.15.i = load i64, ptr %i.eu, align 1, !alias.scope !203, !noalias !205
  %.sroa.02.0.copyload.i.i.i.15.i = load i64, ptr %i.gy, align 1, !alias.scope !204, !noalias !206
  store i64 %.sroa.02.0.copyload.i.i.i.15.i, ptr %i.eu, align 1, !alias.scope !203, !noalias !205
  store i64 %.sroa.0.0.copyload.i.i.i.15.i, ptr %i.gy, align 1, !alias.scope !204, !noalias !206
  %i.gz = getelementptr i8, ptr %i.fz, i64 -40    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %.sroa.0.0.copyload.i.i.i.16.i = load i64, ptr %i.ev, align 1, !alias.scope !207, !noalias !209
  %.sroa.02.0.copyload.i.i.i.16.i = load i64, ptr %i.gz, align 1, !alias.scope !208, !noalias !210
  store i64 %.sroa.02.0.copyload.i.i.i.16.i, ptr %i.ev, align 1, !alias.scope !207, !noalias !209
  store i64 %.sroa.0.0.copyload.i.i.i.16.i, ptr %i.gz, align 1, !alias.scope !208, !noalias !210
  %i.ha = getelementptr i8, ptr %i.fz, i64 -32    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %.sroa.0.0.copyload.i.i.i.17.i = load i64, ptr %i.ew, align 1, !alias.scope !211, !noalias !213
  %.sroa.02.0.copyload.i.i.i.17.i = load i64, ptr %i.ha, align 1, !alias.scope !212, !noalias !214
  store i64 %.sroa.02.0.copyload.i.i.i.17.i, ptr %i.ew, align 1, !alias.scope !211, !noalias !213
  store i64 %.sroa.0.0.copyload.i.i.i.17.i, ptr %i.ha, align 1, !alias.scope !212, !noalias !214
  %i.hb = getelementptr i8, ptr %i.fz, i64 -24    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %.sroa.0.0.copyload.i.i.i.18.i = load i64, ptr %i.ex, align 1, !alias.scope !215, !noalias !217
  %.sroa.02.0.copyload.i.i.i.18.i = load i64, ptr %i.hb, align 1, !alias.scope !216, !noalias !218
  store i64 %.sroa.02.0.copyload.i.i.i.18.i, ptr %i.ex, align 1, !alias.scope !215, !noalias !217
  store i64 %.sroa.0.0.copyload.i.i.i.18.i, ptr %i.hb, align 1, !alias.scope !216, !noalias !218
  %i.hc = getelementptr i8, ptr %i.fz, i64 -16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %.sroa.0.0.copyload.i.i.i.19.i = load i64, ptr %i.ey, align 1, !alias.scope !219, !noalias !221
  %.sroa.02.0.copyload.i.i.i.19.i = load i64, ptr %i.hc, align 1, !alias.scope !220, !noalias !222
  store i64 %.sroa.02.0.copyload.i.i.i.19.i, ptr %i.ey, align 1, !alias.scope !219, !noalias !221
  store i64 %.sroa.0.0.copyload.i.i.i.19.i, ptr %i.hc, align 1, !alias.scope !220, !noalias !222
  %i.hd = getelementptr i8, ptr %i.fz, i64 -8     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %.sroa.0.0.copyload.i.i.i.20.i = load i64, ptr %i.ez, align 1, !alias.scope !223, !noalias !225
  %.sroa.02.0.copyload.i.i.i.20.i = load i64, ptr %i.hd, align 1, !alias.scope !224, !noalias !226
  store i64 %.sroa.02.0.copyload.i.i.i.20.i, ptr %i.ez, align 1, !alias.scope !223, !noalias !225
  store i64 %.sroa.0.0.copyload.i.i.i.20.i, ptr %i.hd, align 1, !alias.scope !224, !noalias !226
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.t:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.he = lshr i64 %i.fa, 57
  %i.hf = trunc nuw nsw i64 %i.he to i8           ; 2 uses
  %i.hg = add i64 %.sroa.014.04.i, -16
  %i.hh = and i64 %i.hg, %i.f
  store i8 %i.hf, ptr %i.ea, align 1, !noalias !140
  %i.hi = getelementptr i8, ptr %.val25.i, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  store i8 %i.hf, ptr %i.hj, align 1, !noalias !140
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.hk = add i64 %.sroa.014.04.i, -16
  %i.hl = and i64 %i.hk, %i.f
  store i8 -1, ptr %i.ea, align 1, !noalias !140
  %i.hm = getelementptr i8, ptr %.val25.i, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  store i8 -1, ptr %i.hn, align 1, !noalias !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.ga, ptr noundef nonnull align 1 dereferenceable(168) %i.ec, i64 168, i1 false), !noalias !140
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.v, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = sub nuw i64 %.sroa.03.0.i, %i.b
  store i64 %i.hp, ptr %i.ho, align 8, !alias.scope !140
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.n, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit.thread.i, %bb.l, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.09.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit.thread.i ], [ undef, %bb.n ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.ao, %bb.l ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.010.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs4NdVKWkRqHB_11uu_realpath.exit.thread.i ], [ -1, %bb.n ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.an, %bb.l ]
  %i.hq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hr = insertvalue { i64, i64 } %i.hq, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hr
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !229, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !229
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !248, !noundef !6 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  %.val.pre = load i64, ptr %0, align 8           ; 6 uses
  br i1 %i.c, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4NdVKWkRqHB_11uu_realpath.exit, label %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECs4NdVKWkRqHB_11uu_realpath.exit.i

_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECs4NdVKWkRqHB_11uu_realpath.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !248 ; 2 uses
  %.not.i.i = icmp ult i64 %.val1.i, %.val.pre
  %i.e = select i1 %.not.i.i, i64 0, i64 %.val.pre
  %.sroa.04.0.i.i = sub nuw i64 %.val1.i, %i.e    ; 5 uses
  %i.f = sub i64 %.val.pre, %.sroa.04.0.i.i       ; 2 uses
  %.not11.i.i = icmp ult i64 %i.f, %i.b           ; 2 uses
  %i.g = add i64 %.sroa.04.0.i.i, %i.b
  %.sroa.5.0.i = select i1 %.not11.i.i, i64 %.val.pre, i64 %i.g ; 2 uses
  %.sroa.11.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !248, !nonnull !6, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.k = sub i64 %.sroa.5.0.i, %.sroa.04.0.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.l = icmp eq i64 %.sroa.5.0.i, %.sroa.04.0.i.i
  br i1 %i.l, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECs4NdVKWkRqHB_11uu_realpath.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i
  %.sroa.0.03.i.i = phi i64 [ %i.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i ], [ 0, %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECs4NdVKWkRqHB_11uu_realpath.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.03.i.i ; 4 uses
  %i.n = add nuw nsw i64 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.o = load i64, ptr %i.m, align 8, !range !251, !alias.scope !252, !noalias !248, !noundef !6
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i
    i64 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i.i.i = load i64, ptr %i.p, align 8, !range !12, !alias.scope !253, !noalias !248, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i1.i.i.i = load i64, ptr %i.r, align 8, !range !12, !alias.scope !254, !noalias !248, !noundef !6 ; 2 uses
  %i.s = icmp eq i64 %.val.i1.i.i.i, 0
  br i1 %i.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i: ; preds = %bb.c, %bb.b
  %.val.i1.sink.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.b ], [ %.val.i1.i.i.i, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i2.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !252, !noalias !248, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i, i64 noundef %.val.i1.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i, %bb.c, %bb.b, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.u = icmp eq i64 %i.n, %i.k
  br i1 %i.u, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i, label %.lr.ph.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i, %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECs4NdVKWkRqHB_11uu_realpath.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  br i1 %.not11.i.i, label %.lr.ph.i.i.i.i, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4NdVKWkRqHB_11uu_realpath.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.03.i.i.i.i ; 4 uses
  %i.w = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.x = load i64, ptr %i.v, align 8, !range !251, !alias.scope !258, !noalias !248, !noundef !6
  switch i64 %i.x, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i
    i64 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i
  ]

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !range !12, !alias.scope !259, !noalias !248, !noundef !6 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i1.i.i.i.i.i = load i64, ptr %i.aa, align 8, !range !12, !alias.scope !260, !noalias !248, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %.val.i1.i.i.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.val.i1.sink.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i, %bb.d ], [ %.val.i1.i.i.i.i.i, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val1.i2.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !258, !noalias !248, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i.i.i, i64 noundef %.val.i1.sink.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !261
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4NdVKWkRqHB_11uu_realpath.exit.sink.split.i.i.i.i.i, %bb.e, %bb.d, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = icmp eq i64 %i.w, %.sroa.11.0.i
  br i1 %i.ad, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4NdVKWkRqHB_11uu_realpath.exit, label %.lr.ph.i.i.i.i

_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i, %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit.i
  %i.ae = icmp eq i64 %.val.pre, 0
  br i1 %i.ae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4NdVKWkRqHB_11uu_realpath.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.af, align 8, !nonnull !6, !noundef !6
  %i.ag = shl nuw i64 %.val.pre, 5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEECs4NdVKWkRqHB_11uu_realpath.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs4NdVKWkRqHB_11uu_realpath.exit, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs4NdVKWkRqHB_11uu_realpath.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs4NdVKWkRqHB_11uu_realpath.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs4NdVKWkRqHB_11uu_realpath.exit
    i64 1, label %bb.c
  ], !prof !13

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs4NdVKWkRqHB_11uu_realpath.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECs4NdVKWkRqHB_11uu_realpath:bb.a
  %.sroa.024.0.peel.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.thread48.i.i.i.i ], [ 1, %bb.n ]
  %i.bi = add i64 %.sroa.024.0.peel.i.i.i.i, %i.bh
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.p, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i, %bb.a
  %.sroa.012.0.lcssa.i.i.i.i = phi i64 [ %.val3.i.i, %bb.a ], [ %.sroa.012.3.peel44.i.i.i.i, %bb.p ], [ %.sroa.012.2.i.peel.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.val3.i.i, %bb.a ], [ %i.bi, %bb.p ], [ %.sroa.0.1.i.peel.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i ] ; 3 uses
  %i.bj = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i, %.val3.i.i
  br i1 %i.bj, label %bb.q, label %_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECs4NdVKWkRqHB_11uu_realpath.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.preheader.split.i.split.i.i.i
  %.sroa.0.032.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i, %bb.r ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i.i = phi i64 [ %.sroa.012.2.i.i.i.i, %bb.r ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i.i = phi i64 [ %i.bk, %bb.r ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i ] ; 5 uses
  %i.bk = add nuw i64 %.sroa.019.030.i.i.i.i, 1   ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.019.030.i.i.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !693, !noalias !694, !noundef !6
  %i.bn = icmp eq i8 %i.bm, 47
  br i1 %i.bn, label %bb.s, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = sub nuw i64 %.val3.i.i, %.sroa.0.0.lcssa.i.i.i.i ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.0.lcssa.i.i.i.i
  %i.bq = add i64 %i.bo, %.sroa.012.0.lcssa.i.i.i.i ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bo) #26, !noalias !689
  br label %_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECs4NdVKWkRqHB_11uu_realpath.exit

bb.r:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.sroa.012.2.i.i.i.i = phi i64 [ %.sroa.012.3.i.i.i.i, %bb.x ], [ %.sroa.012.031.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.cc, %bb.x ], [ %.sroa.0.032.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i.i, %i.l
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !681

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = icmp ugt i64 %.sroa.019.030.i.i.i.i, %.sroa.0.032.i.i.i.i
  br i1 %i.bs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.012.3.i.i.i.i = phi i64 [ %i.cb, %bb.u ], [ %.sroa.012.031.i.i.i.i, %bb.s ]
  %i.bt = sub nuw i64 %.val3.i.i, %i.bk
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %i.bk ; 2 uses
  %i.bv = icmp eq i64 %i.bt, 1
  %i.bw = load i8, ptr %i.bu, align 1, !alias.scope !693, !noalias !694, !noundef !6
  %i.bx = icmp eq i8 %i.bw, 46                    ; 2 uses
  br i1 %i.bv, label %bb.v, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.by = sub nuw i64 %.sroa.019.030.i.i.i.i, %.sroa.0.032.i.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.032.i.i.i.i
  %i.ca = add i64 %i.by, %.sroa.012.031.i.i.i.i   ; 2 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.by) #26, !noalias !689
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  br i1 %i.bx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.y, %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w, %bb.v
  %.sroa.024.0.i.i.i.i = phi i64 [ 1, %bb.v ], [ 0, %bb.w ], [ 1, %bb.z ]
  %i.cc = add i64 %.sroa.024.0.i.i.i.i, %i.bk
  br label %bb.r

bb.y:                                             ; preds = %bb.t
  br i1 %i.bx, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !693, !noalias !694, !noundef !6
  %i.cf = icmp eq i8 %i.ce, 47
  br i1 %i.cf, label %bb.x, label %bb.w

_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %._crit_edge.i.i.i.i, %bb.q
  %.sroa.012.1.i.i.i.i = phi i64 [ %i.br, %bb.q ], [ %.sroa.012.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !696
  store i64 %.sroa.012.1.i.i.i.i, ptr %i.a, align 8, !noalias !696
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #26, !noalias !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !696
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !698
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !698
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !698 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !698
  %i.cg = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !698, !noundef !6
  %i.ch = shl i64 %i.cg, 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !698, !noundef !6
  %i.ck = or i64 %i.ch, %i.cj                     ; 2 uses
  %i.cl = xor i64 %i.ck, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.cm = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.cn = add i64 %i.cl, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cq, %i.cn                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  %i.da = xor i64 %i.cu, %i.ck
  %i.db = xor i64 %i.cz, 255
  %i.dc = add i64 %i.da, %i.cw                    ; 3 uses
  %i.dd = add i64 %i.cy, %i.db                    ; 2 uses
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 13)
  %i.df = xor i64 %i.dc, %i.de                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 16)
  %i.dh = xor i64 %i.dg, %i.dd                    ; 3 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.dj = add i64 %i.df, %i.dd                    ; 3 uses
  %i.dk = add i64 %i.dh, %i.di                    ; 2 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 17)
  %i.dm = xor i64 %i.dj, %i.dl                    ; 3 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 21)
  %i.do = xor i64 %i.dn, %i.dk                    ; 3 uses
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32)
  %i.dq = add i64 %i.dm, %i.dk                    ; 3 uses
  %i.dr = add i64 %i.do, %i.dp                    ; 2 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 13)
  %i.dt = xor i64 %i.ds, %i.dq                    ; 3 uses
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 16)
  %i.dv = xor i64 %i.du, %i.dr                    ; 3 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  %i.dx = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dy = add i64 %i.dv, %i.dw                    ; 2 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 17)
  %i.ea = xor i64 %i.dz, %i.dx                    ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 21)
  %i.ec = xor i64 %i.eb, %i.dy                    ; 3 uses
  %i.ed = tail call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  %i.ee = add i64 %i.ea, %i.dy
  %i.ef = add i64 %i.ec, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 13)
  %i.eh = xor i64 %i.eg, %i.ee                    ; 3 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 16)
  %i.ej = xor i64 %i.ei, %i.ef                    ; 2 uses
  %i.ek = add i64 %i.eh, %i.ef                    ; 3 uses
  %i.el = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 17)
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 21)
  %i.en = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 32)
  %i.eo = xor i64 %i.em, %i.el
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = xor i64 %i.ep, %i.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.eq
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Cs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5.i.i.i.i.i = alloca [39 x i8], align 1  ; 4 uses
  %.sroa.518.i.i.i.i.i = alloca [39 x i8], align 1 ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 13 uses
  %i.h = alloca [64 x i8], align 8                ; 13 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !align !7, !noundef !6
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = sub nsw i64 0, %1
  %i.n = getelementptr inbounds [168 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -168
  %.val = load ptr, ptr %i.i, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %.val.i.i.i = load i64, ptr %.val, align 8, !alias.scope !746, !noalias !747, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !746, !noalias !747
  %.val2.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !747, !noalias !746, !noundef !6
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -160
  %.val3.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !747, !noalias !746
  %i.r = icmp eq i64 %.val.i.i.i, %.val2.i.i.i
  %i.s = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.b, label %_RNCINvNtCs7GWc7oqutCf_9hashbrown3map14equivalent_keyTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEBO_uE0Cs4NdVKWkRqHB_11uu_realpath.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %.val4.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !746, !noalias !747, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %.val5.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !746, !noalias !747, !noundef !6
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 -16
  %.val6.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !747, !noalias !746 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -8
  %.val7.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !747, !noalias !746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !748
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i) #25, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !748
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6.i.i.i, i64 noundef %.val7.i.i.i) #25, !noalias !748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i.i.i.i)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !749, !noalias !751, !noundef !6 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !750, !noalias !752, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b
  %.pre.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !749, !noalias !751
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !range !753, !alias.scope !749, !noalias !751, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !range !753, !alias.scope !750, !noalias !752, !noundef !6
  %i.ag = icmp eq i8 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %i.ai = load i8, ptr %i.ah, align 1, !range !753, !alias.scope !749, !noalias !751
  %i.aj = icmp eq i8 %i.ai, 2
  %or.cond.i.i.i.i.i = select i1 %i.ag, i1 %i.aj, i1 false
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.al = load i8, ptr %i.ak, align 1, !range !753, !alias.scope !750, !noalias !752
  %i.am = icmp eq i8 %i.al, 2
  %or.cond7.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.am, i1 false
  %.pre40.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !749, !noalias !751 ; 3 uses
  br i1 %or.cond7.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %._crit_edge.i.i.i.i.i
  %i.an = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre40.i.i.i.i.i, %bb.e ], [ %.pre40.i.i.i.i.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !range !754, !alias.scope !749, !noalias !751, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.g, align 8, !alias.scope !750, !noalias !752, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %.pre40.i.i.i.i.i, ptr nonnull %i.aq, i64 %i.y), !noalias !755
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ar, label %_RNvXsW_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i.i, label %bb.d

bb.f:                                             ; preds = %bb.d
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i.i.i.i, i64 39, i1 false), !noalias !751
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %i.at = load i8, ptr %i.as, align 2, !range !16, !alias.scope !749, !noalias !751, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.av = load i8, ptr %i.au, align 8, !range !753, !alias.scope !749, !noalias !751, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %i.ax = load i8, ptr %i.aw, align 1, !range !753, !alias.scope !749, !noalias !751, !noundef !6
  %i.ay = load ptr, ptr %i.g, align 8, !alias.scope !750, !noalias !752, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !range !754, !alias.scope !750, !noalias !752, !noundef !6 ; 2 uses
  %.not26.i.i.i.i.i = icmp eq i8 %i.ba, -1
  br i1 %.not26.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.425.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i.i.i.i, i64 39, i1 false), !noalias !752
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %i.bc = load i8, ptr %i.bb, align 2, !range !16, !alias.scope !750, !noalias !752, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.be = load i8, ptr %i.bd, align 8, !range !753, !alias.scope !750, !noalias !752, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.bg = load i8, ptr %i.bf, align 1, !range !753, !alias.scope !750, !noalias !752, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !756
  store ptr %i.an, ptr %i.f, align 8, !noalias !757
  %.sroa.4.0..sroa_idx27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx27.i.i.i.i.i, align 8, !noalias !757
  %.sroa.528.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.ap, ptr %.sroa.528.0..sroa_idx.i.i.i.i.i, align 8, !noalias !757
  %.sroa.6.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx29.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i.i, i64 39, i1 false), !noalias !755
  %.sroa.7.0..sroa_idx30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 %i.av, ptr %.sroa.7.0..sroa_idx30.i.i.i.i.i, align 8, !noalias !757
  %.sroa.8.0..sroa_idx31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  store i8 %i.ax, ptr %.sroa.8.0..sroa_idx31.i.i.i.i.i, align 1, !noalias !757
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  store i8 %i.at, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 2, !noalias !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !756
  store ptr %i.ay, ptr %i.e, align 8, !alias.scope !758, !noalias !759
  %.sroa.433.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.aa, ptr %.sroa.433.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !758, !noalias !759
  %.sroa.534.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.ba, ptr %.sroa.534.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !758, !noalias !759
  %.sroa.635.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.635.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i.i, i64 39, i1 false), !noalias !755
  %.sroa.736.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.be, ptr %.sroa.736.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !758, !noalias !759
  %.sroa.837.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.bg, ptr %.sroa.837.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !758, !noalias !759
  %.sroa.938.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.bc, ptr %.sroa.938.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !758, !noalias !759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !760
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #25, !noalias !761
  %i.bh = load i8, ptr %i.c, align 8, !range !15, !noalias !762, !noundef !6
  %.not8.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bh, -1
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !763
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #25, !noalias !764
  %i.bj = load i8, ptr %i.b, align 8, !range !15, !noalias !763, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bj, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !763
  %i.bk = call fastcc noundef zeroext i1 @_RNvXs1Y_NtCs2vKOLqTMYjT_3std4pathNtB6_9ComponentNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi) #26, !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !765
  br i1 %i.bk, label %bb.l, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !763
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #25, !noalias !756
  %i.bl = load i8, ptr %i.c, align 8, !range !15, !noalias !762, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bl, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.j

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !760
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !767
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #25, !noalias !756
  %i.bm = load i8, ptr %i.d, align 8, !range !15, !noalias !767, !noundef !6
  %.not4.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !767
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i1 [ %.not4.i.not.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ false, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !756
  br label %_RNvXsW_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i.i

_RNvXsW_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i.i.i.i ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !748
  br label %_RNCINvNtCs7GWc7oqutCf_9hashbrown3map14equivalent_keyTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEBO_uE0Cs4NdVKWkRqHB_11uu_realpath.exit

_RNCINvNtCs7GWc7oqutCf_9hashbrown3map14equivalent_keyTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEBO_uE0Cs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %bb.a, %_RNvXsW_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i, %_RNvXsW_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_RNvCs4NdVKWkRqHB_11uu_realpath12resolve_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef range(i8 0, 11) %2, i8 noundef range(i8 0, 3) %3, i8 noundef range(i8 0, 3) %4, ptr noalias nofree noundef readonly captures(address, read_provenance) %5, i64 %6, ptr noalias nofree noundef readonly captures(address, read_provenance) %7, i64 %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeRNtNtCs2vKOLqTMYjT_3std4path4PathECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef %4, i8 noundef %3) #25
  %i.h = load i64, ptr %i.g, align 8, !range !11, !noundef !6 ; 4 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.l = icmp ne i8 %4, 0
  %.not.i49 = icmp samesign ult i64 %1, 2
  %or.cond = select i1 %i.l, i1 true, i1 %.not.i49
  br i1 %or.cond, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs4NdVKWkRqHB_11uu_realpath.exit53.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs4NdVKWkRqHB_11uu_realpath.exit

end_hunk_1
begin_hunk_2_@_RNvCs4NdVKWkRqHB_11uu_realpath6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs4NdVKWkRqHB_11uu_realpath.exit
  %i.go = load ptr, ptr %.sroa.461022.0..sroa_idx, align 8, !alias.scope !1260, !noalias !1261, !nonnull !6, !noundef !6
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.go, i64 %i.gl ; 4 uses
  store i64 %i.ga, ptr %i.gp, align 8, !noalias !1262
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i64 ptrtoint (ptr @7 to i64), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !1262
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i.i, align 8, !noalias !1262
  %.sroa.13.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i.i, align 8, !noalias !1262
  %i.gq = add i64 %i.gl, 1
  store i64 %i.gq, ptr %.sroa.471023.0..sroa_idx, align 8, !alias.scope !1260, !noalias !1261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.b, ptr noundef nonnull align 8 dereferenceable(640) %i.a, i64 640, i1 false), !alias.scope !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.ap, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %.val.i448 = load i64, ptr %i.ab, align 8, !range !12, !alias.scope !1264, !noundef !6 ; 2 uses
  %i.gr = icmp eq i64 %.val.i448, 0
  br i1 %i.gr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs4NdVKWkRqHB_11uu_realpath.exit
  %.val1.i449 = load ptr, ptr %i.as, align 8, !alias.scope !1264, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i449, i64 noundef %.val.i448, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1264
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs4NdVKWkRqHB_11uu_realpath.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE8grow_oneCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1267
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1267
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32) #25, !noalias !1267
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !1267, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !21, !noalias !1267, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1267
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1267, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1267
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1267
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1267
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE8grow_oneCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1270
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1270
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16) #25, !noalias !1270
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !1270, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !21, !noalias !1270, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1270
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1270, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1270
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1270
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1270
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8grow_oneCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1273
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1273
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24) #25, !noalias !1273
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !1273, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !21, !noalias !1273, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1273
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1273, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1273
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1273
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1273
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !6 ; 4 uses
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE8grow_oneCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.b = load i64, ptr %0, align 8, !range !12, !alias.scope !1276, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1276, !noundef !6 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1276, !noundef !6 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE24handle_capacity_increaseCs4NdVKWkRqHB_11uu_realpath.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1276, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !1276
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !1276
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE24handle_capacity_increaseCs4NdVKWkRqHB_11uu_realpath.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1276, !nonnull !6, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !1276
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE24handle_capacity_increaseCs4NdVKWkRqHB_11uu_realpath.exit

_RNvMs2_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE24handle_capacity_increaseCs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4NdVKWkRqHB_11uu_realpath(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 33) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #25
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4NdVKWkRqHB_11uu_realpath.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4NdVKWkRqHB_11uu_realpath.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4NdVKWkRqHB_11uu_realpath.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #7 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXCs4NdVKWkRqHB_11uu_realpathNtB2_22NonEmptyOsStringParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree readonly align 8 captures(none) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp slt i64 %5, 0
  br i1 %.not.i, label %bb.p, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !10

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1305
  %i.e = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1305 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.p, label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1306
  %i.g = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !1306 ; 44 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #27, !noalias !1306
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 2, ptr %i.g, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.8.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx68, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx70, align 8
  %.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx71, align 8
  %.sroa.10.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx72, align 8
  %.sroa.1174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr null, ptr %.sroa.1174.0..sroa_idx, align 8
  %.sroa.1276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i8 -1, ptr %.sroa.1276.0..sroa_idx, align 8
  %.sroa.1377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store i8 -1, ptr %.sroa.1377.0..sroa_idx, align 4
  %.sroa.1479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i8 -1, ptr %.sroa.1479.0..sroa_idx, align 8
  %.sroa.1581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store i16 0, ptr %.sroa.1581.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.g, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx82, align 2
  %.sroa.1784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 138
  store i8 -1, ptr %.sroa.1784.0..sroa_idx, align 2
  %.sroa.1886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 142
  store i8 -1, ptr %.sroa.1886.0..sroa_idx, align 2
  %.sroa.1988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 146
  store i16 0, ptr %.sroa.1988.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i8 -1, ptr %.sroa.2189.0..sroa_idx, align 8
  %.sroa.2290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  store i8 -1, ptr %.sroa.2290.0..sroa_idx, align 4
  %.sroa.2391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i16 0, ptr %.sroa.2391.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 166
  store i8 -1, ptr %.sroa.2592.0..sroa_idx, align 2
  %.sroa.2693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 170
  store i8 -1, ptr %.sroa.2693.0..sroa_idx, align 2
  %.sroa.2794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 174
  store i16 0, ptr %.sroa.2794.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  store i8 -1, ptr %.sroa.2995.0..sroa_idx, align 4
  %.sroa.3096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store i8 -1, ptr %.sroa.3096.0..sroa_idx, align 8
  %.sroa.3197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  store i16 0, ptr %.sroa.3197.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 194
  store i8 -1, ptr %.sroa.3398.0..sroa_idx, align 2
  %.sroa.3499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 198
  store i8 -1, ptr %.sroa.3499.0..sroa_idx, align 2
  %.sroa.35100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 202
  store i16 0, ptr %.sroa.35100.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i8 -1, ptr %.sroa.37101.0..sroa_idx, align 8
  %.sroa.38102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  store i8 -1, ptr %.sroa.38102.0..sroa_idx, align 4
  %.sroa.39103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store i16 0, ptr %.sroa.39103.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 222
  store i8 -1, ptr %.sroa.41104.0..sroa_idx, align 2
  %.sroa.42105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 226
  store i8 -1, ptr %.sroa.42105.0..sroa_idx, align 2
  %.sroa.43106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 230
end_hunk_2
