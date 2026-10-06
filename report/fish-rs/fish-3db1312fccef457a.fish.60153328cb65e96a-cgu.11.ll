Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_:bb.a
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.r, %i.t  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.u = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i = phi i64 [ 0, %.new ], [ %i.y, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.v, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.w = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.x = or <2 x i64> %i.w, splat (i64 -9187201950435737472)
  store <2 x i64> %i.x, ptr %i.v, align 16
  %i.y = add i64 %.sroa.01.07.i, 32               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.aa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.ab = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ac = or <2 x i64> %i.ab, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ac, ptr %i.aa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, label %bb.i

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %bb.h
  %.sroa.01.07.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa ]
  %lcmp.mod281 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ad, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ae = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.af = or <2 x i64> %i.ae, splat (i64 -9187201950435737472)
  store <2 x i64> %i.af, ptr %i.ad, align 16
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %.epil.preheader
  %i.ag = icmp ult i64 %i.j, 15                   ; 2 uses
  %spec.select.i = select i1 %i.ag, i64 16, i64 %i.q, !prof !7
  %spec.select10.i = select i1 %i.ag, i64 %i.q, i64 16, !prof !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val7, i64 %spec.select.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %.val7, i64 %spec.select10.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ai, align 8, !noalias !136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.aj, align 8, !noalias !136
  store ptr %0, ptr %i.a, align 8, !noalias !136
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !135, !noalias !137, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.invoke, label %.lr.ph

.invoke:                                          ; preds = %bb.x, %bb.ac, %bb.aa, %bb.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.l
  %i.am = phi ptr [ @5, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], [ @7, %bb.y ], [ @8, %bb.l ], [ @23, %bb.aa ], [ @23, %bb.ac ], [ @23, %bb.x ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #36
          to label %.cont unwind label %.loopexit.split-lp47, !noalias !137

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit46:                                      ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit, %bb.ad
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp47:                             ; preds = %.invoke201, %.invoke199, %.invoke, %bb.o
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp47, %.loopexit46
  %lpad.phi50 = phi { ptr, i32 } [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.ah, !noalias !137

bb.k:                                             ; preds = %bb.o
  unreachable

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load i64, ptr %i.i, align 8, !noalias !137 ; 4 uses
  %i.an = icmp ult i64 %.pre, 8
  br i1 %i.an, label %bb.n, label %bb.l

.lr.ph:                                           ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.ag
  %.sroa.04.0.i88 = phi i64 [ %i.ao, %bb.ag ], [ 0, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %i.ao = add nuw i64 %.sroa.04.0.i88, 1
  %i.ap = load ptr, ptr %0, align 8, !noalias !137, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.04.0.i88
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !137, !noundef !5
  %.not.i1 = icmp eq i8 %i.ar, -128
  br i1 %.not.i1, label %bb.p, label %bb.ag

bb.l:                                             ; preds = %._crit_edge
  %i.as = icmp eq i64 %.pre, -1
  br i1 %i.as, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nuw i64 %.pre, 1
  %i.au = lshr i64 %i.at, 3
  %i.av = mul nuw i64 %i.au, 7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sroa.01.0.i = phi i64 [ %.pre, %._crit_edge ], [ %i.av, %bb.m ] ; 2 uses
  %i.aw = load i64, ptr %i.e, align 8, !noalias !137, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.01.0.i, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2924) #36
          to label %bb.k unwind label %.loopexit.split-lp47, !noalias !137

bb.p:                                             ; preds = %.lr.ph
  %i.ay = icmp ugt i64 %.sroa.04.0.i88, 1152921504606846974
  br i1 %i.ay, label %.invoke199, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.neg18.i = shl i64 %.neg.i, 4
  %i.az = getelementptr inbounds i8, ptr %i.ap, i64 %.neg18.i ; 2 uses
  %i.ba = sub nsw i64 0, %.sroa.04.0.i88
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

.invoke199:                                       ; preds = %bb.p, %bb.z
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont200 unwind label %.loopexit.split-lp47, !noalias !137

.cont200:                                         ; preds = %.invoke199
  unreachable

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ad, %bb.q
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !138, !noalias !139, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.be = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit unwind label %.loopexit46 ; 4 uses

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val11 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit
  %.pn.i = phi i64 [ %i.be, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit ], [ %i.by, %bb.w ]
  %i.bf = phi i64 [ 0, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit ], [ %i.bx, %bb.w ] ; 2 uses
  %.sroa.0.0.i16 = and i64 %.pn.i, %.val12        ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !140
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bi, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.0.0.i16, %i.bk           ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.0.0.i16
  br i1 %i.bm, label %.invoke201, label %bb.t

.invoke201:                                       ; preds = %bb.s, %bb.w, %bb.v
  %i.bn = phi ptr [ @2921, %bb.v ], [ @2922, %bb.w ], [ @2927, %bb.s ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #37
          to label %.cont202 unwind label %.loopexit.split-lp47

.cont202:                                         ; preds = %.invoke201
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bo = and i64 %i.bl, %.val12                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.u, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  %.val2.i.i = load <16 x i8>, ptr %.val11, align 16
  %i.bs = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i7.i = icmp ne i16 %i.bt, 0
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  tail call void @llvm.assume(i1 %.not.i7.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.v:                                             ; preds = %bb.r
  %i.bw = icmp eq i64 %i.bf, -16
  br i1 %i.bw, label %.invoke201, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = add nuw i64 %i.bf, 16                   ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.0.i16           ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.0.0.i16
  br i1 %i.bz, label %.invoke201, label %bb.r

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.u, %bb.t
  %.sroa.0.0.i6.i = phi i64 [ %i.bv, %bb.u ], [ %i.bo, %bb.t ] ; 6 uses
  %i.ca = and i64 %.val12, %i.be                  ; 2 uses
  %i.cb = sub i64 %.sroa.04.0.i88, %i.ca
  %i.cc = sub i64 %.sroa.0.0.i6.i, %i.ca
  %i.cd = xor i64 %i.cc, %i.cb
  %.unshifted.i = and i64 %i.cd, %.val12
  %i.ce = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ce, label %bb.x, label %bb.y, !prof !8

bb.x:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.cf = add nsw i64 %.sroa.04.0.i88, -16
  %i.cg = and i64 %.val12, %i.cf                  ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, -17
  br i1 %i.ch, label %.invoke, label %bb.af

bb.y:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ci = icmp eq i64 %.sroa.0.0.i6.i, -1
  br i1 %i.ci, label %.invoke, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = icmp ugt i64 %.sroa.0.0.i6.i, 1152921504606846974
  br i1 %i.cj, label %.invoke199, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.neg19.i = xor i64 %.sroa.0.0.i6.i, -1
  %.neg20.i = shl i64 %.neg19.i, 4
  %i.ck = getelementptr inbounds i8, ptr %.val11, i64 %.neg20.i ; 2 uses
  %i.cl = add nsw i64 %.sroa.0.0.i6.i, -16
  %i.cm = and i64 %i.cl, %.val12                  ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, -17
  br i1 %i.cn, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = lshr i64 %i.be, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8           ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i6.i ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !137, !noundef !5
  store i8 %i.cp, ptr %i.cq, align 1, !noalias !137
  %i.cs = load ptr, ptr %0, align 8, !noalias !137, !nonnull !5, !noundef !5
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store i8 %i.cp, ptr %i.cu, align 1, !noalias !137
  %i.cv = icmp eq i8 %i.cr, -1
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i64 %.sroa.04.0.i88, -16
  %i.cx = load i64, ptr %i.i, align 8, !noalias !137, !noundef !5
  %i.cy = and i64 %i.cx, %i.cw                    ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, -17
  br i1 %i.cz, label %.invoke, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ck, i64 noundef 2)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %.loopexit46

bb.ae:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %0, align 8, !noalias !137, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.04.0.i88
  store i8 -1, ptr %i.db, align 1, !noalias !137
  %i.dc = load ptr, ptr %0, align 8, !noalias !137, !nonnull !5, !noundef !5
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cy
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 -1, ptr %i.de, align 1, !noalias !137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false), !noalias !137
  br label %bb.ag

bb.af:                                            ; preds = %bb.x
  %i.df = lshr i64 %i.be, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.04.0.i88
  store i8 %i.dg, ptr %i.dh, align 1, !noalias !137
  %i.di = load ptr, ptr %0, align 8, !noalias !137, !nonnull !5, !noundef !5
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cg
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1, !noalias !137
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i88, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !137
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi50, %bb.j ], [ %lpad.phi, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.n
  %i.dm = sub nuw i64 %.sroa.01.0.i, %i.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dm, ptr %i.dn, align 8, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.ai:                                            ; preds = %bb.g
  %i.do = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.do, i64 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  call fastcc void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %..i, i1 noundef zeroext %3) #38
  %i.dp = load ptr, ptr %i.b, align 8, !noalias !142, !noundef !5 ; 8 uses
  %i.dq = icmp eq ptr %i.dp, null
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !142 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !142 ; 4 uses
  br i1 %i.dq, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !142
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke207, %.invoke205, %.invoke203, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #35
          to label %common.resume unwind label %bb.ba, !noalias !143

bb.al:                                            ; preds = %bb.ai
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  store ptr %i.d, ptr %i.c, align 8, !noalias !142
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !142
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !142
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.dp, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !142
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ds, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.du, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142
  %i.dv = load i64, ptr %i.e, align 8, !alias.scope !144, !noalias !145, !noundef !5 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %._crit_edge99.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.al
  %i.dx = load ptr, ptr %0, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5 ; 2 uses
  %.val644 = load <16 x i8>, ptr %i.dx, align 16
  %i.dy = icmp sgt <16 x i8> %.val644, splat (i8 -1)
  %i.dz = bitcast <16 x i1> %i.dy to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.az
  %.sroa.032.098 = phi ptr [ %i.dx, %.preheader.lr.ph ], [ %.sroa.032.1.lcssa, %bb.az ] ; 3 uses
  %.sroa.5.097 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.az ] ; 3 uses
  %.sroa.9.096 = phi i64 [ %i.dv, %.preheader.lr.ph ], [ %i.eo, %bb.az ]
  %.sroa.13.095 = phi i16 [ %i.dz, %.preheader.lr.ph ], [ %i.ee, %bb.az ] ; 2 uses
  %.not.i2189 = icmp eq i16 %.sroa.13.095, 0
  br i1 %.not.i2189, label %.noexc3.preheader, label %._crit_edge92

.noexc3.preheader:                                ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.098) ]
  %i.ea = icmp ugt i64 %.sroa.5.097, -17
  br i1 %i.ea, label %.invoke207, label %.lr.ph244

._crit_edge92:                                    ; preds = %.lr.ph244, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.095, %.preheader ], [ %i.el, %.lr.ph244 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.097, %.preheader ], [ %i.em, %.lr.ph244 ] ; 3 uses
  %.sroa.032.1.lcssa = phi ptr [ %.sroa.032.098, %.preheader ], [ %i.ej, %.lr.ph244 ]
  %i.eb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = add i16 %.sroa.13.1.lcssa, -1
  %i.ee = and i16 %i.ed, %.sroa.13.1.lcssa
  %i.ef = add i64 %.sroa.5.1.lcssa, %i.ec         ; 5 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.5.1.lcssa
  br i1 %i.eg, label %.invoke207, label %bb.am

.noexc3:                                          ; preds = %.lr.ph244
  %i.eh = icmp ugt i64 %.sroa.5.190243, -33
  br i1 %i.eh, label %.invoke207, label %.lr.ph244

.invoke207:                                       ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %bb.aq, %._crit_edge92, %.noexc3.preheader, %.noexc3, %bb.au, %bb.at
  %i.ei = phi ptr [ @2922, %bb.au ], [ @2942, %.noexc3 ], [ @2921, %bb.at ], [ @2927, %bb.aq ], [ @23, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ @2941, %._crit_edge92 ], [ @2942, %.noexc3.preheader ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei) #37
          to label %.cont208 unwind label %.loopexit.split-lp

.cont208:                                         ; preds = %.invoke207
  unreachable

.lr.ph244:                                        ; preds = %.noexc3.preheader, %.noexc3
  %.sroa.5.190243 = phi i64 [ %i.em, %.noexc3 ], [ %.sroa.5.097, %.noexc3.preheader ] ; 2 uses
  %.sroa.032.191242 = phi ptr [ %i.ej, %.noexc3 ], [ %.sroa.032.098, %.noexc3.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.191242, i64 16 ; 3 uses
  %.val45 = load <16 x i8>, ptr %i.ej, align 16
  %i.ek = icmp sgt <16 x i8> %.val45, splat (i8 -1)
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %i.em = add nuw i64 %.sroa.5.190243, 16         ; 2 uses
  %.not.i21 = icmp eq i16 %i.el, 0
  br i1 %.not.i21, label %.noexc3, label %._crit_edge92

._crit_edge99:                                    ; preds = %bb.az
  %.pre137 = load i64, ptr %i.e, align 8, !alias.scope !144, !noalias !145 ; 2 uses
  %i.en = icmp ult i64 %i.du, %.pre137
  br i1 %i.en, label %bb.ap, label %._crit_edge99.thread

bb.am:                                            ; preds = %._crit_edge92
  %i.eo = add i64 %.sroa.9.096, -1                ; 2 uses
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !146, !noalias !147, !nonnull !5, !noundef !5
  %i.eq = sub nsw i64 0, %i.ef
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.et = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.es)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25 unwind label %.loopexit ; 2 uses

bb.an:                                            ; preds = %bb.ap
  unreachable

._crit_edge99.thread:                             ; preds = %bb.al, %._crit_edge99
  %i.eu = phi i64 [ %.pre137, %._crit_edge99 ], [ 0, %bb.al ] ; 2 uses
  %i.ev = sub nuw i64 %i.du, %i.eu
  store i64 %i.ev, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142
  store i64 %i.eu, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit unwind label %bb.ao, !noalias !143

bb.ao:                                            ; preds = %._crit_edge99.thread
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !noalias !143
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge99.thread
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !142
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.ap:                                            ; preds = %._crit_edge99
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
          to label %bb.an unwind label %.loopexit.split-lp, !noalias !143

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25: ; preds = %bb.am, %bb.au
  %.pn.i.i = phi i64 [ %i.fp, %bb.au ], [ %i.et, %bb.am ]
  %i.ex = phi i64 [ %i.fo, %bb.au ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.0.i.i26 = and i64 %.pn.i.i, %i.ds      ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i.i26
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !148
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i.i, label %bb.at, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fa, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.0.0.i.i26, %i.fc         ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.0.0.i.i26
  br i1 %i.fe, label %.invoke207, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = and i64 %i.fd, %i.ds                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !5
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.as, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.as:                                            ; preds = %bb.ar
  %.val2.i.i.i = load <16 x i8>, ptr %i.dp, align 16
  %i.fj = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i7.i.i = icmp ne i16 %i.fk, 0
  %i.fl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fk, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

bb.at:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25
  %i.fn = icmp eq i64 %i.ex, -16
  br i1 %i.fn, label %.invoke207, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = add nuw i64 %i.ex, 16                   ; 2 uses
  %i.fp = add i64 %i.fo, %.sroa.0.0.i.i26         ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %.sroa.0.0.i.i26
  br i1 %i.fq, label %.invoke207, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.as, %bb.ar
  %.sroa.0.0.i6.i.i = phi i64 [ %i.fm, %bb.as ], [ %i.ff, %bb.ar ] ; 5 uses
  %i.fr = add i64 %.sroa.0.0.i6.i.i, -16
  %i.fs = and i64 %i.fr, %i.ds                    ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, -17
  br i1 %i.ft, label %.invoke207, label %bb.av

bb.av:                                            ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fu = lshr i64 %i.et, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i6.i.i
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.dp, i64 %i.fs
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5
  %i.ga = icmp eq i64 %i.ef, -1
  br i1 %i.ga, label %.invoke203, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gb = icmp ugt i64 %i.ef, 1152921504606846974
  br i1 %i.gb, label %.invoke205, label %bb.ax

.invoke203:                                       ; preds = %bb.ax, %bb.av
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont204 unwind label %.loopexit.split-lp, !noalias !143

.cont204:                                         ; preds = %.invoke203
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %.neg.i.i = xor i64 %i.ef, -1
  %.neg63.i.i = shl i64 %.neg.i.i, 4
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %.neg63.i.i
  %i.gd = icmp eq i64 %.sroa.0.0.i6.i.i, -1
  br i1 %i.gd, label %.invoke203, label %bb.ay

.invoke205:                                       ; preds = %bb.ay, %bb.aw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont206 unwind label %.loopexit.split-lp, !noalias !143

.cont206:                                         ; preds = %.invoke205
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ge = icmp ugt i64 %.sroa.0.0.i6.i.i, 1152921504606846974
  br i1 %i.ge, label %.invoke205, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.neg64.i.i = xor i64 %.sroa.0.0.i6.i.i, -1
  %.neg65.i.i = shl i64 %.neg64.i.i, 4
  %i.gf = getelementptr inbounds i8, ptr %i.dp, i64 %.neg65.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gf, ptr noundef nonnull align 1 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !143
  %i.gg = icmp eq i64 %i.eo, 0
  br i1 %i.gg, label %._crit_edge99, label %.preheader

bb.ba:                                            ; preds = %bb.ak
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !143
  unreachable

bb.bb:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !134
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit, %bb.c, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.du, %bb.aj ], [ undef, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.ds, %bb.aj ], [ -1, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !170, !noalias !171, !noundef !5 ; 6 uses
  %i.k = icmp ult i64 %i.j, 8
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.bb, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #37, !noalias !172
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.p
  br i1 %.not.i, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.val7 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.q = add i64 %i.j, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = and i64 %i.q, 15
  %.not10.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.r, %i.t  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.u = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i = phi i64 [ 0, %.new ], [ %i.y, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.v, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.w = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.x = or <2 x i64> %i.w, splat (i64 -9187201950435737472)
  store <2 x i64> %i.x, ptr %i.v, align 16
  %i.y = add i64 %.sroa.01.07.i, 32               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.aa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.ab = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ac = or <2 x i64> %i.ab, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ac, ptr %i.aa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, label %bb.i

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %bb.h
  %.sroa.01.07.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa ]
  %lcmp.mod281 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ad, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ae = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.af = or <2 x i64> %i.ae, splat (i64 -9187201950435737472)
  store <2 x i64> %i.af, ptr %i.ad, align 16
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %.epil.preheader
  %i.ag = icmp ult i64 %i.j, 15                   ; 2 uses
  %spec.select.i = select i1 %i.ag, i64 16, i64 %i.q, !prof !7
  %spec.select10.i = select i1 %i.ag, i64 %i.q, i64 16, !prof !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val7, i64 %spec.select.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %.val7, i64 %spec.select10.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ai, align 8, !noalias !174
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.aj, align 8, !noalias !174
  store ptr %0, ptr %i.a, align 8, !noalias !174
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !173, !noalias !175, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.invoke, label %.lr.ph

.invoke:                                          ; preds = %bb.x, %bb.ac, %bb.aa, %bb.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.l
  %i.am = phi ptr [ @5, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], [ @7, %bb.y ], [ @8, %bb.l ], [ @23, %bb.aa ], [ @23, %bb.ac ], [ @23, %bb.x ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #36
          to label %.cont unwind label %.loopexit.split-lp47, !noalias !175

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit46:                                      ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit, %bb.ad
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp47:                             ; preds = %.invoke201, %.invoke199, %.invoke, %bb.o
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp47, %.loopexit46
  %lpad.phi50 = phi { ptr, i32 } [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.ah, !noalias !175

bb.k:                                             ; preds = %bb.o
  unreachable

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load i64, ptr %i.i, align 8, !noalias !175 ; 4 uses
  %i.an = icmp ult i64 %.pre, 8
  br i1 %i.an, label %bb.n, label %bb.l

.lr.ph:                                           ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.ag
  %.sroa.04.0.i88 = phi i64 [ %i.ao, %bb.ag ], [ 0, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %i.ao = add nuw i64 %.sroa.04.0.i88, 1
  %i.ap = load ptr, ptr %0, align 8, !noalias !175, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.04.0.i88
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !175, !noundef !5
  %.not.i1 = icmp eq i8 %i.ar, -128
  br i1 %.not.i1, label %bb.p, label %bb.ag

bb.l:                                             ; preds = %._crit_edge
  %i.as = icmp eq i64 %.pre, -1
  br i1 %i.as, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nuw i64 %.pre, 1
  %i.au = lshr i64 %i.at, 3
  %i.av = mul nuw i64 %i.au, 7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sroa.01.0.i = phi i64 [ %.pre, %._crit_edge ], [ %i.av, %bb.m ] ; 2 uses
  %i.aw = load i64, ptr %i.e, align 8, !noalias !175, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.01.0.i, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2924) #36
          to label %bb.k unwind label %.loopexit.split-lp47, !noalias !175

bb.p:                                             ; preds = %.lr.ph
  %i.ay = icmp ugt i64 %.sroa.04.0.i88, 1152921504606846974
  br i1 %i.ay, label %.invoke199, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.neg18.i = shl i64 %.neg.i, 4
  %i.az = getelementptr inbounds i8, ptr %i.ap, i64 %.neg18.i ; 2 uses
  %i.ba = sub nsw i64 0, %.sroa.04.0.i88
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

.invoke199:                                       ; preds = %bb.p, %bb.z
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont200 unwind label %.loopexit.split-lp47, !noalias !175

.cont200:                                         ; preds = %.invoke199
  unreachable

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ad, %bb.q
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !176, !noalias !177, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.be = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit unwind label %.loopexit46 ; 4 uses

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val11 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit
  %.pn.i = phi i64 [ %i.be, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit ], [ %i.by, %bb.w ]
  %i.bf = phi i64 [ 0, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit ], [ %i.bx, %bb.w ] ; 2 uses
  %.sroa.0.0.i16 = and i64 %.pn.i, %.val12        ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !178
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bi, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.0.0.i16, %i.bk           ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.0.0.i16
  br i1 %i.bm, label %.invoke201, label %bb.t

.invoke201:                                       ; preds = %bb.s, %bb.w, %bb.v
  %i.bn = phi ptr [ @2921, %bb.v ], [ @2922, %bb.w ], [ @2927, %bb.s ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #37
          to label %.cont202 unwind label %.loopexit.split-lp47

.cont202:                                         ; preds = %.invoke201
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bo = and i64 %i.bl, %.val12                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.u, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  %.val2.i.i = load <16 x i8>, ptr %.val11, align 16
  %i.bs = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i7.i = icmp ne i16 %i.bt, 0
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  tail call void @llvm.assume(i1 %.not.i7.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.v:                                             ; preds = %bb.r
  %i.bw = icmp eq i64 %i.bf, -16
  br i1 %i.bw, label %.invoke201, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = add nuw i64 %i.bf, 16                   ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.0.i16           ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.0.0.i16
  br i1 %i.bz, label %.invoke201, label %bb.r

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.u, %bb.t
  %.sroa.0.0.i6.i = phi i64 [ %i.bv, %bb.u ], [ %i.bo, %bb.t ] ; 6 uses
  %i.ca = and i64 %.val12, %i.be                  ; 2 uses
  %i.cb = sub i64 %.sroa.04.0.i88, %i.ca
  %i.cc = sub i64 %.sroa.0.0.i6.i, %i.ca
  %i.cd = xor i64 %i.cc, %i.cb
  %.unshifted.i = and i64 %i.cd, %.val12
  %i.ce = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ce, label %bb.x, label %bb.y, !prof !8

bb.x:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.cf = add nsw i64 %.sroa.04.0.i88, -16
  %i.cg = and i64 %.val12, %i.cf                  ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, -17
  br i1 %i.ch, label %.invoke, label %bb.af

bb.y:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ci = icmp eq i64 %.sroa.0.0.i6.i, -1
  br i1 %i.ci, label %.invoke, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = icmp ugt i64 %.sroa.0.0.i6.i, 1152921504606846974
  br i1 %i.cj, label %.invoke199, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.neg19.i = xor i64 %.sroa.0.0.i6.i, -1
  %.neg20.i = shl i64 %.neg19.i, 4
  %i.ck = getelementptr inbounds i8, ptr %.val11, i64 %.neg20.i ; 2 uses
  %i.cl = add nsw i64 %.sroa.0.0.i6.i, -16
  %i.cm = and i64 %i.cl, %.val12                  ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, -17
  br i1 %i.cn, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = lshr i64 %i.be, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8           ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i6.i ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !175, !noundef !5
  store i8 %i.cp, ptr %i.cq, align 1, !noalias !175
  %i.cs = load ptr, ptr %0, align 8, !noalias !175, !nonnull !5, !noundef !5
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store i8 %i.cp, ptr %i.cu, align 1, !noalias !175
  %i.cv = icmp eq i8 %i.cr, -1
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i64 %.sroa.04.0.i88, -16
  %i.cx = load i64, ptr %i.i, align 8, !noalias !175, !noundef !5
  %i.cy = and i64 %i.cx, %i.cw                    ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, -17
  br i1 %i.cz, label %.invoke, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ck, i64 noundef 2)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %.loopexit46

bb.ae:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %0, align 8, !noalias !175, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.04.0.i88
  store i8 -1, ptr %i.db, align 1, !noalias !175
  %i.dc = load ptr, ptr %0, align 8, !noalias !175, !nonnull !5, !noundef !5
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cy
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 -1, ptr %i.de, align 1, !noalias !175
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false), !noalias !175
  br label %bb.ag

bb.af:                                            ; preds = %bb.x
  %i.df = lshr i64 %i.be, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.04.0.i88
  store i8 %i.dg, ptr %i.dh, align 1, !noalias !175
  %i.di = load ptr, ptr %0, align 8, !noalias !175, !nonnull !5, !noundef !5
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cg
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1, !noalias !175
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i88, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !175
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi50, %bb.j ], [ %lpad.phi, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.n
  %i.dm = sub nuw i64 %.sroa.01.0.i, %i.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dm, ptr %i.dn, align 8, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !174
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.ai:                                            ; preds = %bb.g
  %i.do = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.do, i64 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  call fastcc void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %..i, i1 noundef zeroext %3) #38
  %i.dp = load ptr, ptr %i.b, align 8, !noalias !180, !noundef !5 ; 8 uses
  %i.dq = icmp eq ptr %i.dp, null
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !180 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !180 ; 4 uses
  br i1 %i.dq, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke207, %.invoke205, %.invoke203, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #35
          to label %common.resume unwind label %bb.ba, !noalias !181

bb.al:                                            ; preds = %bb.ai
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  store ptr %i.d, ptr %i.c, align 8, !noalias !180
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !180
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !180
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.dp, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !180
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ds, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.du, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180
  %i.dv = load i64, ptr %i.e, align 8, !alias.scope !182, !noalias !183, !noundef !5 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %._crit_edge99.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.al
  %i.dx = load ptr, ptr %0, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5 ; 2 uses
  %.val644 = load <16 x i8>, ptr %i.dx, align 16
  %i.dy = icmp sgt <16 x i8> %.val644, splat (i8 -1)
  %i.dz = bitcast <16 x i1> %i.dy to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.az
  %.sroa.032.098 = phi ptr [ %i.dx, %.preheader.lr.ph ], [ %.sroa.032.1.lcssa, %bb.az ] ; 3 uses
  %.sroa.5.097 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.az ] ; 3 uses
  %.sroa.9.096 = phi i64 [ %i.dv, %.preheader.lr.ph ], [ %i.eo, %bb.az ]
  %.sroa.13.095 = phi i16 [ %i.dz, %.preheader.lr.ph ], [ %i.ee, %bb.az ] ; 2 uses
  %.not.i2189 = icmp eq i16 %.sroa.13.095, 0
  br i1 %.not.i2189, label %.noexc3.preheader, label %._crit_edge92

.noexc3.preheader:                                ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.098) ]
  %i.ea = icmp ugt i64 %.sroa.5.097, -17
  br i1 %i.ea, label %.invoke207, label %.lr.ph244

._crit_edge92:                                    ; preds = %.lr.ph244, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.095, %.preheader ], [ %i.el, %.lr.ph244 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.097, %.preheader ], [ %i.em, %.lr.ph244 ] ; 3 uses
  %.sroa.032.1.lcssa = phi ptr [ %.sroa.032.098, %.preheader ], [ %i.ej, %.lr.ph244 ]
  %i.eb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = add i16 %.sroa.13.1.lcssa, -1
  %i.ee = and i16 %i.ed, %.sroa.13.1.lcssa
  %i.ef = add i64 %.sroa.5.1.lcssa, %i.ec         ; 5 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.5.1.lcssa
  br i1 %i.eg, label %.invoke207, label %bb.am

.noexc3:                                          ; preds = %.lr.ph244
  %i.eh = icmp ugt i64 %.sroa.5.190243, -33
  br i1 %i.eh, label %.invoke207, label %.lr.ph244

.invoke207:                                       ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %bb.aq, %._crit_edge92, %.noexc3.preheader, %.noexc3, %bb.au, %bb.at
  %i.ei = phi ptr [ @2922, %bb.au ], [ @2942, %.noexc3 ], [ @2921, %bb.at ], [ @2927, %bb.aq ], [ @23, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ @2941, %._crit_edge92 ], [ @2942, %.noexc3.preheader ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei) #37
          to label %.cont208 unwind label %.loopexit.split-lp

.cont208:                                         ; preds = %.invoke207
  unreachable

.lr.ph244:                                        ; preds = %.noexc3.preheader, %.noexc3
  %.sroa.5.190243 = phi i64 [ %i.em, %.noexc3 ], [ %.sroa.5.097, %.noexc3.preheader ] ; 2 uses
  %.sroa.032.191242 = phi ptr [ %i.ej, %.noexc3 ], [ %.sroa.032.098, %.noexc3.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.191242, i64 16 ; 3 uses
  %.val45 = load <16 x i8>, ptr %i.ej, align 16
  %i.ek = icmp sgt <16 x i8> %.val45, splat (i8 -1)
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %i.em = add nuw i64 %.sroa.5.190243, 16         ; 2 uses
  %.not.i21 = icmp eq i16 %i.el, 0
  br i1 %.not.i21, label %.noexc3, label %._crit_edge92

._crit_edge99:                                    ; preds = %bb.az
  %.pre137 = load i64, ptr %i.e, align 8, !alias.scope !182, !noalias !183 ; 2 uses
  %i.en = icmp ult i64 %i.du, %.pre137
  br i1 %i.en, label %bb.ap, label %._crit_edge99.thread

bb.am:                                            ; preds = %._crit_edge92
  %i.eo = add i64 %.sroa.9.096, -1                ; 2 uses
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !184, !noalias !185, !nonnull !5, !noundef !5
  %i.eq = sub nsw i64 0, %i.ef
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.et = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.es)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25 unwind label %.loopexit ; 2 uses

bb.an:                                            ; preds = %bb.ap
  unreachable

._crit_edge99.thread:                             ; preds = %bb.al, %._crit_edge99
  %i.eu = phi i64 [ %.pre137, %._crit_edge99 ], [ 0, %bb.al ] ; 2 uses
  %i.ev = sub nuw i64 %i.du, %i.eu
  store i64 %i.ev, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180
  store i64 %i.eu, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit unwind label %bb.ao, !noalias !181

bb.ao:                                            ; preds = %._crit_edge99.thread
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !noalias !181
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge99.thread
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.ap:                                            ; preds = %._crit_edge99
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
          to label %bb.an unwind label %.loopexit.split-lp, !noalias !181

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25: ; preds = %bb.am, %bb.au
  %.pn.i.i = phi i64 [ %i.fp, %bb.au ], [ %i.et, %bb.am ]
  %i.ex = phi i64 [ %i.fo, %bb.au ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.0.i.i26 = and i64 %.pn.i.i, %i.ds      ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i.i26
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !186
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i.i, label %bb.at, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fa, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.0.0.i.i26, %i.fc         ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.0.0.i.i26
  br i1 %i.fe, label %.invoke207, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = and i64 %i.fd, %i.ds                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !5
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.as, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.as:                                            ; preds = %bb.ar
  %.val2.i.i.i = load <16 x i8>, ptr %i.dp, align 16
  %i.fj = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i7.i.i = icmp ne i16 %i.fk, 0
  %i.fl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fk, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

bb.at:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25
  %i.fn = icmp eq i64 %i.ex, -16
  br i1 %i.fn, label %.invoke207, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = add nuw i64 %i.ex, 16                   ; 2 uses
  %i.fp = add i64 %i.fo, %.sroa.0.0.i.i26         ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %.sroa.0.0.i.i26
  br i1 %i.fq, label %.invoke207, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.as, %bb.ar
  %.sroa.0.0.i6.i.i = phi i64 [ %i.fm, %bb.as ], [ %i.ff, %bb.ar ] ; 5 uses
  %i.fr = add i64 %.sroa.0.0.i6.i.i, -16
  %i.fs = and i64 %i.fr, %i.ds                    ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, -17
  br i1 %i.ft, label %.invoke207, label %bb.av

bb.av:                                            ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fu = lshr i64 %i.et, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i6.i.i
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.dp, i64 %i.fs
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5
  %i.ga = icmp eq i64 %i.ef, -1
  br i1 %i.ga, label %.invoke203, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gb = icmp ugt i64 %i.ef, 1152921504606846974
  br i1 %i.gb, label %.invoke205, label %bb.ax

.invoke203:                                       ; preds = %bb.ax, %bb.av
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont204 unwind label %.loopexit.split-lp, !noalias !181

.cont204:                                         ; preds = %.invoke203
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %.neg.i.i = xor i64 %i.ef, -1
  %.neg63.i.i = shl i64 %.neg.i.i, 4
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %.neg63.i.i
  %i.gd = icmp eq i64 %.sroa.0.0.i6.i.i, -1
  br i1 %i.gd, label %.invoke203, label %bb.ay

.invoke205:                                       ; preds = %bb.ay, %bb.aw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont206 unwind label %.loopexit.split-lp, !noalias !181

.cont206:                                         ; preds = %.invoke205
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ge = icmp ugt i64 %.sroa.0.0.i6.i.i, 1152921504606846974
  br i1 %i.ge, label %.invoke205, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.neg64.i.i = xor i64 %.sroa.0.0.i6.i.i, -1
  %.neg65.i.i = shl i64 %.neg64.i.i, 4
  %i.gf = getelementptr inbounds i8, ptr %i.dp, i64 %.neg65.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gf, ptr noundef nonnull align 1 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !181
  %i.gg = icmp eq i64 %i.eo, 0
  br i1 %i.gg, label %._crit_edge99, label %.preheader

bb.ba:                                            ; preds = %bb.ak
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !181
  unreachable

bb.bb:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !172
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit, %bb.c, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.du, %bb.aj ], [ undef, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.ds, %bb.aj ], [ -1, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !208, !noalias !209, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !208, !noalias !209, !noundef !5 ; 6 uses
  %i.k = icmp ult i64 %i.j, 8
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.bb, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #37, !noalias !210
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.p
  br i1 %.not.i, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %.val7 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.q = add i64 %i.j, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = and i64 %i.q, 15
  %.not10.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.r, %i.t  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.u = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i = phi i64 [ 0, %.new ], [ %i.y, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.v, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.w = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.x = or <2 x i64> %i.w, splat (i64 -9187201950435737472)
  store <2 x i64> %i.x, ptr %i.v, align 16
  %i.y = add i64 %.sroa.01.07.i, 32               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.aa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.ab = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ac = or <2 x i64> %i.ab, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ac, ptr %i.aa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, label %bb.i

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %bb.h
  %.sroa.01.07.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa ]
  %lcmp.mod281 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ad, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ae = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.af = or <2 x i64> %i.ae, splat (i64 -9187201950435737472)
  store <2 x i64> %i.af, ptr %i.ad, align 16
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %.epil.preheader
  %i.ag = icmp ult i64 %i.j, 15                   ; 2 uses
  %spec.select.i = select i1 %i.ag, i64 16, i64 %i.q, !prof !7
  %spec.select10.i = select i1 %i.ag, i64 %i.q, i64 16, !prof !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val7, i64 %spec.select.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %.val7, i64 %spec.select10.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !212
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ai, align 8, !noalias !212
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.aj, align 8, !noalias !212
  store ptr %0, ptr %i.a, align 8, !noalias !212
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !211, !noalias !213, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.invoke, label %.lr.ph

.invoke:                                          ; preds = %bb.x, %bb.ac, %bb.aa, %bb.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.l
  %i.am = phi ptr [ @5, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], [ @7, %bb.y ], [ @8, %bb.l ], [ @23, %bb.aa ], [ @23, %bb.ac ], [ @23, %bb.x ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #36
          to label %.cont unwind label %.loopexit.split-lp47, !noalias !213

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit46:                                      ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit, %bb.ad
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp47:                             ; preds = %.invoke201, %.invoke199, %.invoke, %bb.o
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp47, %.loopexit46
  %lpad.phi50 = phi { ptr, i32 } [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.ah, !noalias !213

bb.k:                                             ; preds = %bb.o
  unreachable

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load i64, ptr %i.i, align 8, !noalias !213 ; 4 uses
  %i.an = icmp ult i64 %.pre, 8
  br i1 %i.an, label %bb.n, label %bb.l

.lr.ph:                                           ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.ag
  %.sroa.04.0.i88 = phi i64 [ %i.ao, %bb.ag ], [ 0, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %i.ao = add nuw i64 %.sroa.04.0.i88, 1
  %i.ap = load ptr, ptr %0, align 8, !noalias !213, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.04.0.i88
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !213, !noundef !5
  %.not.i1 = icmp eq i8 %i.ar, -128
  br i1 %.not.i1, label %bb.p, label %bb.ag

bb.l:                                             ; preds = %._crit_edge
  %i.as = icmp eq i64 %.pre, -1
  br i1 %i.as, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nuw i64 %.pre, 1
  %i.au = lshr i64 %i.at, 3
  %i.av = mul nuw i64 %i.au, 7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sroa.01.0.i = phi i64 [ %.pre, %._crit_edge ], [ %i.av, %bb.m ] ; 2 uses
  %i.aw = load i64, ptr %i.e, align 8, !noalias !213, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.01.0.i, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2924) #36
          to label %bb.k unwind label %.loopexit.split-lp47, !noalias !213

bb.p:                                             ; preds = %.lr.ph
  %i.ay = icmp ugt i64 %.sroa.04.0.i88, 1152921504606846974
  br i1 %i.ay, label %.invoke199, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.neg18.i = shl i64 %.neg.i, 4
  %i.az = getelementptr inbounds i8, ptr %i.ap, i64 %.neg18.i ; 2 uses
  %i.ba = sub nsw i64 0, %.sroa.04.0.i88
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

.invoke199:                                       ; preds = %bb.p, %bb.z
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont200 unwind label %.loopexit.split-lp47, !noalias !213

.cont200:                                         ; preds = %.invoke199
  unreachable

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ad, %bb.q
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !214, !noalias !215, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.be = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit unwind label %.loopexit46 ; 4 uses

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val11 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit
  %.pn.i = phi i64 [ %i.be, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit ], [ %i.by, %bb.w ]
  %i.bf = phi i64 [ 0, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit ], [ %i.bx, %bb.w ] ; 2 uses
  %.sroa.0.0.i16 = and i64 %.pn.i, %.val12        ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !216
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bi, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.0.0.i16, %i.bk           ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.0.0.i16
  br i1 %i.bm, label %.invoke201, label %bb.t

.invoke201:                                       ; preds = %bb.s, %bb.w, %bb.v
  %i.bn = phi ptr [ @2921, %bb.v ], [ @2922, %bb.w ], [ @2927, %bb.s ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #37
          to label %.cont202 unwind label %.loopexit.split-lp47

.cont202:                                         ; preds = %.invoke201
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bo = and i64 %i.bl, %.val12                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.u, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  %.val2.i.i = load <16 x i8>, ptr %.val11, align 16
  %i.bs = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i7.i = icmp ne i16 %i.bt, 0
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  tail call void @llvm.assume(i1 %.not.i7.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.v:                                             ; preds = %bb.r
  %i.bw = icmp eq i64 %i.bf, -16
  br i1 %i.bw, label %.invoke201, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = add nuw i64 %i.bf, 16                   ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.0.i16           ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.0.0.i16
  br i1 %i.bz, label %.invoke201, label %bb.r

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.u, %bb.t
  %.sroa.0.0.i6.i = phi i64 [ %i.bv, %bb.u ], [ %i.bo, %bb.t ] ; 6 uses
  %i.ca = and i64 %.val12, %i.be                  ; 2 uses
  %i.cb = sub i64 %.sroa.04.0.i88, %i.ca
  %i.cc = sub i64 %.sroa.0.0.i6.i, %i.ca
  %i.cd = xor i64 %i.cc, %i.cb
  %.unshifted.i = and i64 %i.cd, %.val12
  %i.ce = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ce, label %bb.x, label %bb.y, !prof !8

bb.x:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.cf = add nsw i64 %.sroa.04.0.i88, -16
  %i.cg = and i64 %.val12, %i.cf                  ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, -17
  br i1 %i.ch, label %.invoke, label %bb.af

bb.y:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ci = icmp eq i64 %.sroa.0.0.i6.i, -1
  br i1 %i.ci, label %.invoke, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = icmp ugt i64 %.sroa.0.0.i6.i, 1152921504606846974
  br i1 %i.cj, label %.invoke199, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.neg19.i = xor i64 %.sroa.0.0.i6.i, -1
  %.neg20.i = shl i64 %.neg19.i, 4
  %i.ck = getelementptr inbounds i8, ptr %.val11, i64 %.neg20.i ; 2 uses
  %i.cl = add nsw i64 %.sroa.0.0.i6.i, -16
  %i.cm = and i64 %i.cl, %.val12                  ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, -17
  br i1 %i.cn, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = lshr i64 %i.be, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8           ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i6.i ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !213, !noundef !5
  store i8 %i.cp, ptr %i.cq, align 1, !noalias !213
  %i.cs = load ptr, ptr %0, align 8, !noalias !213, !nonnull !5, !noundef !5
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store i8 %i.cp, ptr %i.cu, align 1, !noalias !213
  %i.cv = icmp eq i8 %i.cr, -1
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i64 %.sroa.04.0.i88, -16
  %i.cx = load i64, ptr %i.i, align 8, !noalias !213, !noundef !5
  %i.cy = and i64 %i.cx, %i.cw                    ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, -17
  br i1 %i.cz, label %.invoke, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ck, i64 noundef 2)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %.loopexit46

bb.ae:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %0, align 8, !noalias !213, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.04.0.i88
  store i8 -1, ptr %i.db, align 1, !noalias !213
  %i.dc = load ptr, ptr %0, align 8, !noalias !213, !nonnull !5, !noundef !5
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cy
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 -1, ptr %i.de, align 1, !noalias !213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false), !noalias !213
  br label %bb.ag

bb.af:                                            ; preds = %bb.x
  %i.df = lshr i64 %i.be, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.04.0.i88
  store i8 %i.dg, ptr %i.dh, align 1, !noalias !213
  %i.di = load ptr, ptr %0, align 8, !noalias !213, !nonnull !5, !noundef !5
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cg
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1, !noalias !213
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i88, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !213
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi50, %bb.j ], [ %lpad.phi, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.n
  %i.dm = sub nuw i64 %.sroa.01.0.i, %i.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dm, ptr %i.dn, align 8, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !212
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.ai:                                            ; preds = %bb.g
  %i.do = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.do, i64 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !218
  call fastcc void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %..i, i1 noundef zeroext %3) #38
  %i.dp = load ptr, ptr %i.b, align 8, !noalias !218, !noundef !5 ; 8 uses
  %i.dq = icmp eq ptr %i.dp, null
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !218 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !218 ; 4 uses
  br i1 %i.dq, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke207, %.invoke205, %.invoke203, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #35
          to label %common.resume unwind label %bb.ba, !noalias !219

bb.al:                                            ; preds = %bb.ai
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !218
  store ptr %i.d, ptr %i.c, align 8, !noalias !218
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !218
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !218
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.dp, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !218
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ds, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !218
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.du, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !218
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !218
  %i.dv = load i64, ptr %i.e, align 8, !alias.scope !220, !noalias !221, !noundef !5 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %._crit_edge99.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.al
  %i.dx = load ptr, ptr %0, align 8, !alias.scope !220, !noalias !221, !nonnull !5, !noundef !5 ; 2 uses
  %.val644 = load <16 x i8>, ptr %i.dx, align 16
  %i.dy = icmp sgt <16 x i8> %.val644, splat (i8 -1)
  %i.dz = bitcast <16 x i1> %i.dy to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.az
  %.sroa.032.098 = phi ptr [ %i.dx, %.preheader.lr.ph ], [ %.sroa.032.1.lcssa, %bb.az ] ; 3 uses
  %.sroa.5.097 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.az ] ; 3 uses
  %.sroa.9.096 = phi i64 [ %i.dv, %.preheader.lr.ph ], [ %i.eo, %bb.az ]
  %.sroa.13.095 = phi i16 [ %i.dz, %.preheader.lr.ph ], [ %i.ee, %bb.az ] ; 2 uses
  %.not.i2189 = icmp eq i16 %.sroa.13.095, 0
  br i1 %.not.i2189, label %.noexc3.preheader, label %._crit_edge92

.noexc3.preheader:                                ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.098) ]
  %i.ea = icmp ugt i64 %.sroa.5.097, -17
  br i1 %i.ea, label %.invoke207, label %.lr.ph244

._crit_edge92:                                    ; preds = %.lr.ph244, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.095, %.preheader ], [ %i.el, %.lr.ph244 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.097, %.preheader ], [ %i.em, %.lr.ph244 ] ; 3 uses
  %.sroa.032.1.lcssa = phi ptr [ %.sroa.032.098, %.preheader ], [ %i.ej, %.lr.ph244 ]
  %i.eb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = add i16 %.sroa.13.1.lcssa, -1
  %i.ee = and i16 %i.ed, %.sroa.13.1.lcssa
  %i.ef = add i64 %.sroa.5.1.lcssa, %i.ec         ; 5 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.5.1.lcssa
  br i1 %i.eg, label %.invoke207, label %bb.am

.noexc3:                                          ; preds = %.lr.ph244
  %i.eh = icmp ugt i64 %.sroa.5.190243, -33
  br i1 %i.eh, label %.invoke207, label %.lr.ph244

.invoke207:                                       ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %bb.aq, %._crit_edge92, %.noexc3.preheader, %.noexc3, %bb.au, %bb.at
  %i.ei = phi ptr [ @2922, %bb.au ], [ @2942, %.noexc3 ], [ @2921, %bb.at ], [ @2927, %bb.aq ], [ @23, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ @2941, %._crit_edge92 ], [ @2942, %.noexc3.preheader ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei) #37
          to label %.cont208 unwind label %.loopexit.split-lp

.cont208:                                         ; preds = %.invoke207
  unreachable

.lr.ph244:                                        ; preds = %.noexc3.preheader, %.noexc3
  %.sroa.5.190243 = phi i64 [ %i.em, %.noexc3 ], [ %.sroa.5.097, %.noexc3.preheader ] ; 2 uses
  %.sroa.032.191242 = phi ptr [ %i.ej, %.noexc3 ], [ %.sroa.032.098, %.noexc3.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.191242, i64 16 ; 3 uses
  %.val45 = load <16 x i8>, ptr %i.ej, align 16
  %i.ek = icmp sgt <16 x i8> %.val45, splat (i8 -1)
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %i.em = add nuw i64 %.sroa.5.190243, 16         ; 2 uses
  %.not.i21 = icmp eq i16 %i.el, 0
  br i1 %.not.i21, label %.noexc3, label %._crit_edge92

._crit_edge99:                                    ; preds = %bb.az
  %.pre137 = load i64, ptr %i.e, align 8, !alias.scope !220, !noalias !221 ; 2 uses
  %i.en = icmp ult i64 %i.du, %.pre137
  br i1 %i.en, label %bb.ap, label %._crit_edge99.thread

bb.am:                                            ; preds = %._crit_edge92
  %i.eo = add i64 %.sroa.9.096, -1                ; 2 uses
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !222, !noalias !223, !nonnull !5, !noundef !5
  %i.eq = sub nsw i64 0, %i.ef
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.et = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.es)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit25 unwind label %.loopexit ; 2 uses

bb.an:                                            ; preds = %bb.ap
  unreachable

._crit_edge99.thread:                             ; preds = %bb.al, %._crit_edge99
  %i.eu = phi i64 [ %.pre137, %._crit_edge99 ], [ 0, %bb.al ] ; 2 uses
  %i.ev = sub nuw i64 %i.du, %i.eu
  store i64 %i.ev, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !218
  store i64 %i.eu, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !218
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit unwind label %bb.ao, !noalias !219

bb.ao:                                            ; preds = %._crit_edge99.thread
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !noalias !219
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge99.thread
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.ap:                                            ; preds = %._crit_edge99
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
          to label %bb.an unwind label %.loopexit.split-lp, !noalias !219

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit25: ; preds = %bb.am, %bb.au
  %.pn.i.i = phi i64 [ %i.fp, %bb.au ], [ %i.et, %bb.am ]
  %i.ex = phi i64 [ %i.fo, %bb.au ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.0.i.i26 = and i64 %.pn.i.i, %i.ds      ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i.i26
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !224
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i.i, label %bb.at, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit25
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fa, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.0.0.i.i26, %i.fc         ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.0.0.i.i26
  br i1 %i.fe, label %.invoke207, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = and i64 %i.fd, %i.ds                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !5
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.as, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.as:                                            ; preds = %bb.ar
  %.val2.i.i.i = load <16 x i8>, ptr %i.dp, align 16
  %i.fj = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i7.i.i = icmp ne i16 %i.fk, 0
  %i.fl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fk, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

bb.at:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit25
  %i.fn = icmp eq i64 %i.ex, -16
  br i1 %i.fn, label %.invoke207, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = add nuw i64 %i.ex, 16                   ; 2 uses
  %i.fp = add i64 %i.fo, %.sroa.0.0.i.i26         ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %.sroa.0.0.i.i26
  br i1 %i.fq, label %.invoke207, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit25

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.as, %bb.ar
  %.sroa.0.0.i6.i.i = phi i64 [ %i.fm, %bb.as ], [ %i.ff, %bb.ar ] ; 5 uses
  %i.fr = add i64 %.sroa.0.0.i6.i.i, -16
  %i.fs = and i64 %i.fr, %i.ds                    ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, -17
  br i1 %i.ft, label %.invoke207, label %bb.av

bb.av:                                            ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fu = lshr i64 %i.et, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i6.i.i
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.dp, i64 %i.fs
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !220, !noalias !221, !nonnull !5, !noundef !5
  %i.ga = icmp eq i64 %i.ef, -1
  br i1 %i.ga, label %.invoke203, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gb = icmp ugt i64 %i.ef, 1152921504606846974
  br i1 %i.gb, label %.invoke205, label %bb.ax

.invoke203:                                       ; preds = %bb.ax, %bb.av
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont204 unwind label %.loopexit.split-lp, !noalias !219

.cont204:                                         ; preds = %.invoke203
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %.neg.i.i = xor i64 %i.ef, -1
  %.neg63.i.i = shl i64 %.neg.i.i, 4
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %.neg63.i.i
  %i.gd = icmp eq i64 %.sroa.0.0.i6.i.i, -1
  br i1 %i.gd, label %.invoke203, label %bb.ay

.invoke205:                                       ; preds = %bb.ay, %bb.aw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont206 unwind label %.loopexit.split-lp, !noalias !219

.cont206:                                         ; preds = %.invoke205
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ge = icmp ugt i64 %.sroa.0.0.i6.i.i, 1152921504606846974
  br i1 %i.ge, label %.invoke205, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.neg64.i.i = xor i64 %.sroa.0.0.i6.i.i, -1
  %.neg65.i.i = shl i64 %.neg64.i.i, 4
  %i.gf = getelementptr inbounds i8, ptr %i.dp, i64 %.neg65.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gf, ptr noundef nonnull align 1 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !219
  %i.gg = icmp eq i64 %i.eo, 0
  br i1 %i.gg, label %._crit_edge99, label %.preheader

bb.ba:                                            ; preds = %bb.ak
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !219
  unreachable

bb.bb:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !210
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit, %bb.c, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.du, %bb.aj ], [ undef, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.ds, %bb.aj ], [ -1, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0EB3k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.a = lshr i64 %1, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !232, !noalias !233, !noundef !5 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !232, !noalias !233, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i = load ptr, ptr %2, align 8           ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i.i, i64 16
  %i.i = getelementptr i8, ptr %.val.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.07.0.i = phi i64 [ 0, %bb.a ], [ %i.w, %bb.d ] ; 2 uses
  %.pn = phi i64 [ %1, %bb.a ], [ %i.x, %bb.d ]
  %.sroa.03.0.i = and i64 %.pn, %i.d              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %.sroa.0.0.copyload.i33 = load <16 x i8>, ptr %i.j, align 1, !noalias !234 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i33, %i.g
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not45 = icmp eq i16 %i.l, 0
  br i1 %.not.i.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread
  %.sroa.011.046 = phi i16 [ %i.p, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i16 %.sroa.011.046, -1
  %i.p = and i16 %i.o, %.sroa.011.046             ; 2 uses
  %i.q = add i64 %.sroa.03.0.i, %i.n              ; 2 uses
  %i.r = icmp ult i64 %i.q, %.sroa.03.0.i
  br i1 %i.r, label %bb.h, label %bb.g

._crit_edge:                                      ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i33, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.c, label %.loopexit, !prof !7

bb.c:                                             ; preds = %._crit_edge
  %i.v = icmp eq i64 %.sroa.07.0.i, -16
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw i64 %.sroa.07.0.i, 16            ; 2 uses
  %i.x = add i64 %.sroa.03.0.i, %i.w              ; 2 uses
  %i.y = icmp ult i64 %i.x, %.sroa.03.0.i
  br i1 %i.y, label %bb.f, label %bb.b

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !235
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !235
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.z = and i64 %i.q, %i.d                       ; 2 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.val2.i = load ptr, ptr %i.ac, align 8, !noalias !236, !noundef !5 ; 2 uses
  %i.ad = getelementptr i8, ptr %.val2.i, i64 16
  %.val2.val3.i = load i64, ptr %i.ad, align 8, !noalias !236, !noundef !5 ; 2 uses
  %.val.val2.i.i = load i64, ptr %i.h, align 8, !noalias !236, !noundef !5
  %i.ae = icmp eq i64 %.val.val2.i.i, %.val2.val3.i
  br i1 %i.ae, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit: ; preds = %bb.g
  %i.af = getelementptr i8, ptr %.val2.i, i64 8
  %.val2.val.i = load ptr, ptr %i.af, align 8, !noalias !236, !nonnull !5, !noundef !5
  %.val.val.i.i = load ptr, ptr %i.i, align 8, !noalias !236, !nonnull !5, !noundef !5
  %i.ag = shl nuw i64 %.val2.val3.i, 2
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.val.i.i, ptr nonnull readonly %.val2.val.i, i64 %i.ag), !noalias !236
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread, !prof !10

bb.h:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !235
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread: ; preds = %bb.g, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit
  %.not.i.not = icmp eq i16 %i.p, 0
  br i1 %.not.i.not, label %._crit_edge, label %.lr.ph

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit
  %i.ai = sub nsw i64 0, %i.z
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ai
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit
  %i.ak = phi ptr [ %i.aj, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit ], [ null, %._crit_edge ]
  ret ptr %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !254, !noalias !255, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !254, !noalias !255, !noundef !5 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !256 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  call fastcc void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 121) 16, i64 noundef %..i, i1 noundef zeroext %3) #38
  %i.u = load ptr, ptr %i.a, align 8, !noalias !258, !noundef !5 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !258 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !258 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #35, !noalias !259
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  store ptr %i.e, ptr %i.b, align 8, !noalias !258
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !258
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !260, !noalias !261, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !260, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  %.val317 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val317, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.027 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.026 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.025 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.024 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i119 = icmp eq i16 %.sroa.13.024, 0
  br i1 %.not.i119, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.121 = phi ptr [ %i.ag, %.noexc2 ], [ %.sroa.0.027, %.preheader ] ; 2 uses
  %.sroa.5.120 = phi i64 [ %i.aj, %.noexc2 ], [ %.sroa.5.026, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.121) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.121, i64 16 ; 3 uses
  %.val18 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val18, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.120, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ai, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge28.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !260, !noalias !261
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge28.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTyuEE14reserve_rehashNCINvNtB8_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish:bb.a
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1370, !noalias !1365
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !1365
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !1365
  call void @llvm.assume(i1 %i.az), !noalias !1365
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !1365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1365
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #40, !noalias !1371
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1364
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.024, %.preheader ], [ %i.ai, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.026, %.preheader ], [ %i.aj, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.027, %.preheader ], [ %i.ag, %.noexc2 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.025, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !1372, !noalias !1373, !nonnull !5, !noundef !5
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1374, !nonnull !5, !align !11, !noundef !5
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRyECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !1375
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cf, %i.x            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !1375
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !13

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !1365
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !1365
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !1366, !noalias !1367, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !1365
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !1365
  %i.cu = icmp eq i64 %i.bj, 0
  br i1 %i.cu, label %._crit_edge28.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs8frGy5WneL6_4fish, i64 noundef 8, ptr noundef null) #38
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8frGy5WneL6_4fish.exit ]
  %i.cv = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cw = insertvalue { i64, i64 } %i.cv, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTyuEE14reserve_rehashNCINvNtB8_3map11make_hasheryuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBH_11wait_handle10WaitHandleEE3popBD_EBH_(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCs8frGy5WneL6_4fish4proc3PidEEB2m_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1403, !noalias !1404, !noundef !5 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1403, !noalias !1404, !nonnull !5, !noundef !5 ; 4 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i32, ptr %1, align 4, !range !14, !alias.scope !1405, !noalias !1406
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %bb.g ] ; 2 uses
  %.pn.i.i = phi i64 [ %i.b, %bb.a ], [ %i.v, %bb.g ]
  %.sroa.03.0.i.i.i = and i64 %.pn.i.i, %i.f      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.03.0.i.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !1407 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.sroa.011.0.i.i = phi i16 [ %i.l, %bb.b ], [ %i.y, %bb.j ] ; 4 uses
  %.not.i.not.i.i = icmp eq i16 %.sroa.011.0.i.i, 0
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.0.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.03.0.i.i.i, %i.n          ; 2 uses
  %i.p = icmp ult i64 %i.o, %.sroa.03.0.i.i.i
  br i1 %i.p, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.f, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE12remove_entryINtBR_10KeyWrapperB1g_EEB1k_.exit.thread, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i64 %.sroa.07.0.i.i.i, -16
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i64 %.sroa.07.0.i.i.i, 16        ; 2 uses
  %i.v = add i64 %.sroa.03.0.i.i.i, %i.u          ; 2 uses
  %i.w = icmp ult i64 %i.v, %.sroa.03.0.i.i.i
  br i1 %i.w, label %bb.i, label %bb.b

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !1408
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !1408
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.x = add i16 %.sroa.011.0.i.i, -1
  %i.y = and i16 %i.x, %.sroa.011.0.i.i
  %i.z = and i64 %i.o, %i.f                       ; 3 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !1409, !noundef !5
  %.val2.val.i.i.i = load i32, ptr %.val2.i.i.i, align 4, !range !14, !noalias !1409, !noundef !5
  %i.ad = icmp eq i32 %.val.i.i.i.i, %.val2.val.i.i.i
  br i1 %i.ad, label %bb.l, label %bb.c, !prof !8

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !1408
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %i.ae = add nsw i64 %i.z, -16
  %i.af = and i64 %i.ae, %i.f                     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ag, align 1, !noalias !1412
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.aj, align 1, !noalias !1413
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ai, i1 false)
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.an, %i.am
  %i.ao = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.ao, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1414, !noalias !1415, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nuw i64 %i.aq, 1
  store i64 %i.as, ptr %i.ap, align 8, !alias.scope !1414, !noalias !1415
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2929) #37, !noalias !1416
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.l
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.n ], [ -128, %bb.l ] ; 2 uses
  %i.at = icmp ugt i64 %i.af, -17
  br i1 %i.at, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 %.sroa.0.0.i.i.i, ptr %i.aj, align 1, !noalias !1416
  %i.au = getelementptr i8, ptr %i.ag, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.au, align 1, !noalias !1416
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !1414, !noalias !1415, !noundef !5 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #37, !noalias !1416
  unreachable

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2930) #37, !noalias !1416
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ay = add i64 %i.aw, -1
  store i64 %i.ay, ptr %i.av, align 8, !alias.scope !1414, !noalias !1415
  %i.az = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1417, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.ba, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 32, i64 noundef 8) #40
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  store ptr %.sroa.5.0.copyload, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.bc, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  br label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE12remove_entryINtBR_10KeyWrapperB1g_EEB1k_.exit.thread

_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE12remove_entryINtBR_10KeyWrapperB1g_EEB1k_.exit.thread: ; preds = %bb.e, %bb.t
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.copyload, %bb.t ], [ null, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBH_11wait_handle10WaitHandleEE4peekBD_EBH_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1431, !noalias !1432, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCs8frGy5WneL6_4fish4proc3PidEEB2m_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1436, !noalias !1437, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !1436, !noalias !1437, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i32, ptr %1, align 4, !range !14, !alias.scope !1438, !noalias !1439
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %bb.h ] ; 2 uses
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.y, %bb.h ]
  %.sroa.03.0.i.i.i = and i64 %.pn.i.i, %i.i      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.03.0.i.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !1440 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.sroa.011.0.i.i = phi i16 [ %i.o, %bb.c ], [ %i.ab, %bb.k ] ; 4 uses
  %.not.i.not.i.i = icmp eq i16 %.sroa.011.0.i.i, 0
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.0.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.03.0.i.i.i, %i.q          ; 2 uses
  %i.s = icmp ult i64 %i.r, %.sroa.03.0.i.i.i
  br i1 %i.s, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.g, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit.thread, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i64 %.sroa.07.0.i.i.i, -16
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nuw i64 %.sroa.07.0.i.i.i, 16        ; 2 uses
  %i.y = add i64 %.sroa.03.0.i.i.i, %i.x          ; 2 uses
  %i.z = icmp ult i64 %i.y, %.sroa.03.0.i.i.i
  br i1 %i.z, label %bb.j, label %bb.c

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !1441
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !1441
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.aa = add i16 %.sroa.011.0.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.011.0.i.i
  %i.ac = and i64 %i.r, %i.i
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.af, align 8, !noalias !1442, !noundef !5
  %.val2.val.i.i.i = load i32, ptr %.val2.i.i.i, align 4, !range !14, !noalias !1442, !noundef !5
  %i.ag = icmp eq i32 %.val.i.i.i.i, %.val2.val.i.i.i
  br i1 %i.ag, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit, label %bb.d, !prof !8

bb.l:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !1441
  unreachable

_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit: ; preds = %bb.k
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  br label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit.thread

_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit.thread: ; preds = %bb.f, %bb.a, %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE3getINtBR_10KeyWrapperB1g_EEB1k_.exit ], [ null, %bb.a ], [ null, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3getNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1465, !noalias !1466, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1469, !noalias !1470, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !1469, !noalias !1470, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.m = shl nuw nsw i64 %2, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ] ; 2 uses
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ab, %bb.e ]
  %.sroa.03.0.i.i.i = and i64 %.pn.i.i, %i.i      ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.03.0.i.i.i
  %.sroa.0.0.copyload.i33.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !1471 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not45.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i
  %.sroa.011.046.i.i = phi i16 [ %i.t, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i16 %.sroa.011.046.i.i, -1
  %i.t = and i16 %i.s, %.sroa.011.046.i.i         ; 2 uses
  %i.u = add i64 %.sroa.03.0.i.i.i, %i.r          ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.03.0.i.i.i
  br i1 %i.v, label %bb.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, %bb.c
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.d, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.thread, !prof !7

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp eq i64 %.sroa.07.0.i.i.i, -16
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw i64 %.sroa.07.0.i.i.i, 16       ; 2 uses
  %i.ab = add i64 %.sroa.03.0.i.i.i, %i.aa        ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.03.0.i.i.i
  br i1 %i.ac, label %bb.g, label %bb.c

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !1472
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !1472
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ad = and i64 %i.u, %i.i
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  %.val3.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !1473, !noundef !5 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val3.i.i.i, i64 16
  %.val3.val4.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1473, !noundef !5
  %i.ai = icmp eq i64 %2, %.val3.val4.i.i.i
  br i1 %i.ai, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %.val3.i.i.i, i64 8
  %.val3.val.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !1473, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %1, ptr nonnull readonly align 4 %.val3.val.i.i.i, i64 %i.m), !alias.scope !1474, !noalias !1475
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, !prof !10

bb.i:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !1472
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i, %bb.h
  %.not.i.not.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr %i.ao, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.ap, align 8, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !5
  store ptr %i.ax, ptr %i.an, align 8
  %i.ay = load ptr, ptr %i.au, align 8, !noundef !5 ; 2 uses
  store ptr %i.ay, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store ptr %i.am, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.an, align 8, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %i.am, ptr %i.bb, align 8
  br label %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.thread

_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.0.0 = phi ptr [ %i.am, %_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutINtBR_10KeyWrapperNtNtB1k_6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1J_11wait_handle10WaitHandleEEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = icmp eq i64 %i.b, -1
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %3, -1                           ; 2 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.b, 1
  %i.h = mul nuw i64 %i.g, %2                     ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.b, -18
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #37, !noalias !1478
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.b, 17
  %i.o = add i64 %i.n, %i.l                       ; 4 uses
  %i.p = icmp uge i64 %i.o, %i.l
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp slt i64 %i.e, 0
  br i1 %i.q, label %bb.h, label %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #37, !noalias !1478
  unreachable

_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.f
  %i.r = sub nuw i64 -9223372036854775808, %3
  %i.s = icmp ule i64 %i.o, %i.r
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #37, !noalias !1478
  unreachable

bb.i:                                             ; preds = %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.u = sub nsw i64 0, %i.l
  %i.v = getelementptr inbounds i8, ptr %.val, i64 %i.u
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %3) #40
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.i, %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtCsaL1QbXo9JQH_3std4time7InstantEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = icmp eq i64 %i.b, -1
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %3, -1                           ; 2 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.b, 1
  %i.h = mul nuw i64 %i.g, %2                     ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.b, -18
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #37, !noalias !1481
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.b, 17
  %i.o = add i64 %i.n, %i.l                       ; 4 uses
  %i.p = icmp uge i64 %i.o, %i.l
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp slt i64 %i.e, 0
  br i1 %i.q, label %bb.h, label %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #37, !noalias !1481
  unreachable

_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.f
  %i.r = sub nuw i64 -9223372036854775808, %3
  %i.s = icmp ule i64 %i.o, %i.r
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #37, !noalias !1481
  unreachable

bb.i:                                             ; preds = %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.u = sub nsw i64 0, %i.l
  %i.v = getelementptr inbounds i8, ptr %.val, i64 %i.u
end_hunk_1
begin_hunk_2_@_RNvMNtCs8frGy5WneL6_4fish8autoloadNtB2_8Autoload16perform_autoload:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  %i.hp = load i8, ptr %i.j, align 8, !range !28, !alias.scope !2040, !noalias !2041, !noundef !5
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.ci, label %.noexc104.preheader, !prof !7

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2042
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !range !29, !alias.scope !2040, !noalias !2041, !noundef !5
  store i8 %i.hs, ptr %i.b, align 1, !noalias !2042
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #37
          to label %.noexc unwind label %bb.cg

.noexc:                                           ; preds = %bb.ci
  unreachable

.noexc104.preheader:                              ; preds = %bb.ch
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105 unwind label %bb.cj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit103: ; preds = %bb.cg, %bb.cj
  %.pn42 = phi { ptr, i32 } [ %i.ht, %bb.cj ], [ %i.ho, %bb.cg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #35
          to label %.body108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %.noexc104.preheader
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit103

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105: ; preds = %.noexc104.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.hu = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, i32 noundef 2)
          to label %bb.cl unwind label %bb.ck     ; 0 uses

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #35
          to label %.body108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body108 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107: ; preds = %bb.cl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111 unwind label %bb.co

.body108:                                         ; preds = %bb.co, %bb.cm, %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit103
  %.pn44 = phi { ptr, i32 } [ %.pn42, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit103 ], [ %i.hv, %bb.ck ], [ %i.hy, %bb.co ], [ %i.hw, %bb.cm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #35
          to label %.thread123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body108

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113 unwind label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread123 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit118 unwind label %bb.ca

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit118: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileECs8frGy5WneL6_4fish.exit: ; preds = %bb.cc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.y

bb.cr:                                            ; preds = %.body114
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #35
          to label %.thread123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit133:                                     ; preds = %bb.bp
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp134:                            ; preds = %bb.bu, %bb.bm
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp134, %.loopexit133
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #35
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.bj, %bb.cs
  %.pn49.ph = phi { ptr, i32 } [ %lpad.phi, %bb.cs ], [ %i.eq, %bb.bj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #35
          to label %.thread123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish8autoloadNtB2_8Autoload20autoload_in_progress(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE12contains_keyNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish8autoloadNtB2_8Autoload22has_attempted_autoload(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE12contains_keyNtNtBS_6utfstr8Utf32StrEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.b, label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache9is_cached.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2068, !noalias !2069, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache9is_cached.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = tail call noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2072, !noalias !2073, !noundef !5 ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !2072, !noalias !2073, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.p = shl nuw nsw i64 %2, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ad, %bb.f ] ; 2 uses
  %.pn.i.i.i = phi i64 [ %i.h, %bb.c ], [ %i.ae, %bb.f ]
  %.sroa.03.0.i.i.i.i = and i64 %.pn.i.i.i, %i.l  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.03.0.i.i.i.i
  %.sroa.0.0.copyload.i33.i.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !2074 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, %i.o
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not45.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i
  %.sroa.011.046.i.i.i = phi i16 [ %i.w, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i16 %.sroa.011.046.i.i.i, -1
  %i.w = and i16 %i.v, %.sroa.011.046.i.i.i       ; 2 uses
  %i.x = add i64 %.sroa.03.0.i.i.i.i, %i.u        ; 2 uses
  %i.y = icmp ult i64 %i.x, %.sroa.03.0.i.i.i.i
  br i1 %i.y, label %bb.j, label %bb.i

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, %bb.d
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache9is_cached.exit, !prof !7

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = icmp eq i64 %.sroa.07.0.i.i.i.i, -16
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nuw i64 %.sroa.07.0.i.i.i.i, 16     ; 2 uses
  %i.ae = add i64 %.sroa.03.0.i.i.i.i, %i.ad      ; 2 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.03.0.i.i.i.i
  br i1 %i.af, label %bb.h, label %bb.d

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !2075
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !2075
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = and i64 %i.x, %i.l
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !2076, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val3.i.i.i.i, i64 16
  %.val3.val4.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !2076, !noundef !5
  %i.al = icmp eq i64 %2, %.val3.val4.i.i.i.i
  br i1 %i.al, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.i
  %i.am = getelementptr i8, ptr %.val3.i.i.i.i, i64 8
  %.val3.val.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !2076, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %1, ptr nonnull readonly align 4 %.val3.val.i.i.i.i, i64 %i.p), !alias.scope !2077, !noalias !2078
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache9is_cached.exit, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !10

bb.j:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !2075
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.i
  %.not.i.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache9is_cached.exit: ; preds = %._crit_edge.i.i.i, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i ], [ false, %._crit_edge.i.i.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish8autoloadNtB2_8Autoload22mark_autoload_finished(ptr noalias nofree noundef align 8 dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6removeNtNtBS_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.b, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish8autoloadNtB2_8Autoload23get_autoloaded_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.j = load i64, ptr %i.d, align 8, !range !22, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !6, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = icmp ule i64 %i.i, %i.r
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.r, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.d unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.e, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c, %bb.j, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %bb.r unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %bb.d
  %i.x = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.l unwind label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.z = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = load i64, ptr %i.w, align 8, !noundef !5 ; 4 uses
  %i.ab = icmp samesign ult i64 %i.aa, 2
  br i1 %i.ab, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp samesign ult i64 %i.aa, 21
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef range(i64 0, 384307168202282326) %i.aa, ptr noalias nofree noundef nonnull %i.a) #39
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef range(i64 0, 384307168202282326) %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp

_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %i.w, align 8, !alias.scope !2082, !noalias !2083, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %i.g, align 8, !range !6, !alias.scope !2082, !noalias !2083, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.p unwind label %bb.n, !noalias !2083

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #35
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %i.v, align 8, !alias.scope !2082, !noalias !2083, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ak = add i64 %i.ad, 1
  store i64 %i.ak, ptr %i.w, align 8, !alias.scope !2082, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.q:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
end_hunk_2
begin_hunk_3_@_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache5check:bb.a
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !2328, !noalias !2329, !nonnull !5, !noundef !5 ; 2 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bq, %bb.g ]
  %.pn.i.i = phi i64 [ %i.as, %bb.d ], [ %i.br, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.aw     ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ba, align 1, !noalias !2330 ; 2 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.az
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i = phi i16 [ %i.bp, %bb.f ], [ %i.bc, %bb.e ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.01.0.i.i.i, %i.be
  %i.bg = and i64 %i.bf, %i.aw
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [120 x i8], ptr %i.ax, i64 %i.bh ; 6 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -120
  %i.bk = tail call noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentNtNtBu_9utfstring11Utf32StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj), !noalias !2331
  br i1 %i.bk, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit, label %bb.f, !prof !8

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %select.unfold, !prof !7

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bo = add i16 %.sroa.06.0.i31.i.i, -1
  %i.bp = and i16 %i.bo, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bq = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i, %i.bq
  br label %bb.e

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit: ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.bi, i64 -96 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %brmerge = or i1 %6, %i.bu
  br i1 %brmerge, label %bb.h, label %bb.i

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = tail call fastcc noundef align 8 ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3getNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %.not24 = icmp eq ptr %i.bw, null
  br i1 %.not24, label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.p

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %i.bs, align 8
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit
  %i.bx = phi i64 [ %.pr, %thread-pre-split ], [ %i.bt, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %bb.m, label %bb.n

bb.i:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !5
  %i.cb = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.cc = load i32, ptr %i.cb, align 8, !range !2332, !noundef !5
  %i.cd = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ce = extractvalue { i64, i32 } %i.cd, 0
  %i.cf = extractvalue { i64, i32 } %i.cd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ce, ptr %i.v, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.cf, ptr %i.cg, align 8
  %i.ch = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, i64 noundef %i.ca, i32 noundef range(i32 0, 1000000000) %i.cc)
  %i.ci = extractvalue { i64, i32 } %i.ch, 0
  %i.cj = icmp ult i64 %i.ci, 15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.cj, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6removeNtNtBS_6utfstr8Utf32StrEB1J_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5)
  %i.ck = load i64, ptr %i.aj, align 8, !range !27, !alias.scope !2333, !noundef !5
  %i.cl = icmp eq i64 %i.ck, -2
  br i1 %i.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.aj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = call fastcc noundef align 8 ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3getNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cm, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %.not25 = icmp eq ptr %i.cn, null
  br i1 %.not25, label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit, %bb.p
  %.sroa.013.0 = phi ptr [ %i.bw, %bb.p ], [ %i.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit ] ; 2 uses
  %i.co = load i64, ptr %.sroa.013.0, align 8, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !range !2332, !noundef !5
  %i.cr = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.cs = extractvalue { i64, i32 } %i.cr, 0
  %i.ct = extractvalue { i64, i32 } %i.cr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.cs, ptr %i.u, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %i.co, i32 noundef range(i32 0, 1000000000) %i.cq)
  %i.cw = extractvalue { i64, i32 } %i.cv, 0
  %i.cx = icmp ult i64 %i.cw, 15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.cx, label %bb.q, label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds i8, ptr %i.bi, i64 -88
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy)
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
  %.sroa.017.0.copyload = load i64, ptr %i.aa, align 8
  %i.cz = getelementptr inbounds i8, ptr %i.bi, i64 -72
  %.sroa.5.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.cz, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.02.0 = phi i64 [ -1, %bb.m ], [ %.sroa.017.0.copyload, %bb.n ]
  store i64 %.sroa.02.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.by

bb.p:                                             ; preds = %select.unfold
  br i1 %6, label %bb.q, label %bb.l

bb.q:                                             ; preds = %bb.l, %bb.p
  store i64 -2, ptr %0, align 8
  br label %bb.by

bb.r:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dc = call noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.db, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %i.dd = lshr i64 %i.dc, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2337, !noalias !2338, !noundef !5 ; 3 uses
  %i.dh = load ptr, ptr %i.da, align 8, !alias.scope !2337, !noalias !2338, !nonnull !5, !noundef !5 ; 4 uses
  %i.di = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dk = shl nuw nsw i64 %5, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %bb.r ], [ %i.dy, %bb.u ] ; 2 uses
  %.pn.i.i.i = phi i64 [ %i.dc, %bb.r ], [ %i.dz, %bb.u ]
  %.sroa.03.0.i.i.i.i = and i64 %.pn.i.i.i, %i.dg ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.03.0.i.i.i.i
  %.sroa.0.0.copyload.i33.i.i.i = load <16 x i8>, ptr %i.dl, align 1, !noalias !2339 ; 2 uses
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, %i.dj
  %i.dn = bitcast <16 x i1> %i.dm to i16          ; 2 uses
  %.not.i.not45.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i
  %.sroa.011.046.i.i.i = phi i16 [ %i.dr, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ %i.dn, %bb.s ] ; 3 uses
  %i.do = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i.i, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = add i16 %.sroa.011.046.i.i.i, -1
  %i.dr = and i16 %i.dq, %.sroa.011.046.i.i.i     ; 2 uses
  %i.ds = add i64 %.sroa.03.0.i.i.i.i, %i.dp      ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.03.0.i.i.i.i
  br i1 %i.dt, label %bb.y, label %bb.x

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, %bb.s
  %i.du = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, splat (i8 -1)
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.t, label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, !prof !7

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dx = icmp eq i64 %.sroa.07.0.i.i.i.i, -16
  br i1 %i.dx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = add nuw i64 %.sroa.07.0.i.i.i.i, 16     ; 2 uses
  %i.dz = add i64 %.sroa.03.0.i.i.i.i, %i.dy      ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %.sroa.03.0.i.i.i.i
  br i1 %i.ea, label %bb.w, label %bb.s

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !2340
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !2340
  unreachable

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.eb = and i64 %i.ds, %i.dg                    ; 3 uses
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.dh, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.ee, align 8, !noalias !2341, !noundef !5 ; 2 uses
  %i.ef = getelementptr i8, ptr %.val3.i.i.i.i, i64 16
  %.val3.val4.i.i.i.i = load i64, ptr %i.ef, align 8, !noalias !2341, !noundef !5
  %i.eg = icmp eq i64 %5, %.val3.val4.i.i.i.i
  br i1 %i.eg, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.x
  %i.eh = getelementptr i8, ptr %.val3.i.i.i.i, i64 8
  %.val3.val.i.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !2341, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 4 %4, ptr nonnull readonly align 4 %.val3.val.i.i.i.i, i64 %i.dk), !alias.scope !2342, !noalias !2343
  %i.ei = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !10

bb.y:                                             ; preds = %.lr.ph.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !2340
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.x
  %.not.i.not.i.i.i = icmp eq i16 %i.dr, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.ej = add nsw i64 %i.eb, -16
  %i.ek = and i64 %i.ej, %i.dg                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.el, align 1, !noalias !2346
  %i.em = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.en = bitcast <16 x i1> %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eb ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.eo, align 1, !noalias !2347
  %i.ep = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.eq = bitcast <16 x i1> %i.ep to i16
  %i.er = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.en, i1 false)
  %i.es = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eq, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.es, %i.er
  %i.et = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.et, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !2348, !noalias !2349, !noundef !5 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -1
  br i1 %i.ew, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = add nuw i64 %i.ev, 1
  store i64 %i.ex, ptr %i.eu, align 8, !alias.scope !2348, !noalias !2349
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2929) #37, !noalias !2350
  unreachable

bb.ac:                                            ; preds = %bb.aa, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.aa ], [ -128, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %i.ey = icmp ugt i64 %i.ek, -17
  br i1 %i.ey, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.eo, align 1, !noalias !2350
  %i.ez = getelementptr i8, ptr %i.el, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ez, align 1, !noalias !2350
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !2348, !noalias !2349, !noundef !5 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #37, !noalias !2350
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2930) #37, !noalias !2350
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.fd = add i64 %i.fb, -1
  store i64 %i.fd, ptr %i.fa, align 8, !alias.scope !2348, !noalias !2349
  %i.fe = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !2351, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %i.ff, i64 56, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef 56, i64 noundef 8) #40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body.i.i.i, %bb.an, %bb.bu, %bb.cb, %.body.thread, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %.pn32, %.body.thread ], [ %i.fh, %bb.ah ], [ %.pn32, %bb.cb ], [ %.pn.i.i.i37, %.body.i.i.i ], [ %i.ir, %bb.bu ], [ %i.ga, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ag
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !2352, !noundef !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !2352, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2352
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store ptr %i.fk, ptr %i.fo, align 8
  br label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit

_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %select.unfold, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val34 = load i64, ptr %i.fq, align 8
  call fastcc void @_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache11locate_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ah, ptr %.val, i64 %.val34, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i8 noundef %.sroa.0.081, i1 noundef zeroext false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  %i.fr = load i64, ptr %i.ah, align 8, !range !27, !alias.scope !2354, !noalias !2355, !noundef !5 ; 2 uses
  %.not.i36 = icmp eq i64 %i.fr, -2
  br i1 %.not.i36, label %bb.aj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86: ; preds = %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx, i64 72, i1 false), !alias.scope !2356, !noalias !2357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread

bb.aj:                                            ; preds = %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %.not.i.i = icmp eq i8 %.sroa.0.081, 2
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread, label %.noexc.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit

.noexc.i:                                         ; preds = %bb.aj
  %i.fs = trunc nuw i8 %.sroa.0.081 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2358
  call void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5), !noalias !2359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2358
  %i.ft = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !2358, !nonnull !5, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !2358, !noundef !5
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef %i.fw)
          to label %bb.al unwind label %bb.ak, !noalias !2360

.body.i.i.i:                                      ; preds = %.body16.thread.i.i.i, %.body16.i.i.i, %bb.bo, %bb.bk, %bb.az, %bb.av, %bb.ak
  %.pn.i.i.i37 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body16.i.i.i ], [ %eh.lpad-body173.i.i.i, %.body16.thread.i.i.i ], [ %i.hz, %bb.bk ], [ %i.go, %bb.av ], [ %i.gw, %bb.az ], [ %i.fx, %bb.ak ], [ %i.ih, %bb.bo ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #35
          to label %common.resume unwind label %bb.bw, !noalias !2360

bb.ak:                                            ; preds = %.invoke.i.i.i, %bb.ar, %bb.aq, %.noexc.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.al:                                            ; preds = %.noexc.i
  %i.fy = load i64, ptr %i.r, align 8, !range !22, !noalias !2358, !noundef !5
  %i.fz = trunc nuw i64 %i.fy to i1
  br i1 %i.fz, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2358
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i unwind label %bb.an, !noalias !2360

bb.an:                                            ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
end_hunk_3
begin_hunk_4_@_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache5check:bb.a
          to label %common.resume unwind label %bb.bv, !noalias !2360

bb.bv:                                            ; preds = %bb.bu
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2360
  unreachable

.body16.thread.i.i.i:                             ; preds = %.body16.thread4.i.i.i, %bb.bf
  %eh.lpad-body173.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body16.thread4.i.i.i ], [ %i.hn, %bb.bf ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #35
          to label %.body.i.i.i unwind label %bb.bw, !noalias !2360

bb.bw:                                            ; preds = %.body16.thread.i.i.i, %.body.i.i.i
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2360
  unreachable

_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i: ; preds = %bb.bt, %bb.am
  %.sroa.0.1 = phi i64 [ -2, %bb.am ], [ %.sroa.0.0, %bb.bt ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s), !noalias !2359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2358
  %.pre.i = load i64, ptr %i.ah, align 8, !range !27, !alias.scope !2391, !noalias !2355
  %i.iu = icmp eq i64 %.pre.i, -2
  br i1 %i.iu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ah), !noalias !2355
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit: ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  %.not.i38 = icmp eq i64 %.sroa.0.1, -2
  br i1 %.not.i38, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86
  %.sroa.0.289 = phi i64 [ %i.fr, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86 ], [ -1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit ]
  store i64 %.sroa.0.289, ptr %i.ai, align 8, !alias.scope !2394, !noalias !2395
  %.sroa.9.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx74, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, i64 72, i1 false), !alias.scope !2394, !noalias !2395
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.bz

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread
  %.val.i.i = load ptr, ptr %i.fp, align 8, !noalias !2396
  %.val1.i.i = load i64, ptr %i.fq, align 8, !noalias !2396
  call fastcc void @_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache11locate_file(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %i.ai, ptr %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i8 noundef %.sroa.0.081, i1 noundef zeroext true), !noalias !2397
  %.pr90 = load i64, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.not26 = icmp eq i64 %.pr90, -2
  br i1 %.not26, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.o, %bb.q, %bb.ef
  ret void

bb.bz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef %5, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ei unwind label %bb.cc

bb.ca:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %5, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cd unwind label %bb.cc

.body.thread:                                     ; preds = %bb.ew, %bb.ex, %bb.ep, %bb.ea, %bb.dy, %bb.dw, %bb.du, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.cx, %.body.thread94, %.thread100, %bb.eg, %bb.cc
  %.pn32 = phi { ptr, i32 } [ %i.iy, %bb.cc ], [ %i.sh, %bb.ea ], [ %.pn103, %.thread100 ], [ %lpad.thr_comm.split-lp106, %bb.ep ], [ %lpad.thr_comm.split-lp, %bb.eg ], [ %lpad.thr_comm, %.body.thread94 ], [ %i.oa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i ], [ %i.rp, %bb.dy ], [ %i.rm, %bb.du ], [ %i.ng, %bb.cx ], [ %lpad.thr_comm.i.i, %bb.dw ], [ %i.ti, %bb.ex ], [ %i.ti, %bb.ew ] ; 2 uses
  %i.iw = load i64, ptr %i.ai, align 8, !range !27, !alias.scope !2398, !noundef !5
  %i.ix = icmp eq i64 %i.iw, -2
  br i1 %i.ix, label %common.resume, label %bb.cb

bb.cb:                                            ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ai)
          to label %common.resume unwind label %bb.eh

bb.cc:                                            ; preds = %.invoke, %bb.ed, %bb.ca, %bb.bz
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.cd:                                            ; preds = %bb.ca
  %i.iz = load i64, ptr %i.w, align 8, !range !22, !noundef !5
  %i.ja = trunc nuw i64 %i.iz to i1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !range !24, !noundef !5 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.ja, label %bb.ce, label %bb.cf, !prof !7

bb.ce:                                            ; preds = %bb.cd
  %i.je = load i64, ptr %i.jd, align 8
  br label %.invoke

bb.cf:                                            ; preds = %bb.cd
  %i.jf = load ptr, ptr %i.jd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jg = icmp ule i64 %5, %i.jc
  call void @llvm.assume(i1 %i.jg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not27 = icmp eq i64 %5, 0
  br i1 %.not27, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  store i64 %i.jc, ptr %i.ac, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr %i.jf, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store i64 %5, ptr %.sroa.622.0..sroa_idx, align 8
  %i.jh = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit unwind label %bb.eg ; 2 uses

bb.ch:                                            ; preds = %bb.cf
  %i.ji = shl nuw nsw i64 %5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jf, ptr nonnull align 4 %4, i64 %i.ji, i1 false)
  br label %bb.cg

.body.thread94:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i62, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEECs8frGy5WneL6_4fish.exit.i.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit: ; preds = %bb.cg
  %i.jj = extractvalue { i64, i32 } %i.jh, 0      ; 3 uses
  %i.jk = extractvalue { i64, i32 } %i.jh, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2404
  store ptr %i.ac, ptr %i.g, align 8, !noalias !2404
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !2405, !noalias !2406, !noundef !5
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %select.unfold.thread.i.i, label %bb.ci

select.unfold.thread.i.i:                         ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2404
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2407
  br label %bb.cn

bb.ci:                                            ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.jp = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc.i.i unwind label %bb.dy, !noalias !2401 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  call void @llvm.experimental.noalias.scope.decl(metadata !2409), !noalias !2401
  %i.jq = lshr i64 %i.jp, 57
  %i.jr = trunc nuw nsw i64 %i.jq to i8
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !2410, !noalias !2411, !noundef !5 ; 2 uses
  %i.ju = load ptr, ptr %i.iv, align 8, !alias.scope !2410, !noalias !2411, !nonnull !5, !noundef !5 ; 2 uses
  %i.jv = insertelement <16 x i8> poison, i8 %i.jr, i64 0
  %i.jw = shufflevector <16 x i8> %i.jv, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.val2.i.i.i.i = load i64, ptr %.sroa.622.0..sroa_idx, align 8, !alias.scope !2400, !noalias !2399 ; 2 uses
  %.val.val.i.i.i.i = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !alias.scope !2400, !noalias !2399, !nonnull !5
  %i.jx = shl nuw i64 %.val.val2.i.i.i.i, 2
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.noexc.i.i
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.kl, %bb.cl ] ; 2 uses
  %.pn.i.i40 = phi i64 [ %i.jp, %.noexc.i.i ], [ %i.km, %bb.cl ]
  %.sroa.03.0.i.i.i = and i64 %.pn.i.i40, %i.jt   ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.sroa.03.0.i.i.i
  %.sroa.0.0.copyload.i33.i.i = load <16 x i8>, ptr %i.jy, align 1, !noalias !2412 ; 2 uses
  %i.jz = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, %i.jw
  %i.ka = bitcast <16 x i1> %i.jz to i16          ; 2 uses
  %.not.i.not45.i.i = icmp eq i16 %i.ka, 0
  br i1 %.not.i.not45.i.i, label %._crit_edge.i.i43, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %bb.cj, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i
  %.sroa.011.046.i.i = phi i16 [ %i.ke, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i ], [ %i.ka, %bb.cj ] ; 3 uses
  %i.kb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i, i1 true)
  %i.kc = zext nneg i16 %i.kb to i64
  %i.kd = add i16 %.sroa.011.046.i.i, -1
  %i.ke = and i16 %i.kd, %.sroa.011.046.i.i       ; 2 uses
  %i.kf = add i64 %.sroa.03.0.i.i.i, %i.kc        ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %.sroa.03.0.i.i.i
  br i1 %i.kg, label %.invoke.i, label %bb.cm

._crit_edge.i.i43:                                ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, %bb.cj
  %i.kh = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, splat (i8 -1)
  %i.ki = bitcast <16 x i1> %i.kh to i16
  %i.kj = icmp eq i16 %i.ki, 0
  br i1 %i.kj, label %bb.ck, label %select.unfold.i.i, !prof !7

bb.ck:                                            ; preds = %._crit_edge.i.i43
  %i.kk = icmp eq i64 %.sroa.07.0.i.i.i, -16
  br i1 %i.kk, label %.invoke.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kl = add nuw i64 %.sroa.07.0.i.i.i, 16       ; 2 uses
  %i.km = add i64 %.sroa.03.0.i.i.i, %i.kl        ; 2 uses
  %i.kn = icmp ult i64 %i.km, %.sroa.03.0.i.i.i
  br i1 %i.kn, label %.invoke.i, label %bb.cj

bb.cm:                                            ; preds = %.lr.ph.i.i41
  %i.ko = and i64 %i.kf, %i.jt
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds [16 x i8], ptr %i.ju, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.kr, align 8, !noalias !2413, !noundef !5 ; 2 uses
  %i.ks = getelementptr i8, ptr %.val2.i.i.i, i64 16
  %.val2.val3.i.i.i = load i64, ptr %i.ks, align 8, !noalias !2413, !noundef !5
  %i.kt = icmp eq i64 %.val.val2.i.i.i.i, %.val2.val3.i.i.i
  br i1 %i.kt, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.cm
  %i.ku = getelementptr i8, ptr %.val2.i.i.i, i64 8
  %.val2.val.i.i.i = load ptr, ptr %i.ku, align 8, !noalias !2413, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.val.i.i.i.i, ptr nonnull readonly %.val2.val.i.i.i, i64 %i.jx), !noalias !2413
  %i.kv = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kv, label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish.exit.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, !prof !10

.invoke.i:                                        ; preds = %bb.cl, %bb.ck, %.lr.ph.i.i41
  %i.kw = phi ptr [ @2923, %.lr.ph.i.i41 ], [ @2921, %bb.ck ], [ @2922, %bb.cl ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kw) #37
          to label %.cont.i unwind label %bb.dy

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i, %bb.cm
  %.not.i.not.i.i42 = icmp eq i16 %i.ke, 0
  br i1 %.not.i.not.i.i42, label %._crit_edge.i.i43, label %.lr.ph.i.i41

select.unfold.i.i:                                ; preds = %._crit_edge.i.i43
  %.pre.i.i = load i64, ptr %i.jl, align 8, !alias.scope !2414, !noalias !2415 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2404
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2407
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ky = load i64, ptr %i.kx, align 8, !range !32, !alias.scope !2414, !noalias !2415, !noundef !5
  %i.kz = icmp eq i64 %.pre.i.i, %i.ky
  br i1 %i.kz, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %select.unfold.i.i, %select.unfold.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2417
  store i64 -1, ptr %i.c, align 8, !noalias !2417
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %.sroa.5.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.16..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2418
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !2419
  %i.la = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #40, !noalias !2419 ; 6 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %bb.co, label %bb.cy, !prof !7

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i.i50 unwind label %bb.cx, !noalias !2419

.noexc.i.i.i50:                                   ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %select.unfold.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2417
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !2414, !noalias !2415, !noundef !5
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !2419, !noundef !5 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store ptr %i.lg, ptr %i.d, align 8, !noalias !2417
  %i.lh = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc14.i.i.i unwind label %bb.dd, !noalias !2420 ; 2 uses

.noexc14.i.i.i:                                   ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.experimental.noalias.scope.decl(metadata !2422), !noalias !2423
  %i.li = lshr i64 %i.lh, 57
  %i.lj = trunc nuw nsw i64 %i.li to i8
  %i.lk = load i64, ptr %i.js, align 8, !alias.scope !2424, !noalias !2425, !noundef !5 ; 3 uses
  %i.ll = load ptr, ptr %i.iv, align 8, !alias.scope !2424, !noalias !2425, !nonnull !5, !noundef !5 ; 4 uses
  %i.lm = insertelement <16 x i8> poison, i8 %i.lj, i64 0
  %i.ln = shufflevector <16 x i8> %i.lm, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lo = getelementptr i8, ptr %i.lf, i64 32
  %i.lp = getelementptr i8, ptr %i.lf, i64 24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %.noexc14.i.i.i
  %.sroa.07.0.i.i.i.i51 = phi i64 [ 0, %.noexc14.i.i.i ], [ %i.md, %bb.cs ] ; 2 uses
  %.pn.i.i.i52 = phi i64 [ %i.lh, %.noexc14.i.i.i ], [ %i.me, %bb.cs ]
  %.sroa.03.0.i.i.i.i53 = and i64 %.pn.i.i.i52, %i.lk ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.sroa.03.0.i.i.i.i53
  %.sroa.0.0.copyload.i33.i.i.i54 = load <16 x i8>, ptr %i.lq, align 1, !noalias !2426 ; 2 uses
  %i.lr = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i54, %i.ln
  %i.ls = bitcast <16 x i1> %i.lr to i16          ; 2 uses
  %.not.i.not45.i.i.i55 = icmp eq i16 %i.ls, 0
  br i1 %.not.i.not45.i.i.i55, label %._crit_edge.i.i.i59, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %bb.cq, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i
  %.sroa.011.046.i.i.i57 = phi i16 [ %i.lw, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ %i.ls, %bb.cq ] ; 3 uses
  %i.lt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i.i57, i1 true)
  %i.lu = zext nneg i16 %i.lt to i64
  %i.lv = add i16 %.sroa.011.046.i.i.i57, -1
  %i.lw = and i16 %i.lv, %.sroa.011.046.i.i.i57   ; 2 uses
  %i.lx = add i64 %.sroa.03.0.i.i.i.i53, %i.lu    ; 2 uses
  %i.ly = icmp ult i64 %i.lx, %.sroa.03.0.i.i.i.i53
  br i1 %i.ly, label %.invoke.i.i, label %bb.ct

._crit_edge.i.i.i59:                              ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, %bb.cq
  %i.lz = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i54, splat (i8 -1)
  %i.ma = bitcast <16 x i1> %i.lz to i16
  %i.mb = icmp eq i16 %i.ma, 0
  br i1 %i.mb, label %bb.cr, label %bb.db, !prof !7

bb.cr:                                            ; preds = %._crit_edge.i.i.i59
  %i.mc = icmp eq i64 %.sroa.07.0.i.i.i.i51, -16
  br i1 %i.mc, label %.invoke.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.md = add nuw i64 %.sroa.07.0.i.i.i.i51, 16   ; 2 uses
  %i.me = add i64 %.sroa.03.0.i.i.i.i53, %i.md    ; 2 uses
  %i.mf = icmp ult i64 %i.me, %.sroa.03.0.i.i.i.i53
  br i1 %i.mf, label %.invoke.i.i, label %bb.cq

bb.ct:                                            ; preds = %.lr.ph.i.i.i56
  %i.mg = and i64 %i.lx, %i.lk                    ; 3 uses
  %i.mh = sub nsw i64 0, %i.mg
  %i.mi = getelementptr inbounds [16 x i8], ptr %i.ll, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -16
  %.val2.i.i.i.i = load ptr, ptr %i.mj, align 8, !noalias !2427, !noundef !5 ; 2 uses
  %i.mk = getelementptr i8, ptr %.val2.i.i.i.i, i64 16
  %.val2.val3.i.i.i.i = load i64, ptr %i.mk, align 8, !noalias !2427, !noundef !5 ; 2 uses
  %.val.val2.i.i.i.i.i = load i64, ptr %i.lo, align 8, !noalias !2427, !noundef !5
  %i.ml = icmp eq i64 %.val.val2.i.i.i.i.i, %.val2.val3.i.i.i.i
  br i1 %i.ml, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.ct
  %i.mm = getelementptr i8, ptr %.val2.i.i.i.i, i64 8
  %.val2.val.i.i.i.i = load ptr, ptr %i.mm, align 8, !noalias !2427, !nonnull !5, !noundef !5
  %.val.val.i.i.i.i.i = load ptr, ptr %i.lp, align 8, !noalias !2427, !nonnull !5, !noundef !5
  %i.mn = shl nuw i64 %.val2.val3.i.i.i.i, 2
  %bcmp.i.i.i.i.i.i.i.i.i.i60 = call i32 @bcmp(ptr nonnull readonly %.val.val.i.i.i.i.i, ptr nonnull readonly %.val2.val.i.i.i.i, i64 %i.mn), !noalias !2427
  %i.mo = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i60, 0
  br i1 %i.mo, label %.noexc15.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !10

.invoke.i.i:                                      ; preds = %bb.cs, %bb.cr, %.lr.ph.i.i.i56, %bb.cw, %bb.cu
  %i.mp = phi ptr [ @2929, %bb.cu ], [ @2923, %.lr.ph.i.i.i56 ], [ @23, %bb.cw ], [ @2921, %bb.cr ], [ @2922, %bb.cs ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mp) #37
          to label %.cont.i.i unwind label %bb.dd, !noalias !2401

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.ct
  %.not.i.not.i.i.i58 = icmp eq i16 %i.lw, 0
  br i1 %.not.i.not.i.i.i58, label %._crit_edge.i.i.i59, label %.lr.ph.i.i.i56

.noexc15.i.i.i:                                   ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  %i.mq = add nsw i64 %i.mg, -16
  %i.mr = and i64 %i.mq, %i.lk                    ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mr ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i.i.i = load <16 x i8>, ptr %i.ms, align 1, !noalias !2430
  %i.mt = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i.i.i, splat (i8 -1)
  %i.mu = bitcast <16 x i1> %i.mt to i16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mg ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i.i.i = load <16 x i8>, ptr %i.mv, align 1, !noalias !2431
  %i.mw = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i.i.i, splat (i8 -1)
  %i.mx = bitcast <16 x i1> %i.mw to i16
  %i.my = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.mu, i1 false)
  %i.mz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.mx, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.mz, %i.my
  %i.na = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.na, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %.noexc15.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !2432, !noalias !2433, !noundef !5 ; 2 uses
  %i.nd = icmp eq i64 %i.nc, -1
  br i1 %i.nd, label %.invoke.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ne = add nuw i64 %i.nc, 1
  store i64 %i.ne, ptr %i.nb, align 8, !alias.scope !2432, !noalias !2433
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.noexc15.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.cv ], [ -128, %.noexc15.i.i.i ] ; 2 uses
  %i.nf = icmp ugt i64 %i.mr, -17
  br i1 %i.nf, label %.invoke.i.i, label %bb.da

bb.cx:                                            ; preds = %bb.co
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #35
          to label %.body.thread unwind label %bb.cz, !noalias !2419

bb.cy:                                            ; preds = %bb.cn
  store i64 %i.jj, ptr %i.la, align 8, !noalias !2419
  %.sroa.4.0..sroa_idx.i.i.i44 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i32 %i.jk, ptr %.sroa.4.0..sroa_idx.i.i.i44, align 8, !noalias !2419
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.i.i.i, i64 28, i1 false), !noalias !2419
  %.sroa.6.0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i45, i8 0, i64 16, i1 false), !noalias !2419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2434
  %.sroa.5.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload38.i.i = load i64, ptr %.sroa.5.0..sroa_idx37.i.i, align 8, !noalias !2434
  %.sroa.6.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.nh = load <2 x i32>, ptr %.sroa.6.0..sroa_idx39.i.i, align 8, !noalias !2434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2417
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish.exit.i.i

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.cx
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i49

.body.i49:                                        ; preds = %bb.de, %bb.cz
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

bb.da:                                            ; preds = %bb.cw
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.mv, align 1, !noalias !2436
  %i.nj = getelementptr i8, ptr %i.ms, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.nj, align 1, !noalias !2436
  %i.nk = add i64 %.pre.i.i, -1
  store i64 %i.nk, ptr %i.jl, align 8, !alias.scope !2432, !noalias !2433
  %i.nl = getelementptr inbounds i8, ptr %i.mi, i64 -8
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !2437, !nonnull !5, !noundef !5 ; 7 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.nn, i64 24, i1 false), !noalias !2438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nn, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2435
  %i.no = load i64, ptr %i.nm, align 8, !noalias !2420
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 8, !noalias !2420 ; 2 uses
  store i64 %i.jj, ptr %i.nm, align 8, !noalias !2420
  store i32 %i.jk, ptr %i.np, align 8, !noalias !2420
  %i.nr = icmp ult i32 %i.nq, 1000000000
  call void @llvm.assume(i1 %i.nr)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.nt = load ptr, ptr %i.ns, align 8, !noalias !2420, !noundef !5 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 40 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !2420, !noundef !5
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  store ptr %i.nt, ptr %i.nw, align 8, !noalias !2420
  %i.nx = load ptr, ptr %i.nu, align 8, !noalias !2420, !noundef !5
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 40
  store ptr %i.nx, ptr %i.ny, align 8, !noalias !2420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2417
  %i.nz = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.nq, i64 0
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish.exit.i.i

bb.db:                                            ; preds = %._crit_edge.i.i.i59
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2846) #36
          to label %bb.dc unwind label %bb.dd, !noalias !2420

bb.dc:                                            ; preds = %bb.db
  unreachable

bb.dd:                                            ; preds = %bb.db, %.invoke.i.i, %bb.cp
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.de, !noalias !2435

bb.de:                                            ; preds = %bb.dd
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i49 unwind label %bb.df, !noalias !2435

bb.df:                                            ; preds = %bb.de
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.dd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.thread unwind label %bb.cz

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.da, %bb.cy
  %.sroa.743.0.i.i = phi ptr [ %i.nm, %bb.da ], [ %i.la, %bb.cy ] ; 8 uses
  %.sroa.5.0.i.i = phi i64 [ %i.no, %bb.da ], [ %.sroa.5.0.copyload38.i.i, %bb.cy ]
  %i.od = phi <2 x i32> [ %i.nz, %bb.da ], [ %i.nh, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034.i.i, i64 24, i1 false), !noalias !2404
  %.sroa.5.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx35.i.i, align 8, !noalias !2404
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i32> %i.od, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2404
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034.i.i)
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !2439, !noalias !2440, !noundef !5
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !2401, !noundef !5
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.743.0.i.i, i64 48 ; 2 uses
  store ptr %i.oh, ptr %i.oi, align 8, !noalias !2401
  %i.oj = load ptr, ptr %i.oe, align 8, !alias.scope !2439, !noalias !2440, !noundef !5 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.743.0.i.i, i64 40
  store ptr %i.oj, ptr %i.ok, align 8, !noalias !2401
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  store ptr %.sroa.743.0.i.i, ptr %i.ol, align 8, !noalias !2401
  %i.om = load ptr, ptr %i.oi, align 8, !noalias !2401, !noundef !5
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  store ptr %.sroa.743.0.i.i, ptr %i.on, align 8, !noalias !2401
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.743.0.i.i, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2404
  store ptr %i.oo, ptr %i.b, align 8, !noalias !2442
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.oq = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.op, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc18.i.i unwind label %bb.dw, !noalias !2401 ; 2 uses

.noexc18.i.i:                                     ; preds = %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish.exit.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !2443, !noalias !2444, !noundef !5
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.dg, label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i, !prof !7

bb.dg:                                            ; preds = %.noexc18.i.i
  %i.ou = invoke { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.iv, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.op, i1 noundef zeroext true) #39
          to label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.dw, !noalias !2401 ; 0 uses

_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.dg, %.noexc18.i.i
  %.val.i.i.i.i = load ptr, ptr %i.iv, align 8, !alias.scope !2445, !noalias !2446, !nonnull !5, !noundef !5 ; 9 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5.i.i.i.i = load i64, ptr %i.ov, align 8, !alias.scope !2445, !noalias !2446, !noundef !5 ; 4 uses
  %i.ow = lshr i64 %i.oq, 57
  %i.ox = trunc nuw nsw i64 %i.ow to i8           ; 3 uses
  %i.oy = insertelement <16 x i8> poison, i8 %i.ox, i64 0
  %i.oz = shufflevector <16 x i8> %i.oy, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.pa = getelementptr i8, ptr %.sroa.743.0.i.i, i64 32
  %i.pb = getelementptr i8, ptr %.sroa.743.0.i.i, i64 24
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dn, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.oq, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %i.qd, %bb.dn ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.4.127.i.i.i.i.i, %bb.dn ]
  %.sroa.03.0.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.03.129.i.i.i.i.i, %bb.dn ]
  %i.pc = phi i64 [ 0, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %i.qc, %bb.dn ] ; 2 uses
  %.sroa.0.018.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val5.i.i.i.i ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.018.i.i.i.i.i
  %.sroa.0.0.copyload.i34.i.i.i.i.i = load <16 x i8>, ptr %i.pd, align 1, !noalias !2447 ; 3 uses
  %i.pe = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i.i, %i.oz
  %i.pf = bitcast <16 x i1> %i.pe to i16          ; 2 uses
  %.not.i.i35.i.i.i.i = icmp eq i16 %i.pf, 0
  br i1 %.not.i.i35.i.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dh, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit.backedge.i.i.i.i
  %.sroa.02.0.i36.i.i.i.i = phi i16 [ %i.qg, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit.backedge.i.i.i.i ], [ %i.pf, %bb.dh ] ; 3 uses
  %i.pg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.i36.i.i.i.i, i1 true)
  %i.ph = zext nneg i16 %i.pg to i64
  %i.pi = add i64 %.sroa.0.018.i.i.i.i.i, %i.ph   ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %.sroa.0.018.i.i.i.i.i
  br i1 %i.pj, label %.invoke96.i.i, label %bb.do

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit._crit_edge.i.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit.backedge.i.i.i.i, %bb.dh
  %.not.i.i.i.i.i46 = icmp eq i64 %.sroa.03.0.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i46, label %.thread.i.i.i.i.i, label %bb.di, !prof !7

bb.di:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit._crit_edge.i.i.i.i
  %i.pk = icmp slt <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i.i, zeroinitializer
  %i.pl = bitcast <16 x i1> %i.pk to i16          ; 2 uses
  %.not.i18.i.i.i.i.i = icmp eq i16 %i.pl, 0
  br i1 %.not.i18.i.i.i.i.i, label %bb.dk, label %bb.dj, !prof !7

bb.dj:                                            ; preds = %bb.di
  %i.pm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pl, i1 true)
  %i.pn = zext nneg i16 %i.pm to i64
  %i.po = add i64 %.sroa.0.018.i.i.i.i.i, %i.pn   ; 2 uses
  %i.pp = icmp ult i64 %i.po, %.sroa.0.018.i.i.i.i.i
  br i1 %i.pp, label %.invoke96.i.i, label %.thread31.i.i.i.i.i

.thread31.i.i.i.i.i:                              ; preds = %bb.dj
  %i.pq = and i64 %i.po, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread31.i.i.i.i.i, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit._crit_edge.i.i.i.i
  %.sroa.4.128.i.i.i.i.i = phi i64 [ %i.pq, %.thread31.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit._crit_edge.i.i.i.i ] ; 3 uses
  %i.pr = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i.i, splat (i8 -1)
  %i.ps = bitcast <16 x i1> %i.pr to i16
  %i.pt = icmp eq i16 %i.ps, 0
  br i1 %i.pt, label %bb.dk, label %bb.dl, !prof !7

bb.dk:                                            ; preds = %.thread.i.i.i.i.i, %bb.di
  %.sroa.03.129.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.di ]
  %.sroa.4.127.i.i.i.i.i = phi i64 [ %.sroa.4.128.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.di ]
  %i.pu = icmp eq i64 %i.pc, -16
  br i1 %i.pu, label %.invoke96.i.i, label %bb.dn

bb.dl:                                            ; preds = %.thread.i.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.4.128.i.i.i.i.i
  %i.pw = load i8, ptr %i.pv, align 1, !noalias !2448, !noundef !5 ; 2 uses
  %i.px = icmp sgt i8 %i.pw, -1
  br i1 %i.px, label %bb.dm, label %bb.dp, !prof !7

bb.dm:                                            ; preds = %bb.dl
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !2448
  %i.py = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.pz = bitcast <16 x i1> %i.py to i16          ; 2 uses
  %.not.i22.i.i.i.i.i = icmp ne i16 %i.pz, 0
  %i.qa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pz, i1 true)
  %i.qb = zext nneg i16 %i.qa to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.qb
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !2449
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dk
  %i.qc = add nuw i64 %i.pc, 16                   ; 2 uses
  %i.qd = add i64 %i.qc, %.sroa.0.018.i.i.i.i.i   ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %.sroa.0.018.i.i.i.i.i
  br i1 %i.qe, label %.invoke96.i.i, label %bb.dh

bb.do:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qf = add i16 %.sroa.02.0.i36.i.i.i.i, -1
  %i.qg = and i16 %i.qf, %.sroa.02.0.i36.i.i.i.i  ; 2 uses
  %i.qh = and i64 %i.pi, %.val5.i.i.i.i
  %i.qi = sub nsw i64 0, %i.qh                    ; 2 uses
  %i.qj = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qj, i64 -16
  %.val2.i.i.i.i.i = load ptr, ptr %i.qk, align 8, !noalias !2450, !noundef !5 ; 2 uses
  %i.ql = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 16
  %.val2.val3.i.i.i.i.i = load i64, ptr %i.ql, align 8, !noalias !2450, !noundef !5 ; 2 uses
  %.val.val2.i.i.i.i.i.i = load i64, ptr %i.pa, align 8, !noalias !2451, !noundef !5
  %i.qm = icmp eq i64 %.val.val2.i.i.i.i.i.i, %.val2.val3.i.i.i.i.i
  br i1 %i.qm, label %.split.i.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit.backedge.i.i.i.i, !prof !9

.split.i.i.i.i:                                   ; preds = %bb.do
  %i.qn = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 8
  %.val2.val.i.i.i.i.i = load ptr, ptr %i.qn, align 8, !noalias !2450, !nonnull !5, !noundef !5
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.pb, align 8, !noalias !2451, !nonnull !5, !noundef !5
  %i.qo = shl nuw i64 %.val2.val3.i.i.i.i.i, 2
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.val.i.i.i.i.i.i, ptr nonnull readonly %.val2.val.i.i.i.i.i, i64 %i.qo), !noalias !2450
  %i.qp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qp, label %.loopexit.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit.backedge.i.i.i.i, !prof !8

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.do
  %.not.i.i.i.i.i.i = icmp eq i16 %i.qg, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.dp:                                            ; preds = %bb.dm, %bb.dl
  %i.qq = phi i8 [ %.pre.i.i.i, %bb.dm ], [ %i.pw, %bb.dl ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.qb, %bb.dm ], [ %.sroa.4.128.i.i.i.i.i, %bb.dl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.qr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  %i.qs = and i8 %i.qq, 1
  %i.qt = zext nneg i8 %i.qs to i64               ; 2 uses
  %i.qu = load i64, ptr %i.or, align 8, !alias.scope !2454, !noalias !2440, !noundef !5 ; 2 uses
  %i.qv = icmp ult i64 %i.qu, %i.qt
  br i1 %i.qv, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qw = sub nuw i64 %i.qu, %i.qt
  store i64 %i.qw, ptr %i.or, align 8, !alias.scope !2454, !noalias !2440
  %i.qx = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.qy = and i64 %i.qx, %.val5.i.i.i.i           ; 2 uses
  %i.qz = icmp ugt i64 %i.qy, -17
  br i1 %i.qz, label %.invoke96.i.i, label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2925) #37
          to label %.noexc24.i.i unwind label %bb.dw, !noalias !2401

.noexc24.i.i:                                     ; preds = %bb.dr
  unreachable

bb.ds:                                            ; preds = %bb.dq
  store i8 %i.ox, ptr %i.qr, align 1, !noalias !2455
  %i.ra = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.qy
  %i.rb = getelementptr i8, ptr %i.ra, i64 16
  store i8 %i.ox, ptr %i.rb, align 1, !noalias !2455
  %i.rc = load i64, ptr %i.jl, align 8, !alias.scope !2454, !noalias !2440, !noundef !5 ; 2 uses
  %i.rd = icmp eq i64 %i.rc, -1
  br i1 %i.rd, label %.invoke96.i.i, label %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE22insert_tagged_at_indexCs8frGy5WneL6_4fish.exit.i.i.i

.invoke96.i.i:                                    ; preds = %bb.dn, %bb.dk, %bb.dj, %.lr.ph.i.i.i.i, %bb.ds, %bb.dq
  %i.re = phi ptr [ @23, %bb.dq ], [ @2926, %bb.ds ], [ @2928, %.lr.ph.i.i.i.i ], [ @2921, %bb.dk ], [ @2922, %bb.dn ], [ @2927, %bb.dj ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.re) #37
          to label %.cont97.i.i unwind label %bb.dw, !noalias !2401

.cont97.i.i:                                      ; preds = %.invoke96.i.i
  unreachable

_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE22insert_tagged_at_indexCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.ds
  %i.rf = add nuw i64 %i.rc, 1
  store i64 %i.rf, ptr %i.jl, align 8, !alias.scope !2454, !noalias !2440
  %i.rg = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i  ; 2 uses
  %i.rh = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.rg
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -16
  store ptr %i.oo, ptr %i.ri, align 8, !noalias !2449
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.split.i.i.i.i, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE22insert_tagged_at_indexCs8frGy5WneL6_4fish.exit.i.i.i
  %i.rj = phi i64 [ %i.rg, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE22insert_tagged_at_indexCs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.qi, %.split.i.i.i.i ]
  %i.rk = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.rj
  %i.rl = getelementptr inbounds i8, ptr %i.rk, i64 -8
  store ptr %.sroa.743.0.i.i, ptr %i.rl, align 8, !noalias !2401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2404
  %.sroa.044.0.copyload.i.i = load i64, ptr %i.f, align 8, !noalias !2404 ; 2 uses
  %.not.i27.i.i = icmp eq i64 %.sroa.044.0.copyload.i.i, -1
  br i1 %.not.i27.i.i, label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish.exit.thread.i, label %bb.dt

bb.dt:                                            ; preds = %.loopexit.i
  %.sroa.647.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2456
  store i64 %.sroa.044.0.copyload.i.i, ptr %i.a, align 8, !noalias !2457
  %.sroa.647.0..sroa_idx48.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.647.0..sroa_idx48.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.647.0..sroa_idx.i.i, i64 32, i1 false), !noalias !2404
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.du, !noalias !2458

bb.du:                                            ; preds = %bb.dt
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body.thread unwind label %bb.dv, !noalias !2458

bb.dv:                                            ; preds = %bb.du
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2458
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.dt
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc63 unwind label %.body.thread94

.noexc63:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2456
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish.exit.thread.i

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %.noexc63, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2404
  br label %.thread

bb.dw:                                            ; preds = %.invoke96.i.i, %bb.dr, %bb.dg, %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish.exit.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #35
          to label %.body.thread unwind label %bb.dx, !noalias !2401

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %i.ro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2401
  unreachable

bb.dy:                                            ; preds = %.invoke.i, %bb.ci
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #35
          to label %.body.thread unwind label %bb.dx, !noalias !2401

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish.exit.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i
  %i.rq = getelementptr inbounds i8, ptr %i.kq, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2404
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !2401, !nonnull !5, !noundef !5 ; 7 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.rr, align 8, !noalias !2401
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2401 ; 2 uses
  store i64 %i.jj, ptr %i.rr, align 8, !noalias !2401
  store i32 %i.jk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2401
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 48 ; 3 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !noalias !2401, !noundef !5 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 40 ; 3 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !noalias !2401, !noundef !5
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 48
  store ptr %i.rt, ptr %i.rw, align 8, !noalias !2401
  %i.rx = load ptr, ptr %i.ru, align 8, !noalias !2401, !noundef !5
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  store ptr %i.rx, ptr %i.ry, align 8, !noalias !2401
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !alias.scope !2439, !noalias !2440, !noundef !5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 48
  %i.sc = load ptr, ptr %i.sb, align 8, !noalias !2401, !noundef !5
  store ptr %i.sc, ptr %i.rs, align 8, !noalias !2401
  %i.sd = load ptr, ptr %i.rz, align 8, !alias.scope !2439, !noalias !2440, !noundef !5 ; 2 uses
  store ptr %i.sd, ptr %i.ru, align 8, !noalias !2401
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 48
  store ptr %i.rr, ptr %i.se, align 8, !noalias !2401
  %i.sf = load ptr, ptr %i.rs, align 8, !noalias !2401, !noundef !5
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  store ptr %i.rr, ptr %i.sg, align 8, !noalias !2401
  %.sroa.0.0.copyload6.i = load i64, ptr %i.ac, align 8, !alias.scope !2440, !noalias !2439 ; 2 uses
  %.not.i61 = icmp eq i64 %.sroa.0.0.copyload6.i, -1
  br i1 %.not.i61, label %.thread, label %bb.dz

bb.dz:                                            ; preds = %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.0..sroa_idx, i64 16, i1 false), !noalias !2399
  store i64 %.sroa.0.0.copyload6.i, ptr %i.h, align 8, !noalias !2459
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2459
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !2459
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i62 unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.thread unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.si = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_4
begin_hunk_5_@_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE5clearCs8frGy5WneL6_4fish:bb.a
_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEECs8frGy5WneL6_4fish.exit: ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENCNvMs6_B1w_B1t_5clear0EECs8frGy5WneL6_4fish.exit5, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEECs8frGy5WneL6_4fish.exit
  %i.ak = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.al = add i64 %i.ai, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 -1, i64 %i.al, i1 false)
  %i.am = icmp ult i64 %i.ai, 8
  %i.an = add i64 %i.ai, 1
  %i.ao = lshr i64 %i.an, 3
  %i.ap = mul nuw i64 %i.ao, 7
  %spec.select.i.i.i4 = select i1 %i.am, i64 %i.ai, i64 %i.ap
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENCNvMs6_B1w_B1t_5clear0EECs8frGy5WneL6_4fish.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENCNvMs6_B1w_B1t_5clear0EECs8frGy5WneL6_4fish.exit5: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEECs8frGy5WneL6_4fish.exit, %bb.h
  %i.aq = phi i64 [ %spec.select.i.i.i4, %bb.h ], [ 0, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEECs8frGy5WneL6_4fish.exit ]
  store i64 0, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.ar, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENCNvMs6_B1w_B1t_5clear0EECs8frGy5WneL6_4fish.exit5
  ret void

bb.j:                                             ; preds = %bb.g, %.body
  %i.as = phi i64 [ %spec.select.i.i.i, %bb.g ], [ 0, %.body ]
  store i64 0, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %i.at, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBV_9text_face8TextFaceEE14insert_no_growBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(22) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %.sroa.0.07.i = and i64 %.val2, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !2589
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val2                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !5  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val2             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !2589
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !13

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.b
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val2
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [22 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ai, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 22, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE16with_capacity_inCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 8, i64 noundef %1, i1 noundef zeroext true) #38
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE3putBG_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i32 noundef range(i32 1, 0) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %1, ptr %i.i, align 4, !noalias !2662
  store ptr %2, ptr %i.h, align 8, !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2662
  store ptr %i.i, ptr %i.g, align 8, !noalias !2662
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2663, !noalias !2664, !noundef !5
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %select.unfold.thread.i, label %bb.b

select.unfold.thread.i:                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2662
  store ptr %2, ptr %i.e, align 8, !noalias !2665
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc.i unwind label %bb.bd  ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2668, !noalias !2669, !noundef !5 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !alias.scope !2668, !noalias !2669, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.val.i.i.i.i.i = load i32, ptr %i.i, align 4, !range !14, !noalias !2662 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.noexc.i
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %.noexc.i ], [ %i.ag, %bb.h ] ; 2 uses
  %.pn.i.i.i = phi i64 [ %i.n, %.noexc.i ], [ %i.ah, %bb.h ]
  %.sroa.03.0.i.i.i.i = and i64 %.pn.i.i.i, %i.r  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.03.0.i.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !2670 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.011.0.i.i.i = phi i16 [ %i.x, %bb.c ], [ %i.ak, %bb.i ] ; 4 uses
  %.not.i.not.i.i.i = icmp eq i16 %.sroa.011.0.i.i.i, 0
  br i1 %.not.i.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.0.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.03.0.i.i.i.i, %i.z       ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %.sroa.03.0.i.i.i.i
  br i1 %i.ab, label %.invoke77.i, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %select.unfold.i, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %.sroa.07.0.i.i.i.i, -16
  br i1 %i.af, label %.invoke77.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = add nuw i64 %.sroa.07.0.i.i.i.i, 16     ; 2 uses
  %i.ah = add i64 %.sroa.03.0.i.i.i.i, %i.ag      ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.03.0.i.i.i.i
  br i1 %i.ai, label %.invoke77.i, label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.aj = add i16 %.sroa.011.0.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.011.0.i.i.i
  %i.al = and i64 %i.aa, %i.r
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16
  %.val2.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !2671, !noundef !5
  %.val2.val.i.i.i.i = load i32, ptr %.val2.i.i.i.i, align 4, !range !14, !noalias !2671, !noundef !5
  %i.ap = icmp eq i32 %.val.val.i.i.i.i.i, %.val2.val.i.i.i.i
  br i1 %i.ap, label %bb.j, label %bb.d, !prof !8

.invoke77.i:                                      ; preds = %bb.h, %bb.g, %bb.e
  %i.aq = phi ptr [ @2923, %bb.e ], [ @2921, %bb.g ], [ @2922, %bb.h ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #37
          to label %.cont78.i unwind label %bb.bd

.cont78.i:                                        ; preds = %.invoke77.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2662
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.at = load i64, ptr %i.as, align 8
  store ptr %2, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.aw, align 8, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !2662, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noundef !5
  store ptr %i.be, ptr %i.au, align 8
  %i.bf = load ptr, ptr %i.bb, align 8, !alias.scope !2662, !noundef !5 ; 2 uses
  store ptr %i.bf, ptr %i.aw, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.as, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.au, align 8, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.as, ptr %i.bi, align 8
  %i.bj = inttoptr i64 %i.at to ptr
  %i.bk = insertvalue { i32, ptr } poison, i32 %.val.val.i.i.i.i.i, 0
  %i.bl = insertvalue { i32, ptr } %i.bk, ptr %i.bj, 1
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE13capturing_putBG_.exit

select.unfold.i:                                  ; preds = %bb.f
  %.pre.i = load i64, ptr %i.j, align 8, !alias.scope !2672, !noalias !2673 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2662
  call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2662
  store ptr %2, ptr %i.e, align 8, !noalias !2675
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !range !32, !alias.scope !2672, !noalias !2673, !noundef !5
  %i.bo = icmp eq i64 %.pre.i, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.k

bb.k:                                             ; preds = %select.unfold.i, %select.unfold.thread.i
  %i.bp = phi i32 [ %1, %select.unfold.thread.i ], [ %.val.val.i.i.i.i.i, %select.unfold.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2675
  store i32 0, ptr %i.c, align 8, !noalias !2675
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !2676
  %i.bq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #40, !noalias !2676 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.l, label %bb.z, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #36
          to label %.noexc.i.i unwind label %bb.y, !noalias !2676

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %select.unfold.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2675
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !2672, !noalias !2673, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !2676, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  store ptr %i.bw, ptr %i.d, align 8, !noalias !2675
  %i.bx = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc7.i.i unwind label %.thread17.i.i, !noalias !2673 ; 2 uses

.thread17.i.i:                                    ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.noexc7.i.i:                                      ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  %i.bz = lshr i64 %i.bx, 57
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  %i.cb = load i64, ptr %i.q, align 8, !alias.scope !2679, !noalias !2680, !noundef !5 ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !alias.scope !2679, !noalias !2680, !nonnull !5, !noundef !5 ; 4 uses
  %i.cd = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.noexc7.i.i
  %.sroa.07.0.i.i.i.i.i = phi i64 [ 0, %.noexc7.i.i ], [ %i.cq, %bb.s ] ; 2 uses
  %.pn.i.i.i.i = phi i64 [ %i.bx, %.noexc7.i.i ], [ %i.cr, %bb.s ]
  %.sroa.03.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.cb ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.03.0.i.i.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !2681 ; 2 uses
  %i.cg = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i, %i.ce
  %i.ch = bitcast <16 x i1> %i.cg to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.sroa.011.0.i.i.i.i = phi i16 [ %i.ch, %bb.n ], [ %i.cv, %bb.t ] ; 4 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %.sroa.011.0.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.0.i.i.i.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add i64 %.sroa.03.0.i.i.i.i.i, %i.cj    ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.03.0.i.i.i.i.i
  br i1 %i.cl, label %.invoke.i.i, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i, splat (i8 -1)
  %i.cn = bitcast <16 x i1> %i.cm to i16
  %i.co = icmp eq i16 %i.cn, 0
  br i1 %i.co, label %bb.r, label %bb.ad, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.cp = icmp eq i64 %.sroa.07.0.i.i.i.i.i, -16
  br i1 %i.cp, label %.invoke.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = add nuw i64 %.sroa.07.0.i.i.i.i.i, 16   ; 2 uses
  %i.cr = add i64 %.sroa.03.0.i.i.i.i.i, %i.cq    ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.sroa.03.0.i.i.i.i.i
  br i1 %i.cs, label %.invoke.i.i, label %bb.n

.invoke.i.i:                                      ; preds = %bb.s, %bb.r, %bb.p, %bb.x, %bb.v
  %i.ct = phi ptr [ @2929, %bb.v ], [ @23, %bb.x ], [ @2923, %bb.p ], [ @2922, %bb.s ], [ @2921, %bb.r ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #37
          to label %.cont.i.i unwind label %bb.ab, !noalias !2673

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.cu = add i16 %.sroa.011.0.i.i.i.i, -1
  %i.cv = and i16 %i.cu, %.sroa.011.0.i.i.i.i
  %i.cw = and i64 %i.ck, %i.cb                    ; 3 uses
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -16
  %.val2.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !noalias !2682, !noundef !5
  %.val2.val.i.i.i.i.i = load i32, ptr %.val2.i.i.i.i.i, align 4, !range !14, !noalias !2682, !noundef !5
  %.val.val.i.i.i.i.i.i = load i32, ptr %i.bw, align 4, !range !14, !noalias !2682, !noundef !5
  %i.da = icmp eq i32 %.val.val.i.i.i.i.i.i, %.val2.val.i.i.i.i.i
  br i1 %i.da, label %bb.u, label %bb.o, !prof !8

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  %i.db = add nsw i64 %i.cw, -16
  %i.dc = and i64 %i.db, %i.cb                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dc ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i.i = load <16 x i8>, ptr %i.dd, align 1, !noalias !2685
  %i.de = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i.i, splat (i8 -1)
  %i.df = bitcast <16 x i1> %i.de to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cw ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i.i = load <16 x i8>, ptr %i.dg, align 1, !noalias !2686
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i.i, splat (i8 -1)
  %i.di = bitcast <16 x i1> %i.dh to i16
  %i.dj = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.df, i1 false)
  %i.dk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.dk, %i.dj
  %i.dl = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.dl, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !2687, !noalias !2688, !noundef !5 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %.invoke.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = add nuw i64 %i.dn, 1
  store i64 %i.dp, ptr %i.dm, align 8, !alias.scope !2687, !noalias !2688
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.w ], [ -128, %bb.u ] ; 2 uses
  %i.dq = icmp ugt i64 %i.dc, -17
  br i1 %i.dq, label %.invoke.i.i, label %bb.ac

bb.y:                                             ; preds = %bb.l
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB12_11wait_handle10WaitHandleEEEEB12_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i unwind label %bb.aa, !noalias !2676

bb.z:                                             ; preds = %bb.k
  store ptr %2, ptr %i.bq, align 8, !noalias !2676
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !2676
  store i32 %i.bp, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2676
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !2675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2675
  br label %bb.ah

bb.aa:                                            ; preds = %bb.ag, %bb.y
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2673
  unreachable

bb.ab:                                            ; preds = %bb.ad, %.invoke.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.x
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.dg, align 1, !noalias !2689
  %i.dw = getelementptr i8, ptr %i.dd, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.dw, align 1, !noalias !2689
  %i.dx = add i64 %.pre.i, -1
  store i64 %i.dx, ptr %i.j, align 8, !alias.scope !2687, !noalias !2688
  %i.dy = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !2690, !nonnull !5, !noundef !5 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !noalias !2673 ; 2 uses
  store i32 %.val.val.i.i.i.i.i, ptr %i.ea, align 8, !noalias !2673
  %i.ec = icmp ne i32 %i.eb, 0
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load ptr, ptr %i.dz, align 8, !noalias !2673, !nonnull !5, !noundef !5
  store ptr %2, ptr %i.dz, align 8, !noalias !2673
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !2673, !noundef !5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !2673, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ef, ptr %i.ei, align 8, !noalias !2673
  %i.ej = load ptr, ptr %i.eg, align 8, !noalias !2673, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !noalias !2673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2675
  br label %bb.ah

bb.ad:                                            ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2846) #36
          to label %bb.ae unwind label %bb.ab, !noalias !2673

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ab, %.thread17.i.i
  %i.el = phi { ptr, i32 } [ %i.by, %.thread17.i.i ], [ %i.dv, %bb.ab ] ; 2 uses
  %i.em = load i64, ptr %2, align 8, !noalias !2691, !noundef !5
  %i.en = add i64 %i.em, -1                       ; 2 uses
  store i64 %i.en, ptr %2, align 8, !noalias !2691
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i unwind label %bb.aa, !noalias !2673

bb.ah:                                            ; preds = %bb.ac, %bb.z
  %i.ep = phi ptr [ %i.ed, %bb.ac ], [ %i.dt, %bb.z ] ; 4 uses
  %i.eq = phi i32 [ %i.eb, %bb.ac ], [ 0, %bb.z ] ; 3 uses
  %.sroa.8.0.i = phi ptr [ %i.dz, %bb.ac ], [ %i.bq, %bb.z ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2662
  store i32 %i.eq, ptr %i.f, align 8, !noalias !2662
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ep, ptr %i.er, align 8, !noalias !2662
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !2662, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 16 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8
  %i.ex = load ptr, ptr %i.es, align 8, !alias.scope !2662, !noundef !5 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 8
  store ptr %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %.sroa.8.0.i, ptr %i.ez, align 8
  %i.fa = load ptr, ptr %i.ew, align 8, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %.sroa.8.0.i, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2662
  store ptr %i.fc, ptr %i.b, align 8, !noalias !2693
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fe = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc18.i unwind label %bb.bb ; 2 uses

.noexc18.i:                                       ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !2694, !noalias !2695, !noundef !5
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.ai, label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i, !prof !7

bb.ai:                                            ; preds = %.noexc18.i
  %i.fi = invoke { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd, i1 noundef zeroext true) #39
          to label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i unwind label %bb.bb ; 0 uses

_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i: ; preds = %bb.ai, %.noexc18.i
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2696, !noalias !2697, !nonnull !5, !noundef !5 ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !2696, !noalias !2697, !noundef !5 ; 4 uses
  %i.fk = lshr i64 %i.fe, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 3 uses
  %i.fm = insertelement <16 x i8> poison, i8 %i.fl, i64 0
  %i.fn = shufflevector <16 x i8> %i.fm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.as, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i
  %.pn.i.i.i11.i = phi i64 [ %i.fe, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i ], [ %i.gp, %bb.as ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i ], [ %.sroa.4.127.i.i.i.i, %bb.as ]
  %.sroa.03.0.i.i.i12.i = phi i64 [ 0, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i ], [ %.sroa.03.129.i.i.i.i, %bb.as ]
  %i.fo = phi i64 [ 0, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_.exit.i.i.i ], [ %i.go, %bb.as ] ; 2 uses
  %.sroa.0.018.i.i.i.i = and i64 %.pn.i.i.i11.i, %.val5.i.i.i ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.018.i.i.i.i
  %.sroa.0.0.copyload.i34.i.i.i.i = load <16 x i8>, ptr %i.fp, align 1, !noalias !2698 ; 3 uses
  %i.fq = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i, %i.fn
  %i.fr = bitcast <16 x i1> %i.fq to i16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.at, %bb.aj
  %.sroa.02.0.i.i.i.i = phi i16 [ %i.fr, %bb.aj ], [ %i.gs, %bb.at ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq i16 %.sroa.02.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.i.i.i.i, i1 true)
  %i.ft = zext nneg i16 %i.fs to i64
  %i.fu = add i64 %.sroa.0.018.i.i.i.i, %i.ft     ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %.sroa.0.018.i.i.i.i
  br i1 %i.fv, label %.invoke.i, label %bb.at

bb.am:                                            ; preds = %bb.ak
  %.not.i.i.i.i = icmp eq i64 %.sroa.03.0.i.i.i12.i, 1
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  %i.fw = icmp slt <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i, zeroinitializer
  %i.fx = bitcast <16 x i1> %i.fw to i16          ; 2 uses
  %.not.i18.i.i.i.i = icmp eq i16 %i.fx, 0
  br i1 %.not.i18.i.i.i.i, label %bb.ap, label %bb.ao, !prof !7

bb.ao:                                            ; preds = %bb.an
  %i.fy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fx, i1 true)
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = add i64 %.sroa.0.018.i.i.i.i, %i.fz     ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %.sroa.0.018.i.i.i.i
  br i1 %i.gb, label %.invoke.i, label %.thread31.i.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.ao
  %i.gc = and i64 %i.ga, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread31.i.i.i.i, %bb.am
  %.sroa.4.128.i.i.i.i = phi i64 [ %i.gc, %.thread31.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %bb.am ] ; 3 uses
  %i.gd = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i, splat (i8 -1)
  %i.ge = bitcast <16 x i1> %i.gd to i16
  %i.gf = icmp eq i16 %i.ge, 0
  br i1 %i.gf, label %bb.ap, label %bb.aq, !prof !7

bb.ap:                                            ; preds = %.thread.i.i.i.i, %bb.an
  %.sroa.03.129.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.an ]
  %.sroa.4.127.i.i.i.i = phi i64 [ %.sroa.4.128.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.an ]
  %i.gg = icmp eq i64 %i.fo, -16
  br i1 %i.gg, label %.invoke.i, label %bb.as

bb.aq:                                            ; preds = %.thread.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.128.i.i.i.i
  %i.gi = load i8, ptr %i.gh, align 1, !noalias !2699, !noundef !5 ; 2 uses
  %i.gj = icmp sgt i8 %i.gi, -1
  br i1 %i.gj, label %bb.ar, label %bb.au, !prof !7

bb.ar:                                            ; preds = %bb.aq
  %.val2.i.i.i.i17.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !2699
  %i.gk = icmp slt <16 x i8> %.val2.i.i.i.i17.i, zeroinitializer
  %i.gl = bitcast <16 x i1> %i.gk to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.gl, 0
  %i.gm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gl, i1 true)
  %i.gn = zext nneg i16 %i.gm to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gn
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !2700
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.go = add nuw i64 %i.fo, 16                   ; 2 uses
  %i.gp = add i64 %i.go, %.sroa.0.018.i.i.i.i     ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %.sroa.0.018.i.i.i.i
  br i1 %i.gq, label %.invoke.i, label %bb.aj

bb.at:                                            ; preds = %bb.al
  %i.gr = add i16 %.sroa.02.0.i.i.i.i, -1
  %i.gs = and i16 %i.gr, %.sroa.02.0.i.i.i.i
  %i.gt = and i64 %i.fu, %.val5.i.i.i
  %i.gu = sub nsw i64 0, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -16
  %.val2.i.i.i13.i = load ptr, ptr %i.gw, align 8, !noalias !2701, !noundef !5
  %.val2.val.i.i.i14.i = load i32, ptr %.val2.i.i.i13.i, align 4, !range !14, !noalias !2701, !noundef !5
  %.val.val.i.i.i.i15.i = load i32, ptr %i.fc, align 8, !range !14, !noalias !2702, !noundef !5
  %i.gx = icmp eq i32 %.val.val.i.i.i.i15.i, %.val2.val.i.i.i14.i
  br i1 %i.gx, label %.loopexit, label %bb.ak, !prof !8

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %i.gy = phi i8 [ %.pre.i.i, %bb.ar ], [ %i.gi, %bb.aq ]
  %.sroa.3.0.i.i.ph.i.i = phi i64 [ %i.gn, %bb.ar ], [ %.sroa.4.128.i.i.i.i, %bb.aq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.i.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  %i.ha = and i8 %i.gy, 1
  %i.hb = zext nneg i8 %i.ha to i64               ; 2 uses
  %i.hc = load i64, ptr %i.ff, align 8, !alias.scope !2704, !noundef !5 ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  br i1 %i.hd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = sub nuw i64 %i.hc, %i.hb
  store i64 %i.he, ptr %i.ff, align 8, !alias.scope !2704
  %i.hf = add i64 %.sroa.3.0.i.i.ph.i.i, -16
  %i.hg = and i64 %i.hf, %.val5.i.i.i             ; 2 uses
  %i.hh = icmp ugt i64 %i.hg, -17
  br i1 %i.hh, label %.invoke.i, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2925) #37
          to label %.noexc24.i unwind label %bb.bb

.noexc24.i:                                       ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.av
  store i8 %i.fl, ptr %i.gz, align 1, !noalias !2705
  %i.hi = getelementptr i8, ptr %.val.i.i.i, i64 %i.hg
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  store i8 %i.fl, ptr %i.hj, align 1, !noalias !2705
  %i.hk = load i64, ptr %i.j, align 8, !alias.scope !2704, !noundef !5 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, -1
  br i1 %i.hl, label %.invoke.i, label %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE22insert_tagged_at_indexB1l_.exit.i.i

.invoke.i:                                        ; preds = %bb.as, %bb.ap, %bb.ao, %bb.al, %bb.ax, %bb.av
  %i.hm = phi ptr [ @23, %bb.av ], [ @2926, %bb.ax ], [ @2928, %bb.al ], [ @2922, %bb.as ], [ @2921, %bb.ap ], [ @2927, %bb.ao ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hm) #37
          to label %.cont.i unwind label %bb.bb

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE22insert_tagged_at_indexB1l_.exit.i.i: ; preds = %bb.ax
  %i.hn = add nuw i64 %i.hk, 1
  store i64 %i.hn, ptr %i.j, align 8, !alias.scope !2704
  %i.ho = sub nsw i64 0, %.sroa.3.0.i.i.ph.i.i    ; 2 uses
  %i.hp = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.ho
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -16
  store ptr %i.fc, ptr %i.hq, align 8, !noalias !2700
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE22insert_tagged_at_indexB1l_.exit.i.i
  %i.hr = phi i64 [ %i.ho, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE22insert_tagged_at_indexB1l_.exit.i.i ], [ %i.gu, %bb.at ]
  %i.hs = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -8
  store ptr %.sroa.8.0.i, ptr %i.ht, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2662
  %.not.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2662
  store i32 %i.eq, ptr %i.a, align 8, !noalias !2662
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.hu, align 8, !noalias !2662
  %i.hv = load i64, ptr %i.ep, align 8, !noalias !2706, !noundef !5
  %i.hw = add i64 %i.hv, -1                       ; 2 uses
  store i64 %i.hw, ptr %i.ep, align 8, !noalias !2706
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.az, label %.sink.split.i.i

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hu) #39
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2662
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2662
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE13capturing_putBG_.exit

bb.bb:                                            ; preds = %.invoke.i, %bb.aw, %bb.ai, %bb.ah
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB12_11wait_handle10WaitHandleEEEEB12_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bd:                                            ; preds = %.invoke77.i, %bb.b
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load i64, ptr %2, align 8, !noalias !2707, !noundef !5
  %i.ib = add i64 %i.ia, -1                       ; 2 uses
  store i64 %i.ib, ptr %2, align 8, !noalias !2707
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i unwind label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.i: ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ag, %bb.af, %bb.y
  %.pn33.i = phi { ptr, i32 } [ %i.hz, %bb.bd ], [ %i.el, %bb.ag ], [ %i.el, %bb.af ], [ %i.dr, %bb.y ], [ %i.hz, %bb.be ], [ %lpad.thr_comm.i, %bb.bb ]
  resume { ptr, i32 } %.pn33.i

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE13capturing_putBG_.exit: ; preds = %bb.j, %bb.ba
  %.merged.i = phi { i32, ptr } [ %i.bl, %bb.j ], [ { i32 0, ptr undef }, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.id = extractvalue { i32, ptr } %.merged.i, 0
  %.not = icmp eq i32 %i.id, 0
  %i.ie = extractvalue { i32, ptr } %.merged.i, 1
  %spec.select = select i1 %.not, ptr null, ptr %i.ie
  ret ptr %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE9constructBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #40 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.invoke, label %bb.c, !prof !7

bb.b:                                             ; preds = %.invoke
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown3map7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtB2_8non_null7NonNullINtB1j_8LruEntryB1I_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1M_11wait_handle10WaitHandleEEEEEB1M_(ptr %.sroa.0.0.copyload, i64 %.sroa.5.0.copyload) #35
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.0..sroa_idx, i8 0, i64 16, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #40 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.invoke, label %bb.d, !prof !7

.invoke:                                          ; preds = %bb.a, %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #36
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %bb.c
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.f, align 8
  store ptr %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.i, align 8
  store ptr %i.d, ptr %.sroa.519.0..sroa_idx, align 8
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx11, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable
end_hunk_5
begin_hunk_6_@_RNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string6lengthNtB2_6LengthNtB4_16StringSubCommand6handle:bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %.body unwind label %bb.ap

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = load i64, ptr %i.g, align 8, !range !4, !alias.scope !3623, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.aq

bb.ap:                                            ; preds = %.split106.us, %bb.al, %.body, %.body34
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %.split114.split

.split114.split:                                  ; preds = %bb.aq
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.split114.us

.split114.us:                                     ; preds = %.split114.split, %.split114.split.us, %.split114.us.split, %.split114.us.split.us
  %.us-phi115 = phi { ptr, i32 } [ %i.af, %.split114.us.split.us ], [ %i.az, %.split114.us.split ], [ %i.bu, %.split114.split ], [ %i.be, %.split114.split.us ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34 unwind label %bb.ar

bb.ar:                                            ; preds = %.split114.us
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %.loopexit51.split.split

.split126.us:                                     ; preds = %bb.ab, %.split85.us
  %i.bw = load i64, ptr %i.g, align 8, !range !4, !alias.scope !3624, !noundef !5
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit41, label %bb.as

bb.as:                                            ; preds = %.split126.us
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i37 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i37: ; preds = %bb.as
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit41 unwind label %.loopexit.split-lp52

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.split86.split

bb.av:                                            ; preds = %.split109.us
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

.split85.us:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.split126.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit41: ; preds = %.split126.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ag

bb.aw:                                            ; preds = %.body34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs8frGy5WneL6_4fish7history7historyINtCskOHnqPTvc0z_3lru8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_11HistoryItemENtB5_11LruCacheExt8add_item(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i.i.i = alloca [112 x i8], align 8     ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.023.i.i = alloca [112 x i8], align 8     ; 6 uses
  %i.h = alloca [112 x i8], align 8               ; 6 uses
  %.sroa.48.i = alloca [104 x i8], align 8        ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [112 x i8], align 8               ; 7 uses
  %i.k = alloca [88 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [88 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 9 uses
  %i.s = icmp ult i64 %i.r, 2305843009213693952
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3700, !noalias !3701, !noundef !5
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru10KeyWrapperNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.v, i64 noundef range(i64 1, 2305843009213693952) %i.r)
          to label %.noexc unwind label %bb.bh    ; 2 uses

.noexc:                                           ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3703)
  %i.ab = lshr i64 %i.aa, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !3704, !noalias !3705, !noundef !5 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !alias.scope !3704, !noalias !3705, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = shl nuw nsw i64 %i.r, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.noexc
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.aw, %bb.f ] ; 2 uses
  %.pn.i.i.i = phi i64 [ %i.aa, %.noexc ], [ %i.ax, %bb.f ]
  %.sroa.03.0.i.i.i.i = and i64 %.pn.i.i.i, %i.ae ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.03.0.i.i.i.i
  %.sroa.0.0.copyload.i33.i.i.i = load <16 x i8>, ptr %i.aj, align 1, !noalias !3706 ; 2 uses
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, %i.ah
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not.i.not45.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.thread.i.i.i
  %.sroa.011.046.i.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.thread.i.i.i ], [ %i.al, %bb.d ] ; 3 uses
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i16 %.sroa.011.046.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.011.046.i.i.i     ; 2 uses
  %i.aq = add i64 %.sroa.03.0.i.i.i.i, %i.an      ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.03.0.i.i.i.i
  br i1 %i.ar, label %.invoke, label %bb.g

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.thread.i.i.i, %bb.d
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.e, label %.loopexit, !prof !7

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.av = icmp eq i64 %.sroa.07.0.i.i.i.i, -16
  br i1 %i.av, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = add nuw i64 %.sroa.07.0.i.i.i.i, 16     ; 2 uses
  %i.ax = add i64 %.sroa.03.0.i.i.i.i, %i.aw      ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %.sroa.03.0.i.i.i.i
  br i1 %i.ay, label %.invoke, label %bb.d

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.az = and i64 %i.aq, %i.ae
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !3707, !noundef !5 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val3.i.i.i.i, i64 16
  %.val3.val4.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !3707, !noundef !5
  %i.be = icmp eq i64 %i.r, %.val3.val4.i.i.i.i
  br i1 %i.be, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.thread.i.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.i.i.i: ; preds = %bb.g
  %i.bf = getelementptr i8, ptr %.val3.i.i.i.i, i64 8
  %.val3.val.i.i.i.i = load ptr, ptr %i.bf, align 8, !noalias !3707, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(1) %i.v, ptr noundef nonnull readonly align 4 dereferenceable(1) %.val3.val.i.i.i.i, i64 %i.ai), !alias.scope !3708, !noalias !3709
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %bb.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.thread.i.i.i, !prof !10

.invoke:                                          ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i
  %i.bh = phi ptr [ @2923, %.lr.ph.i.i.i ], [ @2921, %bb.e ], [ @2922, %bb.f ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #37
          to label %.cont unwind label %bb.bh

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.i.i.i, %bb.g
  %.not.i.not.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  br label %bb.k

bb.i:                                             ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0B3m_.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 120 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 112 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.bm, align 8, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !3710, !noalias !3711, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  %i.bu = load ptr, ptr %i.bt, align 8, !noundef !5
  store ptr %i.bu, ptr %i.bk, align 8
  %i.bv = load ptr, ptr %i.br, align 8, !alias.scope !3710, !noalias !3711, !noundef !5 ; 2 uses
  store ptr %i.bv, ptr %i.bm, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store ptr %i.bj, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.bk, align 8, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  store ptr %i.bj, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false)
  invoke void @_RNvMs1_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_10Timestamps17update_last_added(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.p)
          to label %bb.j unwind label %bb.bh

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.l unwind label %bb.bh

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit, %bb.j, %bb.h
  ret void

bb.l:                                             ; preds = %.loopexit
  %i.cb = load i64, ptr %i.l, align 8, !range !22, !noundef !5
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !24, !noundef !5 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.cg = load i64, ptr %i.cf, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #36
          to label %bb.bg unwind label %bb.bh

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = icmp samesign ule i64 %i.r, %i.ce
  tail call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cj = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr nonnull align 4 %i.v, i64 %i.cj, i1 false)
  store i64 %i.ce, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3715
  store ptr %i.n, ptr %i.i, align 8, !noalias !3715
  %i.ck = load i64, ptr %i.w, align 8, !alias.scope !3716, !noalias !3717, !noundef !5
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %select.unfold.thread.i.i, label %bb.o

select.unfold.thread.i.i:                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3715
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !3718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc.i.i unwind label %bb.ba, !noalias !3719 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !3720)
  call void @llvm.experimental.noalias.scope.decl(metadata !3721), !noalias !3722
  %i.co = lshr i64 %i.cn, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !3723, !noalias !3724, !noundef !5 ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !alias.scope !3723, !noalias !3724, !nonnull !5, !noundef !5 ; 2 uses
  %i.ct = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.val2.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3713, !noalias !3725 ; 2 uses
  %.val.val.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3713, !noalias !3725, !nonnull !5
  %i.cv = shl nuw i64 %.val.val2.i.i.i.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.noexc.i.i
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.dj, %bb.r ] ; 2 uses
  %.pn.i.i = phi i64 [ %i.cn, %.noexc.i.i ], [ %i.dk, %bb.r ]
  %.sroa.03.0.i.i.i = and i64 %.pn.i.i, %i.cr     ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.03.0.i.i.i
  %.sroa.0.0.copyload.i33.i.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !3726 ; 2 uses
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, %i.cu
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i.not45.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread.i.i
  %.sroa.011.046.i.i = phi i16 [ %i.dc, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread.i.i ], [ %i.cy, %bb.p ] ; 3 uses
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = add i16 %.sroa.011.046.i.i, -1
  %i.dc = and i16 %i.db, %.sroa.011.046.i.i       ; 2 uses
  %i.dd = add i64 %.sroa.03.0.i.i.i, %i.da        ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.sroa.03.0.i.i.i
  br i1 %i.de, label %.invoke.i, label %bb.s

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread.i.i, %bb.p
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, splat (i8 -1)
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %select.unfold.i.i, !prof !7

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.di = icmp eq i64 %.sroa.07.0.i.i.i, -16
  br i1 %i.di, label %.invoke.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = add nuw i64 %.sroa.07.0.i.i.i, 16       ; 2 uses
  %i.dk = add i64 %.sroa.03.0.i.i.i, %i.dj        ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.03.0.i.i.i
  br i1 %i.dl, label %.invoke.i, label %bb.p

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.dm = and i64 %i.dd, %i.cr
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.dp, align 8, !noalias !3727, !noundef !5 ; 2 uses
  %i.dq = getelementptr i8, ptr %.val2.i.i.i, i64 16
  %.val2.val3.i.i.i = load i64, ptr %i.dq, align 8, !noalias !3727, !noundef !5
  %i.dr = icmp eq i64 %.val.val2.i.i.i.i, %.val2.val3.i.i.i
  br i1 %i.dr, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.i.i: ; preds = %bb.s
  %i.ds = getelementptr i8, ptr %.val2.i.i.i, i64 8
  %.val2.val.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !3727, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.val.i.i.i.i, ptr nonnull readonly %.val2.val.i.i.i, i64 %i.cv), !noalias !3727
  %i.dt = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dt, label %.noexc7.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread.i.i, !prof !10

.invoke.i:                                        ; preds = %bb.r, %bb.q, %.lr.ph.i.i
  %i.du = phi ptr [ @2923, %.lr.ph.i.i ], [ @2921, %bb.q ], [ @2922, %bb.r ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du) #37
          to label %.cont.i unwind label %bb.ba, !noalias !3728

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.i.i, %bb.s
  %.not.i.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.noexc7.i.i:                                      ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0B3m_.exit.i.i
  %i.dv = getelementptr inbounds i8, ptr %i.do, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3715
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !3719, !nonnull !5, !noundef !5 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull %i.dx, i64 noundef 11)
          to label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE13capturing_putB1z_.exit.i unwind label %bb.t, !noalias !3729

bb.t:                                             ; preds = %.noexc7.i.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !noalias !3729
  unreachable

select.unfold.i.i:                                ; preds = %._crit_edge.i.i
  %.pre.i.i = load i64, ptr %i.w, align 8, !alias.scope !3730, !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3715
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !3718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !3732
  call void @llvm.experimental.noalias.scope.decl(metadata !3733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !range !32, !alias.scope !3730, !noalias !3731, !noundef !5
  %i.eb = icmp eq i64 %.pre.i.i, %i.ea
  br i1 %i.eb, label %bb.w, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i, %select.unfold.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3734
  store i64 -1, ptr %i.c, align 8, !noalias !3734
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3735
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !3736
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3737
  %i.ec = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #40, !noalias !3737 ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.v, label %bb.y, !prof !7

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc.i.i.i unwind label %bb.x, !noalias !3737

.noexc.i.i.i:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %select.unfold.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3734
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !3730, !noalias !3731, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 112
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !3737, !noundef !5
  store ptr %i.eh, ptr %i.e, align 8, !noalias !3734
  %i.ei = invoke fastcc ptr @_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEE12remove_entryBO_EB3i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %._crit_edge unwind label %bb.ad ; 7 uses

bb.x:                                             ; preds = %bb.v
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.c) #35
          to label %.body.thread unwind label %bb.z, !noalias !3737

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ec, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.i.i.i, i64 112, i1 false), !noalias !3737
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.023.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !3738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3734
  br label %bb.af

bb.z:                                             ; preds = %bb.ae, %bb.ad, %bb.x
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3739
  unreachable

._crit_edge:                                      ; preds = %bb.w
  %.not.i8.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i8.i.i, label %bb.ab, label %bb.aa, !prof !7

bb.aa:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !3740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3741
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.em, ptr noundef nonnull align 8 dereferenceable(88) %i.el, i64 88, i1 false), !noalias !3740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.el, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !3742
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 120
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !3740, !noundef !5 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 112 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !3740, !noundef !5
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  store ptr %i.eo, ptr %i.er, align 8, !noalias !3740
  %i.es = load ptr, ptr %i.ep, align 8, !noalias !3740, !noundef !5
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  store ptr %i.es, ptr %i.et, align 8, !noalias !3740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.023.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !3738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3734
  br label %bb.af

bb.ab:                                            ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2846) #36
          to label %bb.ac unwind label %bb.ad, !noalias !3740

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.w, %bb.ab
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f) #35
          to label %bb.ae unwind label %bb.z, !noalias !3742

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #35
          to label %.body.thread unwind label %bb.z, !noalias !3739

bb.af:                                            ; preds = %bb.aa, %bb.y
  %.sroa.5.0.i.i = phi ptr [ %i.ei, %bb.aa ], [ %i.ec, %bb.y ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.023.i.i, i64 112, i1 false), !noalias !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023.i.i)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !3743, !noalias !3744, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !3719, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 120 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8, !noalias !3719
  %i.fa = load ptr, ptr %i.ev, align 8, !alias.scope !3743, !noalias !3744, !noundef !5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 112
  store ptr %i.fa, ptr %i.fb, align 8, !noalias !3719
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  store ptr %.sroa.5.0.i.i, ptr %i.fc, align 8, !noalias !3719
  %i.fd = load ptr, ptr %i.ez, align 8, !noalias !3719, !noundef !5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  store ptr %.sroa.5.0.i.i, ptr %i.fe, align 8, !noalias !3719
  call void @llvm.experimental.noalias.scope.decl(metadata !3745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3715
  store ptr %.sroa.5.0.i.i, ptr %i.b, align 8, !noalias !3746
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fg = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ff, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc10.i.i unwind label %bb.ay, !noalias !3719 ; 2 uses

.noexc10.i.i:                                     ; preds = %bb.af
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !3747, !noalias !3748, !noundef !5
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ag, label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i, !prof !7

bb.ag:                                            ; preds = %.noexc10.i.i
  %i.fk = invoke { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ff, i1 noundef zeroext true) #39
          to label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i unwind label %bb.ay, !noalias !3719 ; 0 uses

_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i: ; preds = %bb.ag, %.noexc10.i.i
  %.val.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !3749, !noalias !3750, !nonnull !5, !noundef !5 ; 9 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !3749, !noalias !3750, !noundef !5 ; 4 uses
  %i.fm = lshr i64 %i.fg, 57
  %i.fn = trunc nuw nsw i64 %i.fm to i8           ; 3 uses
  %i.fo = insertelement <16 x i8> poison, i8 %i.fn, i64 0
  %i.fp = shufflevector <16 x i8> %i.fo, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fq = getelementptr i8, ptr %.sroa.5.0.i.i, i64 16
  %i.fr = getelementptr i8, ptr %.sroa.5.0.i.i, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.an, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.fg, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i ], [ %i.gt, %bb.an ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i ], [ %.sroa.4.127.i.i.i.i.i, %bb.an ]
  %.sroa.03.0.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i ], [ %.sroa.03.129.i.i.i.i.i, %bb.an ]
  %i.fs = phi i64 [ 0, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_.exit.i.i.i.i ], [ %i.gs, %bb.an ] ; 2 uses
  %.sroa.0.018.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val5.i.i.i.i ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.018.i.i.i.i.i
  %.sroa.0.0.copyload.i34.i.i.i.i.i = load <16 x i8>, ptr %i.ft, align 1, !noalias !3751 ; 3 uses
  %i.fu = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i.i, %i.fp
  %i.fv = bitcast <16 x i1> %i.fu to i16          ; 2 uses
  %.not.i.i35.i.i.i.i = icmp eq i16 %i.fv, 0
  br i1 %.not.i.i35.i.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit.backedge.i.i.i.i
  %.sroa.02.0.i36.i.i.i.i = phi i16 [ %i.gw, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit.backedge.i.i.i.i ], [ %i.fv, %bb.ah ] ; 3 uses
  %i.fw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.i36.i.i.i.i, i1 true)
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = add i64 %.sroa.0.018.i.i.i.i.i, %i.fx   ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %.sroa.0.018.i.i.i.i.i
  br i1 %i.fz, label %.invoke.i.i, label %bb.ao

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit._crit_edge.i.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit.backedge.i.i.i.i, %bb.ah
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.03.0.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit._crit_edge.i.i.i.i
  %i.ga = icmp slt <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i.i, zeroinitializer
  %i.gb = bitcast <16 x i1> %i.ga to i16          ; 2 uses
  %.not.i18.i.i.i.i.i = icmp eq i16 %i.gb, 0
  br i1 %.not.i18.i.i.i.i.i, label %bb.ak, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  %i.gc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gb, i1 true)
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = add i64 %.sroa.0.018.i.i.i.i.i, %i.gd   ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.sroa.0.018.i.i.i.i.i
  br i1 %i.gf, label %.invoke.i.i, label %.thread31.i.i.i.i.i

.thread31.i.i.i.i.i:                              ; preds = %bb.aj
  %i.gg = and i64 %i.ge, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread31.i.i.i.i.i, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit._crit_edge.i.i.i.i
  %.sroa.4.128.i.i.i.i.i = phi i64 [ %i.gg, %.thread31.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit._crit_edge.i.i.i.i ] ; 3 uses
  %i.gh = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i.i.i.i.i, splat (i8 -1)
  %i.gi = bitcast <16 x i1> %i.gh to i16
  %i.gj = icmp eq i16 %i.gi, 0
  br i1 %i.gj, label %bb.ak, label %bb.al, !prof !7

bb.ak:                                            ; preds = %.thread.i.i.i.i.i, %bb.ai
  %.sroa.03.129.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.ai ]
  %.sroa.4.127.i.i.i.i.i = phi i64 [ %.sroa.4.128.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ]
  %i.gk = icmp eq i64 %i.fs, -16
  br i1 %i.gk, label %.invoke.i.i, label %bb.an

bb.al:                                            ; preds = %.thread.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.4.128.i.i.i.i.i
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !3752, !noundef !5 ; 2 uses
  %i.gn = icmp sgt i8 %i.gm, -1
  br i1 %i.gn, label %bb.am, label %bb.ap, !prof !7

bb.am:                                            ; preds = %bb.al
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !3752
  %i.go = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.gp = bitcast <16 x i1> %i.go to i16          ; 2 uses
  %.not.i22.i.i.i.i.i = icmp ne i16 %i.gp, 0
  %i.gq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gp, i1 true)
  %i.gr = zext nneg i16 %i.gq to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.gr
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !3753
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.gs = add nuw i64 %i.fs, 16                   ; 2 uses
  %i.gt = add i64 %i.gs, %.sroa.0.018.i.i.i.i.i   ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %.sroa.0.018.i.i.i.i.i
  br i1 %i.gu, label %.invoke.i.i, label %bb.ah

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gv = add i16 %.sroa.02.0.i36.i.i.i.i, -1
  %i.gw = and i16 %i.gv, %.sroa.02.0.i36.i.i.i.i  ; 2 uses
  %i.gx = and i64 %i.fy, %.val5.i.i.i.i
  %i.gy = sub nsw i64 0, %i.gx                    ; 2 uses
  %i.gz = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -16
  %.val2.i.i.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !3754, !noundef !5 ; 2 uses
  %i.hb = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 16
  %.val2.val3.i.i.i.i.i = load i64, ptr %i.hb, align 8, !noalias !3754, !noundef !5 ; 2 uses
  %.val.val2.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !noalias !3755, !noundef !5
  %i.hc = icmp eq i64 %.val.val2.i.i.i.i.i.i, %.val2.val3.i.i.i.i.i
  br i1 %i.hc, label %.split.i.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit.backedge.i.i.i.i, !prof !9

.split.i.i.i.i:                                   ; preds = %bb.ao
  %i.hd = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 8
  %.val2.val.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !noalias !3754, !nonnull !5, !noundef !5
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !3755, !nonnull !5, !noundef !5
  %i.he = shl nuw i64 %.val2.val3.i.i.i.i.i, 2
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.val.i.i.i.i.i.i, ptr nonnull readonly %.val2.val.i.i.i.i.i, i64 %i.he), !noalias !3754
  %i.hf = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hf, label %.loopexit.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit.backedge.i.i.i.i, !prof !8

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.ao
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gw, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4I_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.hg = phi i8 [ %.pre.i.i.i, %bb.am ], [ %i.gm, %bb.al ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.gr, %bb.am ], [ %.sroa.4.128.i.i.i.i.i, %bb.al ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  %i.hh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.hi = and i8 %i.hg, 1
  %i.hj = zext nneg i8 %i.hi to i64               ; 2 uses
  %i.hk = load i64, ptr %i.fh, align 8, !alias.scope !3758, !noalias !3744, !noundef !5 ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  br i1 %i.hl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = sub nuw i64 %i.hk, %i.hj
  store i64 %i.hm, ptr %i.fh, align 8, !alias.scope !3758, !noalias !3744
  %i.hn = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.ho = and i64 %i.hn, %.val5.i.i.i.i           ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, -17
  br i1 %i.hp, label %.invoke.i.i, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2925) #37
          to label %.noexc16.i.i unwind label %bb.ay, !noalias !3719

.noexc16.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  store i8 %i.fn, ptr %i.hh, align 1, !noalias !3759
  %i.hq = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.ho
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  store i8 %i.fn, ptr %i.hr, align 1, !noalias !3759
  %i.hs = load i64, ptr %i.w, align 8, !alias.scope !3758, !noalias !3744, !noundef !5 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, -1
  br i1 %i.ht, label %.invoke.i.i, label %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE22insert_tagged_at_indexB3j_.exit.i.i.i

.invoke.i.i:                                      ; preds = %bb.an, %bb.ak, %bb.aj, %.lr.ph.i.i.i.i, %bb.as, %bb.aq
  %i.hu = phi ptr [ @23, %bb.aq ], [ @2926, %bb.as ], [ @2928, %.lr.ph.i.i.i.i ], [ @2921, %bb.ak ], [ @2922, %bb.an ], [ @2927, %bb.aj ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hu) #37
          to label %.cont.i.i unwind label %bb.ay, !noalias !3719

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE22insert_tagged_at_indexB3j_.exit.i.i.i: ; preds = %bb.as
  %i.hv = add nuw i64 %i.hs, 1
  store i64 %i.hv, ptr %i.w, align 8, !alias.scope !3758, !noalias !3744
  %i.hw = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i  ; 2 uses
  %i.hx = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -16
  store ptr %.sroa.5.0.i.i, ptr %i.hy, align 8, !noalias !3753
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.split.i.i.i.i, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE22insert_tagged_at_indexB3j_.exit.i.i.i
  %i.hz = phi i64 [ %i.hw, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE22insert_tagged_at_indexB3j_.exit.i.i.i ], [ %i.gy, %.split.i.i.i.i ]
  %i.ia = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -8
  store ptr %.sroa.5.0.i.i, ptr %i.ib, align 8, !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3715
  %.sroa.024.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !3715 ; 2 uses
  %.not.i19.i.i = icmp eq i64 %.sroa.024.0.copyload.i.i, -1
  br i1 %.not.i19.i.i, label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE13capturing_putB1z_.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3760
  store i64 %.sroa.024.0.copyload.i.i, ptr %i.a, align 8, !noalias !3761
  %.sroa.6.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx27.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i.i, i64 104, i1 false), !noalias !3715
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %bb.au, !noalias !3762

bb.au:                                            ; preds = %bb.at
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %.body.i.i.i.i unwind label %bb.av, !noalias !3762

bb.av:                                            ; preds = %bb.au
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3762
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1z_.exit.i.i.i unwind label %bb.aw, !noalias !3762

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.au
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ie, %bb.aw ], [ %i.ic, %bb.au ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.if) #35
          to label %.body.thread unwind label %bb.ax, !noalias !3762

bb.ax:                                            ; preds = %.body.i.i.i.i
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3762
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1z_.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3760
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE13capturing_putB1z_.exit.thread.i

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE13capturing_putB1z_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1z_.exit.i.i.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3715
  br label %.thread

bb.ay:                                            ; preds = %.invoke.i.i, %bb.ar, %bb.ag, %bb.af
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.h) #35
          to label %.body.thread unwind label %bb.az, !noalias !3719

bb.az:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3729
  unreachable

bb.ba:                                            ; preds = %.invoke.i, %bb.o
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.m) #35
          to label %bb.bb unwind label %bb.az, !noalias !3729

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #35
          to label %.body.thread unwind label %bb.az, !noalias !3729

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE13capturing_putB1z_.exit.i: ; preds = %.noexc7.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !3729, !noundef !5 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.dw, i64 112 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !noalias !3729, !noundef !5
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 120
  store ptr %i.il, ptr %i.io, align 8, !noalias !3729
  %i.ip = load ptr, ptr %i.im, align 8, !noalias !3729, !noundef !5
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 112
  store ptr %i.ip, ptr %i.iq, align 8, !noalias !3729
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !3743, !noalias !3744, !noundef !5
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 120
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !3729, !noundef !5
  store ptr %i.iu, ptr %i.ik, align 8, !noalias !3729
  %i.iv = load ptr, ptr %i.ir, align 8, !alias.scope !3743, !noalias !3744, !noundef !5 ; 2 uses
  store ptr %i.iv, ptr %i.im, align 8, !noalias !3729
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  store ptr %i.dw, ptr %i.iw, align 8, !noalias !3729
  %i.ix = load ptr, ptr %i.ik, align 8, !noalias !3729, !noundef !5
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 112
  store ptr %i.dw, ptr %i.iy, align 8, !noalias !3729
  %.sroa.07.0.copyload.i = load i64, ptr %i.n, align 8, !alias.scope !3713, !noalias !3718 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !3725
  %.sroa.48.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.48.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.48.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !3763
  %.not.i = icmp eq i64 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE13capturing_putB1z_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3764
end_hunk_6
