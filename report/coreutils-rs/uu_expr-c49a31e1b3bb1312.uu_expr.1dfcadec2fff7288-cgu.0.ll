inline.NumInlined: 1053
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsh036I4OHgIr_6uucore8CharByteuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0ECs2zCsf9UsIrc_7uu_expr:bb.a
  %.sroa.7.013.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ac, i1 false), !noalias !176
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = load ptr, ptr %0, align 8, !alias.scope !177, !noalias !180, !nonnull !4, !noundef !4 ; 5 uses
  %i.au = icmp eq i64 %i.b, 0
  br i1 %i.au, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit
  %.val241 = load <16 x i8>, ptr %i.at, align 16
  %i.av = icmp sgt <16 x i8> %.val241, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.val.i.i = load i64, ptr %2, align 8, !noalias !182, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.ax, align 8, !noalias !182, !noundef !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.025.055 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %.sroa.025.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.054 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.053 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.052 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
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
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtCsh036I4OHgIr_6uucore8CharByteECs2zCsf9UsIrc_7uu_expr(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bk) #24, !noalias !188 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bl, %i.ao            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !189
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !192

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.ao                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !4
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.k, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !126

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.ar, align 16
  %i.bw = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cc, %i.ao            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !189
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !193

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.k ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.ao
  store i8 %i.ci, ptr %i.cg, align 1
  %i.cl = getelementptr i8, ptr %i.ar, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store i8 %i.ci, ptr %i.cm, align 1
  %i.cn = shl i64 %i.bg, 3
  %i.co = sub nuw nsw i64 -8, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.co
  %i.cq = shl i64 %.sroa.0.0.i5.i, 3
  %i.cr = sub nuw nsw i64 -8, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.ar, i64 %i.cr
  %i.ct = load i64, ptr %i.cp, align 1
  store i64 %i.ct, ptr %i.cs, align 8
  %i.cu = icmp eq i64 %i.bh, 0
  br i1 %i.cu, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit
  %i.cv = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.as, ptr %0, align 8, !alias.scope !194, !noalias !197
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !199, !noalias !201
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %i.cw, align 8, !alias.scope !203, !noalias !205
  %i.cx = icmp eq i64 %i.f, 0
  br i1 %i.cx, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.cy = shl nuw i64 %i.h, 3
  %i.cz = add nuw i64 %i.cy, 8
  %i.da = icmp ult i64 %i.h, 2305843009213693951
  tail call void @llvm.assume(i1 %i.da)
  %i.db = and i64 %i.cz, -16                      ; 3 uses
  %i.dc = add nsw i64 %i.f, 17
  %i.dd = add i64 %i.dc, %i.db                    ; 4 uses
  %i.de = icmp uge i64 %i.dd, %i.db
  %i.df = icmp ult i64 %i.dd, 9223372036854775793
  tail call void @llvm.assume(i1 %i.de)
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.dh = sub nsw i64 0, %i.db
  %i.di = getelementptr inbounds i8, ptr %i.at, i64 %i.dh
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !207
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !212 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.dj = lshr i64 %i.h, 4
  %i.dk = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dk, 0
  %i.dl = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dj, %i.dl ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dm = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph.i.i.new

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
  %i.dn = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dn, align 16, !noalias !212
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.do = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dp, ptr %i.dn, align 16, !noalias !212
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !212
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dr, align 8
  br label %.lr.ph.i13

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dv, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !212
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !212
  %i.dv = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dx, align 16, !noalias !212
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !212
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

.lr.ph.i13:                                       ; preds = %bb.t, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.ea, %bb.t ], [ 0, %._crit_edge.i.i ] ; 8 uses
  %i.ea = add nuw i64 %.sroa.014.04.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !212, !noundef !4
  %.not.i14 = icmp eq i8 %i.ec, -128
  br i1 %.not.i14, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.014.04.i, -1
  %.neg23.i = shl i64 %.neg.i, 3
  %4 = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 3 uses
  %5 = sub nsw i64 0, %.sroa.014.04.i
  %6 = getelementptr inbounds [8 x i8], ptr %.val25.i, i64 %5
  %i.ed = getelementptr inbounds i8, ptr %6, i64 -8
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.o
  %i.ee = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtCsh036I4OHgIr_6uucore8CharByteECs2zCsf9UsIrc_7uu_expr(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ed) #24, !noalias !215 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.ee, %i.f           ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !219
  %i.eg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !192

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.eh, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.ey, %.lr.ph.i28.i ]
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.0.0.lcssa.i.i, %i.ej
  %i.el = and i64 %i.ek, %i.f                     ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !noalias !212, !noundef !4
  %i.eo = icmp sgt i8 %i.en, -1
  br i1 %i.eo, label %bb.p, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !126

bb.p:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !212
  %i.ep = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.eq, 0
  %i.er = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eq, i1 true)
  %i.es = zext nneg i16 %i.er to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.et = phi i64 [ %i.eu, %.lr.ph.i28.i ], [ 0, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.eu = add i64 %i.et, 16                       ; 2 uses
  %i.ev = add i64 %i.eu, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.ev, %i.f          ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ew, align 1, !noalias !219
  %i.ex = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !193

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.p, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.es, %bb.p ], [ %i.el, %._crit_edge.i27.i ] ; 4 uses
  %i.ez = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fa = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fb = xor i64 %i.fa, %i.ez
  %.unshifted.i = and i64 %i.fb, %i.f
  %i.fc = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fc, label %bb.r, label %bb.q, !prof !130

bb.q:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fd = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.fe = sub nuw nsw i64 -8, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.val25.i, i64 %i.fe ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !212, !noundef !4
  %i.fi = lshr i64 %i.ee, 57
  %i.fj = trunc nuw nsw i64 %i.fi to i8           ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fl = and i64 %i.fk, %i.f
  store i8 %i.fj, ptr %i.fg, align 1, !noalias !212
  %i.fm = getelementptr i8, ptr %.val25.i, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store i8 %i.fj, ptr %i.fn, align 1, !noalias !212
  %i.fo = icmp eq i8 %i.fh, -1
  br i1 %i.fo, label %bb.s, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %4, align 1, !alias.scope !222, !noalias !227
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.ff, align 1, !alias.scope !225, !noalias !228
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %4, align 1, !alias.scope !222, !noalias !227
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ff, align 1, !alias.scope !225, !noalias !228
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fp = lshr i64 %i.ee, 57
  %i.fq = trunc nuw nsw i64 %i.fp to i8           ; 2 uses
  %i.fr = add i64 %.sroa.014.04.i, -16
  %i.fs = and i64 %i.fr, %i.f
  store i8 %i.fq, ptr %i.eb, align 1, !noalias !212
  %i.ft = getelementptr i8, ptr %.val25.i, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  store i8 %i.fq, ptr %i.fu, align 1, !noalias !212
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.014.04.i, -16
  %i.fw = and i64 %i.fv, %i.f
  store i8 -1, ptr %i.eb, align 1, !noalias !212
  %i.fx = getelementptr i8, ptr %.val25.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 -1, ptr %i.fy, align 1, !noalias !212
  %i.fz = load i64, ptr %4, align 1, !noalias !212
  store i64 %i.fz, ptr %i.ff, align 1, !noalias !212
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.t, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.gb, ptr %i.ga, align 8, !alias.scope !212
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.am, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.013.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.al, %bb.j ]
  %i.gc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gd = insertvalue { i64, i64 } %i.gc, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gd
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2s_9ExprErrorENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4b_13OccupiedEntrymB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB2s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.4.i = alloca [44 x i8], align 4          ; 2 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [56 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !229, !noalias !232, !nonnull !4, !noundef !4 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 494 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noalias !234, !noundef !4 ; 3 uses
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !229, !noalias !232, !noundef !4 ; 9 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !235, !noalias !234, !noundef !4
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.k, %i.r                       ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.t, i1 false), !alias.scope !235, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.n ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !alias.scope !241, !noalias !234
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = mul nuw nsw i64 %i.s, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.w, i64 %i.x, i1 false), !alias.scope !243, !noalias !244
  %i.y = add i16 %i.j, -1                         ; 3 uses
  store i16 %i.y, ptr %i.i, align 2, !noalias !234
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !229, !noalias !232, !noundef !4 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = icmp ult i16 %i.y, 5
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sink.i.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sink.i.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i.sroa.gep58 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br i1 %i.ab, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = load ptr, ptr %i.h, align 8, !noalias !245, !noundef !4 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = add i64 %i.aa, 1                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 492
  %i.af = load i16, ptr %i.ae, align 4, !noalias !245 ; 3 uses
  %.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 494
  %i.ah = load i16, ptr %i.ag, align 2, !noalias !250, !noundef !4
  %.not62.i = icmp eq i16 %i.ah, 0
  br i1 %.not62.i, label %bb.e, label %bb.g, !prof !126

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #25, !noalias !250
  unreachable

bb.f:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.g, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.aa, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.n, ptr %i.aj, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 504
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !250, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ac, ptr %i.e, align 8
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ad, ptr %.sroa.12.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.h, ptr %.sroa.18.8..sroa_idx, align 8
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.aa, ptr %.sroa.20.8..sroa_idx, align 8
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.al, ptr %.sroa.22.8..sroa_idx, align 8
  %.sroa.24.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.aa, ptr %.sroa.24.8..sroa_idx, align 8
  %i.am = zext nneg i16 %i.j to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 494
  %i.ao = load i16, ptr %i.an, align 2, !noundef !4
  %i.ap = zext i16 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.am, %i.ap
  %i.ar = icmp samesign ult i64 %i.aq, 12
  br i1 %i.ar, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.as = zext nneg i16 %i.af to i64
  %i.at = add nsw i64 %i.as, -1                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 496
  %i.av = icmp ult i16 %i.af, 13
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !250, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.f, align 8
  %.sroa.12.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ad, ptr %.sroa.12.8..sroa_idx31, align 8
  %.sroa.16.8..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.at, ptr %.sroa.16.8..sroa_idx33, align 8
  %.sroa.18.8..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ax, ptr %.sroa.18.8..sroa_idx35, align 8
  %.sroa.20.8..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.aa, ptr %.sroa.20.8..sroa_idx37, align 8
  %.sroa.22.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.h, ptr %.sroa.22.8..sroa_idx39, align 8
  %.sroa.24.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.aa, ptr %.sroa.24.8..sroa_idx41, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 494
  %i.az = load i16, ptr %i.ay, align 2, !noundef !4
  %i.ba = zext i16 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1
  %i.bc = zext nneg i16 %i.y to i64
  %i.bd = add nuw nsw i64 %i.bb, %i.bc
  %i.be = icmp samesign ult i64 %i.bd, 12
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RNvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1Z_9ExprErrorEE15bulk_steal_leftB1Z_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f, i64 noundef 1) #24
  %i.bf = add i64 %i.n, 1
  store ptr %i.h, ptr %i.g, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.aa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bf, ptr %i.bh, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call fastcc void @_RINvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB7_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB20_9ExprErrorEE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB20_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, i64 noundef 1, i64 noundef %i.n) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4
  %i.bn = load ptr, ptr %i.bk, align 8, !noalias !251, !noundef !4 ; 3 uses
  %.not.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i20, label %.sink.split, label %bb.p

bb.m:                                             ; preds = %bb.g
  call fastcc void @_RNvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1Z_9ExprErrorEE16bulk_steal_rightB1Z_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e, i64 noundef 1) #24
  store ptr %i.h, ptr %i.g, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.aa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.n, ptr %i.bp, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  call fastcc void @_RINvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB7_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB20_9ExprErrorEE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB20_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.e, i64 noundef 0, i64 noundef %i.n) #24
  br label %bb.o
end_hunk_0
begin_hunk_1_@_RNvCs2zCsf9UsIrc_7uu_expr6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs2zCsf9UsIrc_7uu_expr.exit
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !576, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i91, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !576
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2zCsf9UsIrc_7uu_expr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2zCsf9UsIrc_7uu_expr.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs2zCsf9UsIrc_7uu_expr.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1Z_9ExprErrorEE15bulk_steal_leftB1Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [44 x i8], align 4            ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 494 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !4
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 494 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !4
  %i.l = zext i16 %i.k to i64                     ; 5 uses
  %i.m = add nuw nsw i64 %1, %i.l                 ; 3 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.e, !prof !126

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.g, %1                 ; 4 uses
  %i.p = trunc nuw i64 %i.o to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw nsw i64 %i.m to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %1
  %i.t = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.r, i64 %i.t, i1 false), !alias.scope !579
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %1
  %i.w = mul nuw nsw i64 %i.l, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !alias.scope !582
  %i.x = add nuw nsw i64 %i.o, 1                  ; 4 uses
  %i.y = sub nuw nsw i64 %i.g, %i.x               ; 5 uses
  %i.z = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_.exit, label %bb.f, !prof !130

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25, !noalias !590
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 448 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.x
  %i.ad = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull readonly align 4 %i.ac, i64 %i.ad, i1 false), !alias.scope !590
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.x
  %i.ag = mul nuw nsw i64 %i.y, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.af, i64 %i.ag, i1 false), !alias.scope !591
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.o
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 448
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.val17 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %.val17 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4, !noalias !595, !noundef !4
  store i32 %i.ai, ptr %i.am, align 4, !noalias !595
  %.sroa.4.8..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.8..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.8..sroa_idx20, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = icmp eq i64 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_.exit
  br i1 %i.ax, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit, label %bb.j, !prof !130

bb.h:                                             ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_.exit
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !126

_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cc, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ay = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i.epil
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.ba, align 8
  %i.bb = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 492
  store i16 %i.bb, ptr %i.bc, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit, label %bb.i, !llvm.loop !601

_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit: ; preds = %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #25
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 496 ; 8 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %1
  %i.bf = shl nuw nsw i64 %i.l, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bg, i1 false), !alias.scope !602
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.x
  %i.bj = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bi, i64 %i.bj, i1 false), !alias.scope !605
  %i.bk = add nuw nsw i64 %1, %i.l
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %xtraiter = and i64 %i.bl, 3                    ; 3 uses
  %i.bm = icmp samesign ult i64 %i.m, 3
  br i1 %i.bm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bl, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cc, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bn = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 492
  store i16 %i.bq, ptr %i.br, align 4
  %i.bs = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.bn to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 492
  store i16 %i.bv, ptr %i.bw, align 4
  %i.bx = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bs
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.bz, align 8
  %i.ca = trunc nuw nsw i64 %i.bs to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 492
  store i16 %i.ca, ptr %i.cb, align 4
  %i.cc = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bx
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.ce, align 8
  %i.cf = trunc nuw nsw i64 %i.bx to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 492
  store i16 %i.cf, ptr %i.cg, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1Z_9ExprErrorEE16bulk_steal_rightB1Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [44 x i8], align 4            ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 494 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !4 ; 6 uses
  %i.g = zext i16 %i.f to i64                     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 494 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !4
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %i.m = add nuw nsw i64 %1, %i.g                 ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.l
  br i1 %.not, label %bb.d, label %bb.e, !prof !126

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.l, %1                 ; 5 uses
  %i.p = trunc nuw nsw i64 %i.m to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw i64 %i.o to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = add nsw i64 %1, -1                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 448
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %.val18 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !noalias !609, !noundef !4
  store i32 %i.u, ptr %i.z, align 4, !noalias !609
  %.sroa.4.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.8..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.8..sroa_idx26, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 448 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.ac, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = add nuw nsw i64 %i.g, 1                 ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull readonly align 4 %i.s, i64 %i.aj, i1 false), !alias.scope !615
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.ah
  %i.al = mul nuw nsw i64 %i.r, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.v, i64 %i.al, i1 false), !alias.scope !619
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.an = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.am, i64 %i.an, i1 false), !alias.scope !623
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %1
  %i.ap = mul nuw nsw i64 %i.o, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false), !alias.scope !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.av, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25, label %bb.h, !prof !130

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.h, label %bb.i, !prof !126

_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil.preheader

_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.preheader ], [ %i.de, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil

_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil: ; preds = %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aw, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil.preheader ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ax = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23.epil
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.az, align 8
  %i.ba = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 492
  store i16 %i.ba, ptr %i.bb, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil, !llvm.loop !629

_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25: ; preds = %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 496 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 496 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false), !alias.scope !630
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %1
  %i.bh = shl nuw nsw i64 %i.o, 3
  %i.bi = add nuw nsw i64 %i.bh, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bi, i1 false), !alias.scope !634
  %i.bj = icmp ult i16 %i.f, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %i.ah to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 492
  store i16 %i.bm, ptr %i.bn, align 4
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.bp = icmp samesign ult i16 %i.f, 10
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bo to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 492
  store i16 %i.bs, ptr %i.bt, align 4
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.bv = icmp samesign ult i16 %i.f, 9
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %i.bu to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 492
  store i16 %i.by, ptr %i.bz, align 4
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw nsw i64 %i.g, 4                 ; 2 uses
  %i.cb = icmp samesign ult i16 %i.f, 8
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.ca to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 492
  store i16 %i.ce, ptr %i.cf, align 4
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB27_9ExprErrorENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEEB27_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add nuw nsw i64 %i.g, 5                 ; 2 uses
  %i.ch = icmp ne i16 %i.f, 7
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1O_9ExprErrorEE6insertB1O_:bb.a
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.cz
  store ptr %.sroa.10.074.i.i, ptr %i.dr, align 8, !alias.scope !1733, !noalias !1722
  store i16 %i.cx, ptr %i.cs, align 2, !noalias !1722
  %i.ds = icmp samesign ult i64 %i.cz, %i.dq
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i.i.i.i
  %i.dt = add nuw nsw i64 %i.cw, 1
  %i.du = sub nsw i64 %i.dt, %i.cq
  %i.dv = sub nsw i64 %i.cw, %i.cq
  %xtraiter154 = and i64 %i.du, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.prol ], [ %i.cz, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dx = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1722, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cm, ptr %i.dz, align 8, !noalias !1722
  %i.ea = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 492
  store i16 %i.ea, ptr %i.eb, align 4, !noalias !1722
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1736

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.prol ]
  %i.ec = icmp ult i64 %i.dv, 3
  br i1 %i.ec, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ed = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.0.06.i.i.i.i.i
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !1722, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cm, ptr %i.ef, align 8, !noalias !1722
  %i.eg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 492
  store i16 %i.eg, ptr %i.eh, align 4, !noalias !1722
  %i.ei = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ed
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !1722, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cm, ptr %i.ek, align 8, !noalias !1722
  %i.el = trunc nuw nsw i64 %i.ed to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 492
  store i16 %i.el, ptr %i.em, align 4, !noalias !1722
  %i.en = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ei
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !1722, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cm, ptr %i.ep, align 8, !noalias !1722
  %i.eq = trunc nuw nsw i64 %i.ei to i16
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 492
  store i16 %i.eq, ptr %i.er, align 4, !noalias !1722
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.et = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.en
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !1722, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cm, ptr %i.ev, align 8, !noalias !1722
  %i.ew = trunc nuw nsw i64 %i.en to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 492
  store i16 %i.ew, ptr %i.ex, align 4, !noalias !1722
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.es, %i.dq
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.ab:                                            ; preds = %bb.y
  switch i16 %i.cp, label %bb.ac [
    i16 5, label %bb.ae
    i16 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ey = add nsw i64 %i.cq, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ 5, %bb.ab ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.ey, %bb.ac ], [ %i.cq, %bb.y ], [ 5, %bb.ab ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1737
  %i.ez = tail call noalias noundef align 8 dereferenceable_or_null(592) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 592, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1737 ; 13 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.af, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2b_9ExprErrorEEE13new_uninit_inB2b_.exit.i.i.i.i, !prof !126

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 592) #26, !noalias !1737
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2b_9ExprErrorEEE13new_uninit_inB2b_.exit.i.i.i.i: ; preds = %bb.ae
  store ptr null, ptr %i.ez, align 8, !noalias !1737
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 494 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i39.sroa.5.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.fc = load i16, ptr %i.cs, align 2, !noalias !1744, !noundef !4
  %i.fd = zext i16 %i.fc to i64
  %i.fe = xor i64 %.sroa.06.0.i.i.i, -1
  %i.ff = add nsw i64 %i.fd, %i.fe                ; 5 uses
  %i.fg = trunc i64 %i.ff to i16
  store i16 %i.fg, ptr %i.fb, align 2, !alias.scope !1741, !noalias !1746
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cm, i64 448 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.sroa.06.0.i.i.i
  %i.fj = load i32, ptr %i.fi, align 4, !noalias !1744, !noundef !4
  %i.fk = icmp ult i64 %i.ff, 12
  br i1 %i.fk, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_2KVE15split_leaf_dataB2j_.exit.i.i.i.i, label %bb.ag, !prof !1667

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2b_9ExprErrorEEE13new_uninit_inB2b_.exit.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ff, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #25, !noalias !1744
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_2KVE15split_leaf_dataB2j_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2b_9ExprErrorEEE13new_uninit_inB2b_.exit.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %.sroa.06.0.i.i.i ; 2 uses
  %i.fn = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 448
  %i.fq = shl nuw nsw i64 %i.ff, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull readonly align 4 %i.fo, i64 %i.fq, i1 false), !alias.scope !1747, !noalias !1746
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fn
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.ft = mul nuw nsw i64 %i.ff, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull readonly align 8 %i.fr, i64 %i.ft, i1 false), !alias.scope !1751, !noalias !1746
  %i.fu = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.fu, ptr %i.cs, align 2, !noalias !1744
  %.sroa.4.i.i39.sroa.3.4.copyload.i.i = load i64, ptr %i.fm, align 8, !noalias !1716
  %.sroa.4.i.i39.sroa.5.4..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.i.i39.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i39.sroa.5.4..sroa_idx.i.i, i64 32, i1 false), !noalias !1716
  %i.fv = load i16, ptr %i.fb, align 2, !noalias !1737, !noundef !4 ; 3 uses
  %i.fw = zext i16 %i.fv to i64
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 5 uses
  %i.fy = icmp ult i16 %i.fv, 12
  br i1 %i.fy, label %bb.ah, label %bb.ak, !prof !1667

bb.ah:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_2KVE15split_leaf_dataB2j_.exit.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 496 ; 6 uses
  %i.ga = zext i16 %i.ct to i64
  %i.gb = sub nuw nsw i64 %i.ga, %.sroa.06.0.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.gc = icmp eq i64 %i.gb, %i.fx
  br i1 %i.gc, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i, label %bb.ai, !prof !130

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25, !noalias !1760
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i: ; preds = %bb.ah
  %i.gd = getelementptr i8, ptr %i.cm, i64 504
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %.sroa.06.0.i.i.i
  %i.gf = shl nuw nsw i64 %i.fx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ge, i64 %i.gf, i1 false), !alias.scope !1761, !noalias !1737
  %i.gg = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %i.gg)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  %xtraiter = and i64 %i.fx, 3                    ; 3 uses
  %i.gh = icmp ult i16 %i.fv, 3
  br i1 %i.gh, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i
  %unroll_iter = and i64 %i.fx, 28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i.new ], [ %i.gx, %bb.aj ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i.new ], [ %niter.next.3, %bb.aj ]
  %i.gi = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.sroa.0.09.i.i.i.i.i.i
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !1762, !noalias !1765, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.ez, ptr %i.gk, align 8, !noalias !1768
  %i.gl = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 492
  store i16 %i.gl, ptr %i.gm, align 4, !noalias !1765
  %i.gn = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gi
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !1762, !noalias !1765, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.ez, ptr %i.gp, align 8, !noalias !1768
  %i.gq = trunc nuw nsw i64 %i.gi to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 492
  store i16 %i.gq, ptr %i.gr, align 4, !noalias !1765
  %i.gs = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gn
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !1762, !noalias !1765, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.ez, ptr %i.gu, align 8, !noalias !1768
  %i.gv = trunc nuw nsw i64 %i.gn to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 492
  store i16 %i.gv, ptr %i.gw, align 4, !noalias !1765
  %i.gx = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4 ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gs
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !1762, !noalias !1765, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.ez, ptr %i.gz, align 8, !noalias !1768
  %i.ha = trunc nuw nsw i64 %i.gs to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 492
  store i16 %i.ha, ptr %i.hb, align 4, !noalias !1765
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i.unr-lcssa, label %bb.aj

bb.ak:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_2KVE15split_leaf_dataB2j_.exit.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fx, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !1737
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_.exit.i.i.i.i ], [ %i.gx, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod151)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.hc, %bb.al ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.al ]
  %i.hc = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !1762, !noalias !1765, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.ez, ptr %i.he, align 8, !noalias !1768
  %i.hf = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 492
  store i16 %i.hf, ptr %i.hg, align 4, !noalias !1765
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i, label %bb.al, !llvm.loop !1769

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i: ; preds = %bb.al, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.417.i.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.i.i39.sroa.5.i.i, i64 32, i1 false), !noalias !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i39.sroa.5.i.i)
  %spec.select.i41.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.ez, ptr %i.cm ; 11 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select.i41.i.i, i64 494 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !noalias !1770, !noundef !4 ; 2 uses
  %i.hj = zext i16 %i.hi to i64                   ; 5 uses
  %i.hk = add i16 %i.hi, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %spec.select.i41.i.i, i64 448 ; 2 uses
  %i.hm = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i8.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.hj
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i8.not.i.i.i, label %bb.am, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1K_9ExprErrorEEB1K_.exit.i9.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1K_9ExprErrorEEB1K_.exit.i9.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i
  store i32 %.sroa.0.077.i.i, ptr %i.hn, align 4, !alias.scope !1774, !noalias !1770
  %i.ho = getelementptr inbounds nuw i8, ptr %spec.select.i41.i.i, i64 8
  %i.hp = getelementptr inbounds nuw [40 x i8], ptr %i.ho, i64 %.sroa.5.0.i.i.i ; 2 uses
  store i64 %.sroa.7.sroa.6.072.i.i, ptr %i.hp, align 8, !noalias !1777
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.8.i.i, i64 32, i1 false), !noalias !1693
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i10.i.i.i

bb.am:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB2k_.exit.i.i.i
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hm
  %i.hr = sub nuw nsw i64 %i.hj, %.sroa.5.0.i.i.i ; 3 uses
  %i.hs = shl nuw nsw i64 %i.hr, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hq, ptr nonnull align 4 %i.hn, i64 %i.hs, i1 false), !alias.scope !1774, !noalias !1770
  store i32 %.sroa.0.077.i.i, ptr %i.hn, align 4, !alias.scope !1774, !noalias !1770
  %i.ht = getelementptr inbounds nuw i8, ptr %spec.select.i41.i.i, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %i.ht, i64 %.sroa.5.0.i.i.i ; 3 uses
  %i.hv = getelementptr inbounds nuw [40 x i8], ptr %i.ht, i64 %i.hm
  %i.hw = mul nuw nsw i64 %i.hr, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hv, ptr nonnull align 8 %i.hu, i64 %i.hw, i1 false), !alias.scope !1778, !noalias !1781
  store i64 %.sroa.7.sroa.6.072.i.i, ptr %i.hu, align 8, !noalias !1777
  %.sroa.7.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx35.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.8.i.i, i64 32, i1 false), !noalias !1693
  %i.hx = getelementptr inbounds nuw i8, ptr %spec.select.i41.i.i, i64 496 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hm
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.sroa.5.0.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = shl nuw nsw i64 %i.hr, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.hy, i64 %i.ib, i1 false), !alias.scope !1783, !noalias !1770
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i10.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i10.i.i.i: ; preds = %bb.am, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1K_9ExprErrorEEB1K_.exit.i9.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %spec.select.i41.i.i, i64 496 ; 6 uses
  %i.id = add nuw nsw i64 %i.hj, 2                ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.hm
  store ptr %.sroa.10.074.i.i, ptr %i.ie, align 8, !alias.scope !1783, !noalias !1770
  store i16 %i.hk, ptr %i.hh, align 2, !noalias !1770
  %i.if = icmp samesign ult i64 %i.hm, %i.id
  br i1 %i.if, label %.lr.ph.i.i11.i.i.i.preheader, label %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i10.i.i.i
  %i.ig = add nuw nsw i64 %i.hj, 1
  %i.ih = sub nsw i64 %i.ig, %.sroa.5.0.i.i.i
  %i.ii = sub nsw i64 %i.hj, %.sroa.5.0.i.i.i
  %xtraiter152 = and i64 %i.ih, 3                 ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.ij, %.lr.ph.i.i11.i.i.i.prol ], [ %i.hm, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.ij = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.ik = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.im = load ptr, ptr %i.il, align 8, !noalias !1770, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i41.i.i, ptr %i.im, align 8, !noalias !1770
  %i.in = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 492
  store i16 %i.in, ptr %i.io, align 4, !noalias !1770
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter152
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !1786

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.hm, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.ij, %.lr.ph.i.i11.i.i.i.prol ]
  %i.ip = icmp ult i64 %i.ii, 3
  br i1 %i.ip, label %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.iq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.sroa.0.06.i.i12.i.i.i
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !1770, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i41.i.i, ptr %i.is, align 8, !noalias !1770
  %i.it = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 492
  store i16 %i.it, ptr %i.iu, align 4, !noalias !1770
  %i.iv = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.iq
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !1770, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i41.i.i, ptr %i.ix, align 8, !noalias !1770
  %i.iy = trunc nuw nsw i64 %i.iq to i16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 492
  store i16 %i.iy, ptr %i.iz, align 4, !noalias !1770
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !1770, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i41.i.i, ptr %i.jc, align 8, !noalias !1770
  %i.jd = trunc nuw nsw i64 %i.iv to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 492
  store i16 %i.jd, ptr %i.je, align 4, !noalias !1770
  %i.jf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.jg = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jg)
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ja
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !1770, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i41.i.i, ptr %i.ji, align 8, !noalias !1770
  %i.jj = trunc nuw nsw i64 %i.ja to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 492
  store i16 %i.jj, ptr %i.jk, align 4, !noalias !1770
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.jf, %i.id
  br i1 %exitcond.not.i.i13.i.i.i.3, label %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i, label %.lr.ph.i.i11.i.i.i

_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i10.i.i.i
  store i64 %.sroa.4.i.i39.sroa.3.4.copyload.i.i, ptr %.sroa.721.i.i, align 8, !noalias !1787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.417.i.sroa.5.i.i, i64 32, i1 false), !noalias !1787
  br label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i.i.i.i
  %.sroa.14.0.i.i = phi ptr [ %i.ez, %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i ], [ undef, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.018.0.i.i = phi i32 [ %i.fj, %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i ], [ undef, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sink42.i.sroa.phi.i.i = phi ptr [ %.sroa.16.i.i, %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i ], [ %.sroa.721.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i.i.i.i ], [ %.sroa.721.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.721.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sink.i42.i.i = phi i64 [ %i.cn, %_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2j_9ExprErrorENtB1m_8InternalENtB1m_4EdgeE10insert_fitB2j_.exit15.i.i.i ], [ 2, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_.exit.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i42.i.i, ptr %.sink42.i.sroa.phi.i.i, align 8, !alias.scope !1713, !noalias !1787
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.sroa.5.i.i)
  %.sroa.721.i.i.0..sroa.721.i.i.0..sroa.721.i.i.0..sroa.721.i.0..sroa.721.i.0..sroa.721.0..sroa.721.0..sroa.721.8..i.i = load i64, ptr %.sroa.721.i.i, align 8, !range !1218, !noalias !1693, !noundef !4 ; 3 uses
  %.not37.i.i = icmp eq i64 %.sroa.721.i.i.0..sroa.721.i.i.0..sroa.721.i.i.0..sroa.721.i.0..sroa.721.i.0..sroa.721.0..sroa.721.0..sroa.721.8..i.i, 2
  br i1 %.not37.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i, i64 32, i1 false), !noalias !1693
  %.sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.72..i.i = load i64, ptr %.sroa.16.i.i, align 8, !noalias !1693, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  %i.jl = load ptr, ptr %i.cm, align 8, !noalias !1694, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ao:                                            ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2k_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4r_11VacantEntrymB1E_E12insert_entry0EB2k_.exit.i

_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2k_9ExprErrorENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4r_11VacantEntrymB1E_E12insert_entry0EB2k_.exit.i: ; preds = %bb.ao, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntrymINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB22_9ExprErrorEE12insert_entry0B22_.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.i.i)
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntrymINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB20_9ExprErrorEE12insert_entryB20_.exit

bb.ap:                                            ; preds = %.thread
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 496) #26, !noalias !1625
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB26_9ExprErrorENtB19_4LeafE16push_with_handleB26_.exit.i: ; preds = %.thread
  store ptr null, ptr %i.v, align 8, !noalias !1625
  %i.jm = getelementptr inbounds nuw i8, ptr %i.v, i64 494
  store ptr %i.v, ptr %1, align 8, !noalias !1625
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.jn, align 8, !noalias !1625
  store i16 1, ptr %i.jm, align 2, !noalias !1788
  %i.jo = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  store i32 %2, ptr %i.jo, align 8, !noalias !1788
  %i.jp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_2
