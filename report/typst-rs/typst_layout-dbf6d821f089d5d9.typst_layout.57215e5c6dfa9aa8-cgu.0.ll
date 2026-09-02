Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !10
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #54
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !31703
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !359

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !10
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !33

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !31703
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !361

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !10
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !10
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1k_8position13PagedPositionEEj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !31706, !noalias !31709, !noundef !10 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !31706, !noalias !31709, !nonnull !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31706, !noalias !31709
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31711)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !31711, !noundef !10 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53, !noalias !31711
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 24                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i, !prof !736

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i, !prof !736

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !31711
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #56, !noalias !31711 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #56, !noalias !31711 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !31711
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !31711
  store i64 %i.m, ptr %0, align 8, !alias.scope !31711
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !31711
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i, !prof !736

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31714
  store i64 0, ptr %i.a, align 8, !noalias !31714
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !31714
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31714
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.m
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #56, !noalias !31711
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #57
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !alias.scope !31717, !noalias !31720, !noundef !10 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 16, !alias.scope !31717, !noalias !31720, !nonnull !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31717, !noalias !31720 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31722)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53, !noalias !31722
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.p, !prof !12302

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.p = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i, label %bb.p, !prof !12302

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !31722
  %i.q = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 16) #56, !noalias !31722 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 4
  %i.t = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 16, i64 noundef %i.o) #56, !noalias !31722 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 16, !alias.scope !31722
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !31722
  store i64 %i.m, ptr %i.b, align 16, !alias.scope !31722
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 16 dereferenceable(32) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(32) %0, ptr nonnull align 16 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 16, !alias.scope !31722
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.n, !prof !12302

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31725
  store i64 0, ptr %i.a, align 8, !noalias !31725
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31725
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 16) #56, !noalias !31722
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 16, i64 noundef %i.o) #57
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(472) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !31728, !noalias !31731, !noundef !10 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !31728, !noalias !31731
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
end_hunk_0
begin_hunk_1_@_RNvNtCs7tN9tvpkfrg_12typst_layout4math21layout_equation_block:bb.a
.noexc254:                                        ; preds = %bb.cl
  %i.lo = icmp slt i8 %i.ln, 0
  %..i.i.i.i.i.i = select i1 %i.lo, double %.sroa.02.0.i.i.i, double %spec.store.select.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.lp = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.lq = icmp eq i64 %i.lp, %i.li
  br i1 %i.lq, label %bb.ch, label %bb.cl

.thread386:                                       ; preds = %bb.ch, %.thread381
  %i.lr = icmp ult i64 %i.is, 230584300921369396
  call void @llvm.assume(i1 %i.lr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB2c_5point5PointEEEECs7tN9tvpkfrg_12typst_layout.exit

bb.cm:                                            ; preds = %._crit_edge512, %.thread376
  %i.ls = phi ptr [ %.pre513, %._crit_edge512 ], [ %i.ir, %.thread376 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ls, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !noalias !34819
  store i64 1, ptr %i.hw, align 8, !alias.scope !34819, !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.experimental.noalias.scope.decl(metadata !34824)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB1u_5point5PointEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.hu)
          to label %bb.cr unwind label %bb.cq

.thread376:                                       ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.aw, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34819)
  %i.lu = load i64, ptr %i.be, align 8, !range !69, !alias.scope !34819, !noalias !34822, !noundef !10
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.cn, label %bb.cm

bb.cn:                                            ; preds = %.thread376
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math3run19MathRunFrameBuilderE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %._crit_edge512 unwind label %bb.co, !noalias !34822

._crit_edge512:                                   ; preds = %bb.cn
  %.pre513 = load ptr, ptr %i.hv, align 8, !alias.scope !34819, !noalias !34822
  br label %bb.cm

bb.co:                                            ; preds = %bb.cn
  %i.lw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB1d_5point5PointEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.aw)
          to label %.body248 unwind label %bb.cp, !noalias !34819

bb.cp:                                            ; preds = %bb.co
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34827
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB2c_5point5PointEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cu, %.thread386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.br

bb.cq:                                            ; preds = %bb.cm
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB16_5point5PointEEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.bf) #54
          to label %.body225 unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !34828)
  %i.lz = load i64, ptr %i.bf, align 8, !range !545, !alias.scope !34831, !noundef !10 ; 2 uses
  %i.ma = icmp eq i64 %i.lz, -1
  br i1 %i.ma, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB2c_5point5PointEEEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !34832)
  %i.mb = icmp eq i64 %i.lz, 2
  br i1 %i.mb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB2c_5point5PointEEEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !34835)
  call void @llvm.experimental.noalias.scope.decl(metadata !34838)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34841)
  call void @llvm.experimental.noalias.scope.decl(metadata !34844)
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !34847, !nonnull !10, !noundef !10
  %i.me = atomicrmw sub ptr %i.md, i64 1 release, align 8, !noalias !34847
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB2c_5point5PointEEEECs7tN9tvpkfrg_12typst_layout.exit

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mc) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB2c_5point5PointEEEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.bn

bb.cv:                                            ; preds = %bb.cq
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.cw:                                            ; preds = %bb.br
  %i.mh = getelementptr inbounds nuw i8, ptr %i.cb, i64 152
  br label %bb.dc

bb.cx:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.mi = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1)
          to label %.noexc263 unwind label %.body268.thread396 ; 4 uses

.noexc263:                                        ; preds = %bb.cx
  %.not.i.i261 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i261, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %.noexc263
  call void @llvm.experimental.noalias.scope.decl(metadata !34848)
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !34848, !noalias !34851, !nonnull !10, !noundef !10 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !alias.scope !34848, !noalias !34851, !nonnull !10, !align !151, !noundef !10
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mn = load ptr, ptr %i.mm, align 8, !invariant.load !10, !noalias !34857, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !34858
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !invariant.load !10, !noalias !34857, !nonnull !10
  invoke void %i.mp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef nonnull %i.mj) #59
          to label %.noexc264 unwind label %.body268.thread396, !inline_history !34860

.noexc264:                                        ; preds = %bb.cy
  %i.mq = load i128, ptr %i.t, align 16, !noalias !34858, !noundef !10
  %i.mr = icmp eq i128 %i.mq, 125536968647838099157204815801917550483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !34858
  br i1 %i.mr, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.cz, !prof !13

bb.cz:                                            ; preds = %.noexc264
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 10) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mi) #57
          to label %.noexc265 unwind label %.body268.thread396

.noexc265:                                        ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %.noexc263
  %i.ms = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs3_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK, i64 40) acquire, align 8, !noalias !34861
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.db, !prof !13

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 @_RNvNCNvXs3_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit unwind label %.body268.thread396

bb.dc:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.cw
  %.sroa.064.0 = phi ptr [ %i.mh, %bb.cw ], [ %.sroa.0.0.i262, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.064.0, i64 32
  %i.mv = load i8, ptr %i.mu, align 8, !range !4320, !noundef !10
  %.not175 = icmp eq i8 %i.mv, -1
  br i1 %.not175, label %bb.de, label %bb.dn

bb.dd:                                            ; preds = %bb.ec
  br i1 %.sroa.0112.3, label %.thread388, label %.body225

.body268.thread396:                               ; preds = %bb.dw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout.exit, %bb.cz, %bb.cy, %bb.db, %bb.cx, %bb.dv, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %lpad.thr_comm394 = landingpad { ptr, i32 }
          cleanup
  br label %.thread388

.body268:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout.exit321
  %lpad.thr_comm.split-lp395 = landingpad { ptr, i32 }
          cleanup
  br label %.body225

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_4math8equation12EquationElemKh1_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.da, %.noexc264, %bb.db
  %.sroa.0.0.i262 = phi ptr [ %i.mj, %.noexc264 ], [ @_RNvNCNvXs3_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK, %bb.da ], [ @_RNvNCNvXs3_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtBb_12EquationElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.dc

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.my = load i64, ptr %i.bg, align 8, !range !69, !noundef !10
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !noundef !10 ; 6 uses
  %i.nb = icmp ult i64 %i.na, 230584300921369396
  call void @llvm.assume(i1 %i.nb)
  %i.nc = getelementptr inbounds nuw [40 x i8], ptr %i.mx, i64 %i.na
  store ptr %i.mx, ptr %i.av, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.mx, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.my, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.nc, ptr %.sroa.663.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !34862
  %i.nd = mul nuw i64 %i.na, 48                   ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.na, 192153584101141162
  br i1 %or.cond.i.i.i, label %bb.dg, label %bb.df, !prof !736

bb.df:                                            ; preds = %bb.de
  %i.ne = icmp eq i64 %i.na, 0
  br i1 %i.ne, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.df
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !34866
  %i.nf = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.nd, i64 noundef range(i64 1, 17) 8) #56, !noalias !34866 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.dg, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.dg:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.de
  %.sroa.10.0.ph.i.i = phi i64 [ %i.nd, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.de ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.de ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #57
          to label %.noexc.i267 unwind label %bb.dm, !noalias !34862

.noexc.i267:                                      ; preds = %bb.dg
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.df
  %i.nh = phi ptr [ inttoptr (i64 8 to ptr), %bb.df ], [ %i.nf, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  store i64 %i.na, ptr %i.s, align 8, !noalias !34862
  %i.ni = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.nh, ptr %i.ni, align 8, !noalias !34862
  %i.nj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34869)
  call void @llvm.experimental.noalias.scope.decl(metadata !34872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !34875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !34884
  call void @llvm.experimental.noalias.scope.decl(metadata !34885)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !34885, !noalias !34888, !nonnull !10, !noundef !10 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.nm, align 8, !alias.scope !34885, !noalias !34888 ; 2 uses
  %.not.not14.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.nl
  br i1 %.not.not14.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.di
  %.val9.i.i.i.i.i.i = phi i64 [ %i.nv, %bb.di ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 3 uses
  %i.nn = phi ptr [ %i.no, %bb.di ], [ %.promoted.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !34890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.nn, i64 40, i1 false), !noalias !34890
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !34891
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4math3runNtB4_19MathRunFrameBuilder5build(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.q, i1 noundef zeroext true)
          to label %bb.di unwind label %bb.dk, !noalias !34890

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.di, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.nv, %bb.di ]
  %i.np = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !34885, !noalias !34888, !noundef !10 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.hw, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ns = load ptr, ptr %i.r, align 8, !alias.scope !34885, !noalias !34888, !nonnull !10, !noundef !10
  %i.nt = mul nuw i64 %i.nq, 40
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ns, i64 noundef %i.nt, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !34890
  br label %bb.hw

bb.di:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.nu = getelementptr inbounds nuw [48 x i8], ptr %i.nh, i64 %.val9.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !34895
  %i.nv = add i64 %.val9.i.i.i.i.i.i, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !34891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !34890
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.no, %i.nl
  br i1 %.not.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dk
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34890
  unreachable

bb.dk:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.nx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.no, ptr %i.nm, align 8, !alias.scope !34885, !noalias !34888
  store i64 %.val9.i.i.i.i.i.i, ptr %i.nj, align 8, !alias.scope !34900, !noalias !34901
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math3run19MathRunFrameBuilderEEB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r) #54
          to label %.body.i unwind label %bb.dj, !noalias !34888

.body.i:                                          ; preds = %bb.dk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #54
          to label %.body225 unwind label %bb.dl, !noalias !34862

bb.dl:                                            ; preds = %bb.dm, %.body.i
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34862
  unreachable

bb.dm:                                            ; preds = %bb.dg
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math3run19MathRunFrameBuilderEEB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.av)
          to label %.body225 unwind label %bb.dl, !noalias !34902

bb.dn:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store double %i.eh, ptr %i.au, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.ej, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i8 0, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.au, i64 17
  store i8 0, ptr %i.oc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 16
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.od = load i128, ptr %i.cb, align 16, !range !11, !noundef !10
  %i.oe = trunc nuw i128 %i.od to i1
  br i1 %i.oe, label %bb.do, label %bb.dp, !prof !13

bb.do:                                            ; preds = %bb.dn
  %i.of = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.og = load i128, ptr %i.of, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library13introspection7counterNtB2_7Counter10display_at(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i128 noundef %i.og, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.064.0, i64 noundef %i.bz)
          to label %bb.dr unwind label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #57
          to label %bb.k unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.oh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7counter7CounterECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %i.ar) #54
          to label %.thread388 unwind label %bb.bd

bb.dr:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.oi = load ptr, ptr %i.as, align 8, !noundef !10 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, null
  %i.ok = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8            ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.on = load i64, ptr %i.om, align 8            ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br i1 %i.oj, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %bb.dr
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ol, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.on, ptr %i.op, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34903)
  call void @llvm.experimental.noalias.scope.decl(metadata !34906)
  %i.oq = load i64, ptr %i.ar, align 16, !range !8437, !alias.scope !34909, !noundef !10 ; 3 uses
  %i.or = icmp ne i64 %i.oq, 12
  call void @llvm.assume(i1 %i.or)
  %i.os = add nsw i64 %i.oq, -11
  %i.ot = icmp samesign ugt i64 %i.oq, 10
  %i.ou = select i1 %i.ot, i64 %i.os, i64 1
  switch i64 %i.ou, label %bb.dt [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7counter7CounterECs7tN9tvpkfrg_12typst_layout.exit
    i64 1, label %bb.dw
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i.i270 = load ptr, ptr %i.ov, align 8, !alias.scope !34910 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ar, i64 23
  %.val1.i.i271 = load i8, ptr %i.ow, align 1, !alias.scope !34910, !noundef !10
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val1.i.i271, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.du, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7counter7CounterECs7tN9tvpkfrg_12typst_layout.exit

bb.du:                                            ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i270) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i270, inttoptr (i64 16 to ptr)
  %i.ox = getelementptr inbounds i8, ptr %.val.i.i270, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7counter7CounterECs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %bb.du
  %i.oy = atomicrmw sub ptr %i.ox, i64 1 release, align 8, !noalias !34913
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.oy, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7counter7CounterECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !34913
  %i.oz = getelementptr i8, ptr %.val.i.i270, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.oz, align 8, !noalias !34913, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %bb.dv, !prof !13

bb.dv:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
          to label %.noexc272 unwind label %.body268.thread396

end_hunk_1
begin_hunk_2_@_RNvNtCs7tN9tvpkfrg_12typst_layout4math21layout_equation_block:bb.a
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6163.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i64 %i.qh, ptr %i.ap, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.qk, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 6 uses
  store i64 %i.qm, ptr %.sroa.591.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ra = load double, ptr %.sroa.692.0..sroa_idx, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.rb = invoke noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef 5.000000e-01, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.en unwind label %bb.el

bb.el:                                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.ek
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body316

.body316:                                         ; preds = %.body.i307, %bb.hg, %bb.el
  %.sroa.0112.7.lpad-body = phi i1 [ true, %bb.el ], [ false, %bb.hg ], [ false, %.body.i307 ] ; 2 uses
  %eh.lpad-body317 = phi { ptr, i32 } [ %i.rc, %bb.el ], [ %i.ze, %bb.hg ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i307 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34929)
  call void @llvm.experimental.noalias.scope.decl(metadata !34932)
  call void @llvm.experimental.noalias.scope.decl(metadata !34935)
  %i.rd = load ptr, ptr %.sroa.591.0..sroa_idx, align 8, !alias.scope !34938, !nonnull !10, !noundef !10
  %i.re = atomicrmw sub ptr %i.rd, i64 1 release, align 8, !noalias !34938
  %i.rf = icmp eq i64 %i.re, 1
  br i1 %i.rf, label %bb.em, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.em:                                            ; preds = %.body316
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.591.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.bd

bb.en:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.rg = fadd double %i.ra, %i.rb                ; 2 uses
  %.inv = fcmp ord double %i.rg, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.rg, double 0.000000e+00
  store double %spec.store.select, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %.val214 = load i8, ptr %i.rh, align 8, !range !32094, !noundef !10 ; 4 uses
  %i.ri = getelementptr i8, ptr %i.cb, i64 217
  %.val215 = load i8, ptr %i.ri, align 1          ; 3 uses
  %.not.i291 = icmp eq i8 %.val214, -1
  br i1 %.not.i291, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.rj = add nsw i8 %.val214, -3
  %i.rk = icmp samesign ugt i8 %.val214, 2
  %narrow.i.i = select i1 %i.rk, i8 %i.rj, i8 2
  switch i8 %narrow.i.i, label %bb.ep [
    i8 0, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit
    i8 1, label %bb.eq
    i8 2, label %bb.er
  ]

bb.ep:                                            ; preds = %bb.eo
  unreachable

bb.eq:                                            ; preds = %bb.eo
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit

bb.er:                                            ; preds = %bb.eo
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit

bb.es:                                            ; preds = %bb.en
  %i.rl = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 2)
          to label %.noexc295 unwind label %bb.el ; 4 uses

.noexc295:                                        ; preds = %bb.es
  %.not.i.i.i293 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i293, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.et

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %.noexc295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fb

bb.et:                                            ; preds = %.noexc295
  call void @llvm.experimental.noalias.scope.decl(metadata !34939)
  %i.rm = load ptr, ptr %i.rl, align 8, !alias.scope !34939, !noalias !34942, !nonnull !10, !noundef !10 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !alias.scope !34939, !noalias !34942, !nonnull !10, !align !151, !noundef !10
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !invariant.load !10, !noalias !34949, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !34949
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !invariant.load !10, !noalias !34949, !nonnull !10
  invoke void %i.rs(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %i.rm) #59
          to label %.noexc296 unwind label %bb.el, !inline_history !34950

.noexc296:                                        ; preds = %bb.et
  %i.rt = load i128, ptr %i.l, align 16, !noalias !34949, !noundef !10
  %i.ru = icmp eq i128 %i.rt, 34986742295652395893949484098720259127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !34949
  br i1 %i.ru, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.eu, !prof !13

bb.eu:                                            ; preds = %.noexc296
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.rl) #57
          to label %.noexc297 unwind label %bb.el

.noexc297:                                        ; preds = %bb.eu
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc296
  %.val.i.i294 = load i8, ptr %i.rm, align 1, !range !4429, !noalias !34951, !noundef !10 ; 3 uses
  %i.rv = getelementptr i8, ptr %i.rm, i64 1
  %.val16.i.i = load i8, ptr %i.rv, align 1, !noalias !34951 ; 3 uses
  %i.rw = add nsw i8 %.val.i.i294, -3
  %i.rx = icmp samesign ugt i8 %.val.i.i294, 2
  %narrow.i.i.i = select i1 %i.rx, i8 %i.rw, i8 2
  switch i8 %narrow.i.i.i, label %bb.ev [
    i8 0, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit
    i8 1, label %bb.ew
    i8 2, label %bb.ex
  ]

bb.ev:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  unreachable

bb.ew:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit

bb.ex:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.ew, %bb.ex, %bb.eo, %bb.eq, %bb.er
  %.val16.i.i.sink = phi i8 [ %.val215, %bb.eo ], [ %.val215, %bb.er ], [ %.val215, %bb.eq ], [ %.val16.i.i, %bb.ex ], [ %.val16.i.i, %bb.ew ], [ %.val16.i.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i ] ; 3 uses
  %.sroa.0.0.i17.i.i.sink.shrunk = phi i8 [ 3, %bb.eo ], [ %.val214, %bb.er ], [ 4, %bb.eq ], [ %.val.i.i294, %bb.ex ], [ 4, %bb.ew ], [ 3, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtNtBa_6layout5align17SpecificAlignmentNtB1v_15OuterHAlignmentNtB1v_10VAlignmentEECs7tN9tvpkfrg_12typst_layout.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ry = add i8 %.sroa.0.0.i17.i.i.sink.shrunk, -3
  %i.rz = icmp ugt i8 %.sroa.0.0.i17.i.i.sink.shrunk, 2
  %narrow = select i1 %i.rz, i8 %i.ry, i8 2
  switch i8 %narrow, label %bb.ey [
    i8 0, label %bb.ez
    i8 1, label %bb.fa
    i8 2, label %bb.fb
  ]

bb.ey:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit
  unreachable

bb.ez:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %.val16.i.i.sink, ptr %i.sa, align 1
  store i8 1, ptr %i.am, align 2
  br label %bb.fc

bb.fa:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 3, ptr %i.sb, align 1
  store i8 %.val16.i.i.sink, ptr %i.am, align 2
  br label %bb.fc

bb.fb:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.thread, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.4169.0.extract.trunc405 = phi i8 [ 3, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.thread ], [ %.val16.i.i.sink, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit ]
  %.sroa.0168.0.extract.trunc404 = phi i8 [ 1, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.thread ], [ %.sroa.0.0.i17.i.i.sink.shrunk, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4math8equation12EquationElemKh2_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit ]
  store i8 %.sroa.0168.0.extract.trunc404, ptr %i.am, align 2
  %.sroa.696.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %.sroa.4169.0.extract.trunc405, ptr %.sroa.696.0..sroa_idx97, align 1
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !noundef !10 ; 7 uses
  store i64 %i.sd, ptr %i.al, align 8
  %i.se = icmp ult i64 %i.sd, 230584300921369396
  call void @llvm.assume(i1 %i.se)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.sh = load i64, ptr %i.bg, align 8, !range !69, !noundef !10
  %i.si = getelementptr inbounds nuw [40 x i8], ptr %i.sg, i64 %i.sd
  store ptr %i.sg, ptr %i.ak, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.sg, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.sh, ptr %.sroa.5103.0..sroa_idx, align 8
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.si, ptr %.sroa.6104.0..sroa_idx, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.sj, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.ap, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %i.am, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.bs, ptr %.sroa.6108.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store ptr %i.eg, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store ptr %i.an, ptr %.sroa.8109.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !34952
  %i.sk = mul nuw i64 %i.sd, 48                   ; 2 uses
  %or.cond.i.i.i300 = icmp samesign ugt i64 %i.sd, 192153584101141162
  br i1 %or.cond.i.i.i300, label %bb.fe, label %bb.fd, !prof !736

bb.fd:                                            ; preds = %bb.fc
  %i.sl = icmp eq i64 %i.sd, 0
  br i1 %i.sl, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i302, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301: ; preds = %bb.fd
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !34956
  %i.sm = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.sk, i64 noundef range(i64 1, 17) 8) #56, !noalias !34956 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %bb.fe, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i302

bb.fe:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301, %bb.fc
  %.sroa.10.0.ph.i.i313 = phi i64 [ %i.sk, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301 ], [ undef, %bb.fc ]
  %.sroa.4.0.ph.i.i314 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301 ], [ 0, %bb.fc ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i314, i64 %.sroa.10.0.ph.i.i313) #57
          to label %.noexc.i315 unwind label %bb.hg, !noalias !34952

.noexc.i315:                                      ; preds = %bb.fe
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i302: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301, %bb.fd
  %i.so = phi ptr [ inttoptr (i64 8 to ptr), %bb.fd ], [ %i.sm, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i301 ] ; 2 uses
  store i64 %i.sd, ptr %i.k, align 8, !noalias !34952
  %i.sp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.so, ptr %i.sp, align 8, !noalias !34952
  %i.sq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34959)
  call void @llvm.experimental.noalias.scope.decl(metadata !34962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !34965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ak, i64 32, i1 false), !noalias !34974
  call void @llvm.experimental.noalias.scope.decl(metadata !34975)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ss = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %.promoted.i.i.i.i.i.i304 = load ptr, ptr %i.ss, align 8, !alias.scope !34975, !noalias !34978 ; 2 uses
  %i.st = load ptr, ptr %i.sr, align 8, !alias.scope !34975, !noalias !34978, !nonnull !10, !noundef !10 ; 2 uses
  %.not.not26.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i304, %i.st
  br i1 %.not.not26.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i311, label %.lr.ph.i.i.i.i.i.i305

.lr.ph.i.i.i.i.i.i305:                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i302
  %i.su = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 7 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.tb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.tf = call double @llvm.fabs.f64(double %i.eh)
  %i.tg = fcmp ueq double %i.tf, +inf
  br label %bb.ff

bb.ff:                                            ; preds = %bb.hc, %.lr.ph.i.i.i.i.i.i305
  %.val9.i.i.i.i.i.i306 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i305 ], [ %i.zb, %bb.hc ] ; 3 uses
  %i.th = phi ptr [ %.promoted.i.i.i.i.i.i304, %.lr.ph.i.i.i.i.i.i305 ], [ %i.ti, %bb.hc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !34980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.th, i64 40, i1 false), !noalias !34980
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 40 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34980
  call void @llvm.experimental.noalias.scope.decl(metadata !34984)
  %i.tj = load i64, ptr %i.su, align 8, !alias.scope !34987, !noalias !34988, !noundef !10 ; 4 uses
  %i.tk = icmp ult i64 %i.tj, 144115188075855872
  call void @llvm.assume(i1 %i.tk)
  %i.tl = icmp eq i64 %i.tj, 0                    ; 2 uses
  %i.tm = load i64, ptr %i.al, align 8
  %i.tn = icmp ugt i64 %i.tm, 1
  %or.cond421 = select i1 %i.tl, i1 %i.tn, i1 false
  br i1 %or.cond421, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34992
  call void @llvm.experimental.noalias.scope.decl(metadata !34993)
  call void @llvm.experimental.noalias.scope.decl(metadata !34996)
  %i.to = load <2 x double>, ptr %.sroa.692.0..sroa_idx, align 8, !alias.scope !34996, !noalias !34998
  %i.tp = load i64, ptr %i.ap, align 8, !range !285, !alias.scope !34996, !noalias !34998, !noundef !10 ; 2 uses
  %i.tq = load double, ptr %.sroa.490.0..sroa_idx, align 8, !alias.scope !34996, !noalias !34998
  %i.tr = load ptr, ptr %.sroa.591.0..sroa_idx, align 8, !alias.scope !34996, !noalias !34998, !nonnull !10, !noundef !10 ; 2 uses
  %i.ts = atomicrmw add ptr %i.tr, i64 1 monotonic, align 8, !noalias !34999
  %i.tt = icmp slt i64 %i.ts, 0
  br i1 %i.tt, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.trap()
  unreachable

bb.fi:                                            ; preds = %bb.ff
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4math3runNtB4_19MathRunFrameBuilder5build(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.i, i1 noundef zeroext true)
          to label %bb.hc unwind label %bb.hb, !noalias !34980

bb.fj:                                            ; preds = %bb.fg
  %i.tu = trunc nuw i64 %i.tp to i1
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = select i1 %i.tu, double %i.tq, double undef
  %i.tv = load i8, ptr %i.te, align 8, !range !299, !alias.scope !34996, !noalias !34998, !noundef !10
  store <2 x double> %i.to, ptr %i.sv, align 8, !alias.scope !34993, !noalias !35000
  store i64 %i.tp, ptr %i.g, align 8, !alias.scope !34993, !noalias !35000
  store double %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %i.sx, align 8, !alias.scope !34993, !noalias !35000
  store ptr %i.tr, ptr %i.sy, align 8, !alias.scope !34993, !noalias !35000
  store i8 %i.tv, ptr %i.sz, align 8, !alias.scope !34993, !noalias !35000
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i16, ptr %i.am, align 2, !noalias !34992 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !34992
  %i.tw = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 18)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !34992 ; 4 uses

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.fj
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35001)
  %i.tx = load ptr, ptr %i.tw, align 8, !alias.scope !35001, !noalias !35004, !nonnull !10, !noundef !10 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !35001, !noalias !35004, !nonnull !10, !align !151, !noundef !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ub = load ptr, ptr %i.ua, align 8, !invariant.load !10, !noalias !35011, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35011
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8, !invariant.load !10, !noalias !35011, !nonnull !10
  invoke void %i.ud(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.tx) #59
          to label %.noexc14.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !34992, !inline_history !35012

.noexc14.i.i.i.i.i.i.i.i:                         ; preds = %bb.fk
  %i.ue = load i128, ptr %i.c, align 16, !noalias !35011, !noundef !10
  %i.uf = icmp eq i128 %i.ue, -68289458443327381125253860450044341330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35011
  br i1 %i.uf, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, label %bb.fl, !prof !13

bb.fl:                                            ; preds = %.noexc14.i.i.i.i.i.i.i.i
  store ptr %i.ti, ptr %i.ss, align 8, !alias.scope !34975, !noalias !34978
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.tw) #57
          to label %.noexc15.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !34992

.noexc15.i.i.i.i.i.i.i.i:                         ; preds = %bb.fl
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc14.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.tx, align 1, !range !10999, !noalias !35013, !noundef !10
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.val.i.i.i.i.i.i.i.i.i.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtBa_4text7TextDirECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ -1, %.noexc.i.i.i.i.i.i.i.i ]
  %i.ug = invoke noundef i8 @_RNvXsb_NtCsdaEETE4DqmE_13typst_library4textNtB5_7TextDirNtNtNtB7_11foundations6styles7Resolve7resolve(i8 noundef %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc16.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !34992

.noexc16.i.i.i.i.i.i.i.i:                         ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh12_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i to i8 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i = lshr i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 8
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i16 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.uh = add i8 %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, -3
  %i.ui = icmp ugt i8 %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, 2
  %narrow.i.i.i.i.i.i.i.i.i.i = select i1 %i.ui, i8 %i.uh, i8 2 ; 2 uses
  %i.uj = icmp eq i8 %narrow.i.i.i.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.uj, i8 0, i8 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i ; 2 uses
  switch i8 %i.ug, label %default.unreachable [
    i8 0, label %bb.fn
    i8 1, label %switch.lookup.i.i.i.i.i.i.i.i
    i8 2, label %bb.fn
    i8 3, label %switch.lookup.i.i.i.i.i.i.i.i
  ]

bb.fm:                                            ; preds = %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc16.i.i.i.i.i.i.i.i
  unreachable

bb.fn:                                            ; preds = %.noexc16.i.i.i.i.i.i.i.i, %.noexc16.i.i.i.i.i.i.i.i
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  br label %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i

switch.lookup.i.i.i.i.i.i.i.i:                    ; preds = %.noexc16.i.i.i.i.i.i.i.i, %.noexc16.i.i.i.i.i.i.i.i
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i8 %spec.select.i.i.i.i.i.i.i.i.i.i to i1
  br label %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i

_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %switch.lookup.i.i.i.i.i.i.i.i, %bb.fn
  %.in.i.i.i.i.i.i.i.i = phi i1 [ %switch.idx.cast.i.i.i.i.i.i.i.i, %switch.lookup.i.i.i.i.i.i.i.i ], [ %switch.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ] ; 3 uses
  switch i8 %narrow.i.i.i.i.i.i.i.i.i.i, label %bb.fm [
    i8 0, label %bb.fo
    i8 1, label %bb.fq
    i8 2, label %bb.fp
  ]

bb.fo:                                            ; preds = %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i
  br label %bb.fq

bb.fp:                                            ; preds = %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.fo ], [ %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, %_RNvXsc_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_15OuterHAlignmentNtB5_12FixAlignment3fix.exit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !34992
  %i.uk = invoke fastcc i16 @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedNtNtNtBa_6layout5align9AlignmentECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout5align1__NtB9_9AlignElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0, i16 0)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !34992
end_hunk_2
begin_hunk_3_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare:bb.a
.loopexit.i146.cont.i.i:                          ; preds = %.loopexit.i146.invoke.i.i
  unreachable

bb.lw:                                            ; preds = %.lr.ph.i143.i.i, %.lr.ph.i143.i.i, %.lr.ph.i143.i.i, %.lr.ph.i143.i.i, %.lr.ph.i143.i.i, %.lr.ph.i143.i.i
  %i.apt = getelementptr i8, ptr %i.jb, i64 %.sroa.02.08.i.i.i ; 2 uses
  %i.apu = getelementptr i8, ptr %i.apt, i64 -1
  %i.apv = load i8, ptr %i.apu, align 1, !alias.scope !47481, !noalias !47485, !noundef !10
  store i8 %i.apv, ptr %i.apt, align 1, !alias.scope !47481, !noalias !47485
  br label %.lr.ph.i143.i.i.1

.lr.ph.i143.i.i.1:                                ; preds = %bb.lw, %.lr.ph.i143.i.i
  %i.apw = add nuw nsw i64 %.sroa.02.08.i.i.i, 2  ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.apq
  %i.apy = load i8, ptr %i.apx, align 1, !range !46929, !alias.scope !47483, !noalias !47484, !noundef !10
  switch i8 %i.apy, label %bb.ly [
    i8 3, label %bb.lx
    i8 10, label %bb.lx
    i8 12, label %bb.lx
    i8 15, label %bb.lx
    i8 18, label %bb.lx
    i8 20, label %bb.lx
  ]

bb.lx:                                            ; preds = %.lr.ph.i143.i.i.1, %.lr.ph.i143.i.i.1, %.lr.ph.i143.i.i.1, %.lr.ph.i143.i.i.1, %.lr.ph.i143.i.i.1, %.lr.ph.i143.i.i.1
  %i.apz = getelementptr i8, ptr %i.jb, i64 %i.apq
  %i.aqa = getelementptr i8, ptr %i.jb, i64 %.sroa.02.08.i.i.i
  %i.aqb = load i8, ptr %i.aqa, align 1, !alias.scope !47481, !noalias !47485, !noundef !10
  store i8 %i.aqb, ptr %i.apz, align 1, !alias.scope !47481, !noalias !47485
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %.lr.ph.i143.i.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i143.i.i, !llvm.loop !47486

_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.ly
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i, label %.lr.ph.i143.i.i.epil.preheader

.lr.ph.i143.i.i.epil.preheader:                   ; preds = %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i143.i.i.preheader
  %.sroa.02.08.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i143.i.i.preheader ], [ %i.apw, %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3309 = trunc i64 %i.apn to i1
  call void @llvm.assume(i1 %lcmp.mod3309)
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.02.08.i.i.i.epil.init
  %i.aqd = load i8, ptr %i.aqc, align 1, !range !46929, !alias.scope !47483, !noalias !47484, !noundef !10
  switch i8 %i.aqd, label %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i [
    i8 3, label %bb.lz
    i8 10, label %bb.lz
    i8 12, label %bb.lz
    i8 15, label %bb.lz
    i8 18, label %bb.lz
    i8 20, label %bb.lz
  ]

bb.lz:                                            ; preds = %.lr.ph.i143.i.i.epil.preheader, %.lr.ph.i143.i.i.epil.preheader, %.lr.ph.i143.i.i.epil.preheader, %.lr.ph.i143.i.i.epil.preheader, %.lr.ph.i143.i.i.epil.preheader, %.lr.ph.i143.i.i.epil.preheader
  %i.aqe = getelementptr i8, ptr %i.jb, i64 %.sroa.02.08.i.i.i.epil.init ; 2 uses
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !alias.scope !47481, !noalias !47485, !noundef !10
  store i8 %i.aqg, ptr %i.aqe, align 1, !alias.scope !47481, !noalias !47485
  br label %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i

_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i: ; preds = %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i.loopexit.unr-lcssa, %bb.lz, %.lr.ph.i143.i.i.epil.preheader, %bb.lv, %bb.lt
  call void @llvm.experimental.noalias.scope.decl(metadata !47487)
  %.val.i148.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !47487, !noalias !46979, !nonnull !10, !noundef !10 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.gv, align 8, !alias.scope !47487, !noalias !46979, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47490)
  %i.aqh = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.aqh, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %.lr.ph.i.i.i149.i.i

.lr.ph.i.i.i149.i.i:                              ; preds = %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.aqj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i ], [ 0, %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i ] ; 2 uses
  %i.aqi = getelementptr inbounds nuw [32 x i8], ptr %.val.i148.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.aqj = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.aqi, align 8, !alias.scope !47490, !noalias !47493 ; 2 uses
  %i.aqk = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.aqk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, label %bb.ma

bb.ma:                                            ; preds = %.lr.ph.i.i.i149.i.i
  %i.aql = getelementptr i8, ptr %i.aqi, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.aql, align 8, !alias.scope !47490, !noalias !47493, !nonnull !10, !noundef !10
  %i.aqm = shl nuw i64 %.val8.i.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.aqm, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !47494
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.ma, %.lr.ph.i.i.i149.i.i
  %i.aqn = icmp eq i64 %i.aqj, %.val1.i.i.i
  br i1 %i.aqn, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %.lr.ph.i.i.i149.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %_RNvCsgCGKXfV80i0_12unicode_bidi30assign_levels_to_removed_chars.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.z, align 8, !range !69, !alias.scope !47487, !noalias !46979, !noundef !10 ; 2 uses
  %i.aqo = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.aqo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.mb

bb.mb:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.aqp = shl nuw i64 %.val2.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i148.i.i, i64 noundef %i.aqp, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !47493
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.mb, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !46979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !46979
  br label %_RINvCsgCGKXfV80i0_12unicode_bidi26compute_bidi_info_for_paraNtNtB2_9char_data17HardcodedBidiDataeECs7tN9tvpkfrg_12typst_layout.exit.i

.thread.i.i:                                      ; preds = %bb.dx, %bb.br, %bb.bq
  %eh.lpad-body.i40.i = phi { ptr, i32 } [ %i.pz, %bb.dx ], [ %.pn.i.i45.i, %bb.br ], [ %.pn.i.i45.i, %bb.bq ] ; 2 uses
  %.val21.i.i = load i64, ptr %i.aa, align 8, !noalias !46979 ; 2 uses
  %i.aqq = icmp eq i64 %.val21.i.i, 0
  br i1 %i.aqq, label %.body.i, label %bb.mc

bb.mc:                                            ; preds = %.thread.i.i
  %.val22.i.i = load ptr, ptr %i.gq, align 8, !noalias !46979, !nonnull !10, !noundef !10
  %i.aqr = shl nuw i64 %.val21.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i, i64 noundef %i.aqr, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !46993
  br label %.body.i

_RINvCsgCGKXfV80i0_12unicode_bidi26compute_bidi_info_for_paraNtNtB2_9char_data17HardcodedBidiDataeECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelE6resizeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %exitcond.not.i = icmp eq i64 %i.hg, %..i.i.i.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.ba

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.ay, %.body.i, %bb.ax
  %.pn.i = phi { ptr, i32 } [ %i.gp, %bb.ax ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.ay ] ; 2 uses
  %.val31.i = load i64, ptr %i.af, align 8, !noalias !46931 ; 2 uses
  %i.aqs = icmp eq i64 %.val31.i, 0
  br i1 %i.aqs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.md

bb.md:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i
  %.val32.i = load ptr, ptr %i.gk, align 8, !noalias !46931, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef %.val31.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !46935
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.me:                                            ; preds = %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.aqt = icmp eq i64 %.sroa.01.i.sroa.0.0.copyload.i, 0
  br i1 %i.aqt, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.i.sroa.4.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.i.sroa.4.0.copyload.i, i64 noundef %.sroa.01.i.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !46935
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me
  %i.aqu = icmp eq i64 %.sroa.0.i.sroa.6.24.copyload.i, 0
  br i1 %i.aqu, label %.body, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.aqv = mul nuw i64 %.sroa.0.i.sroa.6.24.copyload.i, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i.sroa.8.24.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.i.sroa.8.24.copyload.i, i64 noundef %i.aqv, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !46935
  br label %.body

bb.mi:                                            ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.d

.body:                                            ; preds = %bb.pq, %bb.mh, %bb.mg, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.016.2 = phi i1 [ %.sroa.016.3, %bb.pq ], [ true, %bb.mh ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ true, %bb.aq ], [ true, %bb.mg ] ; 2 uses
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.pq ], [ %.pn11.i, %bb.mh ], [ %eh.lpad-body.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %eh.lpad-body.i.i, %bb.aq ], [ %.pn11.i, %bb.mg ] ; 2 uses
  %i.aqw = load ptr, ptr %i.ao, align 8, !alias.scope !47495, !noundef !10
  %i.aqx = icmp eq ptr %i.aqw, null
  br i1 %i.aqx, label %.thread, label %bb.mj

bb.mj:                                            ; preds = %.body
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.thread unwind label %bb.oj

_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit36.i
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqy, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.arb = load i64, ptr %i.ara, align 8, !noundef !10 ; 6 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arb
  %.not.not.not.i.not2650 = icmp samesign eq i64 %i.arb, 0
  br i1 %.not.not.not.i.not2650, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit, label %.lr.ph2652

.lr.ph2652:                                       ; preds = %.lr.ph2652, %_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit
  %i.ard = phi ptr [ %i.arg, %.lr.ph2652 ], [ %i.aqz, %_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.val2.i = load i8, ptr %i.ard, align 1, !noalias !47498, !noundef !10
  %i.are = trunc i8 %.val2.i to i1
  %i.arf = xor i1 %i.at, %i.are                   ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.arg, %i.arc
  %or.cond3881 = select i1 %i.arf, i1 true, i1 %.not.not.not.i.not
  br i1 %or.cond3881, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit.loopexit, label %.lr.ph2652

bb.mk:                                            ; preds = %bb.mn
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %bb.pq

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit.loopexit: ; preds = %.lr.ph2652
  %.not.not.not.i.not.lcssa.ph = xor i1 %i.arf, true
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit.loopexit, %_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit
  %.not.not.not.i.not.lcssa = phi i1 [ true, %_RINvMs1_CsgCGKXfV80i0_12unicode_bidiNtB6_8BidiInfo20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit ], [ %.not.not.not.i.not.lcssa.ph, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ari = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.arj = load i64, ptr %i.ari, align 8, !noundef !10 ; 6 uses
  %i.ark = icmp ult i64 %i.arj, 82351536043346213
  call void @llvm.assume(i1 %i.ark)
  %i.arl = shl nuw i64 %i.arj, 7                  ; 2 uses
  %.not.i36 = icmp samesign ugt i64 %i.arj, 72057594037927935
  br i1 %.not.i36, label %bb.mn, label %bb.ml, !prof !736

bb.ml:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit
  %i.arm = icmp eq i64 %i.arj, 0                  ; 2 uses
  br i1 %i.arm, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.ml
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !47502
  %i.arn = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.arl, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !47502 ; 2 uses
  %i.aro = icmp eq ptr %i.arn, null
  br i1 %i.aro, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %i.arp = ptrtoint ptr %i.arn to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit

bb.mn:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.10109.0.ph = phi i64 [ %i.arl, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ undef, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit ]
  %.sroa.4107.0.ph = phi i64 [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare0EB2q_.exit ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4107.0.ph, i64 %.sroa.10109.0.ph) #57
          to label %bb.ok unwind label %bb.mk

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ml, %bb.mm
  %.sroa.10109.0 = phi i64 [ %i.arp, %bb.mm ], [ 16, %bb.ml ]
  %i.arq = inttoptr i64 %.sroa.10109.0 to ptr
  store i64 %i.arj, ptr %i.an, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  store ptr %i.arq, ptr %i.arr, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  store i64 0, ptr %i.ars, align 8
  %i.art = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aru = load ptr, ptr %i.art, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.arv = load i64, ptr %5, align 8, !range !69, !noundef !10 ; 5 uses
  %.idx = mul nuw nsw i64 %i.arj, 112
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.aru, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.arv, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.arw, ptr %.sroa.6.0..sroa_idx, align 8
  br i1 %i.arm, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.7.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ary = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.asb = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.asc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.asd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ase = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.asf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.asg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ash = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.not100.i = icmp eq i64 %i.arb, 0
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit

.body65.thread:                                   ; preds = %.body65.loopexit, %.body65.loopexit.split-lp.loopexit.split-lp.loopexit, %.body65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body65.loopexit.split-lp.loopexit, %bb.on
  %.pn = phi { ptr, i32 } [ %i.axq, %bb.on ], [ %lpad.loopexit153, %.body65.loopexit ], [ %lpad.loopexit158, %.body65.loopexit.split-lp.loopexit ], [ %lpad.loopexit162, %.body65.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp163, %.body65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am) #54
          to label %.body39 unwind label %bb.oj

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %bb.po
  %.sroa.0.0747 = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.bbz, %bb.po ] ; 9 uses
  %i.asi = phi ptr [ %i.aru, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.asj, %bb.po ] ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 112 ; 10 uses
  %.sroa.091.0.copyload92 = load i64, ptr %i.asi, align 16, !noalias !47505 ; 5 uses
  %.not20 = icmp eq i64 %.sroa.091.0.copyload92, -3
  br i1 %.not20, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.mo

bb.mo:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.7.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.091.0.copyload92, ptr %i.al, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx93, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx94, i64 104, i1 false)
  %.not.i37 = icmp eq i64 %.sroa.091.0.copyload92, -2
  br i1 %.not.i37, label %bb.op, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.ask = icmp slt i64 %.sroa.091.0.copyload92, -9223372036854775803
  %i.asl = add i64 %.sroa.091.0.copyload92, -9223372036854775807
  %i.asm = select i1 %i.ask, i64 %i.asl, i64 0
  switch i64 %i.asm, label %bb.mq [
    i64 0, label %bb.mr
    i64 1, label %bb.ol
    i64 2, label %bb.ol
    i64 3, label %bb.ms
    i64 4, label %bb.mt
    i64 5, label %bb.mu
  ]

bb.mq:                                            ; preds = %bb.mp
  unreachable

bb.mr:                                            ; preds = %bb.mp
  %i.asn = load i64, ptr %i.ary, align 16, !alias.scope !47508, !noundef !10
  br label %bb.ol

bb.ms:                                            ; preds = %bb.mp
  br label %bb.ol

bb.mt:                                            ; preds = %bb.mp
  br label %bb.ol

bb.mu:                                            ; preds = %bb.mp
  %i.aso = load i64, ptr %i.arx, align 16, !alias.scope !47508, !noundef !10
  br label %bb.ol

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit, %bb.po, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit
  %i.asp = phi ptr [ %i.aru, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.asj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit ], [ %i.arw, %bb.po ] ; 2 uses
  %i.asq = ptrtoint ptr %i.arw to i64
  %i.asr = ptrtoint ptr %i.asp to i64
  %i.ass = sub nuw i64 %i.asq, %i.asr
  %i.ast = udiv exact i64 %i.ass, 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEBI_(ptr noalias nofree noundef nonnull align 16 %i.asp, i64 noundef %i.ast)
          to label %bb.mx unwind label %bb.mv, !noalias !47511

bb.mv:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  %i.asu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asv = icmp eq i64 %i.arv, 0
  br i1 %i.asv, label %.body39, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.asw = mul nuw i64 %i.arv, 112
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aru, i64 noundef %i.asw, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !47511
  br label %.body39

bb.mx:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  %i.asx = icmp eq i64 %i.arv, 0
  br i1 %i.asx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.asy = mul nuw i64 %i.arv, 112
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aru, i64 noundef %i.asy, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !47511
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit

.body39:                                          ; preds = %bb.ne, %bb.nd, %bb.mz, %bb.mw, %bb.mv, %.body65.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body65.thread ], [ %i.asu, %bb.mv ], [ %i.asz, %bb.mz ], [ %i.asu, %bb.mw ], [ %lpad.phi, %bb.nd ], [ %lpad.phi, %bb.ne ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejENtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect4ItemEEEB1H_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #54
          to label %bb.pq unwind label %bb.oj

bb.mz:                                            ; preds = %bb.nc
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %.body39

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit: ; preds = %bb.my, %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ata = shl i64 %4, 3                          ; 4 uses
  %i.atb = icmp ugt i64 %4, 2305843009213693951
  %.not.i41 = icmp ugt i64 %i.ata, 9223372036854775800
  %or.cond.i42 = or i1 %i.atb, %.not.i41
  br i1 %or.cond.i42, label %bb.nc, label %bb.na, !prof !736

bb.na:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit
  %i.atc = icmp eq i64 %i.ata, 0
  br i1 %i.atc, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43: ; preds = %bb.na
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !47516
  %i.atd = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ata, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !47516 ; 2 uses
  %i.ate = icmp eq ptr %i.atd, null
  br i1 %i.ate, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43
  %i.atf = ptrtoint ptr %i.atd to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45

bb.nc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43
  %.sroa.4111.0.ph = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i43 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7collect7SegmentEEB1v_.exit ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4111.0.ph, i64 %i.ata) #57
          to label %bb.ok unwind label %bb.mz

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit45: ; preds = %bb.na, %bb.nb
  %.sroa.10113.0 = phi i64 [ %i.atf, %bb.nb ], [ 8, %bb.na ]
  %.sroa.4111.0 = phi i64 [ %4, %bb.nb ], [ 0, %bb.na ] ; 2 uses
  %i.atg = inttoptr i64 %.sroa.10113.0 to ptr     ; 2 uses
  %i.ath = icmp samesign ule i64 %4, %.sroa.4111.0
  call void @llvm.assume(i1 %i.ath)
  store i64 %.sroa.4111.0, ptr %i.ai, align 8
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  store ptr %i.atg, ptr %i.ati, align 8
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store i64 0, ptr %i.atj, align 8
  %i.atk = load ptr, ptr %i.arr, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.atl = load i64, ptr %i.ars, align 8, !noundef !10 ; 2 uses
  %.idx753 = shl nuw nsw i64 %i.atl, 7
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atk, i64 %.idx753
  %i.atn = icmp eq i64 %i.atl, 0
  br i1 %i.atn, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.ni, %bb.no, %bb.nq, %bb.nx
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout:bb.a
  switch i8 %.sroa.070.0, label %bb.at [
    i8 53, label %bb.bd
    i8 47, label %bb.bd
    i8 33, label %bb.bd
    i8 32, label %bb.bd
    i8 16, label %bb.bd
    i8 10, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.aw
  %.not173.le = icmp ugt i8 %.sroa.092.1.ph, %i.hi
  %i.if = load ptr, ptr %i.m, align 8, !nonnull !10, !align !151, !noundef !10 ; 3 uses
  %i.ig = zext i8 %.sroa.092.1.ph to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 120
  %i.ii = load i8, ptr %i.ih, align 8, !noundef !10
  %i.ij = zext i8 %i.ii to i64
  %i.ik = mul nuw nsw i64 %i.ij, %i.ig
  %i.il = zext i8 %i.hj to i64
  %i.im = add nuw nsw i64 %i.ik, %i.il            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.io = load i64, ptr %i.in, align 8, !noundef !10
  %i.ip = icmp ult i64 %i.im, %i.io
  br i1 %i.ip, label %bb.be, label %.backedgethread-pre-split

bb.be:                                            ; preds = %bb.bd
  %i.iq = load ptr, ptr %i.if, align 8, !nonnull !10, !noundef !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.im
  %i.is = load i8, ptr %i.ir, align 1, !noundef !10
  %i.it = tail call { i8, i8 } @_RNvXs0_NtCselBS6QMlFOX_13icu_segmenter8providerNtB5_10BreakStateNtNtCscNnlIRywYVk_7zerovec3ule5AsULE14from_unaligned(i8 noundef %i.is) ; 2 uses
  %i.iu = extractvalue { i8, i8 } %i.it, 0
  %i.iv = extractvalue { i8, i8 } %i.it, 1        ; 2 uses
  switch i8 %i.iu, label %.loopexit267 [
    i8 0, label %bb.bf
    i8 1, label %.backedgethread-pre-split
    i8 2, label %bb.bg
    i8 3, label %bb.bh
    i8 4, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  %i.iw = icmp eq i8 %.sroa.070.0, 54
  br i1 %i.iw, label %.backedgethread-pre-split, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.ix = icmp eq i8 %.sroa.070.0, 54
  store <2 x ptr> %.ph, ptr %i.g, align 8
  store i64 %.sroa.9.0.ph.ph, ptr %i.i, align 8
  store i64 %.sroa.096.0.ph.ph, ptr %i.a, align 8
  store i32 %.sroa.598.0.ph.ph, ptr %i.b, align 8
  br i1 %i.ix, label %bb.bl, label %bb.bk

bb.bh:                                            ; preds = %bb.be
  %i.iy = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %bb.bo
  %i.iz = phi i1 [ %i.iy, %bb.bh ], [ %i.jc, %bb.bo ]
  br label %.outer.outer

bb.bi:                                            ; preds = %bb.be
  br i1 %.not173.le, label %.outer, label %bb.bo

bb.bj:                                            ; preds = %bb.bf
  %i.ja = load i32, ptr %i.b, align 8, !range !12288, !noundef !10
  %.not178 = icmp ne i32 %i.ja, -1                ; 2 uses
  %i.jb = load i64, ptr %i.a, align 8
  %.sroa.27.7 = select i1 %.not178, i64 %i.jb, i64 undef
  br label %.loopexit268

bb.bk:                                            ; preds = %bb.bg
  br i1 %.sroa.063.1.ph.ph.in, label %.backedge, label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %or.cond6 = select i1 %i.fn, i1 true, i1 %.sroa.063.1.ph.ph.in
  br i1 %or.cond6, label %.backedge, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %.not176 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.9 = select i1 %.not176, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bn:                                            ; preds = %bb.bl
  %.not177 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.10 = select i1 %.not177, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bo:                                            ; preds = %bb.bi
  %i.jc = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.loopexit268.split.loop.exit315:                  ; preds = %bb.ao
  %i.jd = extractvalue { i64, i64 } %i.ez, 1
  br label %.loopexit268

.loopexit268:                                     ; preds = %.backedge, %.loopexit268.split.loop.exit315, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, %bb.bb, %bb.bn, %bb.bm, %bb.bj, %bb.az, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, %bb.bz, %bb.ca, %bb.ar, %bb.m, %bb.ah, %bb.ak, %bb.ai
  %.sroa.27.11 = phi i64 [ undef, %bb.bz ], [ 0, %bb.ca ], [ %i.ie, %bb.az ], [ %.sroa.27.13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.27.1, %bb.ai ], [ %i.mw, %bb.by ], [ %.sroa.27.2, %bb.ak ], [ %.sroa.27.3, %bb.ah ], [ %i.do, %bb.m ], [ %.sroa.27.4, %bb.ar ], [ 0, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.sroa.27.7, %bb.bj ], [ %.sroa.27.10, %bb.bn ], [ %.sroa.27.9, %bb.bm ], [ %.sroa.27.6, %bb.bb ], [ %i.jd, %.loopexit268.split.loop.exit315 ], [ undef, %.backedge ]
  %.sroa.0.11.shrunk = phi i1 [ false, %bb.bz ], [ true, %bb.ca ], [ true, %bb.az ], [ %.not183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.not180, %bb.ai ], [ true, %bb.by ], [ %.not170, %bb.ak ], [ %.not169, %bb.ah ], [ true, %bb.m ], [ %.not179, %bb.ar ], [ true, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.not178, %bb.bj ], [ %.not177, %bb.bn ], [ %.not176, %bb.bm ], [ %.not175, %bb.bb ], [ true, %.loopexit268.split.loop.exit315 ], [ false, %.backedge ]
  %.sroa.0.11 = zext i1 %.sroa.0.11.shrunk to i64
  %i.je = insertvalue { i64, i64 } poison, i64 %.sroa.0.11, 0
  %i.jf = insertvalue { i64, i64 } %i.je, i64 %.sroa.27.11, 1
  ret { i64, i64 } %i.jf

bb.bp:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %.lr.ph
  %i.jg = phi i64 [ %.promoted313, %.lr.ph ], [ %i.lb, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 2 uses
  %i.jh = phi ptr [ %.promoted312, %.lr.ph ], [ %i.kx, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 7 uses
  %.sroa.0.0311 = phi i64 [ 0, %.lr.ph ], [ %i.jm, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ]
  %i.ji = phi i32 [ %i.c, %.lr.ph ], [ %.sroa.4.0.i.ph.i204, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 3 uses
  %i.jj = icmp samesign ult i32 %i.ji, 128
  br i1 %i.jj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jk = icmp samesign ult i32 %i.ji, 2048
  br i1 %i.jk, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jl = icmp samesign ult i32 %i.ji, 65536
  %..i.i.i = select i1 %i.jl, i64 3, i64 4
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bp, %bb.bq, %bb.br
  %.sroa.02.0.i = phi i64 [ 1, %bb.bp ], [ 2, %bb.bq ], [ %..i.i.i, %bb.br ]
  %i.jm = add i64 %.sroa.02.0.i, %.sroa.0.0311    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49869)
  %i.jn = ptrtoint ptr %i.jh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49914)
  %i.jo = icmp eq ptr %i.jh, %i.bp
  br i1 %i.jo, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 4 uses
  store ptr %i.jp, ptr %i.bn, align 8, !alias.scope !49917
  %i.jq = load i8, ptr %i.jh, align 1, !noalias !49920, !noundef !10 ; 5 uses
  %i.jr = icmp sgt i8 %i.jq, -1
  br i1 %i.jr, label %bb.bt, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203: ; preds = %bb.bs
  %i.js = and i8 %i.jq, 31
  %i.jt = zext nneg i8 %i.js to i32               ; 3 uses
  %i.ju = icmp ne ptr %i.jp, %i.bp
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 2 ; 4 uses
  store ptr %i.jv, ptr %i.bn, align 8, !alias.scope !49921
  %i.jw = load i8, ptr %i.jp, align 1, !noalias !49920, !noundef !10
  %i.jx = shl nuw nsw i32 %i.jt, 6
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i32               ; 2 uses
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = icmp samesign ugt i8 %i.jq, -33
  br i1 %i.kb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

bb.bt:                                            ; preds = %bb.bs
  %i.kc = zext nneg i8 %i.jq to i32
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203
  %i.kd = icmp ne ptr %i.jv, %i.bp
  tail call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 3 ; 4 uses
  store ptr %i.ke, ptr %i.bn, align 8, !alias.scope !49924
  %i.kf = load i8, ptr %i.jv, align 1, !noalias !49920, !noundef !10
  %i.kg = shl nuw nsw i32 %i.jz, 6
  %i.kh = and i8 %i.kf, 63
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = or disjoint i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = shl nuw nsw i32 %i.jt, 12
  %i.kl = or disjoint i32 %i.kj, %i.kk
  %i.km = icmp samesign ugt i8 %i.jq, -17
  br i1 %i.km, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207
  %i.kn = icmp ne ptr %i.ke, %i.bp
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  store ptr %i.ko, ptr %i.bn, align 8, !alias.scope !49927
  %i.kp = load i8, ptr %i.ke, align 1, !noalias !49920, !noundef !10
  %i.kq = shl nuw nsw i32 %i.jt, 18
  %i.kr = and i32 %i.kq, 1835008
  %i.ks = shl nuw nsw i32 %i.kj, 6
  %i.kt = and i8 %i.kp, 63
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = or disjoint i32 %i.ks, %i.ku
  %i.kw = or disjoint i32 %i.kv, %i.kr
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203, %bb.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208
  %i.kx = phi ptr [ %i.ke, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.ko, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.jv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.jp, %bb.bt ] ; 2 uses
  %.sroa.4.0.i.ph.i204 = phi i32 [ %i.kl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.kw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.ka, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.kc, %bb.bt ] ; 3 uses
  %i.ky = icmp samesign ult i32 %.sroa.4.0.i.ph.i204, 1114112
  tail call void @llvm.assume(i1 %i.ky)
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.kz, %i.jn
  %i.lb = add i64 %i.la, %i.jg                    ; 2 uses
  store i64 %i.lb, ptr %i.bq, align 8, !alias.scope !49869
  store i64 %i.jg, ptr %i.a, align 8
  store i32 %.sroa.4.0.i.ph.i204, ptr %i.b, align 8
  %i.lc = icmp eq i64 %i.jm, %i.bl
  br i1 %i.lc, label %._crit_edge, label %bb.bp

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %bb.f
  %i.ld = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 5 uses
  %i.le = shl nuw i64 %i.ld, 3                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ld, 1152921504606846975
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu, !prof !736

bb.bu:                                            ; preds = %._crit_edge
  %.not.i.i.not = icmp eq i64 %i.f, 1
  br i1 %.not.i.i.not, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bu
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !49930
  %i.lf = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.le, i64 noundef range(i64 1, 17) 8) #56, !noalias !49930 ; 11 uses
  %i.lg = ptrtoaddr ptr %i.lf to i64
  %i.lh = icmp eq ptr %i.lf, null
  br i1 %i.lh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %._crit_edge
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.le, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %._crit_edge ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %._crit_edge ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #57, !noalias !49939
  unreachable

bb.bw:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 6 uses
  %i.lj = add i64 %i.f, 2305843009213693951       ; 3 uses
  %i.lk = and i64 %i.lj, 2305843009213693951      ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.lk, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bw
  %i.ll = sub i64 %i.lg, %i.bk
  %i.lm = add i64 %i.ll, -9
  %diff.check = icmp ult i64 %i.lm, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lj, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %index ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load = load <2 x i64>, ptr %i.ln, align 8, !noalias !49940
  %wide.load483 = load <2 x i64>, ptr %i.lo, align 8, !noalias !49940
  %i.lp = sub <2 x i64> %wide.load, %broadcast.splat
  %i.lq = sub <2 x i64> %wide.load483, %broadcast.splat
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %i.lp, ptr %i.lr, align 8, !noalias !49958
  store <2 x i64> %i.lq, ptr %i.ls, align 8, !noalias !49958
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lt = icmp eq i64 %index.next, %n.vec
  br i1 %i.lt, label %middle.block, label %vector.body, !llvm.loop !49965

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lk, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bw, %middle.block
  %.ph535 = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.bw ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.lj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.lu = phi i64 [ %i.ly, %scalar.ph.prol ], [ %.ph535, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lu
  %.val15.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.lv, align 8, !noalias !49940, !noundef !10
  %i.lw = sub i64 %.val15.i.i.i.i.i.i.i.i.prol, %i.bl
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lu
  store i64 %i.lw, ptr %i.lx, align 8, !noalias !49958
  %i.ly = add nuw i64 %i.lu, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49966

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph535, %scalar.ph.preheader ], [ %i.ly, %scalar.ph.prol ]
  %i.lz = sub nsw i64 %.ph535, %i.lk
  %i.ma = icmp ugt i64 %i.lz, -4
  br i1 %i.ma, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.mb = phi i64 [ %i.mr, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mb
  %.val15.i.i.i.i.i.i.i.i = load i64, ptr %i.mc, align 8, !noalias !49940, !noundef !10
  %i.md = sub i64 %.val15.i.i.i.i.i.i.i.i, %i.bl
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mb
  store i64 %i.md, ptr %i.me, align 8, !noalias !49958
  %i.mf = add nuw i64 %i.mb, 1                    ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mf
  %.val15.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.mg, align 8, !noalias !49940, !noundef !10
  %i.mh = sub i64 %.val15.i.i.i.i.i.i.i.i.1, %i.bl
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mf
  store i64 %i.mh, ptr %i.mi, align 8, !noalias !49958
  %i.mj = add nuw i64 %i.mb, 2                    ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mj
  %.val15.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.mk, align 8, !noalias !49940, !noundef !10
  %i.ml = sub i64 %.val15.i.i.i.i.i.i.i.i.2, %i.bl
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mj
  store i64 %i.ml, ptr %i.mm, align 8, !noalias !49958
  %i.mn = add nuw i64 %i.mb, 3                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mn
  %.val15.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.mo, align 8, !noalias !49940, !noundef !10
  %i.mp = sub i64 %.val15.i.i.i.i.i.i.i.i.3, %i.bl
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mn
  store i64 %i.mp, ptr %i.mq, align 8, !noalias !49958
  %i.mr = add nuw i64 %i.mb, 4                    ; 2 uses
  %i.ms = icmp eq i64 %i.mr, %i.lk
  br i1 %i.ms, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph, !llvm.loop !49967

_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.bu
  %.sroa.4.0.i.i.i402 = phi i64 [ 0, %bb.bu ], [ %i.ld, %middle.block ], [ %i.ld, %scalar.ph ], [ %i.ld, %scalar.ph.prol.loopexit ]
  %.sroa.10.0.i.i.i401 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bu ], [ %i.lf, %middle.block ], [ %i.lf, %scalar.ph ], [ %i.lf, %scalar.ph.prol.loopexit ]
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.bu ], [ %i.lk, %middle.block ], [ %i.lk, %scalar.ph ], [ %i.lk, %scalar.ph.prol.loopexit ]
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.mt = icmp eq i64 %.val, 0
  br i1 %i.mt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  %.val185 = load ptr, ptr %i.bi, align 8, !nonnull !10, !noundef !10
  %i.mu = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185, i64 noundef %i.mu, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit

bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  store i32 -1, ptr %i.b, align 8
  store i64 0, ptr %i.e, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.mw = load i64, ptr %i.mv, align 8, !noundef !10
  br label %.loopexit268

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bx, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  store i64 %.sroa.4.0.i.i.i402, ptr %i.d, align 8
  store ptr %.sroa.10.0.i.i.i401, ptr %i.bi, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %i.e, align 8
  %i.mx = load i32, ptr %i.b, align 8, !range !12288, !noundef !10
  %.not183 = icmp ne i32 %i.mx, -1                ; 2 uses
  %i.my = load i64, ptr %i.a, align 8
  %.sroa.27.13 = select i1 %.not183, i64 %i.my, i64 undef
  br label %.loopexit268

bb.bz:                                            ; preds = %bb.c
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !noundef !10
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.ca, label %.loopexit268

bb.ca:                                            ; preds = %bb.bz
  store i64 1, ptr %i.mz, align 8
  br label %.loopexit268
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %..i
  store ptr %i.g, ptr %i.a, align 8
  %i.h = icmp eq ptr %.val3, %.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49968)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49974)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !49977, !nonnull !10, !noundef !10
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !49980
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = icmp eq i64 %i.j, %..i
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.j, %..i
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

end_hunk_4
