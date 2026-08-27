Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/salsa-182d72fa15673f0e.salsa.2f9093e19db0c7b6-cgu.0?download=true
inline.NumInlined: 4220
inline.NumDeleted: 1923
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !95

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !3
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !7325
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !97

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !3
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !3
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef nonnull align 8 ptr @_RNvMsb_NtCs45bxiIjzMqg_5salsa7storageNtB5_21CancellationFlagGuard3new(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  store atomic i8 1, ptr %i.a release, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7328, !noalias !7331, !noundef !3 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !7328, !noalias !7331, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7328, !noalias !7331 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7333)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #62, !noalias !7333
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 12                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 768614336404564649
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit.i, !prof !2076

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit45.i, !prof !2076

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !7333
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #63, !noalias !7333 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 12
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #63, !noalias !7333 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !7333
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !7333
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !7333
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !7333
  %i.x = mul i64 %.sink.i.i, 12                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBF_.exit.i, !prof !2076

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7336
  store i64 0, ptr %i.a, align 8, !noalias !7336
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !7336
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #62, !noalias !7336
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #63, !noalias !7333
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #62
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #62
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #62
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !7339, !noundef !3 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  br i1 %i.b, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !7339, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread, !prof !7342

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  %.sink9.i8 = phi i64 [ %i.d, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %.sink9.i8, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.e, label %bb.b, !prof !4

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit
    i64 0, label %bb.d
  ], !prof !7343

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #62
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #62
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #62
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !3   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7344, !noalias !7347, !nonnull !3 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !3 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #62
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit, label %bb.m, !prof !7349

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit
  %i.j = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.j, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45, label %bb.m, !prof !7349

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.k = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #63 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45: ; preds = %bb.g
  %i.m = shl nuw nsw i64 %.sink.i, 3
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.i) #63 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %or.cond.i = icmp ult i64 %i.b, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBF_.exit, label %bb.l, !prof !7349

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7350
  store i64 0, ptr %i.a, align 8, !noalias !7350
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #62, !noalias !7350
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBF_.exit: ; preds = %bb.k
  %i.r = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #63
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E21reserve_one_uncheckedCs45bxiIjzMqg_5salsa(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7353, !noalias !7356, !noundef !3 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !7353, !noalias !7356, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7353, !noalias !7356 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7358)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #62, !noalias !7358
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i, label %bb.p, !prof !7349

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i
  %i.q = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit45.i, label %bb.p, !prof !7349

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !7358
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #63, !noalias !7358 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 3
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.p) #63, !noalias !7358 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !7358
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !7358
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !7358
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(40) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(40) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !7358
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i, label %bb.n, !prof !7349

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7361
  store i64 0, ptr %i.a, align 8, !noalias !7361
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #62, !noalias !7361
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #63, !noalias !7358
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #62
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #62
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECs45bxiIjzMqg_5salsa.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #62
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7364, !noalias !7367, !noundef !3 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !7364, !noalias !7367, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7364, !noalias !7367 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7369)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #62, !noalias !7369
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i, label %bb.p, !prof !7349

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i
  %i.q = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit45.i, label %bb.p, !prof !7349

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !7369
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #63, !noalias !7369 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 4
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #63, !noalias !7369 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !7369
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !7369
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !7369
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !7369
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBG_5cycle14IterationStampEEBG_.exit.i, label %bb.n, !prof !7349

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7372
  store i64 0, ptr %i.a, align 8, !noalias !7372
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #62, !noalias !7372
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBG_5cycle14IterationStampEEBG_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #63, !noalias !7369
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #62
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #62
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs45bxiIjzMqg_5salsa.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBG_5cycle14IterationStampEEBG_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #62
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMse_NtCs45bxiIjzMqg_5salsa8internedNtB5_13RevisionQueue11record_cold(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr %0, align 8, !noalias !7375, !noundef !3 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.f, label %bb.d, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !noalias !7375, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !7375, !noundef !3
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i: ; preds = %bb.d, %bb.c
  %.sink10.i.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %.sink9.i.i = phi i64 [ %i.j, %bb.d ], [ %i.e, %bb.c ]
  %.not38 = icmp eq i64 %.sink9.i.i, 0
  br i1 %.not38, label %.invoke, label %bb.g

bb.e:                                             ; preds = %.invoke
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit unwind label %bb.p

bb.g:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i
  %i.n = load atomic i64, ptr %.sink10.i.i acquire, align 8 ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %.not = icmp ult i64 %i.n, %1
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %0, align 8, !noalias !7380, !noundef !3 ; 3 uses
  %i.q = icmp ugt i64 %i.p, 3
  br i1 %i.q, label %bb.i, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !7380, !noundef !3
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit

bb.j:                                             ; preds = %bb.g
  %i.t = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14.sink.split, !prof !8

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit: ; preds = %bb.i, %bb.h
  %.sink9.i = phi i64 [ %i.s, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.v = icmp ugt i64 %.sink9.i, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load i64, ptr %0, align 8, !noalias !7383
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  %i.x = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.p, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit ] ; 2 uses
  %i.y = icmp ugt i64 %i.x, 3
  br i1 %i.y, label %bb.k, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15

bb.k:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.g, align 8, !noalias !7383, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !7383, !noundef !3
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15: ; preds = %bb.k, %._crit_edge
  %.sink10.i.i16 = phi ptr [ %i.z, %bb.k ], [ %i.g, %._crit_edge ]
  %.sink9.i.i17 = phi i64 [ %i.ab, %bb.k ], [ %i.x, %._crit_edge ]
  %.not39 = icmp eq i64 %.sink9.i.i17, 0
  br i1 %.not39, label %.invoke, label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.042 = phi i64 [ %.sink9.i, %.lr.ph ], [ %i.ac, %bb.o ] ; 3 uses
  %i.ac = add i64 %.sroa.0.042, -1                ; 7 uses
  %i.ad = load i64, ptr %0, align 8, !noalias !7388, !noundef !3 ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 3
  br i1 %i.ae, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20: ; preds = %bb.l
  %i.af = load i64, ptr %i.w, align 8, !noalias !7388, !noundef !3 ; 3 uses
  %i.ag = icmp ult i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.n, label %.invoke

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread: ; preds = %bb.l
  %i.ah = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ah, label %.thread, label %.invoke

.thread:                                          ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread
  %i.ai = getelementptr [8 x i8], ptr %0, i64 %.sroa.0.042
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26

bb.m:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15
  store atomic i64 %1, ptr %.sink10.i.i16 release, align 8
  %i.aj = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.ak = extractvalue { i8, i1 } %i.aj, 1
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14.sink.split, !prof !8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14.sink.split: ; preds = %bb.m, %bb.j
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit14.sink.split, %bb.m, %bb.j
  ret void

bb.n:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20
  %i.al = load ptr, ptr %i.g, align 8, !noalias !7388, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ac
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26: ; preds = %.thread, %bb.n
  %i.an = phi ptr [ %i.am, %bb.n ], [ %i.ai, %.thread ]
  %.sink10.i.i27 = phi ptr [ %i.al, %bb.n ], [ %i.g, %.thread ]
  %.sink9.i.i28 = phi i64 [ %i.af, %bb.n ], [ %i.ad, %.thread ] ; 2 uses
  %i.ao = add i64 %.sroa.0.042, -2                ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.sink9.i.i28
  br i1 %i.ap, label %bb.o, label %.invoke

.invoke:                                          ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15
  %i.aq = phi i64 [ 0, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i ], [ 0, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15 ], [ %i.ac, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20 ], [ %i.ao, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26 ], [ %i.ac, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread ]
  %i.ar = phi i64 [ 0, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i ], [ 0, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15 ], [ %i.af, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20 ], [ %.sink9.i.i28, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26 ], [ %i.ad, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread ]
  %i.as = phi ptr [ @199, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i ], [ @200, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i15 ], [ @201, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20 ], [ @202, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26 ], [ @201, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i20.thread ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -1) %i.aq, i64 noundef range(i64 0, 1152921504606846976) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #62
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i26
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i27, i64 %i.ao
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  store atomic i64 %i.au, ptr %i.an release, align 8
  %i.aw = icmp ugt i64 %i.ac, 1
  br i1 %i.aw, label %bb.l, label %._crit_edge.loopexit

bb.p:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexuEECs45bxiIjzMqg_5salsa.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.k
}

end_hunk_0
