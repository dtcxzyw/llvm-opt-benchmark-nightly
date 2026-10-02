Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15768)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.s, align 1, !alias.scope !15767, !noalias !15768
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.t, align 1, !alias.scope !15768, !noalias !15767
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.s, align 1, !alias.scope !15767, !noalias !15768
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.t, align 1, !alias.scope !15768, !noalias !15767
  %i.u = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.1.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15770)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.x, align 1, !alias.scope !15769, !noalias !15770
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.y, align 1, !alias.scope !15770, !noalias !15769
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.x, align 1, !alias.scope !15769, !noalias !15770
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.y, align 1, !alias.scope !15770, !noalias !15769
  br label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.h, %bb.g, %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsb6FLkjZuKG_18ruff_python_parser.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors23is_known_future_feature(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #22 {
bb.a:
  switch i64 %1, label %bb.l [
    i64 13, label %bb.b
    i64 10, label %bb.c
    i64 8, label %bb.d
    i64 15, label %bb.e
    i64 14, label %bb.f
    i64 16, label %bb.h
    i64 11, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 8313473824057419118
  %i.c = getelementptr i8, ptr %0, i64 5
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 8315175910721675108
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 1
  %i.k = xor i64 %i.j, 8031151179464336743
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i64
  %i.o = xor i64 %i.n, 29554
  %i.p = or i64 %i.k, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.m, label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.t = load i64, ptr %0, align 1
  %i.u = icmp ne i64 %i.t, 7957695010998479204
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.x = load i64, ptr %0, align 1
  %i.y = xor i64 %i.x, 7310597203715908193
  %i.z = getelementptr i8, ptr %0, i64 7
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8390891584407297893
  %i.ac = or i64 %i.y, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %0, align 1
  %i.ah = xor i64 %i.ag, 7022364572588992887
  %i.ai = getelementptr i8, ptr %0, i64 6
  %i.aj = load i64, ptr %i.ai, align 1
  %i.ak = xor i64 %i.aj, 8389754676365779316
  %i.al = or i64 %i.ah, %i.ak
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i64, ptr %0, align 1
  %i.aq = xor i64 %i.ap, 8459553903735304816
  %i.ar = getelementptr i8, ptr %0, i64 6
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = xor i64 %i.as, 7957695015192261990
  %i.au = or i64 %i.aq, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ay = load i128, ptr %0, align 1
  %i.az = icmp ne i128 %i.ay, 153423964033127886840618935117851225717
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bc = load i64, ptr %0, align 1
  %i.bd = xor i64 %i.bc, 8314031362318426466
  %i.be = getelementptr i8, ptr %0, i64 6
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = xor i64 %i.bf, 5496174181338805089
  %i.bh = or i64 %i.bd, %i.bg
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %0, align 1
  %i.bm = xor i64 %i.bl, 8031151179464336743
  %i.bn = getelementptr i8, ptr %0, i64 6
  %i.bo = load i64, ptr %i.bn, align 1
  %i.bp = xor i64 %i.bo, 8101822293534207860
  %i.bq = or i64 %i.bm, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bu = load i64, ptr %0, align 1
  %i.bv = xor i64 %i.bu, 7598805623994478177
  %i.bw = getelementptr i8, ptr %0, i64 3
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 8317708060514677871
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %bb.j, %bb.k
  %.sroa.01.0 = phi i1 [ %i.cc, %bb.k ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.c ]
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l
  %.sroa.0.0 = phi i1 [ %.sroa.01.0, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors26comprehension_target_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 50127021939428130) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 16 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false)
  %.idx = mul nuw nsw i64 %2, 184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i.i.i.i.i.i.thread, label %.lr.ph

_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i.i.i.i.i.i.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false), !noalias !15843
  br label %bb.r

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.045 = phi ptr [ %i.p, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 24
  invoke void @_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast7helpersNtB5_16StoredNameFinderNtNtB7_7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.e)
          to label %bb.b unwind label %.body.thread

._crit_edge:                                      ; preds = %bb.b
  %.sroa.032.0.copyload.pre = load ptr, ptr %i.c, align 8 ; 4 uses
  %.sroa.433.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.433.0.copyload.pre = load i64, ptr %.sroa.433.0..sroa_idx.phi.trans.insert, align 8 ; 3 uses
  %.sroa.535.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.535.0.copyload.pre = load i64, ptr %.sroa.535.0..sroa_idx.phi.trans.insert, align 8 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.032.0.copyload.pre, align 16, !noalias !15844
  %i.f = icmp eq i64 %.sroa.433.0.copyload.pre, 0 ; 4 uses
  br i1 %i.f, label %bb.c, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.g = mul i64 %.sroa.433.0.copyload.pre, 24    ; 2 uses
  %3 = add i64 %i.g, 24
  %4 = icmp ult i64 %3, -15
  call void @llvm.assume(i1 %4)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %5 = add i64 %i.h, 32                           ; 2 uses
  %i.i = add i64 %.sroa.433.0.copyload.pre, 17
  %i.j = add i64 %i.i, %5                         ; 3 uses
  %6 = icmp uge i64 %i.j, %5
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.j, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %.sroa.032.0.copyload.pre, i64 %i.k
  br label %bb.c

.body.thread:                                     ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val4 = load i64, ptr %i.n, align 8, !noundef !15
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsb6FLkjZuKG_18ruff_python_parser(ptr %.val, i64 %.val4) #44
  br label %bb.s

.body:                                            ; preds = %bb.f, %.body.sink.split.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body27.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.ae, %bb.f ]
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !15843
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load i64, ptr %i.o, align 8, !noalias !15843, !noundef !15
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsb6FLkjZuKG_18ruff_python_parser(ptr %.val.i, i64 %.val3.i) #44, !noalias !15843
  br label %bb.s

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 184 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge
  %.sroa.514.0.i.i = phi ptr [ undef, %._crit_edge ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 4 uses
  %.sroa.413.0.i.i = phi i64 [ undef, %._crit_edge ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 5 uses
  %.sink.i.i.i = phi i64 [ 0, %._crit_edge ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.pre, i64 16
  %i.r = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false), !noalias !15843
  call void @llvm.experimental.noalias.scope.decl(metadata !15845)
  call void @llvm.experimental.noalias.scope.decl(metadata !15846)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.535.0.copyload.pre, 0
  br i1 %.not.i, label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i.i.i.i.i.i, label %bb.d, !prof !15847

bb.d:                                             ; preds = %bb.c
  %i.v = invoke { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %.sroa.535.0.copyload.pre, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i1 noundef zeroext true)
          to label %.lr.ph.i.i.i.i.i.i.i.i unwind label %bb.q, !noalias !15848 ; 0 uses

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !15849)
  call void @llvm.experimental.noalias.scope.decl(metadata !15850)
  call void @llvm.experimental.noalias.scope.decl(metadata !15851)
  call void @llvm.experimental.noalias.scope.decl(metadata !15852)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa20.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa19.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa1317.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.0.copyload.pre, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1316.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.x = phi i16 [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi i64 [ %.sroa.535.0.copyload.pre, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.am, %.loopexit.i.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.z = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa20.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1317.i.i.i.i.i.i.i.i, %bb.e ]
  %.val10.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !15853
  %i.ab = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -384 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ab to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %.sroa.413.0.i.i, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.f, %i.af
  br i1 %or.cond.i.i.i.i.i.i.i, label %.body, label %.body.sink.split.i.i.i

_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.lcssa19.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa20.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1316.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1317.i.i.i.i.i.i.i.i, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.x, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ag = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ah = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = and i16 %i.ag, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [24 x i8], ptr %.lcssa1316.i.i.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = add i64 %i.y, -1                        ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -24
  %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !15854
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.al, i64 -8
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !15854 ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15855)
  call void @llvm.experimental.noalias.scope.decl(metadata !15856)
  call void @llvm.experimental.noalias.scope.decl(metadata !15857)
  call void @llvm.experimental.noalias.scope.decl(metadata !15858)
  call void @llvm.experimental.noalias.scope.decl(metadata !15859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15860
  store ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !15861
  %i.ao = call fastcc noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !15862 ; 2 uses
  %i.ap = load i64, ptr %i.u, align 8, !alias.scope !15863, !noalias !15864, !noundef !15
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.ar = invoke { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !15865 ; 0 uses

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !15866, !noalias !15867, !nonnull !15, !noundef !15 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !15866, !noalias !15867, !noundef !15 ; 4 uses
  %i.as = lshr i64 %i.ao, 57
  %i.at = trunc nuw nsw i64 %i.as to i8           ; 3 uses
  %i.au = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.av = shufflevector <16 x i8> %i.au, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, i64 15
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %i.ay = load i8, ptr %i.aw, align 1, !range !16, !alias.scope !15868, !noalias !15862 ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !15868, !noalias !15862
  %i.ba = and i64 %i.az, 72057594037927935
  %i.bb = icmp ult i8 %i.ay, -48
  %i.bc = zext i8 %i.ay to i64
  %i.bd = add nsw i64 %i.bc, -192
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bd, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bb, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ba ; 2 uses
  %i.be = icmp ugt i8 %i.ay, -49
  %i.bf = load ptr, ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, align 8, !alias.scope !15868, !noalias !15862
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.be, ptr %i.bf, ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cq, %bb.l ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %i.bg = phi i64 [ 0, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cp, %bb.l ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !15869 ; 3 uses
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.av
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.thread18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cf, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.thread18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.i ] ; 3 uses
  %i.bk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bl
  %i.bn = and i64 %i.bm, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !noalias !15870, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 15
  %i.bs = load i8, ptr %i.br, align 1, !range !16, !alias.scope !15871, !noalias !15872, !noundef !15 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !15871, !noalias !15872, !noundef !15
  %i.bv = and i64 %i.bu, 72057594037927935
  %i.bw = icmp ult i8 %i.bs, -48
  %i.bx = zext i8 %i.bs to i64
  %i.by = add nsw i64 %i.bx, -192
  %spec.store.select.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.by, i64 16)
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bw, i64 %spec.store.select.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bv
  %i.bz = icmp ugt i8 %i.bs, -49
  %i.ca = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !15871, !noalias !15872
  %.sroa.01.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bz, ptr %i.ca, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %bb.j, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.thread18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !18

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cc, label %.loopexit.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !15870
  %i.cd = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %.loopexit.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.thread18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !63

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.thread18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !14

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.thread18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2b_11make_hasherBS_uNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0E0Csb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cf = and i16 %i.ce, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ch, 0
end_hunk_0
