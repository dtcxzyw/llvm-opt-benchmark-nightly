Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tokenizer-84cff9cecc8d20b6.lance_tokenizer.6a2dd2e881936859-cgu.0?download=true
inline.NumInlined: 783
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs97bFUy425Ar_15lance_tokenizer:bb.a

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !63
  %i.ai = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !63 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !63
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread

bb.k:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !63
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !64
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ae, i1 false), !noalias !64
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge: ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !65, !noalias !66
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge52

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !67, !noalias !68, !nonnull !3, !noundef !3 ; 5 uses
  %.val437 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val437, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.val.i.i10 = load i64, ptr %2, align 8, !noalias !69, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i11 = load i64, ptr %i.ax, align 8, !noalias !69, !noundef !3
  br label %.preheader

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.l ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.12.034 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.035 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.020.051 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.020.1.lcssa, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.050 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.049 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bw, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.048 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bu, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i243 = icmp eq i16 %.sroa.13.048, 0
  br i1 %.not.i243, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.020.145 = phi ptr [ %i.ay, %.noexc3 ], [ %.sroa.020.051, %.preheader ] ; 2 uses
  %.sroa.5.144 = phi i64 [ %i.bb, %.noexc3 ], [ %.sroa.5.050, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.145) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.145, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %i.bb = add i64 %.sroa.5.144, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ba, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge52:                                    ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge ], [ %i.au, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %i.bc = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.as, ptr %0, align 8, !alias.scope !65, !noalias !66
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !70, !noalias !71
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %i.bd, align 8, !alias.scope !72, !noalias !73
  %i.be = icmp eq i64 %i.f, 0
  br i1 %i.be, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge52
  %i.bf = mul i64 %i.f, 24                        ; 2 uses
  %i.bg = add i64 %i.bf, 24
  %i.bh = add i64 %i.bf, 39                       ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %i.bg
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = and i64 %i.bh, -16                      ; 3 uses
  %i.bk = add i64 %i.f, 17
  %i.bl = add i64 %i.bk, %i.bj                    ; 4 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  %i.bn = icmp ult i64 %i.bl, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bm)
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bp = sub nsw i64 0, %i.bj
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bp
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !74
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.048, %.preheader ], [ %i.ba, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.050, %.preheader ], [ %i.bb, %.noexc3 ] ; 2 uses
  %.sroa.020.1.lcssa = phi ptr [ %.sroa.020.051, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.br = add i16 %.sroa.13.1.lcssa, -1
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = and i16 %i.br, %.sroa.13.1.lcssa
  %i.bv = add i64 %.sroa.5.1.lcssa, %i.bt         ; 2 uses
  %i.bw = add i64 %.sroa.9.049, -1                ; 2 uses
  %i.bx = sub nsw i64 0, %i.bv
  %i.by = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -24
  %i.ca = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz), !noalias !75 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ca, %i.ao            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !76
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !77

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i13, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cd, %._crit_edge ], [ %i.cu, %.lr.ph.i ]
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cf
  %i.ch = and i64 %i.cg, %i.ao                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !3
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.n, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i12 = load <16 x i8>, ptr %i.ar, align 16
  %i.cl = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cm, 0
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cm, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cp = phi i64 [ %i.cq, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cq = add i64 %i.cp, 16                       ; 2 uses
  %i.cr = add i64 %i.cq, %.sroa.0.010.i
  %.sroa.0.0.i13 = and i64 %i.cr, %i.ao           ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i13
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !76
  %i.ct = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !78

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.co, %bb.n ], [ %i.ch, %._crit_edge.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i5.i
  %i.cw = lshr i64 %i.ca, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8           ; 2 uses
  %i.cy = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cz = and i64 %i.cy, %i.ao
  store i8 %i.cx, ptr %i.cv, align 1
  %i.da = getelementptr i8, ptr %i.ar, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 16
  store i8 %i.cx, ptr %i.db, align 1
  %.neg.i.i = mul i64 %i.bv, -24
  %i.dc = getelementptr i8, ptr %i.au, i64 %.neg.i.i
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -24
  %i.de = getelementptr i8, ptr %i.ar, i64 %.neg62.i.i
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 1 dereferenceable(24) %i.dd, i64 24, i1 false)
  %i.dg = icmp eq i64 %i.bw, 0
  br i1 %i.dg, label %._crit_edge52, label %.preheader

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %.val14.i = load ptr, ptr %0, align 8, !alias.scope !79 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dh = lshr i64 %i.h, 4
  %i.di = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.di, 0
  %i.dj = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dh, %i.dj ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dk = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dt, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dl, align 16, !noalias !79
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dm = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dn = or <2 x i64> %i.dm, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dn, ptr %i.dl, align 16, !noalias !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.32.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.do = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %.val14.i, i64 %.32.i, i1 false), !noalias !79
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dp, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dt, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dq, align 16, !noalias !79
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dr = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !noalias !79
  %i.dt = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dv, align 16, !noalias !79
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dw = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dx = or <2 x i64> %i.dw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dx, ptr %i.dv, align 16, !noalias !79
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %bb.w, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.dy, %bb.w ] ; 7 uses
  %i.dy = add nuw i64 %.sroa.0.06.i, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.06.i ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !79, !noundef !3
  %.not.i15 = icmp eq i8 %i.ea, -128
  br i1 %.not.i15, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %.neg.i = mul i64 %i.dy, -24
  %i.eb = getelementptr inbounds i8, ptr %.val14.i, i64 %.neg.i ; 5 uses
  %i.ec = sub nsw i64 0, %.sroa.0.06.i
  %i.ed = getelementptr inbounds [24 x i8], ptr %.val14.i, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  br label %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.r
  %i.eh = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee), !noalias !80 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.eh, %i.f           ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !81
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !77

._crit_edge.i16.i:                                ; preds = %.lr.ph.i17.i, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i19, %.lr.ph.i17.i ]
  %.lcssa.i.i = phi i16 [ %i.ek, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.fb, %.lr.ph.i17.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.0.0.lcssa.i.i, %i.em
  %i.eo = and i64 %i.en, %i.f                     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !79, !noundef !3
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.s, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !4

bb.s:                                             ; preds = %._crit_edge.i16.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val14.i, align 16, !noalias !79
  %i.es = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.et, 0
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i17.i:                                     ; preds = %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i17.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i19, %.lr.ph.i17.i ], [ %.sroa.0.07.i.i, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i17.i ], [ 0, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.010.i.i
  %.sroa.0.0.i.i19 = and i64 %i.ey, %i.f          ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.0.i.i19
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !81
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !78

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i16.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ev, %bb.s ], [ %i.eo, %._crit_edge.i16.i ] ; 4 uses
  %i.fc = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fd = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fe = xor i64 %i.fd, %i.fc
  %.unshifted.i = and i64 %i.fe, %i.f
  %i.ff = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ff, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg12.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.fg = getelementptr i8, ptr %.val14.i, i64 %.neg12.i ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -24    ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !79, !noundef !3
  %i.fk = lshr i64 %i.eh, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fn = and i64 %i.fm, %i.f
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !79
  %i.fo = getelementptr i8, ptr %.val14.i, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fl, ptr %i.fp, align 1, !noalias !79
  %i.fq = icmp eq i8 %i.fj, -1
  br i1 %i.fq, label %bb.v, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.eb, align 1, !alias.scope !82, !noalias !84
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.fh, align 1, !alias.scope !83, !noalias !85
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.eb, align 1, !alias.scope !82, !noalias !84
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.fh, align 1, !alias.scope !83, !noalias !85
  %i.fr = getelementptr i8, ptr %i.fg, i64 -16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.ef, align 1, !alias.scope !86, !noalias !88
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.fr, align 1, !alias.scope !87, !noalias !89
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.ef, align 1, !alias.scope !86, !noalias !88
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.fr, align 1, !alias.scope !87, !noalias !89
  %i.fs = getelementptr i8, ptr %i.fg, i64 -8     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.eg, align 1, !alias.scope !90, !noalias !92
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.fs, align 1, !alias.scope !91, !noalias !93
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.eg, align 1, !alias.scope !90, !noalias !92
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.fs, align 1, !alias.scope !91, !noalias !93
  br label %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.u:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ft = lshr i64 %i.eh, 57
  %i.fu = trunc nuw nsw i64 %i.ft to i8           ; 2 uses
  %i.fv = add i64 %.sroa.0.06.i, -16
  %i.fw = and i64 %i.fv, %i.f
  store i8 %i.fu, ptr %i.dz, align 1, !noalias !79
  %i.fx = getelementptr i8, ptr %.val14.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fu, ptr %i.fy, align 1, !noalias !79
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fz = add i64 %.sroa.0.06.i, -16
  %i.ga = and i64 %i.fz, %i.f
  store i8 -1, ptr %i.dz, align 1, !noalias !79
  %i.gb = getelementptr i8, ptr %.val14.i, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 -1, ptr %i.gc, align 1, !noalias !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fh, ptr noundef nonnull align 1 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !79
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.q
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.q

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.w, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gd = phi i64 [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.sroa.03.0.i, %bb.w ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gf = sub i64 %i.gd, %i.b
  store i64 %i.gf, ptr %i.ge, align 8, !alias.scope !79
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.m, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge52, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread, %bb.c, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.034, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread ], [ undef, %._crit_edge52 ], [ undef, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %bb.m ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.035, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread ], [ -1, %._crit_edge52 ], [ -1, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ -1, %bb.m ]
  %i.gg = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gh = insertvalue { i64, i64 } %i.gg, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gh
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !96 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !96, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !96
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1j_.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit
  %i.j = mul nuw i64 %.val2, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1j_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1j_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtBG_6string6StringEEECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !121, !noundef !3 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !123, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !123, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !124
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.06.1.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !125
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !123 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i
  %i.z = getelementptr i8, ptr %i.v, i64 -16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !123, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !123
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i, %bb.b
  %i.ab = mul i64 %i.c, 24
  %i.ac = icmp slt i64 %i.c, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.c, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.a, align 8, !alias.scope !121, !nonnull !3, !noundef !3
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !121
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfUzTxybQDTm_7tinyvec7tinyvec7TinyVecAThcEj4_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !8, !noundef !3
  %1 = icmp eq i32 %i.a, 0
  br i1 %1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !147, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !149, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !149, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !150
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !151
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !149 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !149, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !149
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !147, !nonnull !3, !noundef !3
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !147
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizer12RawTokenizerEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer3icu14IcuTokenStreamEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !156, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !156, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !157, !noalias !156 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !157, !noalias !156, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !158
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = icmp eq i64 %i.e, %.val1.i
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !7, !alias.scope !156, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i
  %i.j = mul nuw i64 %.val2.i, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !156
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0INtNtB1b_3vec3VecBZ_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.c

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %.sroa.0.0.i12, 3        ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !163
  %i.f = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #29, !noalias !163 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #30
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2b_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer:.lr.ph.i
  %or.cond.i = select i1 %i.dx, i1 true, i1 %i.dy, !prof !9
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1g_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2i_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, !prof !9

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #30, !noalias !172
  unreachable

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1g_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2i_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2o_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.val9.i = load i8, ptr %.sroa.0.04, align 4, !noundef !3 ; 3 uses
  %.val10.i = load i8, ptr %.pn3, align 4, !noundef !3
  %i.b = icmp ult i8 %.val9.i, %.val10.i
  br i1 %i.b, label %bb.a, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.a:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.pn3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !range !10, !noundef !3
  %i.e = load i64, ptr %.pn3, align 4
  store i64 %i.e, ptr %.sroa.0.04, align 4
  %i.f = icmp eq ptr %.pn3, %0
  br i1 %i.f, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  %i.g = load i64, ptr %i.i, align 4
  store i64 %i.g, ptr %.sroa.0.0.i1, align 4
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8 ; 4 uses
  %.val8.i = load i8, ptr %i.i, align 4, !noundef !3
  %i.j = icmp ult i8 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ]
  %.sroa.0.sroa.56.0.insert.ext.i = zext nneg i32 %i.d to i64
  %.sroa.0.sroa.56.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.56.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.val9.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.56.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !181
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1X_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i8, ptr %i.q, align 4, !alias.scope !204, !noalias !205, !noundef !3 ; 3 uses
  %.val11.i = load i8, ptr %i.o, align 4, !alias.scope !204, !noalias !205, !noundef !3
  %i.r = icmp ult i8 %.val10.i, %.val11.i         ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i8, ptr %i.s, align 4, !alias.scope !204, !noalias !205, !noundef !3 ; 2 uses
  %i.t = icmp ult i8 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i8 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i8, ptr %i.v, align 4, !alias.scope !204, !noalias !205, !noundef !3 ; 2 uses
  %i.w = icmp ult i8 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !186
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i ], [ %i.bh, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ao, i64 %i.ac ; 3 uses
  %i.af = load i8, ptr %i.ad, align 4, !alias.scope !206, !noalias !207, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !10, !alias.scope !206, !noalias !207, !noundef !3
  %i.ai = load i64, ptr %i.ae, align 4, !alias.scope !208, !noalias !209
  store i64 %i.ai, ptr %i.ad, align 4, !alias.scope !206, !noalias !207
  store i8 %i.af, ptr %i.ae, align 4, !alias.scope !208, !noalias !209
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !alias.scope !208, !noalias !209
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i.epil.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i.epil.preheader ]
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.q:                                             ; preds = %bb.n
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210), !noalias !205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211), !noalias !205
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread94, %bb.q
  %i.an = phi i64 [ %i.am, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB24_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i.thread94 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i.epil.preheader, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i
  %unroll_iter = and i64 %i.an, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i ]
  %i.aq = xor i64 %.sroa.0.016.i.i, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.at = load i8, ptr %i.ar, align 4, !alias.scope !206, !noalias !207, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !10, !alias.scope !206, !noalias !207, !noundef !3
  %i.aw = load i64, ptr %i.as, align 4, !alias.scope !208, !noalias !209
  store i64 %i.aw, ptr %i.ar, align 4, !alias.scope !206, !noalias !207
  store i8 %i.at, ptr %i.as, align 4, !alias.scope !208, !noalias !209
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.av, ptr %i.ax, align 4, !alias.scope !208, !noalias !209
  %i.ay = xor i64 %.sroa.0.016.i.i, -2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay ; 3 uses
  %i.bc = load i8, ptr %i.ba, align 4, !alias.scope !206, !noalias !207, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !range !10, !alias.scope !206, !noalias !207, !noundef !3
  %i.bf = load i64, ptr %i.bb, align 4, !alias.scope !208, !noalias !209
  store i64 %i.bf, ptr %i.ba, align 4, !alias.scope !206, !noalias !207
  store i8 %i.bc, ptr %i.bb, align 4, !alias.scope !208, !noalias !209
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.be, ptr %i.bg, align 4, !alias.scope !208, !noalias !209
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.0.i34 = phi i64 [ %i.al, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.br, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !3 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.161 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.161
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.cc, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cn, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !192
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cq, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cr, ptr %i.cc
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !214
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.critedge.i ]
  %i.cv = phi ptr [ %i.dd, %.preheader.i ], [ %i.cr, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i8, ptr %i.cx, align 4, !alias.scope !213, !noalias !215, !noundef !3
  %.val10.i.i = load i8, ptr %i.cw, align 4, !alias.scope !212, !noalias !216, !noundef !3
  %i.cz = icmp ult i8 %.val.i.i, %.val10.i.i      ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cw, ptr %i.cx
  %i.da = load i64, ptr %..i.i, align 4, !alias.scope !214, !noalias !217
  store i64 %i.da, ptr %i.cy, align 4, !alias.scope !212, !noalias !216
  %i.db = xor i1 %i.cz, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = zext i1 %i.cz to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de ; 3 uses
  %i.dg = icmp eq ptr %i.dd, %i.cc
  %i.dh = icmp eq ptr %i.df, %2
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.di = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %i.dj = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.02.i.i, align 4, !alias.scope !212, !noalias !218, !noundef !3
  %.val.i19.i = load i8, ptr %i.dj, align 4, !alias.scope !213, !noalias !219, !noundef !3
  %i.dk = icmp ult i8 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dl = xor i1 %i.dk, true
  %spec.select.i.i = select i1 %i.dk, ptr %.sroa.0.02.i.i, ptr %i.dj
  %i.dm = load i64, ptr %spec.select.i.i, align 4, !alias.scope !214, !noalias !220
  store i64 %i.dm, ptr %i.di, align 4, !alias.scope !212, !noalias !218
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dk to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.ct
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !214, !noalias !221
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.dx = shl nuw nsw i64 %i.ca, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by
  %i.ea = or i64 %i.bz, 1
  %i.eb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.dz, i64 noundef range(i64 0, 1152921504606846976) %i.bz, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !192
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.br, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %6, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = or i64 %1, 1
  %i.ek = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ej, i1 true)
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 1
  %i.en = xor i32 %i.em, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.en, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !192
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph128 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kn, %.outer ] ; 22 uses
  %.sroa.16.0.ph127 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.jy, %.outer ] ; 2 uses
  %.sroa.025.0.ph126 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.et, %.outer ] ; 2 uses
  %.sroa.028.0.ph125 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph128 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph125, null
  %i.e = icmp eq i32 %.sroa.025.0.ph126, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph298

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit
  %i.f = icmp eq i32 %i.et, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph298

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph128, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit ], [ %0, %bb.a ], [ %i.kn, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit ], [ %1, %bb.a ], [ %i.jy, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2u_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2b_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr noundef nonnull align 4 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2b_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 8
  %.val8.i.i = load i8, ptr %i.q, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val9.i.i = load i8, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.r = icmp ult i8 %.val8.i.i, %.val9.i.i       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 16
  %.val6.i.i = load i8, ptr %i.s, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val7.i.i = load i8, ptr %i.t, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.u = icmp ult i8 %.val6.i.i, %.val7.i.i       ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.ac ; 3 uses
  %.val4.i.i = load i8, ptr %i.ab, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val5.i.i = load i8, ptr %i.w, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.ae = icmp ult i8 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i8, ptr %i.ad, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val3.i.i = load i8, ptr %i.z, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.af = icmp ult i8 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !3
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !3
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !3
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !3 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !3
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !3 ; 3 uses
  %.val.i.i = load i8, ptr %i.al, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val1.i.i = load i8, ptr %i.aj, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.am = icmp ult i8 %.val.i.i, %.val1.i.i       ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !3
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !3
  %i.ap = load i64, ptr %i.ag, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ap, ptr %2, align 4, !alias.scope !281, !noalias !280
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ar, ptr %i.aq, align 4, !alias.scope !281, !noalias !280
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !280, !noalias !281
  store i64 %i.at, ptr %i.as, align 4, !alias.scope !281, !noalias !280
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 4, !alias.scope !280, !noalias !281
  store i64 %i.av, ptr %i.au, align 4, !alias.scope !281, !noalias !280
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val8.i30.i = load i8, ptr %i.ay, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val9.i31.i = load i8, ptr %i.aw, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.az = icmp ult i8 %.val8.i30.i, %.val9.i31.i  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val6.i32.i = load i8, ptr %i.ba, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val7.i33.i = load i8, ptr %i.bb, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bc = icmp ult i8 %.val6.i32.i, %.val7.i33.i  ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val4.i34.i = load i8, ptr %i.bj, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val5.i35.i = load i8, ptr %i.be, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bm = icmp ult i8 %.val4.i34.i, %.val5.i35.i  ; 3 uses
  %.val2.i36.i = load i8, ptr %i.bl, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val3.i37.i = load i8, ptr %i.bh, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bn = icmp ult i8 %.val2.i36.i, %.val3.i37.i  ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !3
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !3
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !3
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !3 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !3
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !3 ; 3 uses
  %.val.i38.i = load i8, ptr %i.bt, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val1.i39.i = load i8, ptr %i.br, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bu = icmp ult i8 %.val.i38.i, %.val1.i39.i   ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !3
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !3
  %i.bx = load i64, ptr %i.bo, align 4, !alias.scope !280, !noalias !281
  store i64 %i.bx, ptr %i.ax, align 4, !alias.scope !281, !noalias !280
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 4, !alias.scope !280, !noalias !281
  store i64 %i.bz, ptr %i.by, align 4, !alias.scope !281, !noalias !280
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 4, !alias.scope !280, !noalias !281
  store i64 %i.cb, ptr %i.ca, align 4, !alias.scope !281, !noalias !280
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 4, !alias.scope !280, !noalias !281
  store i64 %i.cd, ptr %i.cc, align 4, !alias.scope !281, !noalias !280
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ce, ptr %2, align 4, !alias.scope !281, !noalias !280
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ch, ptr %i.cg, align 4, !alias.scope !281, !noalias !280
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.ci = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.j ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cj, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cl = getelementptr [8 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cm = icmp samesign ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cz, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.05.08.1.i
  %.idx328 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx328 ; 3 uses
  %i.cp = load i64, ptr %i.cn, align 4, !alias.scope !280, !noalias !281 ; 3 uses
  store i64 %i.cp, ptr %i.co, align 4, !alias.scope !281, !noalias !280
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 3 uses
  %i.cr = trunc i64 %i.cp to i8                   ; 2 uses
  %.val10.i.1.i = load i8, ptr %i.cq, align 4, !alias.scope !281, !noalias !280, !noundef !3
  %i.cs = icmp ugt i8 %.val10.i.1.i, %i.cr
  br i1 %i.cs, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.ct = load i64, ptr %i.cq, align 4, !alias.scope !281, !noalias !280
  store i64 %i.ct, ptr %i.co, align 4, !alias.scope !281, !noalias !280
  %i.cu = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cu, label %._crit_edge309, label %.lr.ph308

.preheader:                                       ; preds = %.lr.ph308
  %i.cv = load i64, ptr %i.cx, align 4, !alias.scope !281, !noalias !280
  store i64 %i.cv, ptr %.sroa.0.0.i41.1.i307, align 4, !alias.scope !281, !noalias !280
  %i.cw = icmp eq ptr %i.cx, %i.cl
  br i1 %i.cw, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i307 = phi ptr [ %i.cx, %.preheader ], [ %i.cq, %.preheader.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i307, i64 -8 ; 4 uses
  %.val8.i42.1.i = load i8, ptr %i.cx, align 4, !alias.scope !281, !noalias !280, !noundef !3
  %i.cy = icmp ugt i8 %.val8.i42.1.i, %i.cr
  br i1 %i.cy, label %.preheader, label %._crit_edge309

._crit_edge309:                                   ; preds = %.preheader, %.lr.ph308, %.preheader.preheader
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cl, %.preheader.preheader ], [ %i.cl, %.preheader ], [ %.sroa.0.0.i41.1.i307, %.lr.ph308 ]
  %.sroa.0.sroa.0.0.insert.insert.i.1.i = and i64 %i.cp, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !281, !noalias !282
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.1.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.1.i: ; preds = %._crit_edge309, %.lr.ph.1.i
  %i.cz = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cz, %i.ci
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.da = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.cl, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.de = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.df = getelementptr i8, ptr %i.ds, i64 8
  %7 = and i64 %.sroa.16.0.lcssa, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.do, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa119, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dg, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.cl, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %i.dd, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.dc, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.db, %.loopexit.1.i ] ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i8, ptr %.sroa.011.07.i.i, align 4, !alias.scope !284, !noalias !280, !noundef !3
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.08.i.i, align 4, !alias.scope !284, !noalias !280, !noundef !3
  %i.dh = icmp ult i8 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.dh, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.di = xor i1 %i.dh, true
  %i.dj = load i64, ptr %..i23.i.i, align 4, !alias.scope !284, !noalias !285
  store i64 %i.dj, ptr %.sroa.0.010.i.i, align 4, !alias.scope !280, !noalias !286
  %i.dk = zext i1 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.dk ; 4 uses
  %i.dm = zext i1 %i.di to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.dm ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i8, ptr %.sroa.017.05.i.i, align 4, !alias.scope !284, !noalias !280, !noundef !3
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.06.i.i, align 4, !alias.scope !284, !noalias !280, !noundef !3
  %i.dp = icmp ult i8 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dp, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dq = xor i1 %i.dp, true
  %i.dr = load i64, ptr %..i.i.i, align 4, !alias.scope !284, !noalias !287
  store i64 %i.dr, ptr %.sroa.019.04.i.i, align 4, !alias.scope !280, !noalias !288
  %.neg.i.i.i = sext i1 %i.dq to i64
  %i.ds = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dp to i64
  %i.dt = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.dg, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dv = icmp ult ptr %i.dn, %i.de               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dv, ptr %i.dn, ptr %i.dl
  %i.dw = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !284, !noalias !280
  store i64 %i.dw, ptr %i.do, align 4, !alias.scope !280, !noalias !284
  %i.dx = zext i1 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dx
  %i.dz = xor i1 %i.dv, true
  %i.ea = zext i1 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ea
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dl, %._crit_edge.i.i ], [ %i.eb, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dn, %._crit_edge.i.i ], [ %i.dy, %bb.k ]
  %i.ec = icmp ne ptr %.sroa.06.1.i.i, %i.de
  %i.ed = icmp ne ptr %.sroa.011.1.i.i, %i.df
  %or.cond.i.i = select i1 %i.ec, i1 true, i1 %i.ed, !prof !9
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2u_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, !prof !9

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #30
          to label %.noexc.i unwind label %bb.n, !noalias !289

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr nonnull align 4 %2, i64 %i.ef, i1 false), !alias.scope !289, !noalias !290
  resume { ptr, i32 } %i.ee

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i
  %.sroa.05.08.i = phi i64 [ %i.es, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ei = load i64, ptr %i.eg, align 4, !alias.scope !280, !noalias !281 ; 3 uses
  store i64 %i.ei, ptr %i.eh, align 4, !alias.scope !281, !noalias !280
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 3 uses
  %i.ek = trunc i64 %i.ei to i8                   ; 2 uses
  %.val10.i.i = load i8, ptr %i.ej, align 4, !alias.scope !281, !noalias !280, !noundef !3
  %i.el = icmp ugt i8 %.val10.i.i, %i.ek
  br i1 %i.el, label %.preheader85.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i

.preheader85.preheader:                           ; preds = %.lr.ph.i
  %i.em = load i64, ptr %i.ej, align 4, !alias.scope !281, !noalias !280
  store i64 %i.em, ptr %i.eh, align 4, !alias.scope !281, !noalias !280
  %i.en = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.en, label %._crit_edge304, label %.lr.ph303

.preheader85:                                     ; preds = %.lr.ph303
  %i.eo = load i64, ptr %i.eq, align 4, !alias.scope !281, !noalias !280
  store i64 %i.eo, ptr %.sroa.0.0.i41.i302, align 4, !alias.scope !281, !noalias !280
  %i.ep = icmp eq ptr %i.eq, %2
  br i1 %i.ep, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader85.preheader, %.preheader85
  %.sroa.0.0.i41.i302 = phi ptr [ %i.eq, %.preheader85 ], [ %i.ej, %.preheader85.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i302, i64 -8 ; 4 uses
  %.val8.i42.i = load i8, ptr %i.eq, align 4, !alias.scope !281, !noalias !280, !noundef !3
  %i.er = icmp ugt i8 %.val8.i42.i, %i.ek
  br i1 %i.er, label %.preheader85, label %._crit_edge304

._crit_edge304:                                   ; preds = %.preheader85, %.lr.ph303, %.preheader85.preheader
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %.preheader85.preheader ], [ %2, %.preheader85 ], [ %.sroa.0.0.i41.i302, %.lr.ph303 ]
  %.sroa.0.sroa.0.0.insert.insert.i.i = and i64 %i.ei, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %.sroa.0.0.i41.lcssa.i, align 4, !alias.scope !281, !noalias !282
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.es = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.j
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0121.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1X_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph128, i64 noundef %.sroa.16.0121.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2u_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

.lr.ph298:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0120297 = phi i32 [ %i.et, %bb.b ], [ %.sroa.025.0.ph126, %.lr.ph ]
  %.sroa.16.0121296 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ] ; 19 uses
  %i.et = add i32 %.sroa.025.0120297, -1          ; 4 uses
  %i.eu = lshr i64 %.sroa.16.0121296, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.eu, 5
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.eu, 56
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx2.i ; 3 uses
  %i.ex = icmp samesign ult i64 %.sroa.16.0121296, 64
  br i1 %i.ex, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph298
  %i.ey = call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB26_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph128, ptr noundef readonly %i.ev, ptr noundef readonly %i.ew, i64 noundef %i.eu)
  br label %bb.p

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %.lr.ph298
  %.val6.i = load i8, ptr %.sroa.0.0.ph128, align 4, !alias.scope !291, !noundef !3 ; 2 uses
  %.val7.i = load i8, ptr %i.ev, align 4, !alias.scope !291, !noundef !3 ; 2 uses
  %i.ez = icmp ult i8 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i8, ptr %i.ew, align 4, !alias.scope !291, !noundef !3 ; 2 uses
  %i.fa = icmp ult i8 %.val6.i, %.val5.i
  %i.fb = xor i1 %i.ez, %i.fa
  %i.fc = icmp ult i8 %.val7.i, %.val5.i
  %i.fd = xor i1 %i.ez, %i.fc
  %..i.i = select i1 %i.fd, ptr %i.ew, ptr %i.ev
  %.sroa.0.0.i.i = select i1 %i.fb, ptr %.sroa.0.0.ph128, ptr %..i.i
  br label %bb.p

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2u_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i ], [ %i.ey, %bb.o ]
  %i.fe = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ff = sub nuw i64 %i.fe, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.ff, 3        ; 3 uses
  %i.fg = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0121296
  call void @llvm.assume(i1 %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.ff ; 4 uses
  %i.fi = load i8, ptr %i.fh, align 4             ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  store i8 %i.fi, ptr %i.a, align 4
  store i32 %i.fk, ptr %i.c, align 4
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load i8, ptr %.sroa.028.0.ph125, align 4, !noundef !3
  %i.fl = icmp ult i8 %.sroa.028.0.val, %i.fi
  br i1 %i.fl, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0121296
  br i1 %.not83, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.fm = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0121296 ; 3 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.43.0.i = phi ptr [ %i.fm, %bb.s ], [ %i.he, %bb.v ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.s ], [ %.sroa.27.2.lcssa.i, %bb.v ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.s ], [ %i.hh, %bb.v ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.s ], [ %.sroa.16.0121296, %bb.v ] ; 3 uses
  %i.fn = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.fn ; 2 uses
  %i.fp = icmp ult ptr %.sroa.9.0.i, %i.fo
  br i1 %i.fp, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.u, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gr, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.u ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.gq, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.u ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gm, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.u ] ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvNtCs97bFUy425Ar_15lance_tokenizer20ascii_folding_filter8to_ascii:bb.a
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.10.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge85
  %.sroa.0.0133 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %.backedge85 ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0133, i64 1 ; 3 uses
  %i.l = load i8, ptr %.sroa.0.0133, align 1, !noalias !825, !noundef !3 ; 5 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %.thread, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i: ; preds = %bb.b
  %i.n = and i8 %i.l, 31
  %i.o = zext nneg i8 %i.n to i32                 ; 3 uses
  %i.p = icmp ne ptr %i.k, %i.g
  call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0133, i64 2 ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !noalias !825, !noundef !3
  %i.s = shl nuw nsw i32 %i.o, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = icmp samesign ugt i8 %i.l, -33
  br i1 %i.w, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.x = zext nneg i8 %i.l to i32
  br label %bb.e

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i
  %i.y = icmp ne ptr %i.q, %i.g
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0133, i64 3 ; 3 uses
  %i.aa = load i8, ptr %i.q, align 1, !noalias !825, !noundef !3
  %i.ab = shl nuw nsw i32 %i.u, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 2 uses
  %i.af = shl nuw nsw i32 %i.o, 12
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = icmp samesign ugt i8 %i.l, -17
  br i1 %i.ah, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i, label %bb.c

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i
  %i.ai = icmp ne ptr %i.z, %i.g
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0133, i64 4
  %i.ak = load i8, ptr %i.z, align 1, !noalias !825, !noundef !3
  %i.al = shl nuw nsw i32 %i.o, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ae, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.q, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i ], [ %i.z, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i ], [ %i.aj, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i ] ; 4 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.v, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i ], [ %i.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i ], [ %i.ar, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i ] ; 11 uses
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.at, label %bb.e, label %bb.d

._crit_edge:                                      ; preds = %.backedge85, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit
  ret void

bb.d:                                             ; preds = %bb.c
  %i.au = call fastcc { ptr, i64 } @_RNvNtCs97bFUy425Ar_15lance_tokenizer20ascii_folding_filter9fold_char(i32 noundef %.sroa.4.0.i.ph) ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.i, label %bb.g

bb.e:                                             ; preds = %bb.c, %.thread
  %.sroa.4.0.i.ph72 = phi i32 [ %i.x, %.thread ], [ %.sroa.4.0.i.ph, %bb.c ]
  %.sroa.0.1.ph71 = phi ptr [ %i.k, %.thread ], [ %.sroa.0.1.ph, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.aw = load i64, ptr %i.c, align 8, !alias.scope !826, !noundef !3 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  %i.ay = load i64, ptr %2, align 8, !range !7, !alias.scope !827, !noundef !3
  %i.az = icmp eq i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.f, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit, !prof !4

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.aw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.e
  %i.ba = load ptr, ptr %i.h, align 8, !alias.scope !826, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  %i.bc = trunc nuw nsw i32 %.sroa.4.0.i.ph72 to i8
  store i8 %i.bc, ptr %i.bb, align 1, !noalias !826
  %i.bd = add nuw i64 %i.aw, 1
  br label %.backedge85.sink.split

bb.g:                                             ; preds = %bb.d
  %i.be = extractvalue { ptr, i64 } %i.au, 1      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.bf = load i64, ptr %i.c, align 8, !alias.scope !829, !noundef !3 ; 5 uses
  %i.bg = load i64, ptr %2, align 8, !range !7, !alias.scope !829, !noundef !3
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = icmp ugt i64 %i.be, %i.bh
  br i1 %i.bi, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i21, !prof !4

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i: ; preds = %bb.g
  call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bf, i64 noundef %i.be, i64 noundef 1, i64 noundef 1)
  %i.bj = load i64, ptr %i.c, align 8, !alias.scope !828, !noundef !3 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  br label %bb.h

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i21: ; preds = %bb.g
  %i.bl = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bl)
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i21, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i
  %i.bm = phi i64 [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i ], [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i21 ] ; 2 uses
  %i.bn = load ptr, ptr %i.h, align 8, !alias.scope !828, !nonnull !3, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.av, i64 %i.be, i1 false), !noalias !828
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i21, %bb.h
  %i.bp = phi i64 [ %i.bm, %bb.h ], [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i21 ]
  %i.bq = add i64 %i.bp, %i.be
  br label %.backedge85.sink.split

bb.i:                                             ; preds = %bb.d
  %i.br = load i64, ptr %i.c, align 8, !noundef !3 ; 7 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.10.3..sroa_idx, i8 0, i64 20, i1 false), !alias.scope !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 8
  store i16 0, ptr %.sroa.2.0..sroa_idx, align 4
  store i8 0, ptr %.sroa.358.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.459.0..sroa_idx, align 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.660.0..sroa_idx, align 4
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.862.0..sroa_idx, align 4
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10, i64 23, i1 false)
  store i32 %.sroa.4.0.i.ph, ptr %.sroa.11.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.12.0..sroa_idx, align 4
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.sink.split, %bb.i
  %.ph265 = phi i64 [ %.sink234, %.backedge.sink.split ], [ %i.br, %bb.i ] ; 12 uses
  br label %.backedge

.backedge85.sink.split:                           ; preds = %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46
  %.sink = phi i64 [ %i.hl, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46 ], [ %i.bq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit ], [ %i.bd, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit ]
  %.sroa.0.0.be.ph = phi ptr [ %.sroa.0.1.ph, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46 ], [ %.sroa.0.1.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit ], [ %.sroa.0.1.ph71, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit ]
  store i64 %.sink, ptr %i.c, align 8
  br label %.backedge85

.backedge85:                                      ; preds = %.backedge85.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42
  %.sroa.0.0.be = phi ptr [ %.sroa.0.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42 ], [ %.sroa.0.0.be.ph, %.backedge85.sink.split ] ; 2 uses
  %i.bt = icmp eq ptr %.sroa.0.0.be, %i.g
  br i1 %i.bt, label %._crit_edge, label %bb.b

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.bu = load i64, ptr %i.i, align 8, !alias.scope !831, !noundef !3 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.backedge, %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.bw = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !range !832, !alias.scope !833, !noundef !3 ; 12 uses
  %.not.i.i = icmp eq i32 %i.bw, -2
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.thread.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %.lr.ph.i
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !834
  %.not.i23 = icmp eq i32 %i.bw, -1
  br i1 %.not.i23, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.bx = load i8, ptr %.sroa.12.0..sroa_idx, align 4, !range !15, !alias.scope !831, !noundef !3
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = icmp samesign ult i32 %i.bw, 128        ; 2 uses
  br i1 %i.by, label %bb.w, label %bb.ac

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.i, %.lr.ph.i
  %i.ca = load i32, ptr %i.b, align 8, !range !8, !noundef !3
  %i.cb = trunc nuw i32 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.thread.i
  %i.cc = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !831, !noundef !3 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 1152921504606846976
  call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %bb.av, label %bb.l

.thread.i:                                        ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoItercEEINtB5_8FuseImplBY_E4nextCs97bFUy425Ar_15lance_tokenizer.exit.thread.i
  %i.cf = load i16, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !831, !noundef !3 ; 3 uses
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !835, !nonnull !3, !noundef !3
  br label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i

bb.m:                                             ; preds = %.thread.i
  %i.ci = zext i16 %i.cf to i64                   ; 2 uses
  %i.cj = icmp ult i16 %i.cf, 5
  br i1 %i.cj, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i, label %.invoke230, !prof !17

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.i8.i = phi i64 [ %i.cc, %bb.l ], [ %i.ci, %bb.m ] ; 4 uses
  %.sroa.0.0.i9.i = phi ptr [ %i.ch, %bb.l ], [ %.sroa.358.0..sroa_idx, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !836
  %i.ck = icmp samesign ult i64 %.sroa.3.0.i8.i, 2
  br i1 %i.ck, label %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %bb.n, !prof !6

bb.n:                                             ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.cl = icmp samesign ult i64 %.sroa.3.0.i8.i, 21
  br i1 %i.cl, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0INtNtB1b_3vec3VecBZ_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %.sroa.0.0.i9.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.3.0.i8.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.p:                                             ; preds = %bb.n
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2o_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %.sroa.0.0.i9.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.3.0.i8.i)
  br label %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit.i

_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %bb.o, %bb.p, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !836
  %i.cm = load i32, ptr %i.b, align 8, !range !8, !alias.scope !831, !noundef !3 ; 2 uses
  %i.cn = trunc nuw i32 %i.cm to i1
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.co = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !831, !noundef !3 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 1152921504606846976
  call void @llvm.assume(i1 %i.cp)
  br label %bb.s

bb.r:                                             ; preds = %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.cq = load i16, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !831, !noundef !3
  %i.cr = zext i16 %i.cq to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.04.0.i = phi i64 [ %i.co, %bb.q ], [ %i.cr, %bb.r ] ; 2 uses
  store i64 %.sroa.04.0.i, ptr %i.i, align 8, !alias.scope !831
  br label %bb.t

.loopexit.i:                                      ; preds = %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, %.backedge
  %i.cs = phi i64 [ %i.bu, %.backedge ], [ %i.er, %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i ]
  %.pre.i = load i32, ptr %i.b, align 8, !range !8, !alias.scope !837, !noalias !838
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i, %bb.s
  %i.ct = phi i64 [ %i.cs, %.loopexit.i ], [ %.sroa.04.0.i, %bb.s ] ; 3 uses
  %i.cu = phi i32 [ %.pre.i, %.loopexit.i ], [ %i.cm, %bb.s ] ; 2 uses
  %i.cv = load i64, ptr %i.j, align 8, !alias.scope !831, !noundef !3 ; 4 uses
  %i.cw = trunc nuw i32 %i.cu to i1               ; 2 uses
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !837, !noalias !838, !nonnull !3, !noundef !3
  %i.cy = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !837, !noalias !838, !noundef !3
  br label %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cz = load i16, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !839, !noalias !838, !noundef !3 ; 2 uses
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = icmp ult i16 %i.cz, 5
  br i1 %i.db, label %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i, label %.invoke230, !prof !17

_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.3.0.i.i = phi i64 [ %i.cy, %bb.u ], [ %i.da, %bb.v ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.cx, %bb.u ], [ %.sroa.358.0..sroa_idx, %bb.v ]
  %i.dc = icmp ult i64 %i.cv, %.sroa.3.0.i.i
  br i1 %i.dc, label %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i, label %.invoke

_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.cv
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !range !10, !noundef !3 ; 4 uses
  %i.dg = add nuw i64 %i.cv, 1                    ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.ct
  br i1 %i.dh, label %bb.aj, label %bb.ai

bb.w:                                             ; preds = %bb.j
  br i1 %i.bz, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = add nsw i32 %i.bw, -44032               ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.di, 11172
  br i1 %or.cond.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = invoke { ptr, i64 } @_RNvNtCs6g2bDYgB13P_21unicode_normalization7lookups30compatibility_fully_decomposed(i32 noundef range(i32 128, 1114112) %i.bw)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc27:                                         ; preds = %bb.y
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i, label %bb.z, label %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i.thread

bb.z:                                             ; preds = %.noexc27
  %i.dl = invoke { ptr, i64 } @_RNvNtCs6g2bDYgB13P_21unicode_normalization7lookups26canonical_fully_decomposed(i32 noundef range(i32 128, 1114112) %i.bw)
          to label %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i: ; preds = %bb.z
  %.pre = extractvalue { ptr, i64 } %i.dl, 0      ; 2 uses
  %.not.i11.i = icmp eq ptr %.pre, null
  br i1 %.not.i11.i, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i, label %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i.thread

bb.aa:                                            ; preds = %bb.x
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.di to i16 ; 3 uses
  %i.dm = udiv i16 %.lhs.trunc.i.i, 588
  %i.dn = urem i16 %.lhs.trunc.i.i, 588
  %i.do = or disjoint i16 %i.dm, 4352
  %i.dp = zext nneg i16 %i.do to i32
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %i.dp)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc29:                                         ; preds = %bb.aa
  %i.dq = udiv i16 %i.dn, 28
  %narrow.i.i = add nuw nsw i16 %i.dq, 4449
  %i.dr = zext nneg i16 %narrow.i.i to i32
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %i.dr)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.ds = urem i16 %.lhs.trunc.i.i, 28            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.i.i, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc30
  %narrow20.i.i = add nuw nsw i16 %i.ds, 4519
  %i.dt = zext nneg i16 %narrow20.i.i to i32
  br label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i

_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i.thread: ; preds = %.noexc27, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i
  %.merged.i.i.i.i197 = phi { ptr, i64 } [ %i.dl, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %i.dj, %.noexc27 ]
  %.pre-phi196 = phi ptr [ %.pre, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %i.dk, %.noexc27 ] ; 2 uses
  %i.du = extractvalue { ptr, i64 } %.merged.i.i.i.i197, 1 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.du, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre-phi196, i64 %.idx.i.i
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i.thread, %.noexc31
  %.sroa.03.021.i.i = phi ptr [ %i.dy, %.noexc31 ], [ %.pre-phi196, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i.thread ] ; 2 uses
  %i.dx = load i32, ptr %.sroa.03.021.i.i, align 4, !range !10, !noalias !840, !noundef !3
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %i.dx)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.021.i.i, i64 4 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dv
  br i1 %i.dz, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.lr.ph.i.i

bb.ac:                                            ; preds = %bb.j
  br i1 %i.bz, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = add nsw i32 %i.bw, -44032               ; 2 uses
  %or.cond.i12.i = icmp ult i32 %i.ea, 11172
  br i1 %or.cond.i12.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = invoke { ptr, i64 } @_RNvNtCs6g2bDYgB13P_21unicode_normalization7lookups26canonical_fully_decomposed(i32 noundef range(i32 128, 1114112) %i.bw)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc32:                                         ; preds = %bb.ae
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0      ; 3 uses
  %.not.i13.i = icmp eq ptr %i.ec, null
  br i1 %.not.i13.i, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %.lhs.trunc.i17.i = trunc nuw nsw i32 %i.ea to i16 ; 3 uses
  %i.ed = udiv i16 %.lhs.trunc.i17.i, 588
  %i.ee = urem i16 %.lhs.trunc.i17.i, 588
  %i.ef = or disjoint i16 %i.ed, 4352
  %i.eg = zext nneg i16 %i.ef to i32
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %i.eg)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %bb.af
  %i.eh = udiv i16 %i.ee, 28
  %narrow.i18.i = add nuw nsw i16 %i.eh, 4449
  %i.ei = zext nneg i16 %narrow.i18.i to i32
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %i.ei)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %.noexc33
  %i.ej = urem i16 %.lhs.trunc.i17.i, 28          ; 2 uses
  %.not.i.i19.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i19.i, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc34
  %narrow20.i20.i = add nuw nsw i16 %i.ej, 4519
  %i.ek = zext nneg i16 %narrow20.i20.i to i32
  br label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i

bb.ah:                                            ; preds = %.noexc32
  %i.el = extractvalue { ptr, i64 } %i.eb, 1      ; 2 uses
  %.idx.i14.i = shl nuw nsw i64 %i.el, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i14.i
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.ah, %.noexc35
  %.sroa.03.021.i16.i = phi ptr [ %i.ep, %.noexc35 ], [ %i.ec, %bb.ah ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.03.021.i16.i, align 4, !range !10, !noalias !841, !noundef !3
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %i.eo)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit

.noexc35:                                         ; preds = %.lr.ph.i15.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.03.021.i16.i, i64 4 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.em
  br i1 %i.eq, label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.lr.ph.i15.i

_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i: ; preds = %bb.ag, %.noexc32, %bb.ac, %bb.ab, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i, %bb.w
  %.sink.i = phi i32 [ %i.bw, %bb.ac ], [ %i.ek, %bb.ag ], [ %i.bw, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %i.bw, %bb.w ], [ %i.dt, %bb.ab ], [ %i.bw, %.noexc32 ]
  invoke fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef range(i32 0, 1114112) %.sink.i)
          to label %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %.noexc35, %.noexc31, %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i, %bb.ah, %.noexc34, %_RNCINvNtCs6g2bDYgB13P_21unicode_normalization9normalize20decompose_compatibleNCNvXs0_NtB6_9decomposeINtB1l_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB22_4iter6traits8iterator8Iterator4nexts_0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i.thread, %.noexc30
  %i.er = load i64, ptr %i.i, align 8, !alias.scope !831, !noundef !3 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.lr.ph.i, label %.loopexit.i

bb.ai:                                            ; preds = %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i
  store i64 %i.dg, ptr %i.j, align 8, !alias.scope !831
  br label %_RNvXs0_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB5_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB1j_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit

bb.aj:                                            ; preds = %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.et = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !842, !noundef !3 ; 2 uses
  %i.eu = icmp ult i64 %i.et, 1152921504606846976
  call void @llvm.assume(i1 %i.eu)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ev = load i16, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !842, !noundef !3
  %i.ew = zext i16 %i.ev to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.0.0.i21.i = phi i64 [ %i.et, %bb.ak ], [ %i.ew, %bb.al ] ; 2 uses
  %i.ex = sub i64 %.sroa.0.0.i21.i, %i.ct         ; 5 uses
  %.not.i22.i = icmp eq i64 %.sroa.0.0.i21.i, %i.ct
  br i1 %.not.i22.i, label %._crit_edge.i.i, label %.lr.ph.i23.i

._crit_edge.loopexit.i.i:                         ; preds = %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i
  %.pre.i.i = load i32, ptr %i.b, align 8, !range !8, !alias.scope !842
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.am
  %i.ey = phi i32 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.cu, %bb.am ]
  %i.ez = trunc nuw i32 %i.ey to i1
  br i1 %i.ez, label %bb.ap, label %bb.ar

.lr.ph.i23.i:                                     ; preds = %bb.am, %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i
  %.sroa.03.023.i.i = phi i64 [ %i.fa, %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ 0, %bb.am ] ; 5 uses
  %i.fa = add nuw i64 %.sroa.03.023.i.i, 1        ; 2 uses
  %i.fb = load i64, ptr %i.i, align 8, !alias.scope !842, !noundef !3
  %i.fc = add i64 %i.fb, %.sroa.03.023.i.i        ; 5 uses
  %i.fd = load i32, ptr %i.b, align 8, !range !8, !alias.scope !843, !noalias !844, !noundef !3
  %i.fe = trunc nuw i32 %i.fd to i1
  br i1 %i.fe, label %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i23.i
  %i.ff = load i16, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !845, !noalias !844, !noundef !3 ; 2 uses
  %i.fg = zext i16 %i.ff to i64                   ; 4 uses
  %i.fh = icmp ult i16 %i.ff, 5
  br i1 %i.fh, label %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i, label %.invoke230, !prof !17

.invoke230:                                       ; preds = %bb.v, %bb.m, %bb.an
  %i.fi = phi i64 [ %i.fg, %bb.an ], [ %i.ci, %bb.m ], [ %i.da, %bb.v ]
  %i.fj = phi ptr [ @2068, %bb.an ], [ @2069, %bb.m ], [ @2068, %bb.v ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fi, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #30
          to label %.cont231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont231:                                         ; preds = %.invoke230
  unreachable

_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i: ; preds = %.lr.ph.i23.i
  %i.fk = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !843, !noalias !844, !noundef !3 ; 3 uses
  %i.fl = icmp ult i64 %i.fc, %i.fk
  br i1 %i.fl, label %bb.ao, label %.invoke

_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i: ; preds = %bb.an
  %i.fm = icmp ult i64 %i.fc, %i.fg
  br i1 %i.fm, label %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i, label %.invoke

bb.ao:                                            ; preds = %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i
  %i.fn = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !843, !noalias !844, !nonnull !3, !noundef !3
  br label %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i

_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i: ; preds = %bb.ao, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i
  %i.fo = phi ptr [ %i.fn, %bb.ao ], [ %.sroa.358.0..sroa_idx, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i ] ; 2 uses
  %.sroa.3.0.i5.i.i = phi i64 [ %i.fk, %bb.ao ], [ %i.fg, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i ] ; 2 uses
  %i.fp = icmp ult i64 %.sroa.03.023.i.i, %.sroa.3.0.i5.i.i
  br i1 %i.fp, label %_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i, label %.invoke

.invoke:                                          ; preds = %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i, %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i
  %i.fq = phi i64 [ %i.fc, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %i.fc, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i ], [ %.sroa.03.023.i.i, %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %i.cv, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i ]
  %i.fr = phi i64 [ %i.fk, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %i.fg, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i ], [ %.sroa.3.0.i5.i.i, %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ %.sroa.3.0.i.i, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i ]
  %i.fs = phi ptr [ @2028, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ @2028, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.thread.i.i ], [ @2029, %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i ], [ @2056, %_RNvXs2_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index5IndexjE5indexCs97bFUy425Ar_15lance_tokenizer.exit.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef range(i64 0, 1152921504606846976) %i.fr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i: ; preds = %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit.i.i
  %.in12.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fc ; 2 uses
  %i.ft = load i8, ptr %.in12.i.i, align 4, !noundef !3
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.in12.i.i, i64 4
  %i.fu = load i32, ptr %.in.i.i, align 4, !range !10, !noundef !3
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.sroa.03.023.i.i ; 2 uses
  store i8 %i.ft, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %i.fu, ptr %i.fw, align 4
  %exitcond.not.i.i = icmp eq i64 %i.fa, %i.ex
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i23.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.fx = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !846, !noundef !3
  %i.fy = icmp ugt i64 %i.ex, %i.fx
  br i1 %i.fy, label %_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12reset_bufferCs97bFUy425Ar_15lance_tokenizer.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.ex, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !846
  br label %_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12reset_bufferCs97bFUy425Ar_15lance_tokenizer.exit.i

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.fz = load i16, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !847, !noundef !3
  %i.ga = zext i16 %i.fz to i64
  %.not.i.i24.i = icmp ult i64 %i.ex, %i.ga
  br i1 %.not.i.i24.i, label %bb.as, label %_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12reset_bufferCs97bFUy425Ar_15lance_tokenizer.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.gb = trunc nuw i64 %i.ex to i16
  store i16 %i.gb, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !847
  br label %_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12reset_bufferCs97bFUy425Ar_15lance_tokenizer.exit.i

_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12reset_bufferCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !842
  br label %_RNvXs0_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB5_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB1j_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i15.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.y, %bb.z, %bb.aa, %.noexc29, %bb.ae, %bb.af, %.noexc33, %_RINvNtCs6g2bDYgB13P_21unicode_normalization9normalize9decomposeNCINvB2_20decompose_compatibleNCNvXs0_NtB4_9decomposeINtB1B_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB2i_4iter6traits8iterator8Iterator4nexts_0E0B1t_ECs97bFUy425Ar_15lance_tokenizer.exit.sink.split.i
  %lpad.loopexit80 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %bb.be, %bb.o
  %lpad.loopexit266 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i54
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke230, %.invoke
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit80, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit266, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.gc = load i32, ptr %i.b, align 8, !range !8, !alias.scope !850, !noundef !3
  %3 = icmp eq i32 %i.gc, 0
  br i1 %3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp
  %.val.i.i = load i64, ptr %.sroa.358.0..sroa_idx, align 8, !alias.scope !850 ; 2 uses
  %i.gd = icmp eq i64 %.val.i.i, 0
  br i1 %i.gd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val1.i.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !850, !nonnull !3, !noundef !3
  %i.ge = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !850
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit

_RNvXs0_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB5_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB1j_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.ai, %_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12reset_bufferCs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.gf = icmp samesign ult i32 %i.df, 128
  br i1 %i.gf, label %bb.bf, label %bb.be

bb.av:                                            ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %.val.i.i40 = load i64, ptr %.sroa.358.0..sroa_idx, align 8, !alias.scope !853 ; 2 uses
  %i.gg = icmp eq i64 %.val.i.i40, 0
  br i1 %i.gg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val1.i.i41 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !853, !nonnull !3, !noundef !3
  %i.gh = shl nuw i64 %.val.i.i40, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i41, i64 noundef %i.gh, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !853
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42: ; preds = %.thread.i, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gi = icmp sgt i64 %.ph265, -1
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp eq i64 %.ph265, %i.br
  br i1 %i.gj, label %bb.ax, label %.backedge85

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit42
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048 ; 2 uses
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536 ; 2 uses
  %..i43 = select i1 %i.gl, i64 3, i64 4
  %.sroa.0.0.i44 = select i1 %i.gk, i64 2, i64 %..i43 ; 3 uses
  %i.gm = load i64, ptr %2, align 8, !range !7, !alias.scope !855, !noundef !3
  %i.gn = sub nsw i64 %i.gm, %i.br
  %i.go = icmp ugt i64 %.sroa.0.0.i44, %i.gn
  br i1 %i.go, label %bb.ay, label %bb.az, !prof !4

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.br, i64 noundef %.sroa.0.0.i44, i64 noundef 1, i64 noundef 1)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gp = load ptr, ptr %i.h, align 8, !alias.scope !854, !nonnull !3, !noundef !3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.br ; 7 uses
  %i.gr = trunc i32 %.sroa.4.0.i.ph to i8
  %i.gs = and i8 %i.gr, 63
  %i.gt = or disjoint i8 %i.gs, -128
  %i.gu = lshr i32 %.sroa.4.0.i.ph, 6
  %i.gv = trunc i32 %i.gu to i8                   ; 2 uses
  %i.gw = and i8 %i.gv, 63
  %i.gx = or disjoint i8 %i.gw, -128              ; 2 uses
  %i.gy = lshr i32 %.sroa.4.0.i.ph, 12
  %i.gz = trunc i32 %i.gy to i8                   ; 2 uses
  %i.ha = and i8 %i.gz, 63
  %i.hb = or disjoint i8 %i.ha, -128
  %i.hc = lshr i32 %.sroa.4.0.i.ph, 18
  %i.hd = trunc nuw nsw i32 %i.hc to i8
  %i.he = or disjoint i8 %i.hd, -16
  br i1 %i.gk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hf = or disjoint i8 %i.gv, -64
  store i8 %i.hf, ptr %i.gq, align 1, !noalias !854
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46

bb.bb:                                            ; preds = %bb.az
  br i1 %i.gl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hg = or disjoint i8 %i.gz, -32
  store i8 %i.hg, ptr %i.gq, align 1, !noalias !854
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.gx, ptr %i.hh, align 1, !noalias !854
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46

bb.bd:                                            ; preds = %bb.bb
  store i8 %i.he, ptr %i.gq, align 1, !noalias !854
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.hb, ptr %i.hi, align 1, !noalias !854
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  store i8 %i.gx, ptr %i.hj, align 1, !noalias !854
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit46: ; preds = %bb.ba, %bb.bc, %bb.bd
  %.sink233 = phi i64 [ 1, %bb.ba ], [ 2, %bb.bc ], [ 3, %bb.bd ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sink233
  store i8 %i.gt, ptr %i.hk, align 1, !noalias !854
  %i.hl = add nuw i64 %i.br, %.sroa.0.0.i44
  br label %.backedge85.sink.split

bb.be:                                            ; preds = %_RNvXs0_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB5_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB1j_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit
  %i.hm = invoke noundef zeroext i1 @_RNvNtCs6g2bDYgB13P_21unicode_normalization7lookups17is_combining_mark(i32 noundef %i.df)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.bf:                                            ; preds = %_RNvXs0_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB5_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEENtNtNtNtB1j_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.hn = icmp sgt i64 %.ph265, -1
  call void @llvm.assume(i1 %i.hn)
  %i.ho = load i64, ptr %2, align 8, !range !7, !alias.scope !857, !noundef !3
  %i.hp = icmp eq i64 %i.ho, %.ph265
  br i1 %i.hp, label %bb.bg, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit51, !prof !4

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.ph265, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit51: ; preds = %bb.bg, %bb.bf
  %i.hq = load ptr, ptr %i.h, align 8, !alias.scope !856, !nonnull !3, !noundef !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.ph265
  %i.hs = trunc nuw nsw i32 %i.df to i8
  store i8 %i.hs, ptr %i.hr, align 1, !noalias !856
  %i.ht = add nuw i64 %.ph265, 1
  br label %.backedge.sink.split

bb.bh:                                            ; preds = %bb.be
  br i1 %i.hm, label %.backedge.backedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hu = call fastcc { ptr, i64 } @_RNvNtCs97bFUy425Ar_15lance_tokenizer20ascii_folding_filter9fold_char(i32 noundef %i.df) ; 2 uses
  %i.hv = extractvalue { ptr, i64 } %i.hu, 0      ; 2 uses
  %.not19 = icmp eq ptr %i.hv, null
  br i1 %.not19, label %.backedge.backedge, label %bb.bj

.backedge.backedge:                               ; preds = %bb.bi, %bb.bh
  br label %.backedge

bb.bj:                                            ; preds = %bb.bi
  %i.hw = extractvalue { ptr, i64 } %i.hu, 1      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.hx = load i64, ptr %2, align 8, !range !7, !alias.scope !859, !noundef !3
  %i.hy = sub i64 %i.hx, %.ph265
  %i.hz = icmp ugt i64 %i.hw, %i.hy
  br i1 %i.hz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i54, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i52, !prof !4

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i54: ; preds = %bb.bj
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.ph265, i64 noundef %i.hw, i64 noundef 1, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc55:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.thread.i54
  %i.ia = load i64, ptr %i.c, align 8, !alias.scope !858, !noundef !3 ; 2 uses
  %i.ib = icmp sgt i64 %i.ia, -1
  call void @llvm.assume(i1 %i.ib)
  br label %bb.bk

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i52: ; preds = %bb.bj
  %i.ic = icmp sgt i64 %.ph265, -1
  call void @llvm.assume(i1 %i.ic)
  %.not.i53 = icmp eq i64 %i.hw, 0
  br i1 %.not.i53, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit56, label %bb.bk

bb.bk:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i52, %.noexc55
  %i.id = phi i64 [ %i.ia, %.noexc55 ], [ %.ph265, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i52 ] ; 2 uses
  %i.ie = load ptr, ptr %i.h, align 8, !alias.scope !858, !nonnull !3, !noundef !3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull readonly align 1 %i.hv, i64 %i.hw, i1 false), !noalias !858
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit56

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit56: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i52, %bb.bk
  %i.ig = phi i64 [ %i.id, %bb.bk ], [ %.ph265, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs97bFUy425Ar_15lance_tokenizer.exit.i52 ]
  %i.ih = add i64 %i.ig, %i.hw
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit56, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit51
  %.sink234 = phi i64 [ %i.ht, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit51 ], [ %i.ih, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs97bFUy425Ar_15lance_tokenizer.exit56 ] ; 2 uses
  store i64 %.sink234, ptr %i.c, align 8
  br label %.backedge.outer

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs6g2bDYgB13P_21unicode_normalization9decompose14DecompositionsINtNtB4_6option8IntoItercEEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.au, %bb.at, %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs97bFUy425Ar_15lance_tokenizer20ascii_folding_filter9fold_char(i32 noundef range(i32 128, 1114112) %0) unnamed_addr #10 {
bb.a:
  switch i32 %0, label %bb.y [
    i32 223, label %bb.b
    i32 7838, label %bb.c
    i32 198, label %bb.d
    i32 230, label %bb.e
    i32 338, label %bb.f
    i32 339, label %bb.g
    i32 216, label %bb.h
    i32 248, label %bb.i
    i32 321, label %bb.j
    i32 322, label %bb.k
    i32 272, label %bb.l
    i32 208, label %bb.l
    i32 273, label %bb.m
    i32 240, label %bb.m
    i32 222, label %bb.n
    i32 254, label %bb.o
    i32 294, label %bb.p
    i32 295, label %bb.q
    i32 358, label %bb.r
    i32 359, label %bb.s
    i32 330, label %bb.t
    i32 331, label %bb.u
    i32 305, label %bb.v
    i32 312, label %bb.w
    i32 383, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  br label %bb.y

bb.e:                                             ; preds = %bb.a
  br label %bb.y

bb.f:                                             ; preds = %bb.a
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  br label %bb.y

end_hunk_2
