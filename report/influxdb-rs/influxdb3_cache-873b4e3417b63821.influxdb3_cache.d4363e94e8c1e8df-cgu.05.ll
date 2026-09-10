Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.05?download=true
inline.NumInlined: 772
inline.NumDeleted: 421
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs1LivM9IBWqb_12object_store4path4PathINtNtCshxQpDNzqVNo_7dashmap4util11SharedValueNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache10CacheEntryEEE14reserve_rehashNCNvXs2_B1J_INtB1J_7DashMapBY_B2n_EINtNtB1J_1t3MapBY_B2n_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6__entrys_0EB2r_:bb.a
  %i.ax = sub nuw i64 -9223372036854775808, %i.am
  %i.ay = icmp ule i64 %i.av, %i.ax
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ba = icmp eq i64 %i.av, 0
  br i1 %i.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsidB8gjke19X_15influxdb3_cache.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at
  %i.bc = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bb
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.am) #24, !noalias !269
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsidB8gjke19X_15influxdb3_cache.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsc96bKABWO34_9hashbrown3raw5inner13RawTableInnerECsidB8gjke19X_15influxdb3_cache.exit, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !262
  br label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsidB8gjke19X_15influxdb3_cache.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.0125, %.preheader ], [ %i.af, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.0127, %.preheader ], [ %i.ag, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0128, %.preheader ], [ %i.ad, %.noexc3 ]
  %i.bd = add i16 %.sroa.13.1.lcssa, -1
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf         ; 2 uses
  %i.bi = add i64 %.sroa.9.0126, -1               ; 2 uses
  %i.bj = call fastcc noundef i64 @_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs1LivM9IBWqb_12object_store4path4PathINtNtCshxQpDNzqVNo_7dashmap4util11SharedValueNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache10CacheEntryEEE14reserve_rehashNCNvXs2_B1L_INtB1L_7DashMapB10_B2p_EINtNtB1L_1t3MapB10_B2p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6__entrys_0E0B2t_(ptr noundef nonnull %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bh) ; 2 uses
  %.sroa.0.07.i = and i64 %i.v, %i.bj             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !270
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i13, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bm, %._crit_edge ], [ %i.cd, %.lr.ph.i ]
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.0.0.lcssa.i, %i.bo
  %i.bq = and i64 %i.bp, %i.v                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !3
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.i, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.bu = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bv, 0
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bv, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.by = phi i64 [ %i.bz, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.bz = add i64 %i.by, 16                       ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.010.i
  %.sroa.0.0.i13 = and i64 %i.ca, %i.v            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i13
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !270
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bx, %bb.i ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %i.ce = lshr i64 %i.bj, 57
  %i.cf = trunc nuw nsw i64 %i.ce to i8           ; 2 uses
  %i.cg = add i64 %.sroa.0.0.i5.i, -16
  %i.ch = and i64 %i.cg, %i.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.cf, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %i.s, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i8 %i.cf, ptr %i.ck, align 1
  %i.cl = load ptr, ptr %0, align 8, !alias.scope !263, !noalias !264, !nonnull !3, !noundef !3
  %.neg.i.i = mul i64 %i.bh, -56
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.neg.i.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 -56
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -56
  %i.co = getelementptr i8, ptr %i.s, i64 %.neg62.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.cp, ptr noundef nonnull align 1 dereferenceable(56) %i.cn, i64 56, i1 false)
  %i.cq = icmp eq i64 %i.bi, 0
  br i1 %i.cq, label %._crit_edge129.loopexit, label %.preheader

bb.j:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %.val10 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.j
  %i.cr = lshr i64 %i.n, 4
  %i.cs = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.cs, 0
  %i.ct = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.k

._crit_edge.i16.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i16, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i16.unr-lcssa, %.lr.ph.i14
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dc, %._crit_edge.i16.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.cv = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cx, ptr %i.cv, align 16
  br label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %._crit_edge.i16.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.n, 16
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i14.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dc, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.k ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  %i.dc = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dg, ptr %i.de, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i16.unr-lcssa, label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i16, %bb.j
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i16, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i16 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i16 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val10, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr13drop_in_placeTNtNtCs1LivM9IBWqb_12object_store4path4PathINtNtCshxQpDNzqVNo_7dashmap4util11SharedValueNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache10CacheEntryEEEB2a_, ptr %i.di, align 8, !noalias !272
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 56, ptr %i.dj, align 8, !noalias !272
  store ptr %0, ptr %i.a, align 8, !noalias !272
  %i.dk = load i64, ptr %i.k, align 8, !alias.scope !271, !noalias !260, !noundef !3 ; 2 uses
  %.not130 = icmp eq i64 %i.dk, -1
  br i1 %.not130, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.x
  %.sroa.04.0.i119 = phi i64 [ %i.dl, %bb.x ], [ 0, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 9 uses
  %i.dl = add nuw i64 %.sroa.04.0.i119, 1         ; 2 uses
  %i.dm = load ptr, ptr %0, align 8, !noalias !260, !nonnull !3, !noundef !3 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i119
  %i.do = load i8, ptr %i.dn, align 1, !noalias !260, !noundef !3
  %i.dp = icmp eq i8 %i.do, -128
  br i1 %i.dp, label %bb.l, label %bb.x

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = mul i64 %i.dl, -56
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %.neg.i ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i119
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.w, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.ds = load ptr, ptr %0, align 8, !alias.scope !273, !noalias !274, !nonnull !3, !noundef !3 ; 8 uses
  %i.dt = getelementptr inbounds [56 x i8], ptr %i.ds, i64 %i.dr ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !275, !nonnull !3, !align !8, !noundef !3
  %i.du = getelementptr i8, ptr %i.dt, i64 -48
  %.val2.i = load ptr, ptr %i.du, align 8, !noalias !275, !nonnull !3, !noundef !3 ; 4 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 -40
  %.val3.i = load i64, ptr %i.dv, align 8, !noalias !275, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val.i, align 8, !noalias !275, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.val.i.i17 = load i64, ptr %i.dx, align 8, !noalias !275, !noundef !3 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 32
  %.val1.i.i18 = load i64, ptr %i.dy, align 8, !noalias !275, !noundef !3 ; 2 uses
  %i.dz = xor i64 %.val.i.i17, 8317987319222330741 ; 2 uses
  %i.ea = xor i64 %.val1.i.i18, 7237128888997146477 ; 2 uses
  %i.eb = xor i64 %.val.i.i17, 7816392313619706465 ; 2 uses
  %i.ec = xor i64 %.val1.i.i18, 8387220255154660723 ; 2 uses
  %i.ed = and i64 %.val3.i, 7                     ; 7 uses
  %i.ee = and i64 %.val3.i, -8                    ; 2 uses
  %.not = icmp eq i64 %i.ee, 0
  br i1 %.not, label %._crit_edge.i62, label %.lr.ph.i55

._crit_edge.i62.loopexit:                         ; preds = %.lr.ph.i55
  %i.ef = and i64 %.val3.i, -8
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.i62.loopexit, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.32.4 = phi i64 [ %i.ec, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fl, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.ea, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fj, %._crit_edge.i62.loopexit ] ; 6 uses
  %.sroa.12.4 = phi i64 [ %i.eb, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fm, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.071.4 = phi i64 [ %i.dz, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fn, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i45 = phi i64 [ 0, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.ef, %._crit_edge.i62.loopexit ] ; 3 uses
  %i.eg = icmp samesign ugt i64 %i.ed, 3
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.sroa.0.1.lcssa.i45
  %.sroa.014.0.copyload.i17.i54 = load i32, ptr %i.eh, align 1, !alias.scope !276, !noalias !277
  %i.ei = zext i32 %.sroa.014.0.copyload.i17.i54 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i62
  %.sroa.03.0.i11.i46 = phi i64 [ 4, %bb.m ], [ 0, %._crit_edge.i62 ] ; 5 uses
  %.sroa.0.0.i12.i47 = phi i64 [ %i.ei, %bb.m ], [ 0, %._crit_edge.i62 ] ; 2 uses
  %i.ej = or disjoint i64 %.sroa.03.0.i11.i46, 1
  %i.ek = icmp samesign ult i64 %i.ej, %i.ed
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = getelementptr i8, ptr %.val2.i, i64 %.sroa.0.1.lcssa.i45
  %i.em = getelementptr i8, ptr %i.el, i64 %.sroa.03.0.i11.i46
  %.sroa.015.0.copyload.i16.i53 = load i16, ptr %i.em, align 1, !alias.scope !276, !noalias !277
  %i.en = zext i16 %.sroa.015.0.copyload.i16.i53 to i64
  %i.eo = shl nuw nsw i64 %.sroa.03.0.i11.i46, 3
  %i.ep = shl nuw nsw i64 %i.en, %i.eo
  %i.eq = or i64 %i.ep, %.sroa.0.0.i12.i47
  %i.er = or disjoint i64 %.sroa.03.0.i11.i46, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.03.1.i13.i48 = phi i64 [ %i.er, %bb.o ], [ %.sroa.03.0.i11.i46, %bb.n ] ; 3 uses
  %.sroa.0.1.i14.i49 = phi i64 [ %i.eq, %bb.o ], [ %.sroa.0.0.i12.i47, %bb.n ] ; 2 uses
  %i.es = icmp samesign ult i64 %.sroa.03.1.i13.i48, %i.ed
  br i1 %i.es, label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64

.lr.ph.i55:                                       ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i55
  %i.et = phi i64 [ %i.fm, %.lr.ph.i55 ], [ %i.eb, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.eu = phi i64 [ %i.fj, %.lr.ph.i55 ], [ %i.ea, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ] ; 3 uses
  %i.ev = phi i64 [ %i.fl, %.lr.ph.i55 ], [ %i.ec, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %.sroa.0.119.i60 = phi i64 [ %i.fo, %.lr.ph.i55 ], [ 0, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ] ; 2 uses
  %i.ew = phi i64 [ %i.fn, %.lr.ph.i55 ], [ %i.dz, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.sroa.0.119.i60
  %.sroa.07.0.copyload.i61 = load i64, ptr %i.ex, align 1, !alias.scope !278, !noalias !277 ; 2 uses
  %i.ey = xor i64 %.sroa.07.0.copyload.i61, %i.ev ; 3 uses
  %i.ez = add i64 %i.ew, %i.eu                    ; 3 uses
  %i.fa = add i64 %i.ey, %i.et                    ; 2 uses
  %i.fb = call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 13)
  %i.fc = xor i64 %i.ez, %i.fb                    ; 3 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 16)
  %i.fe = xor i64 %i.fa, %i.fd                    ; 3 uses
  %i.ff = call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 32)
  %i.fg = add i64 %i.fa, %i.fc                    ; 3 uses
  %i.fh = add i64 %i.fe, %i.ff                    ; 2 uses
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 17)
  %i.fj = xor i64 %i.fg, %i.fi                    ; 2 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 21)
  %i.fl = xor i64 %i.fk, %i.fh                    ; 2 uses
  %i.fm = call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 32) ; 2 uses
  %i.fn = xor i64 %i.fh, %.sroa.07.0.copyload.i61 ; 2 uses
  %i.fo = add nuw i64 %.sroa.0.119.i60, 8         ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.ee
  br i1 %i.fp, label %.lr.ph.i55, label %._crit_edge.i62.loopexit

_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64: ; preds = %bb.p
  %4 = icmp eq i64 %i.ed, 0
  br i1 %4, label %bb.r, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a

_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64
  %5 = shl nuw nsw i64 %i.ed, 3
  %6 = shl nuw nsw i64 255, %5
  %7 = or i64 %6, %.sroa.0.1.i14.i49
  br label %bb.r

_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.p
  %8 = add i64 %.sroa.03.1.i13.i48, %.sroa.0.1.lcssa.i45 ; 2 uses
  %9 = icmp ult i64 %8, %.val3.i
  call void @llvm.assume(i1 %9), !noalias !275
  %10 = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %8
  %11 = load i8, ptr %10, align 1, !alias.scope !276, !noalias !277, !noundef !3
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %.sroa.03.1.i13.i48, 3
  %14 = shl nuw nsw i64 %12, %13
  %i.fq = shl nuw nsw i64 %i.ed, 3
  %i.fr = shl nuw i64 255, %i.fq
  %15 = or i64 %14, %i.fr
  %i.fs = or i64 %15, %.sroa.0.1.i14.i49          ; 3 uses
  %.not99 = icmp eq i64 %i.ed, 7
  br i1 %.not99, label %.thread, label %bb.r

.thread:                                          ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i
  %i.ft = xor i64 %i.fs, %.sroa.32.4              ; 3 uses
  %i.fu = add i64 %.sroa.071.4, %.sroa.22.4       ; 3 uses
  %i.fv = add i64 %i.ft, %.sroa.12.4              ; 2 uses
  %i.fw = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.fx = xor i64 %i.fu, %i.fw                    ; 3 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 16)
  %i.fz = xor i64 %i.fv, %i.fy                    ; 3 uses
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 32)
  %i.gb = add i64 %i.fv, %i.fx                    ; 3 uses
  %i.gc = add i64 %i.fz, %i.ga                    ; 2 uses
  %i.gd = call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 17)
  %i.ge = xor i64 %i.gb, %i.gd
  %i.gf = call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 21)
  %i.gg = xor i64 %i.gf, %i.gc
  %i.gh = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 32)
  %i.gi = xor i64 %i.gc, %i.fs
  br label %bb.r

bb.q:                                             ; preds = %bb.w
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardQNtNtNtBG_3raw5inner13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.a) #25
          to label %bb.z unwind label %bb.y, !noalias !260

bb.r:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64, %.thread, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i
  %.sroa.50.0 = phi i64 [ %i.fs, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i ], [ %7, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64 ]
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.32.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a ], [ %i.gg, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64 ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.22.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a ], [ %i.ge, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64 ] ; 3 uses
  %.sroa.12.2 = phi i64 [ %.sroa.12.4, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.12.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a ], [ %i.gh, %.thread ], [ %.sroa.12.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64 ]
  %.sroa.071.2 = phi i64 [ %.sroa.071.4, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.071.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64.a ], [ %i.gi, %.thread ], [ %.sroa.071.4, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsidB8gjke19X_15influxdb3_cache.exit64 ]
  %16 = shl i64 %.val3.i, 56
  %17 = add i64 %16, 72057594037927936
  %i.gk = or i64 %17, %.sroa.50.0                 ; 2 uses
  %i.gl = xor i64 %i.gk, %.sroa.32.2              ; 3 uses
  %i.gm = add i64 %.sroa.071.2, %.sroa.22.2       ; 3 uses
  %i.gn = add i64 %.sroa.12.2, %i.gl              ; 2 uses
  %i.go = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.gp = xor i64 %i.gm, %i.go                    ; 3 uses
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 16)
  %i.gr = xor i64 %i.gn, %i.gq                    ; 3 uses
  %i.gs = call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 32)
  %i.gt = add i64 %i.gp, %i.gn                    ; 3 uses
  %i.gu = add i64 %i.gs, %i.gr                    ; 2 uses
  %i.gv = call noundef i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 17)
  %i.gw = xor i64 %i.gt, %i.gv                    ; 3 uses
  %i.gx = call noundef i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 21)
  %i.gy = xor i64 %i.gu, %i.gx                    ; 3 uses
  %i.gz = call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 32)
  %i.ha = xor i64 %i.gu, %i.gk
  %i.hb = xor i64 %i.gz, 255
  %i.hc = add i64 %i.ha, %i.gw                    ; 3 uses
  %i.hd = add i64 %i.hb, %i.gy                    ; 2 uses
  %i.he = call noundef i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 13)
  %i.hf = xor i64 %i.hc, %i.he                    ; 3 uses
  %i.hg = call noundef i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 16)
  %i.hh = xor i64 %i.hd, %i.hg                    ; 3 uses
  %i.hi = call noundef i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 32)
  %i.hj = add i64 %i.hf, %i.hd                    ; 3 uses
  %i.hk = add i64 %i.hh, %i.hi                    ; 2 uses
  %i.hl = call noundef i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 17)
  %i.hm = xor i64 %i.hj, %i.hl                    ; 3 uses
  %i.hn = call noundef i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 21)
  %i.ho = xor i64 %i.hn, %i.hk                    ; 3 uses
  %i.hp = call noundef i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 32)
  %i.hq = add i64 %i.hm, %i.hk                    ; 3 uses
  %i.hr = add i64 %i.ho, %i.hp                    ; 2 uses
  %i.hs = call noundef i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 13)
  %i.ht = xor i64 %i.hs, %i.hq                    ; 3 uses
  %i.hu = call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 16)
  %i.hv = xor i64 %i.hu, %i.hr                    ; 3 uses
  %i.hw = call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 32)
  %i.hx = add i64 %i.ht, %i.hr                    ; 3 uses
  %i.hy = add i64 %i.hv, %i.hw                    ; 2 uses
  %i.hz = call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 17)
  %i.ia = xor i64 %i.hz, %i.hx                    ; 3 uses
  %i.ib = call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 21)
  %i.ic = xor i64 %i.ib, %i.hy                    ; 3 uses
  %i.id = call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 32)
  %i.ie = add i64 %i.ia, %i.hy
  %i.if = add i64 %i.ic, %i.id                    ; 2 uses
  %i.ig = call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 13)
  %i.ih = xor i64 %i.ig, %i.ie                    ; 3 uses
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 16)
  %i.ij = xor i64 %i.ii, %i.if                    ; 2 uses
  %i.ik = add i64 %i.ih, %i.if                    ; 3 uses
  %i.il = call noundef i64 @llvm.fshl.i64(i64 %i.ih, i64 %i.ih, i64 17)
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 21)
  %i.in = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 32)
  %i.io = xor i64 %i.il, %i.im
  %i.ip = xor i64 %i.io, %i.in
  %i.iq = xor i64 %i.ip, %i.ik                    ; 3 uses
  %.val8 = load i64, ptr %i.k, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i19 = and i64 %i.iq, %.val8         ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.0.07.i19
  %.sroa.0.0.copyload.i68.i20 = load <16 x i8>, ptr %i.ir, align 1, !noalias !279
  %i.is = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i20, zeroinitializer
  %i.it = bitcast <16 x i1> %i.is to i16          ; 2 uses
  %.not.i9.i21 = icmp eq i16 %i.it, 0
  br i1 %.not.i9.i21, label %.lr.ph.i28, label %._crit_edge.i22

._crit_edge.i22:                                  ; preds = %.lr.ph.i28, %bb.r
  %.sroa.0.0.lcssa.i23 = phi i64 [ %.sroa.0.07.i19, %bb.r ], [ %.sroa.0.0.i30, %.lr.ph.i28 ]
  %.lcssa.i24 = phi i16 [ %i.it, %bb.r ], [ %i.jk, %.lr.ph.i28 ]
  %i.iu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i24, i1 true)
  %i.iv = zext nneg i16 %i.iu to i64
  %i.iw = add i64 %.sroa.0.0.lcssa.i23, %i.iv
  %i.ix = and i64 %i.iw, %.val8                   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !noundef !3
  %i.ja = icmp sgt i8 %i.iz, -1
  br i1 %i.ja, label %bb.s, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit33

bb.s:                                             ; preds = %._crit_edge.i22
  %.val72.i.i26 = load <16 x i8>, ptr %i.ds, align 16
  %i.jb = icmp slt <16 x i8> %.val72.i.i26, zeroinitializer
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i6.i27 = icmp ne i16 %i.jc, 0
  %i.jd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jc, i1 true)
  %i.je = zext nneg i16 %i.jd to i64
  call void @llvm.assume(i1 %.not.i6.i27)
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit33

.lr.ph.i28:                                       ; preds = %bb.r, %.lr.ph.i28
  %.sroa.0.010.i29 = phi i64 [ %.sroa.0.0.i30, %.lr.ph.i28 ], [ %.sroa.0.07.i19, %bb.r ]
  %i.jf = phi i64 [ %i.jg, %.lr.ph.i28 ], [ 0, %bb.r ]
  %i.jg = add i64 %i.jf, 16                       ; 2 uses
  %i.jh = add i64 %i.jg, %.sroa.0.010.i29
  %.sroa.0.0.i30 = and i64 %i.jh, %.val8          ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.0.0.i30
  %.sroa.0.0.copyload.i6.i31 = load <16 x i8>, ptr %i.ji, align 1, !noalias !279
  %i.jj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i31, zeroinitializer
  %i.jk = bitcast <16 x i1> %i.jj to i16          ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.jk, 0
  br i1 %.not.i.i32, label %.lr.ph.i28, label %._crit_edge.i22

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit33: ; preds = %bb.s, %._crit_edge.i22
  %.sroa.0.0.i5.i25 = phi i64 [ %i.je, %bb.s ], [ %i.ix, %._crit_edge.i22 ] ; 4 uses
  %i.jl = sub i64 %.sroa.04.0.i119, %.sroa.0.07.i19
  %i.jm = sub i64 %.sroa.0.0.i5.i25, %.sroa.0.07.i19
  %i.jn = xor i64 %i.jm, %i.jl
  %.unshifted.i = and i64 %i.jn, %.val8
  %i.jo = icmp ult i64 %.unshifted.i, 16
  br i1 %i.jo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit33
  %.neg11.i = mul i64 %.sroa.0.0.i5.i25, -56
  %i.jp = getelementptr i8, ptr %i.ds, i64 %.neg11.i
  %i.jq = getelementptr i8, ptr %i.jp, i64 -56    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.0.0.i5.i25 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !noalias !260, !noundef !3
  %i.jt = lshr i64 %i.iq, 57
  %i.ju = trunc nuw nsw i64 %i.jt to i8           ; 2 uses
  %i.jv = add i64 %.sroa.0.0.i5.i25, -16
  %i.jw = and i64 %i.jv, %.val8
  store i8 %i.ju, ptr %i.jr, align 1, !noalias !260
  %i.jx = load ptr, ptr %0, align 8, !noalias !260, !nonnull !3, !noundef !3
  %i.jy = getelementptr i8, ptr %i.jx, i64 %i.jw
  %i.jz = getelementptr i8, ptr %i.jy, i64 16
  store i8 %i.ju, ptr %i.jz, align 1, !noalias !260
  %i.ka = icmp eq i8 %i.js, -1
  br i1 %i.ka, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit33
  %i.kb = lshr i64 %i.iq, 57
  %i.kc = trunc nuw nsw i64 %i.kb to i8           ; 2 uses
  %i.kd = add i64 %.sroa.04.0.i119, -16
  %i.ke = and i64 %.val8, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.04.0.i119
  store i8 %i.kc, ptr %i.kf, align 1, !noalias !260
  %i.kg = load ptr, ptr %0, align 8, !noalias !260, !nonnull !3, !noundef !3
  %i.kh = getelementptr i8, ptr %i.kg, i64 %i.ke
  %i.ki = getelementptr i8, ptr %i.kh, i64 16
  store i8 %i.kc, ptr %i.ki, align 1, !noalias !260
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.kj = add i64 %.sroa.04.0.i119, -16
  %i.kk = load i64, ptr %i.k, align 8, !noalias !260, !noundef !3
  %i.kl = and i64 %i.kk, %i.kj
  %i.km = load ptr, ptr %0, align 8, !noalias !260, !nonnull !3, !noundef !3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.04.0.i119
  store i8 -1, ptr %i.kn, align 1, !noalias !260
  %i.ko = load ptr, ptr %0, align 8, !noalias !260, !nonnull !3, !noundef !3
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.kl
  %i.kq = getelementptr i8, ptr %i.kp, i64 16
  store i8 -1, ptr %i.kq, align 1, !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.jq, ptr noundef nonnull align 1 dereferenceable(56) %i.dq, i64 56, i1 false), !noalias !260
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsidB8gjke19X_15influxdb3_cache(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.jq, i64 noundef 7)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.q

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i119, %i.dk
  br i1 %exitcond.not, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.y:                                             ; preds = %bb.q
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !260
  unreachable

bb.z:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.gj

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.x
  %.pre = load i64, ptr %i.k, align 8, !noalias !260 ; 2 uses
  %.pre154 = add i64 %.pre, 1
  %i.ks = lshr i64 %.pre154, 3
  %i.kt = mul nuw i64 %i.ks, 7
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.kt, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.ku = phi i64 [ %.pre, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.kv = icmp ult i64 %i.ku, 8
  %.sroa.01.0.i = select i1 %i.kv, i64 %i.ku, i64 %.pre-phi
  %i.kw = load i64, ptr %i.g, align 8, !noalias !260, !noundef !3
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ky = sub i64 %.sroa.01.0.i, %i.kw
  store i64 %i.ky, ptr %i.kx, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsidB8gjke19X_15influxdb3_cache.exit

bb.aa:                                            ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @64, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #26, !noalias !280
  unreachable

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsidB8gjke19X_15influxdb3_cache.exit, %bb.c, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.x, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsidB8gjke19X_15influxdb3_cache.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsidB8gjke19X_15influxdb3_cache.exit ]
end_hunk_0
