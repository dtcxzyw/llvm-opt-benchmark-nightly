inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf:bb.a
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.ah, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %.sroa.12.011.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.012.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.07.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aa ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ab, i1 false), !noalias !19
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = load ptr, ptr %0, align 8, !alias.scope !20, !noalias !23, !nonnull !9, !noundef !9 ; 5 uses
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit
  %.val238 = load <16 x i8>, ptr %i.as, align 16
  %i.au = icmp sgt <16 x i8> %.val238, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.022.052 = phi ptr [ %.sroa.022.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %.sroa.5.051 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.bf, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.b, %.preheader.preheader ]
  %.sroa.13.049 = phi i16 [ %i.bd, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.av, %.preheader.preheader ] ; 2 uses
  %.not.i144 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i144, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.022.146 = phi ptr [ %i.aw, %.lr.ph ], [ %.sroa.022.052, %.preheader ] ; 2 uses
  %.sroa.5.145 = phi i64 [ %i.az, %.lr.ph ], [ %.sroa.5.051, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.146) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.022.146, i64 16 ; 3 uses
  %.val39 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val39, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ay, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.ay, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.sroa.022.1.lcssa = phi ptr [ %.sroa.022.052, %.preheader ], [ %i.aw, %.lr.ph ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val.i = load i64, ptr %i.bi, align 8, !alias.scope !25, !noalias !28, !noundef !9
  %i.bj = mul i64 %.val.i, -1065810590584100411   ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.an            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !33
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !36

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.an                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !9
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !10

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cb, %i.an            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !33
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !37

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.cg = lshr i64 %i.bk, 57
  %i.ch = trunc nuw nsw i64 %i.cg to i8           ; 2 uses
  %i.ci = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cj = and i64 %i.ci, %i.an
  store i8 %i.ch, ptr %i.cf, align 1
  %i.ck = getelementptr i8, ptr %i.aq, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.ch, ptr %i.cl, align 1
  %i.cm = shl i64 %i.be, 4
  %i.cn = sub nuw nsw i64 -16, %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.as, i64 %i.cn
  %i.cp = shl i64 %.sroa.0.0.i5.i, 4
  %i.cq = sub nuw nsw i64 -16, %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.aq, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cr, ptr noundef nonnull align 1 dereferenceable(16) %i.co, i64 16, i1 false)
  %i.cs = icmp eq i64 %i.bf, 0
  br i1 %i.cs, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit
  %i.ct = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.ar, ptr %0, align 8, !alias.scope !38, !noalias !41
  store i64 %i.an, ptr %i.e, align 8, !alias.scope !43, !noalias !45
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ct, ptr %i.cu, align 8, !alias.scope !47, !noalias !49
  %i.cv = icmp eq i64 %i.f, 0
  br i1 %i.cv, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.cw = shl nuw i64 %i.h, 4                     ; 3 uses
  %i.cx = add i64 %i.f, 17
  %i.cy = add i64 %i.cx, %i.cw                    ; 4 uses
  %i.cz = icmp uge i64 %i.cy, %i.cw
  %i.da = icmp ult i64 %i.cy, 9223372036854775793
  tail call void @llvm.assume(i1 %i.cz)
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.dc = sub nsw i64 0, %i.cw
  %i.dd = getelementptr inbounds i8, ptr %i.as, i64 %i.dc
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !51
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !56 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.de = lshr i64 %i.h, 4
  %i.df = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.df, 0
  %i.dg = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.de, %i.dg ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dh = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dp, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.di = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.di, align 16, !noalias !56
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16, !noalias !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i9 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !56
  %4 = getelementptr inbounds i8, ptr %.val25.i, i64 -16
  br label %.lr.ph.i10

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dp, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dm, align 16, !noalias !56
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dn = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.do = or <2 x i64> %i.dn, splat (i64 -9187201950435737472)
  store <2 x i64> %i.do, ptr %i.dm, align 16, !noalias !56
  %i.dp = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dr, align 16, !noalias !56
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ds = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dt = or <2 x i64> %i.ds, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dt, ptr %i.dr, align 16, !noalias !56
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

.lr.ph.i10:                                       ; preds = %bb.t, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.du, %bb.t ], [ 0, %._crit_edge.i.i ] ; 7 uses
  %i.du = add nuw i64 %.sroa.014.04.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !56, !noundef !9
  %.not.i11 = icmp eq i8 %i.dw, -128
  br i1 %.not.i11, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph.i10
  %.neg.i = xor i64 %.sroa.014.04.i, -1
  %.neg23.i = shl i64 %.neg.i, 4
  %i.dx = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 3 uses
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.o
  %.val.i.i13 = load i64, ptr %4, align 8, !alias.scope !59, !noalias !62, !noundef !9
  %i.dy = mul i64 %.val.i.i13, -1065810590584100411 ; 2 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 26) ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.dz, %i.f           ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ea, align 1, !noalias !67
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !36

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i14, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.ec, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.et, %.lr.ph.i28.i ]
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.0.0.lcssa.i.i, %i.ee
  %i.eg = and i64 %i.ef, %i.f                     ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !56, !noundef !9
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.p, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !10

bb.p:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !56
  %i.ek = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.el, 0
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i14, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i28.i ], [ 0, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i.i
  %.sroa.0.0.i.i14 = and i64 %i.eq, %i.f          ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i14
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.er, align 1, !noalias !67
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !37

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.p, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.en, %bb.p ], [ %i.eg, %._crit_edge.i27.i ] ; 4 uses
  %i.eu = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.ev = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.ew = xor i64 %i.ev, %i.eu
  %.unshifted.i = and i64 %i.ew, %i.f
  %i.ex = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ex, label %bb.r, label %bb.q, !prof !70

bb.q:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ey = shl i64 %.sroa.0.0.i5.i.i, 4
  %i.ez = sub nuw nsw i64 -16, %i.ey
  %i.fa = getelementptr inbounds i8, ptr %.val25.i, i64 %i.ez ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !56, !noundef !9
  %i.fd = lshr i64 %i.dz, 57
  %i.fe = trunc nuw nsw i64 %i.fd to i8           ; 2 uses
  %i.ff = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fg = and i64 %i.ff, %i.f
  store i8 %i.fe, ptr %i.fb, align 1, !noalias !56
  %i.fh = getelementptr i8, ptr %.val25.i, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store i8 %i.fe, ptr %i.fi, align 1, !noalias !56
  %i.fj = icmp eq i8 %i.fc, -1
  br i1 %i.fj, label %bb.s, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.q
  %i.fk = load <2 x i64>, ptr %i.dx, align 1, !alias.scope !71, !noalias !56
  %i.fl = load <2 x i64>, ptr %i.fa, align 1, !alias.scope !75, !noalias !56
  store <2 x i64> %i.fl, ptr %i.dx, align 1, !alias.scope !71, !noalias !56
  store <2 x i64> %i.fk, ptr %i.fa, align 1, !alias.scope !75, !noalias !56
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fm = lshr i64 %i.dz, 57
  %i.fn = trunc nuw nsw i64 %i.fm to i8           ; 2 uses
  %i.fo = add nuw i64 %.sroa.014.04.i, -16
  %i.fp = and i64 %i.fo, %i.f
  store i8 %i.fn, ptr %i.dv, align 1, !noalias !56
  %i.fq = getelementptr i8, ptr %.val25.i, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store i8 %i.fn, ptr %i.fr, align 1, !noalias !56
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fs = add nuw i64 %.sroa.014.04.i, -16
  %i.ft = and i64 %i.fs, %i.f
  store i8 -1, ptr %i.dv, align 1, !noalias !56
  %i.fu = getelementptr i8, ptr %.val25.i, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 -1, ptr %i.fv, align 1, !noalias !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fa, ptr noundef nonnull align 1 dereferenceable(16) %i.dx, i64 16, i1 false), !noalias !56
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i10
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i10

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.t, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.fx, ptr %i.fw, align 8, !alias.scope !56
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.011.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.al, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.ak, %bb.j ]
  %i.fy = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.fz = insertvalue { i64, i64 } %i.fy, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.fz
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1, i8 noundef range(i8 1, 4) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !81
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !81 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !noalias !81
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i64 1, ptr %i.c, align 8, !noalias !78
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !78
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !78
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !92, !noalias !93, !nonnull !9, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !92, !noalias !93, !noundef !9 ; 5 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9, i64 16 ; 2 uses
  %i.m = add nuw i64 %.sroa.8.0.i.i8, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %.sroa.0.0.i.i9 = phi ptr [ %i.l, %bb.c ], [ %i.g, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %.sroa.8.0.i.i8 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i.i9, align 8, !noalias !95
  %i.o = icmp eq i128 %.val.i.i, 63958622876645927927552189038096644140
  br i1 %i.o, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %i.p = load i64, ptr %i.b, align 8, !range !96, !alias.scope !97, !noalias !100, !noundef !9
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #28, !noalias !100
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !97, !noalias !100
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf.exit.i.i: ; preds = %bb.d, %._crit_edge
  %i.r = phi ptr [ %i.g, %._crit_edge ], [ %.pre.i.i, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i ; 2 uses
  store i64 -5875614554295535572, ptr %i.s, align 8, !noalias !102
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !102
  %i.t = add i64 %i.i, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !97, !noalias !100
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !103, !noalias !106, !noundef !9 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !96, !alias.scope !103, !noalias !106, !noundef !9
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.thread.i

bb.e:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf.exit.i.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #28, !noalias !106
  br label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.thread.i

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.thread.i: ; preds = %bb.e, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !103, !noalias !106, !nonnull !9, !noundef !9
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 %i.e, ptr %i.ab, align 8, !noalias !108
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 ptrtoint (ptr @13 to i64), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !108
  %.sroa.10.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i, align 8, !noalias !108
  %.sroa.13.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i, align 8, !noalias !108
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !103, !noalias !106
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !92, !noalias !93, !noundef !9 ; 2 uses
  %i.af = icmp ult i64 %.sroa.8.0.i.i8, %i.ae
  br i1 %i.af, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i8, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #29, !noalias !95
  unreachable

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !92, !noalias !93, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !alias.scope !109, !noalias !95
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !113, !noalias !114 ; 2 uses
  store i64 %i.e, ptr %i.ai, align 1, !alias.scope !113, !noalias !114
  store i64 ptrtoint (ptr @13 to i64), ptr %i.aj, align 1, !alias.scope !116, !noalias !117
  store <2 x i64> %i.am, ptr %i.a, align 16, !alias.scope !102, !noalias !119
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x i64>, ptr %i.ak, align 1, !alias.scope !120, !noalias !95
  store i64 -5875614554295535572, ptr %i.ak, align 1, !alias.scope !123, !noalias !124
  store i64 3467203893602029906, ptr %i.al, align 1, !alias.scope !126, !noalias !127
  store <2 x i64> %i.an, ptr %.sroa.10.0..sroa_idx.i, align 16, !alias.scope !102, !noalias !119
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.i
  %i.ap = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to ptr
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !129
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28, !noalias !78
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.thread.i, %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !138, !noundef !9 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !139, !nonnull !9, !noundef !9
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !139
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs84qwSrTN5pO_7uu_shuf.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECs84qwSrTN5pO_7uu_shuf(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3map7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECs84qwSrTN5pO_7uu_shuf.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 4                       ; 2 uses
  %i.c = add i64 %i.b, 16                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3map7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECs84qwSrTN5pO_7uu_shuf.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %i.i = sub nuw nsw i64 -16, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3map7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECs84qwSrTN5pO_7uu_shuf.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3map7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.a, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtCs2vKOLqTMYjT_3std2fs4FileEECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs84qwSrTN5pO_7uu_shuf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs84qwSrTN5pO_7uu_shuf.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs84qwSrTN5pO_7uu_shuf.exit.i
    i64 1, label %bb.d
  ], !prof !142

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs84qwSrTN5pO_7uu_shuf.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !143
  store i8 3, ptr %i.a, align 8, !alias.scope !143
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs84qwSrTN5pO_7uu_shuf.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs84qwSrTN5pO_7uu_shuf.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs84qwSrTN5pO_7uu_shuf.exit.i
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error12invalid_utf8Cs84qwSrTN5pO_7uu_shuf:bb.a
  store i8 -1, ptr %.sroa.2686.0..sroa_idx, align 2
  %.sroa.2787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i16 0, ptr %.sroa.2787.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i8 -1, ptr %.sroa.2988.0..sroa_idx, align 4
  %.sroa.3089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -1, ptr %.sroa.3089.0..sroa_idx, align 8
  %.sroa.3190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i16 0, ptr %.sroa.3190.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  store i8 -1, ptr %.sroa.3391.0..sroa_idx, align 2
  %.sroa.3492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 -1, ptr %.sroa.3492.0..sroa_idx, align 2
  %.sroa.3593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i16 0, ptr %.sroa.3593.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.3794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.3794.0..sroa_idx, align 8
  %.sroa.3895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.3895.0..sroa_idx, align 4
  %.sroa.3996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.3996.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.4197.0..sroa_idx, align 2
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.4298.0..sroa_idx, align 2
  %.sroa.4399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.4399.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 11>, ptr %.sroa.45100.0..sroa_idx, align 2
  %i.d = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error8with_cmdCs84qwSrTN5pO_7uu_shuf(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #26 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !range !138, !noundef !9
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.b, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.b, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error16value_validationCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %.sroa.44 = alloca [31 x i8], align 1           ; 2 uses
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !853
  %i.b = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !853 ; 45 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1S_4SendEL_EEECs84qwSrTN5pO_7uu_shuf.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #27, !noalias !853
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1S_4SendEL_EEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.a
  store i64 2, ptr %i.b, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx73, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx75, align 8
  %.sroa.9.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx76, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.1179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.12.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.1281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 -1, ptr %.sroa.1281.0..sroa_idx, align 8
  %.sroa.1382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i8 -1, ptr %.sroa.1382.0..sroa_idx, align 4
  %.sroa.1484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 -1, ptr %.sroa.1484.0..sroa_idx, align 8
  %.sroa.1586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i16 0, ptr %.sroa.1586.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx87, align 2
  %.sroa.1789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  store i8 -1, ptr %.sroa.1789.0..sroa_idx, align 2
  %.sroa.1891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  store i8 -1, ptr %.sroa.1891.0..sroa_idx, align 2
  %.sroa.1993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  store i16 0, ptr %.sroa.1993.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 -1, ptr %.sroa.2194.0..sroa_idx, align 8
  %.sroa.2295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i8 -1, ptr %.sroa.2295.0..sroa_idx, align 4
  %.sroa.2396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i16 0, ptr %.sroa.2396.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  store i8 -1, ptr %.sroa.2597.0..sroa_idx, align 2
  %.sroa.2698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  store i8 -1, ptr %.sroa.2698.0..sroa_idx, align 2
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i16 0, ptr %.sroa.2799.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i8 -1, ptr %.sroa.29100.0..sroa_idx, align 4
  %.sroa.30101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -1, ptr %.sroa.30101.0..sroa_idx, align 8
  %.sroa.31102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i16 0, ptr %.sroa.31102.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  store i8 -1, ptr %.sroa.33103.0..sroa_idx, align 2
  %.sroa.34104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 -1, ptr %.sroa.34104.0..sroa_idx, align 2
  %.sroa.35105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i16 0, ptr %.sroa.35105.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.37106.0..sroa_idx, align 8
  %.sroa.38107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.38107.0..sroa_idx, align 4
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.39108.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.41109.0..sroa_idx, align 2
  %.sroa.42110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.42110.0..sroa_idx, align 2
  %.sroa.43111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.43111.0..sroa_idx, align 2
  %.sroa.44112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.44112.0..sroa_idx, align 8
  %.sroa.45113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 4>, ptr %.sroa.45113.0..sroa_idx, align 2
  store ptr %2, ptr %.sroa.1179.0..sroa_idx, align 8
  store ptr %3, ptr %.sroa.12.0..sroa_idx80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.44.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.44.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.44, i64 31, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 5, ptr %i.d, align 8
  %.sroa.4.sroa.310.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 2, ptr %.sroa.4.sroa.310.0..sroa.4.0..sroa_idx6.sroa_idx, align 8
  %.sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.e = call noundef nonnull align 8 ptr @_RINvMNtCsgNwXemyrBWj_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error8with_cmdCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [126 x i8], align 2               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !862, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !862, !noundef !9 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i27, i64 16 ; 2 uses
  %i.k = add nuw i64 %.sroa.8.0.i.i26, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i27 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i26 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i27, align 8, !noalias !862
  %i.m = icmp eq i128 %.val.i.i, -159004430768447808090885082428108441544
  br i1 %i.m, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !862, !noundef !9 ; 2 uses
  %i.p = icmp ult i64 %.sroa.8.0.i.i26, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i26, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29, !noalias !862
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !862, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.8.0.i.i26 ; 2 uses
  %.val5.i = load ptr, ptr %i.s, align 8, !noalias !856, !nonnull !9, !noundef !9
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !856, !nonnull !9, !align !181, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !183, !invariant.load !9, !noalias !856
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !856
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !9, !noalias !856, !nonnull !9
  call void %i.ab(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.z) #30, !noalias !856, !inline_history !863
  %i.ac = load i128, ptr %i.a, align 16, !noalias !856, !noundef !9
  %.not.i = icmp eq i128 %i.ac, -159004430768447808090885082428108441544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !856
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29, !noalias !856
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @73, ptr %.sroa.0.0.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %., i64 14, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %., i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ae, ptr noundef nonnull align 2 dereferenceable(14) %i.ad, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %., i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ag, ptr noundef nonnull align 2 dereferenceable(14) %i.af, i64 14, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %., i64 42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ai, ptr noundef nonnull align 2 dereferenceable(14) %i.ah, i64 14, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %., i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ak, ptr noundef nonnull align 2 dereferenceable(14) %i.aj, i64 14, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %., i64 70
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.am, ptr noundef nonnull align 2 dereferenceable(14) %i.al, i64 14, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %., i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ao, ptr noundef nonnull align 2 dereferenceable(14) %i.an, i64 14, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %., i64 98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aq, ptr noundef nonnull align 2 dereferenceable(14) %i.ap, i64 14, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.as, ptr noundef nonnull align 2 dereferenceable(14) %i.ar, i64 14, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.at, ptr noundef nonnull align 2 dereferenceable(126) %i.c, i64 126, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.av = load i32, ptr %i.au, align 4, !noundef !9 ; 4 uses
  %i.aw = and i32 %i.av, 536870912
  %.not12 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ay = load i32, ptr %i.ax, align 8            ; 4 uses
  %i.az = and i32 %i.ay, 536870912
  %.not13 = icmp eq i32 %i.az, 0
  %or.cond = select i1 %.not12, i1 %.not13, i1 false
  %i.ba = or i32 %i.ay, %i.av
  %i.bb = lshr i32 %i.ba, 28
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %spec.select = and i8 %i.bc, 1
  %.sroa.09.0 = select i1 %or.cond, i8 %spec.select, i8 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %.sroa.09.0, ptr %i.bd, align 1
  %i.be = and i32 %i.av, 262144
  %.not.i19 = icmp eq i32 %i.be, 0
  %i.bf = and i32 %i.ay, 262144
  %.not1.i = icmp eq i32 %i.bf, 0
  %or.cond1.i = select i1 %.not.i19, i1 %.not1.i, i1 false
  br i1 %or.cond1.i, label %bb.g, label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit
  %i.bg = or i32 %i.ay, %i.av                     ; 2 uses
  %i.bh = and i32 %i.bg, 536870912
  %or.cond.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.i, label %bb.h, label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = lshr i32 %i.bg, 28
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %spec.select.i = and i8 %i.bj, 1
  br label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, %bb.g, %bb.h
  %.sroa.0.0.i20 = phi i8 [ 2, %bb.g ], [ 2, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit ], [ %spec.select.i, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.0.0.i20, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsgNwXemyrBWj_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val17 = load i64, ptr %i.bl, align 8, !range !864, !noundef !9 ; 2 uses
  %i.bm = icmp sgt i64 %.val17, 0
  br i1 %i.bm, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECs84qwSrTN5pO_7uu_shuf.exit

bb.i:                                             ; preds = %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  %i.bn = getelementptr i8, ptr %0, i64 88
  %.val18 = load ptr, ptr %i.bn, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %.val17, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !865
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECs84qwSrTN5pO_7uu_shuf.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 0, 4294967296) i64 @_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !noundef !9  ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i8 %i.e, -1
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = icmp eq i32 %i.c, 2
  br i1 %i.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.sroa.0.012.i = add i32 %i.b, 2                ; 3 uses
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.c, i32 %.sroa.0.012.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %._crit_edge.i, label %.lr.ph.i, !prof !868

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.03.1.lcssa.i = phi i32 [ %i.c, %.preheader.i ], [ %i.bc, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.012.i, %.preheader.i ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %i.l = sub i32 %.sroa.0.0.lcssa.i, %i.c
  %i.m = trunc i32 %i.l to i8
  %i.n = add i8 %i.m, -1
  %i.o = icmp eq i32 %.sroa.03.1.lcssa.i, 0
  br i1 %i.o, label %bb.k, label %.thread.i, !prof !869

.thread.i:                                        ; preds = %._crit_edge.i, %bb.c
  %.sroa.03.010.i = phi i32 [ %.sroa.03.1.lcssa.i, %._crit_edge.i ], [ 479001600, %bb.c ] ; 2 uses
  %.sroa.05.09.i = phi i8 [ %i.n, %._crit_edge.i ], [ 10, %bb.c ]
  %.val11.i = load ptr, ptr %0, align 8, !noalias !870, !nonnull !9, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.p = load ptr, ptr %.val11.i, align 8, !alias.scope !873, !noalias !870, !nonnull !9, !noundef !9 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !876, !noalias !879, !noundef !9 ; 3 uses
  %i.s = icmp ugt i32 %i.r, 63
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 320
  %i.v = load i64, ptr %i.u, align 4, !alias.scope !880, !noalias !883
  %i.w = icmp ugt i64 %i.v, 1023
  br i1 %i.w, label %bb.e, label %.thread.i.i.i.i.i14.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t) #28, !noalias !883
  br label %.thread.i.i.i.i.i14.i.i.i.i.i

.thread.i.i.i.i.i14.i.i.i.i.i:                    ; preds = %bb.e, %bb.d
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q) #26, !noalias !879
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i

bb.f:                                             ; preds = %.thread.i
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x
end_hunk_1
