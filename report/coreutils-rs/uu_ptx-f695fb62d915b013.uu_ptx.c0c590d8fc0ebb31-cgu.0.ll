inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTcuEE14reserve_rehashNCINvNtB8_3map11make_hashercuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0ECsgy7pbN39oAf_6uu_ptx:bb.a
  %.sroa.7.012.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.ap = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ad, i1 false), !noalias !61
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = load ptr, ptr %0, align 8, !alias.scope !62, !noalias !65, !nonnull !4, !noundef !4 ; 5 uses
  %i.av = icmp eq i64 %i.b, 0
  br i1 %i.av, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit
  %.val241 = load <16 x i8>, ptr %i.au, align 16
  %i.aw = icmp sgt <16 x i8> %.val241, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %.val.i.i = load i64, ptr %2, align 8, !noalias !67, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.ay, align 8, !noalias !67, !noundef !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.025.055 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.025.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.054 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.053 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.052 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i147 = icmp eq i16 %.sroa.13.052, 0
  br i1 %.not.i147, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.025.149 = phi ptr [ %i.az, %.lr.ph ], [ %.sroa.025.055, %.preheader ] ; 2 uses
  %.sroa.5.148 = phi i64 [ %i.bc, %.lr.ph ], [ %.sroa.5.054, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.149) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.025.149, i64 16 ; 3 uses
  %.val42 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val42, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.148, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.052, %.preheader ], [ %i.bb, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.054, %.preheader ], [ %i.bc, %.lr.ph ] ; 2 uses
  %.sroa.025.1.lcssa = phi ptr [ %.sroa.025.055, %.preheader ], [ %i.az, %.lr.ph ]
  %i.bd = add i16 %.sroa.13.1.lcssa, -1
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf         ; 2 uses
  %i.bi = add i64 %.sroa.9.053, -1                ; 2 uses
  %i.bj = sub nsw i64 0, %i.bh
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bm = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRcECsgy7pbN39oAf_6uu_ptx(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bl) #28, !noalias !73 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bm, %i.ap            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !noalias !74
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !77

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bp, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.cg, %.lr.ph.i ]
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.br
  %i.bt = and i64 %i.bs, %i.ap                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !4
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.k, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !52

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.as, align 16
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cc = add i64 %i.cb, 16                       ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cd, %i.ap            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !74
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !78

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.k ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i5.i
  %i.ci = lshr i64 %i.bm, 57
  %i.cj = trunc nuw nsw i64 %i.ci to i8           ; 2 uses
  %i.ck = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cl = and i64 %i.ck, %i.ap
  store i8 %i.cj, ptr %i.ch, align 1
  %i.cm = getelementptr i8, ptr %i.as, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 %i.cj, ptr %i.cn, align 1
  %i.co = shl i64 %i.bh, 2
  %i.cp = sub nuw nsw i64 -4, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.au, i64 %i.cp
  %i.cr = shl nuw i64 %.sroa.0.0.i5.i, 2
  %i.cs = sub nuw nsw i64 -4, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.as, i64 %i.cs
  %i.cu = load i32, ptr %i.cq, align 1
  store i32 %i.cu, ptr %i.ct, align 4
  %i.cv = icmp eq i64 %i.bi, 0
  br i1 %i.cv, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit
  %i.cw = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.at, ptr %0, align 8, !alias.scope !79, !noalias !82
  store i64 %i.ap, ptr %i.e, align 8, !alias.scope !84, !noalias !86
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %i.cx, align 8, !alias.scope !88, !noalias !90
  %i.cy = icmp eq i64 %i.f, 0
  br i1 %i.cy, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.cz = shl nuw i64 %i.h, 2
  %i.da = add nuw i64 %i.cz, 12
  %i.db = icmp ult i64 %i.h, 4611686018427387901
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = and i64 %i.da, -16                      ; 3 uses
  %i.dd = add nsw i64 %i.f, 17
  %i.de = add i64 %i.dd, %i.dc                    ; 4 uses
  %i.df = icmp uge i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.de, 9223372036854775793
  tail call void @llvm.assume(i1 %i.df)
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.di = sub nsw i64 0, %i.dc
  %i.dj = getelementptr inbounds i8, ptr %i.au, i64 %i.di
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !92
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !97 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.dk = lshr i64 %i.h, 4
  %i.dl = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dl, 0
  %i.dm = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dk, %i.dm ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dn = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dw, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.do = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.do, align 16, !noalias !97
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dp = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dq = or <2 x i64> %i.dp, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dq, ptr %i.do, align 16, !noalias !97
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !97
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.ds, align 8
  br label %.lr.ph.i13

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dw, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dt, align 16, !noalias !97
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.du = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dv = or <2 x i64> %i.du, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dv, ptr %i.dt, align 16, !noalias !97
  %i.dw = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dy, align 16, !noalias !97
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dy, align 16, !noalias !97
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

.lr.ph.i13:                                       ; preds = %bb.v, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.eb, %bb.v ], [ 0, %._crit_edge.i.i ] ; 8 uses
  %i.eb = add nuw i64 %.sroa.014.04.i, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !97, !noundef !4
  %.not.i14 = icmp eq i8 %i.ed, -128
  br i1 %.not.i14, label %bb.o, label %bb.v

bb.o:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.014.04.i, -1
  %.neg23.i = shl i64 %.neg.i, 2
  %4 = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 3 uses
  %5 = sub nsw i64 0, %.sroa.014.04.i
  %6 = getelementptr inbounds [4 x i8], ptr %.val25.i, i64 %5
  %i.ee = getelementptr inbounds i8, ptr %6, i64 -4
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  %i.ef = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRcECsgy7pbN39oAf_6uu_ptx(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ee) #28, !noalias !100 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.ef, %i.f           ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.eg, align 1, !noalias !104
  %i.eh = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ei, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !77

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %bb.p
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.p ], [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.ei, %bb.p ], [ %i.ez, %.lr.ph.i28.i ]
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  %i.el = add i64 %.sroa.0.0.lcssa.i.i, %i.ek
  %i.em = and i64 %i.el, %i.f                     ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !97, !noundef !4
  %i.ep = icmp sgt i8 %i.eo, -1
  br i1 %i.ep, label %bb.q, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !52

bb.q:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !97
  %i.eq = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.er, 0
  %i.es = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.er, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.p, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %bb.p ]
  %i.eu = phi i64 [ %i.ev, %.lr.ph.i28.i ], [ 0, %bb.p ]
  %i.ev = add i64 %i.eu, 16                       ; 2 uses
  %i.ew = add i64 %i.ev, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.ew, %i.f          ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ex, align 1, !noalias !104
  %i.ey = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ez = bitcast <16 x i1> %i.ey to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !78

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.q, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.et, %bb.q ], [ %i.em, %._crit_edge.i27.i ] ; 4 uses
  %i.fa = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fb = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fc = xor i64 %i.fb, %i.fa
  %.unshifted.i = and i64 %i.fc, %i.f
  %i.fd = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fd, label %bb.s, label %bb.r, !prof !27

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fe = shl i64 %.sroa.0.0.i5.i.i, 2
  %i.ff = sub nuw nsw i64 -4, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %.val25.i, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !97, !noundef !4
  %i.fj = lshr i64 %i.ef, 57
  %i.fk = trunc nuw nsw i64 %i.fj to i8           ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fm = and i64 %i.fl, %i.f
  store i8 %i.fk, ptr %i.fh, align 1, !noalias !97
  %i.fn = getelementptr i8, ptr %.val25.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  store i8 %i.fk, ptr %i.fo, align 1, !noalias !97
  %i.fp = icmp eq i8 %i.fi, -1
  br i1 %i.fp, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fq = lshr i64 %i.ef, 57
  %i.fr = trunc nuw nsw i64 %i.fq to i8           ; 2 uses
  %i.fs = add i64 %.sroa.014.04.i, -16
  %i.ft = and i64 %i.fs, %i.f
  store i8 %i.fr, ptr %i.ec, align 1, !noalias !97
  %i.fu = getelementptr i8, ptr %.val25.i, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 %i.fr, ptr %i.fv, align 1, !noalias !97
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.fw = add i64 %.sroa.014.04.i, -16
  %i.fx = and i64 %i.fw, %i.f
  store i8 -1, ptr %i.ec, align 1, !noalias !97
  %i.fy = getelementptr i8, ptr %.val25.i, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 -1, ptr %i.fz, align 1, !noalias !97
  %i.ga = load i32, ptr %4, align 1, !noalias !97
  store i32 %i.ga, ptr %i.fg, align 1, !noalias !97
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.sroa.0.0.copyload.i.i5.i.i = load i32, ptr %4, align 1, !alias.scope !107, !noalias !112
  %.sroa.02.0.copyload.i.i6.i.i = load i32, ptr %i.fg, align 1, !alias.scope !110, !noalias !113
  store i32 %.sroa.02.0.copyload.i.i6.i.i, ptr %4, align 1, !alias.scope !107, !noalias !112
  store i32 %.sroa.0.0.copyload.i.i5.i.i, ptr %i.fg, align 1, !alias.scope !110, !noalias !113
  br label %bb.p

bb.v:                                             ; preds = %bb.t, %bb.s, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.v, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.gc, ptr %i.gb, align 8, !alias.scope !97
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.011.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.an, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.am, %bb.j ]
  %i.gd = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ge = insertvalue { i64, i64 } %i.gd, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.ge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsgy7pbN39oAf_6uu_ptx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !117
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !117 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !117
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i64 1, ptr %i.c, align 8, !noalias !114
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !114
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !114
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !127, !noalias !128, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !127, !noalias !128, !noundef !4 ; 5 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i3, i64 16 ; 2 uses
  %i.m = add i64 %.sroa.8.0.i.i2, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %.sroa.0.0.i.i3 = phi ptr [ %i.l, %bb.c ], [ %i.g, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %.sroa.8.0.i.i2 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i.i3, align 8, !noalias !130
  %i.o = icmp eq i128 %.val.i.i, 63958622876645927927552189038096644140
  br i1 %i.o, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %i.p = load i64, ptr %i.b, align 8, !range !131, !alias.scope !132, !noalias !135, !noundef !4
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgy7pbN39oAf_6uu_ptx.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #31, !noalias !135
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !132, !noalias !135
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgy7pbN39oAf_6uu_ptx.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %bb.d, %._crit_edge
  %i.r = phi ptr [ %i.g, %._crit_edge ], [ %.pre.i.i, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i ; 2 uses
  store i64 -5875614554295535572, ptr %i.s, align 8, !noalias !137
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !137
  %i.t = add i64 %i.i, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !132, !noalias !135
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !138, !noalias !141, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !131, !alias.scope !138, !noalias !141, !noundef !4
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.thread.i

bb.e:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgy7pbN39oAf_6uu_ptx.exit.i.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #31, !noalias !141
  br label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.thread.i

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.thread.i: ; preds = %bb.e, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgy7pbN39oAf_6uu_ptx.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !138, !noalias !141, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 %i.e, ptr %i.ab, align 8, !noalias !143
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 ptrtoint (ptr @17 to i64), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !143
  %.sroa.10.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i, align 8, !noalias !143
  %.sroa.13.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i, align 8, !noalias !143
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !138, !noalias !141
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgy7pbN39oAf_6uu_ptx.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !127, !noalias !128, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.sroa.8.0.i.i2, %i.ae
  br i1 %i.af, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i2, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #27, !noalias !130
  unreachable

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !127, !noalias !128, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i2 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !alias.scope !144, !noalias !130
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !148, !noalias !149 ; 2 uses
  store i64 %i.e, ptr %i.ai, align 1, !alias.scope !148, !noalias !149
  store i64 ptrtoint (ptr @17 to i64), ptr %i.aj, align 1, !alias.scope !151, !noalias !152
  store <2 x i64> %i.am, ptr %i.a, align 16, !alias.scope !137, !noalias !154
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x i64>, ptr %i.ak, align 1, !alias.scope !155, !noalias !130
  store i64 -5875614554295535572, ptr %i.ak, align 1, !alias.scope !158, !noalias !159
  store i64 3467203893602029906, ptr %i.al, align 1, !alias.scope !161, !noalias !162
  store <2 x i64> %i.an, ptr %.sroa.10.0..sroa_idx.i, align 16, !alias.scope !137, !noalias !154
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgy7pbN39oAf_6uu_ptx.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.i
  %i.ap = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to ptr
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !164
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgy7pbN39oAf_6uu_ptx.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #31, !noalias !114
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgy7pbN39oAf_6uu_ptx.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.thread.i, %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgy7pbN39oAf_6uu_ptx.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !173, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !174, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !174
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.c, align 8            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !24, !noundef !4 ; 3 uses
  %i.e = load ptr, ptr %.val3, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void %i.e(ptr noundef nonnull %.val2) #29, !inline_history !177
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !131, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !25, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBK_5boxed3BoxDNtNtNtB4_2io5write5WriteEL_EEECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !181, !alias.scope !178, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EENtNtNtB1w_3ops4drop4Drop4dropCsgy7pbN39oAf_6uu_ptx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE9flush_bufCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #28 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EENtNtNtB1w_3ops4drop4Drop4dropCsgy7pbN39oAf_6uu_ptx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i.i
    i64 1, label %bb.e
  ], !prof !182

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
end_hunk_0
begin_hunk_1_@_RNvCsgy7pbN39oAf_6uu_ptx15create_word_set:bb.a
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.010.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 5 uses
  %.sroa.010.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 4 uses
  %.sroa.010.sroa.0.sroa.4.sroa.3.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.010.sroa.0.sroa.4.sroa.4.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 4 uses
  %.sroa.010.sroa.0.sroa.4.sroa.7.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.010.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = icmp eq i64 %i.u, 3
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ba = load i8, ptr %i.az, align 2, !range !181
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bd = load i8, ptr %i.bc, align 8, !range !181
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i = load i64, ptr %i.bj, align 8          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val5.i = load i64, ptr %i.bk, align 8         ; 2 uses
  %i.bl = xor i64 %.val.i, 8317987319222330741    ; 2 uses
  %i.bm = xor i64 %.val5.i, 7237128888997146477   ; 2 uses
  %i.bn = xor i64 %.val.i, 7816392313619706465    ; 2 uses
  %i.bo = xor i64 %.val5.i, 8387220255154660723   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = load ptr, ptr %i.bf, align 8, !nonnull !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 121
  %i.bt = load i8, ptr %i.bs, align 1, !range !181
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.val.i85 = load i64, ptr %i.bz, align 8        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val5.i86 = load i64, ptr %i.ca, align 8       ; 2 uses
  %i.cb = xor i64 %.val.i85, 8317987319222330741  ; 2 uses
  %i.cc = xor i64 %.val5.i86, 7237128888997146477 ; 2 uses
  %i.cd = xor i64 %.val.i85, 7816392313619706465  ; 2 uses
  %i.ce = xor i64 %.val5.i86, 8387220255154660723 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.bv, align 8, !nonnull !4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.cj = load i8, ptr %i.ci, align 4, !range !181
  %i.ck = trunc nuw i8 %i.cj to i1
  %.sroa.8.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.16236.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %brmerge.not = select i1 %i.bu, i1 %i.by, i1 false
  br label %bb.d

.loopexit:                                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit, %bb.d
  %.sroa.10.1.lcssa = phi i64 [ %.sroa.10.0733, %bb.d ], [ %.sroa.10.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %.sroa.7.1.lcssa = phi i64 [ %.sroa.7.0734, %bb.d ], [ %.sroa.7.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0342735, %bb.d ], [ %.sroa.0.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %i.cm = icmp eq ptr %i.cn, %i.ah
  br i1 %i.cm, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph737, %.loopexit
  %.sroa.0.0736 = phi ptr [ %i.ae, %.lr.ph737 ], [ %i.cn, %.loopexit ] ; 6 uses
  %.sroa.0.0342735 = phi ptr [ null, %.lr.ph737 ], [ %.sroa.0.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.7.0734 = phi i64 [ undef, %.lr.ph737 ], [ %.sroa.7.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.10.0733 = phi i64 [ 0, %.lr.ph737 ], [ %.sroa.10.1.lcssa, %.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %.idx741 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx741
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.cw = getelementptr i8, ptr %.sroa.0.0736, i64 8
  %i.cx = getelementptr i8, ptr %.sroa.0.0736, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.10.1.lcssa, %.loopexit ]
  %.sroa.7.0.lcssa = phi i64 [ undef, %bb.c ], [ %.sroa.7.1.lcssa, %.loopexit ]
  %.sroa.0.0342.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0.1.lcssa, %.loopexit ]
  store ptr %.sroa.0.0342.lcssa, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.lcssa, ptr %.sroa.10.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dr

bb.e:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.04.0730 = phi i64 [ 0, %.lr.ph ], [ %i.gq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 7 uses
  %.sroa.07.0729 = phi ptr [ %i.cr, %.lr.ph ], [ %i.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 3 uses
  %.sroa.0.1728 = phi ptr [ %.sroa.0.0342735, %.lr.ph ], [ %.sroa.0.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ]
  %.sroa.7.1727 = phi i64 [ %.sroa.7.0734, %.lr.ph ], [ %.sroa.7.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ]
  %.sroa.10.1726 = phi i64 [ %.sroa.10.0733, %.lr.ph ], [ %.sroa.10.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.07.0729, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.0729, i64 8 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.07.0729, i64 16 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4
  %.val = load ptr, ptr %i.o, align 8
  %.val62 = load ptr, ptr %i.aj, align 8
  call fastcc void @_RNvMs4_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex7find_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.m, ptr %.val, ptr %.val62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.dc) #29
  %i.dd = load ptr, ptr %i.m, align 8, !noundef !4
  %.not = icmp eq ptr %i.dd, null                 ; 2 uses
  %i.de = load i64, ptr %i.ak, align 8
  %i.df = load i64, ptr %i.al, align 8
  %.sroa.049.0 = select i1 %.not, i64 0, i64 %i.de
  %.sroa.050.0 = select i1 %.not, i64 0, i64 %i.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dg = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dh = load i64, ptr %i.db, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.di = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.dj = load i8, ptr %i.ao, align 8, !range !181, !noalias !1518, !noundef !4
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i, label %bb.f, !prof !27

._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i: ; preds = %bb.e
  %.val.pre.i.i.i = load i64, ptr %i.an, align 8, !noalias !1515
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i

bb.f:                                             ; preds = %bb.e
  %i.dl = atomicrmw add ptr @_RNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8, !noalias !1525 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.g, label %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, !prof !52

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @205, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #27, !noalias !1525
  unreachable

_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i: ; preds = %bb.f
  store i64 %i.dl, ptr %i.an, align 8, !noalias !1525
  store i8 1, ptr %i.ao, align 8, !noalias !1525
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, %._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i
  %.val.i.i.i = phi i64 [ %.val.pre.i.i.i, %._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i ], [ %i.dl, %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8, !noalias !1515 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i.i, %i.do
  br i1 %i.dp, label %bb.i, label %bb.h, !prof !27

bb.h:                                             ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i
  call fastcc void @_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE8get_slowCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.di, i64 noundef %.val.i.i.i, i64 noundef %i.do) #28
  br label %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit

bb.i:                                             ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i
  store atomic i64 1, ptr %i.dn release, align 8, !noalias !1515
  %i.dq = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.di, ptr %i.ap, align 8, !alias.scope !1515
  store i64 1, ptr %i.j, align 8, !alias.scope !1515
  store ptr %i.dq, ptr %i.aq, align 8, !alias.scope !1515
  store i8 0, ptr %i.ar, align 8, !alias.scope !1515
  br label %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit

_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 0, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.010.sroa.0.sroa.4.0..sroa_idx, align 8
  store ptr %i.dg, ptr %.sroa.010.sroa.0.sroa.4.sroa.3.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %i.dh, ptr %.sroa.010.sroa.0.sroa.4.sroa.4.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %i.dh, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i8 0, ptr %.sroa.010.sroa.0.sroa.4.sroa.7.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store ptr %i.q, ptr %.sroa.010.sroa.2.0..sroa_idx, align 8
  store ptr %i.dg, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.dh, ptr %.sroa.311.0..sroa_idx, align 8
  %i.dr = add i64 %.sroa.04.0730, %i.cp           ; 5 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.10.2.ph.ph = phi i64 [ %i.ahe, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i ], [ %.sroa.10.1726, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit ] ; 3 uses
  %.sroa.7.2.ph.ph = phi i64 [ %.sroa.7.4, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i ], [ %.sroa.7.1727, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit ] ; 7 uses
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.4, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i ], [ %.sroa.0.1728, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit ] ; 9 uses
  %.not.i.i105 = icmp eq ptr %.sroa.0.2.ph.ph, null
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, %.outer
  %i.ds = load ptr, ptr %.sroa.010.sroa.2.0..sroa_idx, align 8, !nonnull !4, !align !24, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1542
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.dt = load i64, ptr %i.l, align 8, !range !489, !alias.scope !1547, !noalias !1548, !noundef !4
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = load ptr, ptr %i.au, align 8, !nonnull !4, !align !24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.at, align 8, !nonnull !4
  %.sroa.0.0.i.i.i = select i1 %i.du, ptr %i.dw, ptr %i.dx
  %.val.i.i.i67 = load ptr, ptr %i.ds, align 8, !alias.scope !1551, !noalias !1552, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i67, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1556, !nonnull !4, !noundef !4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 138
  %i.eb = load i8, ptr %i.ea, align 2, !range !1071, !noalias !1556, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.eb, 2
  br i1 %cond.i.i.i.i, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.ec = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1562, !noalias !1563, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ec, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 168
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1565 ; 8 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 60
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !1565, !noundef !4
  %i.ef = and i32 %i.ee, 1
  %.not6.i.i.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not6.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.ad

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.eg = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1562, !noalias !1563, !noundef !4 ; 6 uses
  %i.eh = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.4.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1562, !noalias !1563, !noundef !4 ; 3 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.l, label %._crit_edge.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !noalias !1565, !noundef !4
  %i.el = and i32 %i.ek, 2
  %.not7.i.i.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not7.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ad

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %._crit_edge.i.i.i
  %i.em = load i64, ptr %.pre.i.i.i, align 8, !range !489, !noalias !1565, !noundef !4
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %bb.m, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !1565
  %i.eq = call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 %i.ec) ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.es = load i32, ptr %.sroa.010.sroa.0.sroa.4.0..sroa_idx, align 8, !range !329, !alias.scope !1562, !noalias !1563, !noundef !4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !1565, !noundef !4
  %i.ew = and i32 %i.ev, 1
  %.not8.i.i.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not8.i.i.i.i.i, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  %i.ey = load i32, ptr %i.ex, align 8, !noalias !1565, !noundef !4
  %i.ez = and i32 %i.ey, 2
  %.not9.i.i.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not9.i.i.i.i.i, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !489, !noalias !1565, !noundef !4
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i

_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i: ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1565
  %i.ff = icmp ugt i64 %i.eq, %i.fe
  br i1 %i.ff, label %bb.ad, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i

_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %bb.q, %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i67, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !1556, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i.i.i67, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1556, !nonnull !4, !align !24, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !range !25, !invariant.load !4, !noalias !1556
  %i.fm = add nsw i64 %i.fl, -1
  %i.fn = and i64 %i.fm, -16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !4, !noalias !1556, !nonnull !4
  call void %i.fr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.fp, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.010.sroa.0.sroa.4.0..sroa_idx) #29, !noalias !1566, !inline_history !1567
  %.sroa.052.0.copyload.pr.i.i = load i64, ptr %i.e, align 8, !noalias !1568
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1568 ; 5 uses
  switch i64 %.sroa.052.0.copyload.pr.i.i, label %bb.s [
    i64 2, label %bb.r
    i64 0, label %bb.ad
  ]

bb.r:                                             ; preds = %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  br label %bb.aa

bb.s:                                             ; preds = %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.f, align 8, !noalias !1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !1568
  %.cast.i.i = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64 ; 2 uses
  %i.fs = load i64, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !1568, !noundef !4 ; 6 uses
  %.not.i.i68 = icmp ugt i64 %i.fs, %.cast.i.i
  br i1 %.not.i.i68, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.v, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1572
  store i64 %i.fs, ptr %i.d, align 8, !noalias !1572
  store i64 %i.eg, ptr %i.ax, align 8, !noalias !1572
  %.not.i51.i.i = icmp ugt i64 %i.eg, %i.eh
  %i.ft = add i64 %i.eg, 1
  %.not8.i.i.i = icmp ugt i64 %i.fs, %i.ft
  %or.cond.i.i.i = or i1 %.not.i51.i.i, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %bb.u, label %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i, !prof !5

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1572
  store i64 %i.eh, ptr %i.c, align 8, !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1572
  store ptr %i.d, ptr %i.b, align 8, !noalias !1572
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs5skpMncfVhl_14regex_automata4util6searchNtB5_4SpanNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1572
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.fu, align 8, !noalias !1572
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !1572
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27, !noalias !1573
  unreachable

_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %bb.t
  store i64 %i.fs, ptr %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1574, !noalias !1566
  store i64 %i.eg, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1574, !noalias !1566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1572
  store i64 1, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1575, !noalias !1566
  store i64 %i.fs, ptr %i.av, align 8, !alias.scope !1575, !noalias !1566
  %.sroa.419.i.sink.i.sroa.speculate.load._RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i = load i64, ptr %i.as, align 8, !noalias !1542
  br label %bb.ab

bb.v:                                             ; preds = %bb.s
  %i.fv = load i64, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8, !range !489, !alias.scope !1575, !noalias !1566, !noundef !4
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = load i64, ptr %i.av, align 8, !alias.scope !1575, !noalias !1566
  %i.fy = icmp eq i64 %i.fs, %i.fx
  %or.cond.i.i = select i1 %i.fw, i1 %i.fy, i1 false, !prof !1576
  br i1 %or.cond.i.i, label %bb.w, label %bb.t, !prof !1576

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1568
  call void @_RINvMNtNtCs5skpMncfVhl_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs6_NtNtB7_4meta5regexNtB1D_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0EB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.sroa.010.sroa.0.sroa.2.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #31, !noalias !1577
  %i.fz = load i64, ptr %i.g, align 8, !range !248, !noalias !1568, !noundef !4 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 2
  %i.gb = load ptr, ptr %i.aw, align 8, !noalias !1568 ; 3 uses
  br i1 %i.ga, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1568
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.sroa.419.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx.i.i, align 8, !noalias !1568 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1568
  %i.gc = trunc nuw i64 %i.fz to i1
end_hunk_1
begin_hunk_2_@_RNvCsgy7pbN39oAf_6uu_ptx15create_word_set:bb.a
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.aas
  store ptr %.sroa.9.0119.i.i.i, ptr %i.abe, align 8, !alias.scope !1828, !noalias !1831
  store i16 %i.aar, ptr %i.aam, align 2, !noalias !1831
  %i.abf = icmp samesign ult i64 %i.aas, %i.abd
  br i1 %i.abf, label %.lr.ph.i.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i
  %i.abg = add nuw nsw i64 %i.aaq, 1
  %i.abh = sub nsw i64 %i.abg, %i.aal
  %i.abi = sub nsw i64 %i.aaq, %i.aal
  %xtraiter1713 = and i64 %i.abh, 3               ; 2 uses
  %lcmp.mod1714.not = icmp eq i64 %xtraiter1713, 0
  br i1 %lcmp.mod1714.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.abj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aas, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter1715 = phi i64 [ %prol.iter1715.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.abj = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.abk = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.abk)
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.abm = load ptr, ptr %i.abl, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 880
  store ptr %i.aah, ptr %i.abn, align 8, !noalias !1831
  %i.abo = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 888
  store i16 %i.abo, ptr %i.abp, align 8, !noalias !1831
  %prol.iter1715.next = add i64 %prol.iter1715, 1 ; 2 uses
  %prol.iter1715.cmp.not = icmp eq i64 %prol.iter1715.next, %xtraiter1713
  br i1 %prol.iter1715.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1832

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.aas, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.abj, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.abq = icmp ult i64 %i.abi, 3
  br i1 %i.abq, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.acj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.abr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.abt = load ptr, ptr %i.abs, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 880
  store ptr %i.aah, ptr %i.abu, align 8, !noalias !1831
  %i.abv = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abt, i64 888
  store i16 %i.abv, ptr %i.abw, align 8, !noalias !1831
  %i.abx = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.abr
  %i.abz = load ptr, ptr %i.aby, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 880
  store ptr %i.aah, ptr %i.aca, align 8, !noalias !1831
  %i.acb = trunc nuw nsw i64 %i.abr to i16
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 888
  store i16 %i.acb, ptr %i.acc, align 8, !noalias !1831
  %i.acd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.abx
  %i.acf = load ptr, ptr %i.ace, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 880
  store ptr %i.aah, ptr %i.acg, align 8, !noalias !1831
  %i.ach = trunc nuw nsw i64 %i.abx to i16
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 888
  store i16 %i.ach, ptr %i.aci, align 8, !noalias !1831
  %i.acj = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.ack = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ack)
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.acd
  %i.acm = load ptr, ptr %i.acl, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 880
  store ptr %i.aah, ptr %i.acn, align 8, !noalias !1831
  %i.aco = trunc nuw nsw i64 %i.acd to i16
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 888
  store i16 %i.aco, ptr %i.acp, align 8, !noalias !1831
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.acj, %i.abd
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cx
  switch i16 %i.aak, label %bb.db [
    i16 5, label %bb.dd
    i16 6, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  %i.acq = add nsw i64 %i.aal, -7
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cx
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.dc ], [ 6, %bb.db ], [ 4, %bb.cx ], [ 5, %bb.da ] ; 5 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.dc ], [ %i.acq, %bb.db ], [ %i.aal, %bb.cx ], [ 5, %bb.da ] ; 7 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.dc ], [ true, %bb.db ], [ false, %bb.cx ], [ false, %bb.da ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1834
  %i.acr = call noalias noundef align 8 dereferenceable_or_null(992) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 992, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1834 ; 13 uses
  %i.acs = icmp eq ptr %i.acr, null
  br i1 %i.acs, label %bb.de, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i, !prof !52

bb.de:                                            ; preds = %bb.dd
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 992) #30, !noalias !1834
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i: ; preds = %bb.dd
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 880
  store ptr null, ptr %i.act, align 8, !noalias !1834
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 890 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.435.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.acv = load i16, ptr %i.aam, align 2, !noalias !1841, !noundef !4
  %i.acw = zext i16 %i.acv to i64
  %i.acx = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.acy = add nsw i64 %i.acw, %i.acx             ; 4 uses
  %i.acz = trunc i64 %i.acy to i16
  store i16 %i.acz, ptr %i.acu, align 2, !alias.scope !1838, !noalias !1843
  %i.ada = icmp ult i64 %i.acy, 12
  br i1 %i.ada, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_.exit.i.i.i.i.i, label %bb.df, !prof !1774

bb.df:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.acy, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #27, !noalias !1841
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i
  %i.adb = getelementptr inbounds nuw [80 x i8], ptr %i.aah, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  %i.adc = getelementptr i8, ptr %i.adb, i64 80
  %i.add = mul nuw nsw i64 %i.acy, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(896) %i.acr, ptr nonnull readonly align 8 %i.adc, i64 %i.add, i1 false), !alias.scope !1844, !noalias !1843
  %i.ade = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.ade, ptr %i.aam, align 2, !noalias !1841
  %.sroa.034.0.copyload.i.i.i = load i64, ptr %i.adb, align 8, !noalias !1812 ; 3 uses
  %.sroa.435.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.435.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.435.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !1812
  %i.adf = load i16, ptr %i.acu, align 2, !noalias !1834, !noundef !4 ; 3 uses
  %i.adg = zext i16 %i.adf to i64
  %i.adh = add nuw nsw i64 %i.adg, 1              ; 5 uses
  %i.adi = icmp ult i16 %i.adf, 12
  br i1 %i.adi, label %bb.dg, label %bb.dj, !prof !1774

bb.dg:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_.exit.i.i.i.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acr, i64 896 ; 6 uses
  %i.adk = zext i16 %i.aan to i64
  %i.adl = sub nuw nsw i64 %i.adk, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.adm = icmp eq i64 %i.adl, %i.adh
  br i1 %i.adm, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i, label %bb.dh, !prof !27

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #27, !noalias !1853
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i: ; preds = %bb.dg
  %i.adn = getelementptr i8, ptr %i.aah, i64 904
  %i.ado = getelementptr [8 x i8], ptr %i.adn, i64 %.sroa.06.0.i.i.i.i
  %i.adp = shl nuw nsw i64 %i.adh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adj, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ado, i64 %i.adp, i1 false), !alias.scope !1854, !noalias !1834
  %i.adq = icmp ne i64 %i.aai, 0
  call void @llvm.assume(i1 %i.adq)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %xtraiter = and i64 %i.adh, 3                   ; 3 uses
  %i.adr = icmp ult i16 %i.adf, 3
  br i1 %i.adr, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.adh, 28
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new ], [ %i.aek, %bb.di ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.di ]
  %i.ads = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.adu = load ptr, ptr %i.adt, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 880
  store ptr %i.acr, ptr %i.adv, align 8, !noalias !1861
  %i.adw = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 888
  store i16 %i.adw, ptr %i.adx, align 8, !noalias !1858
  %i.ady = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.ads
  %i.aea = load ptr, ptr %i.adz, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 880
  store ptr %i.acr, ptr %i.aeb, align 8, !noalias !1861
  %i.aec = trunc nuw nsw i64 %i.ads to i16
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aea, i64 888
  store i16 %i.aec, ptr %i.aed, align 8, !noalias !1858
  %i.aee = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.ady
  %i.aeg = load ptr, ptr %i.aef, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 880
  store ptr %i.acr, ptr %i.aeh, align 8, !noalias !1861
  %i.aei = trunc nuw nsw i64 %i.ady to i16
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 888
  store i16 %i.aei, ptr %i.aej, align 8, !noalias !1858
  %i.aek = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.aee
  %i.aem = load ptr, ptr %i.ael, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 880
  store ptr %i.acr, ptr %i.aen, align 8, !noalias !1861
  %i.aeo = trunc nuw nsw i64 %i.aee to i16
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 888
  store i16 %i.aeo, ptr %i.aep, align 8, !noalias !1858
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa, label %bb.di

bb.dj:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_.exit.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.adh, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27, !noalias !1834
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.di
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i ], [ %i.aek, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod1710 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1710)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.aeq, %bb.dk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dk ]
  %i.aeq = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.aes = load ptr, ptr %i.aer, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 880
  store ptr %i.acr, ptr %i.aet, align 8, !noalias !1861
  %i.aeu = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 888
  store i16 %i.aeu, ptr %i.aev, align 8, !noalias !1858
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %bb.dk, !llvm.loop !1862

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i: ; preds = %bb.dk, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.435.i.i.i, i64 72, i1 false), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.435.i.i.i)
  %spec.select.i29.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.acr, ptr %i.aah ; 10 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 890 ; 2 uses
  %i.aex = load i16, ptr %i.aew, align 2, !noalias !1863, !noundef !4 ; 2 uses
  %i.aey = zext i16 %i.aex to i64                 ; 5 uses
  %i.aez = add i16 %i.aex, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.afa = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1  ; 6 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.aey
  %i.afb = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i29.i.i.i, i64 %.sroa.5.0.i.i.i.i ; 5 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.dl, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.afb, align 8, !alias.scope !1870, !noalias !1872
  %.sroa.629.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i

bb.dl:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.afc = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i29.i.i.i, i64 %i.afa
  %i.afd = sub nuw nsw i64 %i.aey, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.afe = mul nuw nsw i64 %i.afd, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afc, ptr nonnull align 8 %i.afb, i64 %i.afe, i1 false), !alias.scope !1873, !noalias !1874
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.afb, align 8, !alias.scope !1870, !noalias !1872
  %.sroa.629.0..sroa_idx30.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx30.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.aff = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 896 ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.aff, i64 %i.afa
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.aff, i64 %.sroa.5.0.i.i.i.i
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afj = shl nuw nsw i64 %i.afd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afi, ptr nonnull align 8 %i.afg, i64 %i.afj, i1 false), !alias.scope !1875, !noalias !1863
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i: ; preds = %bb.dl, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i
  %i.afk = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 896 ; 6 uses
  %i.afl = add nuw nsw i64 %i.aey, 2              ; 2 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.afa
  store ptr %.sroa.9.0119.i.i.i, ptr %i.afm, align 8, !alias.scope !1875, !noalias !1863
  store i16 %i.aez, ptr %i.aew, align 2, !noalias !1863
  %i.afn = icmp samesign ult i64 %i.afa, %i.afl
  br i1 %i.afn, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i
  %i.afo = add nuw nsw i64 %i.aey, 1
  %i.afp = sub nsw i64 %i.afo, %.sroa.5.0.i.i.i.i
  %i.afq = sub nsw i64 %i.aey, %.sroa.5.0.i.i.i.i
  %xtraiter1711 = and i64 %i.afp, 3               ; 2 uses
  %lcmp.mod1712.not = icmp eq i64 %xtraiter1711, 0
  br i1 %lcmp.mod1712.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.afr, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.afa, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.afr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.afs = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.afs)
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.afu = load ptr, ptr %i.aft, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.afv, align 8, !noalias !1863
  %i.afw = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 888
  store i16 %i.afw, ptr %i.afx, align 8, !noalias !1863
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1711
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !1878

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.afa, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.afr, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.afy = icmp ult i64 %i.afq, 3
  br i1 %i.afy, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.agr, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.afz = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.agb = load ptr, ptr %i.aga, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agc, align 8, !noalias !1863
  %i.agd = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 888
  store i16 %i.agd, ptr %i.age, align 8, !noalias !1863
  %i.agf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.afz
  %i.agh = load ptr, ptr %i.agg, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agi, align 8, !noalias !1863
  %i.agj = trunc nuw nsw i64 %i.afz to i16
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 888
  store i16 %i.agj, ptr %i.agk, align 8, !noalias !1863
  %i.agl = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.agf
  %i.agn = load ptr, ptr %i.agm, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.ago, align 8, !noalias !1863
  %i.agp = trunc nuw nsw i64 %i.agf to i16
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 888
  store i16 %i.agp, ptr %i.agq, align 8, !noalias !1863
  %i.agr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.ags = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ags)
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.agl
  %i.agu = load ptr, ptr %i.agt, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agv, align 8, !noalias !1863
  %i.agw = trunc nuw nsw i64 %i.agl to i16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 888
  store i16 %i.agw, ptr %i.agx, align 8, !noalias !1863
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.agr, %i.afl
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.i.sroa.4.i.i.i)
  br label %.loopexit.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.716.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.i.sroa.4.i.i.i, i64 72, i1 false), !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.i.sroa.4.i.i.i)
  %.not27.i.i.i = icmp eq i64 %.sroa.034.0.copyload.i.i.i, -1
  br i1 %.not27.i.i.i, label %.loopexit.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.716.i.i.i, i64 72, i1 false), !noalias !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i.i)
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aah, i64 880
  %i.agz = load ptr, ptr %i.agy, align 8, !noalias !1795, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.agz, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i111, label %.lr.ph.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i.i)
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i

_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i: ; preds = %.loopexit.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i, %bb.ct
  %.sroa.7.3 = phi i64 [ %.sroa.7.2.ph.ph, %bb.ct ], [ %i.aaa, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i ], [ %.sroa.7.2.ph.ph, %.loopexit.i.i.i ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.2.ph.ph, %bb.ct ], [ %i.zv, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i ], [ %.sroa.0.2.ph.ph, %.loopexit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.7.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i

bb.dn:                                            ; preds = %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.thread69.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1880
  %i.aha = call noalias noundef align 8 dereferenceable_or_null(896) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 896, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1880 ; 14 uses
  %i.ahb = icmp eq ptr %i.aha, null
  br i1 %i.ahb, label %bb.do, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i, !prof !52

bb.do:                                            ; preds = %bb.dn
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 896) #30, !noalias !1880
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i: ; preds = %bb.dn
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 880
  store ptr null, ptr %i.ahc, align 8, !noalias !1880
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 890
  store i16 1, ptr %i.ahd, align 2, !noalias !1881
  store i64 %.sroa.0232.0, ptr %i.aha, align 8, !noalias !1885
  %.sroa.6.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx35.i, align 8, !noalias !1885
  %.sroa.737.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx40.i, align 8, !noalias !1885
  %.sroa.8.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx44.i, align 8, !noalias !1885
  %.sroa.946.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx49.i, align 8, !noalias !1885
  %.sroa.1051.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx53.i, align 8, !noalias !1762
end_hunk_2
