inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTcuEE14reserve_rehashNCINvNtB8_3map11make_hashercuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0ECsgy7pbN39oAf_6uu_ptx:bb.a
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
  %i.ee = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg23.i ; 3 uses
  %i.ef = sub nsw i64 0, %.sroa.014.04.i
  %i.eg = getelementptr inbounds [4 x i8], ptr %.val25.i, i64 %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  %i.ei = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRcECsgy7pbN39oAf_6uu_ptx(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.eh) #28, !noalias !100 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.ei, %i.f           ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ej, align 1, !noalias !104
  %i.ek = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !77

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %bb.p
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.p ], [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.el, %bb.p ], [ %i.fc, %.lr.ph.i28.i ]
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = add i64 %.sroa.0.0.lcssa.i.i, %i.en
  %i.ep = and i64 %i.eo, %i.f                     ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !noalias !97, !noundef !4
  %i.es = icmp sgt i8 %i.er, -1
  br i1 %i.es, label %bb.q, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !52

bb.q:                                             ; preds = %._crit_edge.i27.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !97
  %i.et = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.eu, 0
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eu, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.p, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %bb.p ]
  %i.ex = phi i64 [ %i.ey, %.lr.ph.i28.i ], [ 0, %bb.p ]
  %i.ey = add i64 %i.ex, 16                       ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.ez, %i.f          ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fa, align 1, !noalias !104
  %i.fb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fc, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !78

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.q, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ew, %bb.q ], [ %i.ep, %._crit_edge.i27.i ] ; 4 uses
  %i.fd = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fe = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.ff = xor i64 %i.fe, %i.fd
  %.unshifted.i = and i64 %i.ff, %i.f
  %i.fg = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fg, label %bb.s, label %bb.r, !prof !27

bb.r:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fh = shl i64 %.sroa.0.0.i5.i.i, 2
  %i.fi = sub nuw nsw i64 -4, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %.val25.i, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !97, !noundef !4
  %i.fm = lshr i64 %i.ei, 57
  %i.fn = trunc nuw nsw i64 %i.fm to i8           ; 2 uses
  %i.fo = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fp = and i64 %i.fo, %i.f
  store i8 %i.fn, ptr %i.fk, align 1, !noalias !97
  %i.fq = getelementptr i8, ptr %.val25.i, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store i8 %i.fn, ptr %i.fr, align 1, !noalias !97
  %i.fs = icmp eq i8 %i.fl, -1
  br i1 %i.fs, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ft = lshr i64 %i.ei, 57
  %i.fu = trunc nuw nsw i64 %i.ft to i8           ; 2 uses
  %i.fv = add i64 %.sroa.014.04.i, -16
  %i.fw = and i64 %i.fv, %i.f
  store i8 %i.fu, ptr %i.ec, align 1, !noalias !97
  %i.fx = getelementptr i8, ptr %.val25.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fu, ptr %i.fy, align 1, !noalias !97
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.fz = add i64 %.sroa.014.04.i, -16
  %i.ga = and i64 %i.fz, %i.f
  store i8 -1, ptr %i.ec, align 1, !noalias !97
  %i.gb = getelementptr i8, ptr %.val25.i, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 -1, ptr %i.gc, align 1, !noalias !97
  %i.gd = load i32, ptr %i.ee, align 1, !noalias !97
  store i32 %i.gd, ptr %i.fj, align 1, !noalias !97
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.sroa.0.0.copyload.i.i5.i.i = load i32, ptr %i.ee, align 1, !alias.scope !107, !noalias !112
  %.sroa.02.0.copyload.i.i6.i.i = load i32, ptr %i.fj, align 1, !alias.scope !110, !noalias !113
  store i32 %.sroa.02.0.copyload.i.i6.i.i, ptr %i.ee, align 1, !alias.scope !107, !noalias !112
  store i32 %.sroa.0.0.copyload.i.i5.i.i, ptr %i.fj, align 1, !alias.scope !110, !noalias !113
  br label %bb.p

bb.v:                                             ; preds = %bb.t, %bb.s, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.014.04.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.v, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gf = sub i64 %.sroa.03.0.i, %i.b
  store i64 %i.gf, ptr %i.ge, align 8, !alias.scope !97
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit.thread.i, %bb.j, %bb.c, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.011.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ undef, %bb.l ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.an, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.012.i, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ -1, %bb.l ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.am, %bb.j ]
  %i.gg = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gh = insertvalue { i64, i64 } %i.gg, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gh
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
  %i.m = add nuw i64 %.sroa.8.0.i.i2, 1
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
  %i.yr = sub nuw nsw i64 %i.wq, %.sroa.4.0.i.ph.i.i.i
  %i.ys = mul nuw nsw i64 %i.yr, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yq, ptr nonnull align 8 %i.yp, i64 %i.ys, i1 false), !alias.scope !1742, !noalias !1744
  br label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i

_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i: ; preds = %bb.ck, %bb.cj
  %i.yt = add nuw nsw i16 %i.wp, 1
  %i.yu = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i106, i64 %.sroa.4.0.i.ph.i.i.i ; 10 uses
  store i64 %.sroa.0232.0, ptr %i.yu, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.6.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx33.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.737.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx38.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.8.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx42.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.946.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx47.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.1051.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx52.i, align 8, !noalias !1762
  %.sroa.20251.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 48
  store i64 %i.dr, ptr %.sroa.20251.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  %.sroa.22.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 56
  store i64 %.sroa.04.0730, ptr %.sroa.22.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  %.sroa.24256.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 64
  store i64 %.sroa.051.0, ptr %.sroa.24256.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  %.sroa.26259.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 72
  store i64 %.sroa.419.i.sink.i.sroa.speculated, ptr %.sroa.26259.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  store i16 %i.yt, ptr %i.ym, align 2, !noalias !1763
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.sroa.4.i.i.i)
  br label %bb.ct

bb.cl:                                            ; preds = %bb.ci
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.cm [
    i64 5, label %bb.co
    i64 6, label %bb.cn
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.yv = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ci
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.cn ], [ true, %bb.cm ], [ false, %bb.ci ], [ false, %bb.cl ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.cn ], [ %i.yv, %bb.cm ], [ %.sroa.4.0.i.ph.i.i.i, %bb.ci ], [ %.sroa.4.0.i.ph.i.i.i, %bb.cl ] ; 4 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.cn ], [ 6, %bb.cm ], [ 4, %bb.ci ], [ %.sroa.4.0.i.ph.i.i.i, %bb.cl ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1764
  %i.yw = call noalias noundef align 8 dereferenceable_or_null(896) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 896, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1764 ; 7 uses
  %i.yx = icmp eq ptr %i.yw, null
  br i1 %i.yx, label %bb.cp, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i, !prof !52

bb.cp:                                            ; preds = %bb.co
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 896) #30, !noalias !1764
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i: ; preds = %bb.co
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 880
  store ptr null, ptr %i.yy, align 8, !noalias !1764
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 890
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.za = load i16, ptr %i.ym, align 2, !noalias !1771, !noundef !4
  %i.zb = zext i16 %i.za to i64
  %i.zc = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.zd = add nsw i64 %i.zb, %i.zc                ; 4 uses
  %i.ze = trunc i64 %i.zd to i16
  store i16 %i.ze, ptr %i.yz, align 2, !alias.scope !1768, !noalias !1773
  %i.zf = icmp ult i64 %i.zd, 12
  br i1 %i.zf, label %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %bb.cq, !prof !1774

bb.cq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.zd, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #27, !noalias !1771
  unreachable

_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i
  %i.zg = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i106, i64 %.sroa.013.0.i.i.i.i ; 3 uses
  %i.zh = getelementptr i8, ptr %i.zg, i64 80
  %i.zi = mul nuw nsw i64 %i.zd, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(896) %i.yw, ptr nonnull readonly align 8 %i.zh, i64 %i.zi, i1 false), !alias.scope !1775, !noalias !1773
  %i.zj = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i to i16
  store i16 %i.zj, ptr %i.ym, align 2, !noalias !1771
  %.sroa.019.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.zg, align 8, !noalias !1779 ; 3 uses
  %.sroa.019.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.i.sroa.4.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !1779
  %spec.select36.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i, ptr %i.yw, ptr %.sroa.0.0.i.i.i106 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %spec.select36.i.i.i.i, i64 890 ; 2 uses
  %i.zl = load i16, ptr %i.zk, align 2, !noalias !1780, !noundef !4 ; 2 uses
  %i.zm = zext i16 %i.zl to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %.not.i14.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i, %i.zm
  br i1 %.not.i14.not.i.i.i.i, label %bb.cr, label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

bb.cr:                                            ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.zn = getelementptr inbounds nuw [80 x i8], ptr %spec.select36.i.i.i.i, i64 %.sroa.510.0.i.i.i.i ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 80
  %i.zp = sub nuw nsw i64 %i.zm, %.sroa.510.0.i.i.i.i
  %i.zq = mul nuw nsw i64 %i.zp, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zo, ptr nonnull align 8 %i.zn, i64 %i.zq, i1 false), !alias.scope !1788, !noalias !1790
  br label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i: ; preds = %bb.cr, %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.zr = add i16 %i.zl, 1
  %i.zs = getelementptr inbounds nuw [80 x i8], ptr %spec.select36.i.i.i.i, i64 %.sroa.510.0.i.i.i.i ; 10 uses
  store i64 %.sroa.0232.0, ptr %i.zs, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.8.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.zs, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx.i109, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.946.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx.i, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !1762
  %.sroa.20251.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 48
  store i64 %i.dr, ptr %.sroa.20251.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  %.sroa.22.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 56
  store i64 %.sroa.04.0730, ptr %.sroa.22.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  %.sroa.24256.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 64
  store i64 %.sroa.051.0, ptr %.sroa.24256.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  %.sroa.26259.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 72
  store i64 %.sroa.419.i.sink.i.sroa.speculated, ptr %.sroa.26259.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  store i16 %i.zr, ptr %i.zk, align 2, !noalias !1780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.i.sroa.4.i.i.i, i64 72, i1 false), !noalias !1793
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.sroa.4.i.i.i)
  %.not.i.i.i110 = icmp eq i64 %.sroa.019.i.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i110, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 880
  %i.zu = load ptr, ptr %i.zt, align 8, !noalias !1795, !noundef !4 ; 2 uses
  %.not.i116.i.i.i = icmp eq ptr %i.zu, null
  br i1 %.not.i116.i.i.i, label %._crit_edge.i.i.i111, label %.lr.ph.preheader.i.i.i

bb.ct:                                            ; preds = %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i

._crit_edge.i.i.i111:                             ; preds = %bb.dm, %bb.cs
  %.sroa.0.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.019.i.sroa.0.0.copyload.i.i.i, %bb.cs ], [ %.sroa.034.0.copyload.i.i.i, %bb.dm ]
  %.sroa.11.0.lcssa.i.i.i = phi i64 [ 0, %bb.cs ], [ %i.aai, %bb.dm ]
  %.sroa.9.0.lcssa.i.i.i = phi ptr [ %i.yw, %bb.cs ], [ %i.acr, %bb.dm ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1798
  %i.zv = call noalias noundef align 8 dereferenceable_or_null(992) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 992, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1798 ; 10 uses
  %i.zw = icmp eq ptr %i.zv, null
  br i1 %i.zw, label %bb.cu, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i, !prof !52

bb.cu:                                            ; preds = %._crit_edge.i.i.i111
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 992) #30, !noalias !1798
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i111
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 880
  store ptr null, ptr %i.zx, align 8, !noalias !1798
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 890 ; 2 uses
  store i16 0, ptr %i.zy, align 2, !noalias !1798
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 896
  store ptr %.sroa.0.2.ph.ph, ptr %i.zz, align 8, !noalias !1798
  %i.aaa = add i64 %.sroa.7.2.ph.ph, 1            ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aaa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cv, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i, !prof !52

bb.cv:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !noalias !1798
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph.ph, i64 880
  store ptr %i.zv, ptr %i.aab, align 8, !noalias !1803
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph.ph, i64 888
  store i16 0, ptr %i.aac, align 8, !noalias !1808
  %i.aad = icmp eq i64 %.sroa.11.0.lcssa.i.i.i, %.sroa.7.2.ph.ph
  br i1 %i.aad, label %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i, label %bb.cw, !prof !27

bb.cw:                                            ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #27, !noalias !1809
  unreachable

_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i
  store i16 1, ptr %i.zy, align 2, !noalias !1809
  store i64 %.sroa.0.sroa.0.0.lcssa.i.i.i, ptr %i.zv, align 8, !noalias !1794
  %.sroa.021.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.021.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zv, i64 904
  store ptr %.sroa.9.0.lcssa.i.i.i, ptr %i.aae, align 8, !noalias !1809
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.9.0.lcssa.i.i.i, i64 880
  store ptr %i.zv, ptr %i.aaf, align 8, !noalias !1809
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.9.0.lcssa.i.i.i, i64 888
  store i16 1, ptr %i.aag, align 8, !noalias !1809
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cs, %bb.dm
  %i.aah = phi ptr [ %i.agy, %bb.dm ], [ %i.zu, %bb.cs ] ; 15 uses
  %.sroa.7.0121.i.i.i = phi ptr [ %i.aah, %bb.dm ], [ %.sroa.0.0.i.i.i106, %bb.cs ]
  %.sroa.8.0120.i.i.i = phi i64 [ %i.aai, %bb.dm ], [ 0, %bb.cs ]
  %.sroa.9.0119.i.i.i = phi ptr [ %i.acr, %bb.dm ], [ %i.yw, %bb.cs ] ; 2 uses
  %.sroa.0.sroa.0.0117.i.i.i = phi i64 [ %.sroa.034.0.copyload.i.i.i, %bb.dm ], [ %.sroa.019.i.sroa.0.0.copyload.i.i.i, %bb.cs ] ; 4 uses
  %i.aai = add nuw i64 %.sroa.8.0120.i.i.i, 1     ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.7.0121.i.i.i, i64 888
  %i.aak = load i16, ptr %i.aaj, align 8, !noalias !1795 ; 4 uses
  %i.aal = zext i16 %i.aak to i64                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.i.sroa.4.i.i.i)
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aah, i64 890 ; 4 uses
  %i.aan = load i16, ptr %i.aam, align 2, !noalias !1812, !noundef !4 ; 5 uses
  %i.aao = icmp ult i16 %i.aan, 11
  br i1 %i.aao, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.aap = icmp ult i16 %i.aak, 5
  br i1 %i.aap, label %bb.dd, label %bb.da

bb.cy:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.aaq = zext nneg i16 %i.aan to i64            ; 4 uses
  %i.aar = add nuw nsw i16 %i.aan, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.aas = add nuw nsw i64 %i.aal, 1              ; 6 uses
  %.not.i.i30.not.i.i.i = icmp ult i16 %i.aak, %i.aan
  %i.aat = getelementptr inbounds nuw [80 x i8], ptr %i.aah, i64 %i.aal ; 5 uses
  br i1 %.not.i.i30.not.i.i.i, label %bb.cz, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i.i.i.i.i: ; preds = %bb.cy
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.aat, align 8, !alias.scope !1820, !noalias !1822
  %.sroa.629.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx31.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.aau = getelementptr inbounds nuw [80 x i8], ptr %i.aah, i64 %i.aas
  %i.aav = sub nsw i64 %i.aaq, %i.aal             ; 2 uses
  %i.aaw = mul nuw nsw i64 %i.aav, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aau, ptr nonnull align 8 %i.aat, i64 %i.aaw, i1 false), !alias.scope !1825, !noalias !1826
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.aat, align 8, !alias.scope !1820, !noalias !1822
  %.sroa.629.0..sroa_idx31225.i.i.i = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx31225.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aah, i64 896 ; 2 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aas
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aal
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = shl nuw nsw i64 %i.aav, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aba, ptr nonnull align 8 %i.aay, i64 %i.abb, i1 false), !alias.scope !1828, !noalias !1831
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i: ; preds = %bb.cz, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i.i.i.i.i
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aah, i64 896 ; 6 uses
  %i.abd = add nuw nsw i64 %i.aaq, 2              ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %xtraiter = and i64 %i.adh, 3                   ; 3 uses
  %i.adq = icmp ult i16 %i.adf, 3
  br i1 %i.adq, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.adh, 28
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new ], [ %i.aej, %bb.di ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.di ]
  %i.adr = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.adt = load ptr, ptr %i.ads, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 880
  store ptr %i.acr, ptr %i.adu, align 8, !noalias !1861
  %i.adv = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adt, i64 888
  store i16 %i.adv, ptr %i.adw, align 8, !noalias !1858
  %i.adx = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.adr
  %i.adz = load ptr, ptr %i.ady, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 880
  store ptr %i.acr, ptr %i.aea, align 8, !noalias !1861
  %i.aeb = trunc nuw nsw i64 %i.adr to i16
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 888
  store i16 %i.aeb, ptr %i.aec, align 8, !noalias !1858
  %i.aed = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.adx
  %i.aef = load ptr, ptr %i.aee, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 880
  store ptr %i.acr, ptr %i.aeg, align 8, !noalias !1861
  %i.aeh = trunc nuw nsw i64 %i.adx to i16
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 888
  store i16 %i.aeh, ptr %i.aei, align 8, !noalias !1858
  %i.aej = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.aed
  %i.ael = load ptr, ptr %i.aek, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 880
  store ptr %i.acr, ptr %i.aem, align 8, !noalias !1861
  %i.aen = trunc nuw nsw i64 %i.aed to i16
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ael, i64 888
  store i16 %i.aen, ptr %i.aeo, align 8, !noalias !1858
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa, label %bb.di

bb.dj:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_.exit.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.adh, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27, !noalias !1834
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.di
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i ], [ %i.aej, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod1710 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1710)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.aep, %bb.dk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dk ]
  %i.aep = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.aer = load ptr, ptr %i.aeq, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 880
  store ptr %i.acr, ptr %i.aes, align 8, !noalias !1861
  %i.aet = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 888
  store i16 %i.aet, ptr %i.aeu, align 8, !noalias !1858
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %bb.dk, !llvm.loop !1862

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i: ; preds = %bb.dk, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.435.i.i.i, i64 72, i1 false), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.435.i.i.i)
  %spec.select.i29.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.acr, ptr %i.aah ; 10 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 890 ; 2 uses
  %i.aew = load i16, ptr %i.aev, align 2, !noalias !1863, !noundef !4 ; 2 uses
  %i.aex = zext i16 %i.aew to i64                 ; 5 uses
  %i.aey = add i16 %i.aew, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.aez = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1  ; 6 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.aex
  %i.afa = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i29.i.i.i, i64 %.sroa.5.0.i.i.i.i ; 5 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.dl, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.afa, align 8, !alias.scope !1870, !noalias !1872
  %.sroa.629.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i

bb.dl:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.afb = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i29.i.i.i, i64 %i.aez
  %i.afc = sub nuw nsw i64 %i.aex, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.afd = mul nuw nsw i64 %i.afc, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afb, ptr nonnull align 8 %i.afa, i64 %i.afd, i1 false), !alias.scope !1873, !noalias !1874
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.afa, align 8, !alias.scope !1870, !noalias !1872
  %.sroa.629.0..sroa_idx30.i.i.i = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx30.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.afe = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 896 ; 2 uses
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.aez
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %.sroa.5.0.i.i.i.i
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afi = shl nuw nsw i64 %i.afc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afh, ptr nonnull align 8 %i.aff, i64 %i.afi, i1 false), !alias.scope !1875, !noalias !1863
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i: ; preds = %bb.dl, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i
  %i.afj = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 896 ; 6 uses
  %i.afk = add nuw nsw i64 %i.aex, 2              ; 2 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.aez
  store ptr %.sroa.9.0119.i.i.i, ptr %i.afl, align 8, !alias.scope !1875, !noalias !1863
  store i16 %i.aey, ptr %i.aev, align 2, !noalias !1863
  %i.afm = icmp samesign ult i64 %i.aez, %i.afk
  br i1 %i.afm, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i
  %i.afn = add nuw nsw i64 %i.aex, 1
  %i.afo = sub nsw i64 %i.afn, %.sroa.5.0.i.i.i.i
  %i.afp = sub nsw i64 %i.aex, %.sroa.5.0.i.i.i.i
  %xtraiter1711 = and i64 %i.afo, 3               ; 2 uses
  %lcmp.mod1712.not = icmp eq i64 %xtraiter1711, 0
  br i1 %lcmp.mod1712.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.afq, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.aez, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.afq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.afr = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.afr)
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.aft = load ptr, ptr %i.afs, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.afu, align 8, !noalias !1863
  %i.afv = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 888
  store i16 %i.afv, ptr %i.afw, align 8, !noalias !1863
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1711
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !1878

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.aez, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.afq, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.afx = icmp ult i64 %i.afp, 3
  br i1 %i.afx, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.agq, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.afy = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.aga = load ptr, ptr %i.afz, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agb, align 8, !noalias !1863
  %i.agc = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 888
  store i16 %i.agc, ptr %i.agd, align 8, !noalias !1863
  %i.age = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.afy
  %i.agg = load ptr, ptr %i.agf, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agh, align 8, !noalias !1863
  %i.agi = trunc nuw nsw i64 %i.afy to i16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 888
  store i16 %i.agi, ptr %i.agj, align 8, !noalias !1863
  %i.agk = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.age
  %i.agm = load ptr, ptr %i.agl, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agn, align 8, !noalias !1863
  %i.ago = trunc nuw nsw i64 %i.age to i16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 888
  store i16 %i.ago, ptr %i.agp, align 8, !noalias !1863
  %i.agq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.agr = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.agr)
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.agk
  %i.agt = load ptr, ptr %i.ags, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agu, align 8, !noalias !1863
  %i.agv = trunc nuw nsw i64 %i.agk to i16
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agt, i64 888
  store i16 %i.agv, ptr %i.agw, align 8, !noalias !1863
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.agq, %i.afk
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
  %i.agx = getelementptr inbounds nuw i8, ptr %i.aah, i64 880
  %i.agy = load ptr, ptr %i.agx, align 8, !noalias !1795, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.agy, null
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
  %i.agz = call noalias noundef align 8 dereferenceable_or_null(896) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 896, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1880 ; 14 uses
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %bb.do, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i, !prof !52

bb.do:                                            ; preds = %bb.dn
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 896) #30, !noalias !1880
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i: ; preds = %bb.dn
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 880
  store ptr null, ptr %i.ahb, align 8, !noalias !1880
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 890
  store i16 1, ptr %i.ahc, align 2, !noalias !1881
  store i64 %.sroa.0232.0, ptr %i.agz, align 8, !noalias !1885
  %.sroa.6.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx35.i, align 8, !noalias !1885
  %.sroa.737.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx40.i, align 8, !noalias !1885
  %.sroa.8.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx44.i, align 8, !noalias !1885
  %.sroa.946.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.agz, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx49.i, align 8, !noalias !1885
  %.sroa.1051.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.agz, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx53.i, align 8, !noalias !1762
end_hunk_1
