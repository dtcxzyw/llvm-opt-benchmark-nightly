Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expr-c49a31e1b3bb1312.uu_expr.1dfcadec2fff7288-cgu.0?download=true
inline.NumInlined: 1053
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsh036I4OHgIr_6uucore8CharByteuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0ECs2zCsf9UsIrc_7uu_expr:bb.a
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
  %i.bl = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtCsh036I4OHgIr_6uucore8CharByteECs2zCsf9UsIrc_7uu_expr(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bk) #24, !noalias !223 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bl, %i.ao            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !224
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !225

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
  br i1 %i.bv, label %bb.k, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

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
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !224
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !226

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
  store i64 %i.as, ptr %0, align 8, !alias.scope !227, !noalias !228
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !229, !noalias !230
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %i.cw, align 8, !alias.scope !231, !noalias !232
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
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !233
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !234 ; 19 uses
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
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dn, align 16, !noalias !234
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.do = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dp, ptr %i.dn, align 16, !noalias !234
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !234
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dr, align 8
  br label %.lr.ph.i13

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dv, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !234
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !234
  %i.dv = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dx, align 16, !noalias !234
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !234
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

.lr.ph.i13:                                       ; preds = %bb.t, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.ea, %bb.t ], [ 0, %._crit_edge.i.i ] ; 8 uses
  %i.ea = add nuw i64 %.sroa.014.04.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !234, !noundef !4
  %.not.i14 = icmp eq i8 %i.ec, -128
  br i1 %.not.i14, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.014.04.i, -1
  %.neg23.i = shl i64 %.neg.i, 3
  %i.ed = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 3 uses
  %i.ee = sub nsw i64 0, %.sroa.014.04.i
  %i.ef = getelementptr inbounds [8 x i8], ptr %.val25.i, i64 %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.o
  %i.eh = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtCsh036I4OHgIr_6uucore8CharByteECs2zCsf9UsIrc_7uu_expr(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.eg) #24, !noalias !235 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.eh, %i.f           ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !236
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !225

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.ek, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.fb, %.lr.ph.i28.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.0.0.lcssa.i.i, %i.em
  %i.eo = and i64 %i.en, %i.f                     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !234, !noundef !4
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.p, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !6

bb.p:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !234
  %i.es = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.et, 0
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i28.i ], [ 0, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.ey, %i.f          ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !236
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !226

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.p, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ev, %bb.p ], [ %i.eo, %._crit_edge.i27.i ] ; 4 uses
  %i.fc = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fd = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fe = xor i64 %i.fd, %i.fc
  %.unshifted.i = and i64 %i.fe, %i.f
  %i.ff = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ff, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fg = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.fh = sub nuw nsw i64 -8, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %.val25.i, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !234, !noundef !4
  %i.fl = lshr i64 %i.eh, 57
  %i.fm = trunc nuw nsw i64 %i.fl to i8           ; 2 uses
  %i.fn = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fo = and i64 %i.fn, %i.f
  store i8 %i.fm, ptr %i.fj, align 1, !noalias !234
  %i.fp = getelementptr i8, ptr %.val25.i, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store i8 %i.fm, ptr %i.fq, align 1, !noalias !234
  %i.fr = icmp eq i8 %i.fk, -1
  br i1 %i.fr, label %bb.s, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ed, align 1, !alias.scope !237, !noalias !239
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.fi, align 1, !alias.scope !238, !noalias !240
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ed, align 1, !alias.scope !237, !noalias !239
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.fi, align 1, !alias.scope !238, !noalias !240
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %4 = lshr i64 %i.eh, 57
  %5 = trunc nuw nsw i64 %4 to i8                 ; 2 uses
  %i.fs = add i64 %.sroa.014.04.i, -16
  %i.ft = and i64 %i.fs, %i.f
  store i8 %5, ptr %i.eb, align 1, !noalias !234
  %i.fu = getelementptr i8, ptr %.val25.i, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 %5, ptr %i.fv, align 1, !noalias !234
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %6 = add i64 %.sroa.014.04.i, -16
  %7 = and i64 %6, %i.f
  store i8 -1, ptr %i.eb, align 1, !noalias !234
  %8 = getelementptr i8, ptr %.val25.i, i64 %7
  %9 = getelementptr i8, ptr %8, i64 16
  store i8 -1, ptr %9, align 1, !noalias !234
  %10 = load i64, ptr %i.ed, align 1, !noalias !234
  store i64 %10, ptr %i.fi, align 1, !noalias !234
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.t, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = sub nuw i64 %.sroa.03.0.i, %i.b
  store i64 %i.fx, ptr %i.fw, align 8, !alias.scope !234
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.am, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.013.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2zCsf9UsIrc_7uu_expr.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.al, %bb.j ]
  %i.fy = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.fz = insertvalue { i64, i64 } %i.fy, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.fz
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !283, !noalias !284, !nonnull !4, !noundef !4 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 494 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noalias !285, !noundef !4 ; 3 uses
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !283, !noalias !284, !noundef !4 ; 9 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !286, !noalias !285, !noundef !4
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.k, %i.r                       ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.t, i1 false), !alias.scope !286, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.n ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !alias.scope !288, !noalias !285
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = mul nuw nsw i64 %i.s, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.w, i64 %i.x, i1 false), !alias.scope !289, !noalias !290
  %i.y = add i16 %i.j, -1                         ; 3 uses
  store i16 %i.y, ptr %i.i, align 2, !noalias !285
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !283, !noalias !284, !noundef !4 ; 9 uses
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
  %i.ac = load ptr, ptr %i.h, align 8, !noalias !291, !noundef !4 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = add i64 %i.aa, 1                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 492
  %i.af = load i16, ptr %i.ae, align 4, !noalias !291 ; 3 uses
  %.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 494
  %i.ah = load i16, ptr %i.ag, align 2, !noalias !292, !noundef !4
  %.not62.i = icmp eq i16 %i.ah, 0
  br i1 %.not62.i, label %bb.e, label %bb.g, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #25, !noalias !292
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
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !292, !nonnull !4, !noundef !4 ; 2 uses
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
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !292, !nonnull !4, !noundef !4 ; 2 uses
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
  %i.bn = load ptr, ptr %i.bk, align 8, !noalias !293, !noundef !4 ; 3 uses
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

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l
end_hunk_0
