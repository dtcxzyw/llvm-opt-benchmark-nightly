Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs1_Cs5EcwQX7phGK_5uu_lsNtB5_10TextOutput3new:bb.a
    i8 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs5EcwQX7phGK_5uu_ls.exit.i.i
    i8 3, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  switch i64 %i.bd, label %.thread.i.i [
    i64 6, label %bb.w
    i64 0, label %.outer.i.i
  ]

bb.r:                                             ; preds = %bb.p
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.w, %bb.r, %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.6.0.copyload.pn.i.i ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.thread.i.i
  %i.bi = phi ptr [ %i.cr, %bb.v ], [ %i.be, %.thread.i.i ] ; 6 uses
  %.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.not.not.not.i.not.i.i.i, label %.outer.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 3 uses
  %i.bk = load i8, ptr %i.bi, align 1, !alias.scope !7380, !noalias !7381, !noundef !4 ; 5 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.u, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit12.i.i.i.i.i.i: ; preds = %bb.t
  %i.bm = and i8 %i.bk, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = icmp ne ptr %i.bj, %i.bh
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 3 uses
  %i.bq = load i8, ptr %i.bj, align 1, !alias.scope !7380, !noalias !7381, !noundef !4
  %i.br = shl nuw nsw i32 %i.bn, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit14.i.i.i.i.i.i, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = zext nneg i8 %i.bk to i32
  br label %bb.v

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit12.i.i.i.i.i.i
  %i.bx = icmp ne ptr %i.bp, %i.bh
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 3 ; 3 uses
  %i.bz = load i8, ptr %i.bp, align 1, !alias.scope !7380, !noalias !7381, !noundef !4
  %i.ca = shl nuw nsw i32 %i.bt, 6
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit16.i.i.i.i.i.i, label %bb.v

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit14.i.i.i.i.i.i
  %i.ch = icmp ne ptr %i.by, %i.bh
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.cj = load i8, ptr %i.by, align 1, !alias.scope !7380, !noalias !7381, !noundef !4
  %i.ck = shl nuw nsw i32 %i.bn, 18
  %i.cl = and i32 %i.ck, 1835008
  %i.cm = shl nuw nsw i32 %i.cd, 6
  %i.cn = and i8 %i.cj, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cl
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit14.i.i.i.i.i.i, %bb.u, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit12.i.i.i.i.i.i
  %i.cr = phi ptr [ %i.by, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit14.i.i.i.i.i.i ], [ %i.ci, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit16.i.i.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit12.i.i.i.i.i.i ], [ %i.bj, %bb.u ]
  %spec.select.i.ph.i.i.i.i = phi i32 [ %i.cf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit14.i.i.i.i.i.i ], [ %i.cq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit16.i.i.i.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EcwQX7phGK_5uu_ls.exit12.i.i.i.i.i.i ], [ %i.bw, %bb.u ]
  %.not.i.i44.i.i = icmp eq i32 %spec.select.i.ph.i.i.i.i, 48
  br i1 %.not.i.i44.i.i, label %bb.s, label %bb.x

_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i: ; preds = %bb.r
  switch i8 %i.bf, label %.outer.i.i [
    i8 16, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i
    i8 9, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i
  ]

bb.w:                                             ; preds = %bb.q
  %i.cs = load i32, ptr %i.be, align 1
  %i.ct = xor i32 %i.cs, 1735549300
  %i.cu = getelementptr i8, ptr %i.be, i64 4
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = zext i16 %i.cv to i32
  %i.cx = xor i32 %i.cw, 29797
  %i.cy = or i32 %i.ct, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.outer.i.i, label %.thread.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !7382)
  %i.dc = icmp eq i64 %i.bd, 1
  br i1 %i.dc, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dd = load i8, ptr %i.be, align 1, !alias.scope !7382, !noalias !7383, !noundef !4 ; 2 uses
  %i.de = add i8 %i.dd, -48
  %or.cond.i.i.i = icmp ult i8 %i.de, 10
  br i1 %or.cond.i.i.i, label %bb.z, label %.thread98.thread210.i.i

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7384
  %i.df = call noundef dereferenceable_or_null(2) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7384 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #39, !noalias !7385
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i8 48, ptr %i.df, align 1, !noalias !7386
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store i8 %i.dd, ptr %i.dh, align 1, !noalias !7387
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i

bb.ac:                                            ; preds = %bb.x
  %.not.i.i.i = icmp slt i64 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.ad, label %.thread98.i.i, !prof !34

.thread98.i.i:                                    ; preds = %bb.ac
  %i.di = icmp eq i64 %i.bd, 0
  br i1 %i.di, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i, label %.thread98.thread210.i.i

.thread98.thread210.i.i:                          ; preds = %.thread98.i.i, %bb.y
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7388
  %i.dj = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7388 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread98.thread210.i.i, %bb.ac
  %.sroa.473.0.ph.i.i = phi i64 [ 1, %.thread98.thread210.i.i ], [ 0, %bb.ac ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.473.0.ph.i.i, i64 %i.bd) #39, !noalias !7372
  unreachable

bb.ae:                                            ; preds = %.thread98.thread210.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr nonnull align 1 %i.be, i64 %i.bd, i1 false), !noalias !7372
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i: ; preds = %bb.ae, %.thread98.i.i, %bb.ab, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i
  %storemerge208.i.i = phi ptr [ %i.df, %bb.ab ], [ %i.dj, %bb.ae ], [ inttoptr (i64 1 to ptr), %.thread98.i.i ], [ inttoptr (i64 1 to ptr), %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i ], [ inttoptr (i64 1 to ptr), %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i ] ; 2 uses
  %storemerge.i.i = phi i64 [ 2, %bb.ab ], [ %i.bd, %bb.ae ], [ 0, %.thread98.i.i ], [ 0, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i ], [ 0, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i ] ; 4 uses
  %i.dl = zext nneg i8 %i.bf to i64
  %i.dm = mul i64 %i.dl, -1065810590584100411     ; 2 uses
  %i.dn = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 26) ; 2 uses
  %i.do = load i64, ptr %i.k, align 8, !alias.scope !7389, !noalias !7390, !noundef !4
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.af, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i, !prof !7

bb.af:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i
  %i.dq = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i1 noundef zeroext true) #36, !noalias !7391 ; 0 uses
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i: ; preds = %bb.af, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread105.i.i
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7392, !noalias !7393, !nonnull !4, !noundef !4 ; 8 uses
  %.val5.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !7392, !noalias !7393, !noundef !4 ; 4 uses
  %i.dr = lshr i64 %i.dn, 57
  %i.ds = trunc nuw nsw i64 %i.dr to i8           ; 3 uses
  %i.dt = insertelement <16 x i8> poison, i8 %i.ds, i64 0
  %i.du = shufflevector <16 x i8> %i.dt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.dn, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i ], [ %i.et, %bb.aj ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i ], [ %.sroa.4.120.i.i.i.i, %bb.aj ]
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i ], [ %.sroa.04.122.i.i.i.i, %bb.aj ]
  %i.dv = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i.i.i ], [ %i.es, %bb.aj ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.dw, align 1, !noalias !7394 ; 3 uses
  %i.dx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %i.du
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not28.i.i.i.i = icmp eq i16 %i.dy, 0
  br i1 %.not28.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.01.029.i.i.i.i = phi i16 [ %i.ei, %bb.ah ], [ %i.dy, %bb.ag ] ; 3 uses
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.0.017.i.i.i.i, %i.ea
  %i.ec = and i64 %i.eb, %.val5.i.i.i
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds [32 x i8], ptr %.val.i.i.i, i64 %i.ed ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -32
  %.val2.i.i.i.i = load i8, ptr %i.ef, align 1, !range !19, !noalias !7395, !noundef !4
  %i.eg = icmp eq i8 %i.bf, %.val2.i.i.i.i
  br i1 %i.eg, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.i, label %bb.ah, !prof !12

._crit_edge.i.i.i.i:                              ; preds = %bb.ah, %bb.ag
  %.not12.i.i.i1.i = icmp eq i64 %.sroa.04.0.i.i.i.i, 0
  br i1 %.not12.i.i.i1.i, label %bb.ai, label %.thread.i.i.i.i, !prof !12

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eh = add i16 %.sroa.01.029.i.i.i.i, -1
  %i.ei = and i16 %i.eh, %.sroa.01.029.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ei, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i.i.i.i2.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i.i.i.i2.i, label %bb.aj, label %.thread24.i.i.i.i, !prof !7

.thread24.i.i.i.i:                                ; preds = %bb.ai
  %i.el = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.0.017.i.i.i.i, %i.em
  %i.eo = and i64 %i.en, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread24.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.121.i.i.i.i = phi i64 [ %i.eo, %.thread24.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ep = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.eq = bitcast <16 x i1> %i.ep to i16
  %i.er = icmp eq i16 %i.eq, 0
  br i1 %i.er, label %bb.aj, label %bb.ak, !prof !7

bb.aj:                                            ; preds = %.thread.i.i.i.i, %bb.ai
  %.sroa.04.122.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.ai ]
  %.sroa.4.120.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.ai ]
  %i.es = add i64 %i.dv, 16                       ; 2 uses
  %i.et = add i64 %i.es, %.sroa.0.017.i.i.i.i
  br label %bb.ag

bb.ak:                                            ; preds = %.thread.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.121.i.i.i.i
  %i.ev = load i8, ptr %i.eu, align 1, !noalias !7391, !noundef !4 ; 2 uses
  %i.ew = icmp sgt i8 %i.ev, -1
  br i1 %i.ew, label %bb.al, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.thread.i, !prof !7

bb.al:                                            ; preds = %bb.ak
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !7391
  %i.ex = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i23.i.i.i.i = icmp ne i16 %i.ey, 0
  %i.ez = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ey, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i), !noalias !7396
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fa
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !7397
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.thread.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.thread.i: ; preds = %bb.al, %bb.ak
  %i.fb = phi i8 [ %.pre.i.i, %bb.al ], [ %i.ev, %bb.ak ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.fa, %bb.al ], [ %.sroa.4.121.i.i.i.i, %bb.ak ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7398), !noalias !7396
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.fd = and i8 %i.fb, 1
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.fg = and i64 %i.ff, %.val5.i.i.i
  store i8 %i.ds, ptr %i.fc, align 1, !noalias !7397
  %i.fh = getelementptr i8, ptr %.val.i.i.i, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store i8 %i.ds, ptr %i.fi, align 1, !noalias !7397
  %i.fj = load <2 x i64>, ptr %i.k, align 8, !alias.scope !7399, !noalias !7400
  %i.fk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.fe, i64 0
  %i.fl = sub <2 x i64> %i.fj, %i.fk
  store <2 x i64> %i.fl, ptr %i.k, align 8, !alias.scope !7399, !noalias !7400
  %i.fm = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.fn = getelementptr inbounds [32 x i8], ptr %.val.i.i.i, i64 %i.fm ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -32
  store i8 %i.bf, ptr %i.fo, align 8, !noalias !7401
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i3.sroa_idx.i = getelementptr inbounds i8, ptr %i.fn, i64 -24
  store i64 %storemerge.i.i, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i3.sroa_idx.i, align 8, !noalias !7401
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i3.sroa_idx.i = getelementptr inbounds i8, ptr %i.fn, i64 -16
  store ptr %storemerge208.i.i, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i3.sroa_idx.i, align 8, !noalias !7401
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i3.sroa_idx.i = getelementptr inbounds i8, ptr %i.fn, i64 -8
  store i64 %storemerge.i.i, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i3.sroa_idx.i, align 8, !noalias !7401
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs5EcwQX7phGK_5uu_ls.exit.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.fp = getelementptr inbounds i8, ptr %i.ee, i64 -24 ; 2 uses
  %.sroa.08.0.copyload.i = load i64, ptr %i.fp, align 8, !noalias !7402 ; 2 uses
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ee, i64 -16 ; 2 uses
  %.sroa.69.0.copyload.i = load ptr, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !7402 ; 2 uses
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ee, i64 -8
  store i64 %storemerge.i.i, ptr %i.fp, align 8, !noalias !7403
  store ptr %storemerge208.i.i, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !7403
  store i64 %storemerge.i.i, ptr %.sroa.710.0..sroa_idx.i, align 8, !noalias !7403
  %i.fq = icmp sgt i64 %.sroa.08.0.copyload.i, 0
  br i1 %i.fq, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs5EcwQX7phGK_5uu_ls.exit.i.i

bb.am:                                            ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.69.0.copyload.i, i64 noundef %.sroa.08.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7404
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs5EcwQX7phGK_5uu_ls.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %bb.am, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.i, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCs3VOLFQjs6jb_8lscolors9IndicatorNtNtCs7tKScEop1B6_5alloc6string6StringNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls.exit.thread.i, %bb.p
  br i1 %i.ah, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit.thread.i.i, label %bb.d

.outer.i.i:                                       ; preds = %bb.w, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i, %bb.q, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit.i.i, %bb.n, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i31.i.i, %bb.s
  %.sroa.0.3.i.i = phi i8 [ %.sroa.0.0.ph152.i.i, %bb.n ], [ %.sroa.0.0.ph152.i.i, %bb.s ], [ %.sroa.0.0.ph152.i.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i31.i.i ], [ %.sroa.0.0.ph152.i.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit.i.i ], [ %.sroa.0.0.ph152.i.i, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors27indicator_value_is_disabled.exit.i.i ], [ %.sroa.0.0.ph152.i.i, %bb.q ], [ 1, %bb.w ] ; 2 uses
  br i1 %.sroa.510.0..sroa_idx.promoted132.i.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit.thread.i.i, label %.lr.ph.i.i

bb.an:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7405)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i50.i.i = load i64, ptr %i.fr, align 8, !range !15, !alias.scope !7405, !noalias !7372, !noundef !4 ; 2 uses
  %i.fs = icmp sgt i64 %.val.i50.i.i, 0
  br i1 %i.fs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i51.i.i, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager3new.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i51.i.i: ; preds = %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i53.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !7405, !noalias !7372, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i53.i.i, i64 noundef %.val.i50.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7406
  br label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager3new.exit

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager3new.exit: ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit.thread.i.i, %bb.j, %bb.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i51.i.i
  %.sroa.0.1.i.i = phi i8 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i51.i.i ], [ 0, %bb.an ], [ %.sroa.0.0.ph.lcssa118.i.i, %bb.j ], [ %.sroa.0.0.ph.lcssa118.i.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7372
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE13with_capacityCs5EcwQX7phGK_5uu_ls.exit, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager3new.exit
  %.sroa.4.0 = phi i8 [ %.sroa.0.1.i.i, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager3new.exit ], [ 2, %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE13with_capacityCs5EcwQX7phGK_5uu_ls.exit ]
  %i.fu = call { i64, i32 } @_RNvMs5_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTime3now() #37 ; 2 uses
  %i.fv = extractvalue { i64, i32 } %i.fu, 0
  %i.fw = extractvalue { i64, i32 } %i.fu, 1
  %i.fx = call { i64, i32 } @_RNvXs8_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTimeINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubNtNtBS_4time8DurationE3sub(i64 noundef %i.fv, i32 noundef %i.fw, i64 noundef 15778476, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #37 ; 2 uses
  %i.fy = call { i64, i32 } @_RNvMs5_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTime3now() #37 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ga = load i8, ptr %i.fz, align 8, !range !33, !noundef !4
  %.not46 = icmp eq i8 %i.ga, 1
  br i1 %.not46, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7407
  %i.gb = call noundef dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7407 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = ptrtoint ptr %i.gb to i64
  br label %bb.ar

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.ap
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 128) #39
  unreachable

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %. = phi i64 [ 128, %bb.aq ], [ 0, %bb.ao ]
  %.sroa.940.0.ph = phi i64 [ %i.gd, %bb.aq ], [ 1, %bb.ao ]
  %i.ge = extractvalue { i64, i32 } %i.fy, 1
  %i.gf = extractvalue { i64, i32 } %i.fy, 0
  %i.gg = extractvalue { i64, i32 } %i.fx, 1
  %i.gh = extractvalue { i64, i32 } %i.fx, 0
  %i.gi = inttoptr i64 %.sroa.940.0.ph to ptr
  %.sroa.05.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  store i64 8192, ptr %0, align 8
  %.sroa.05.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.05.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.05.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.05.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.05.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %., ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gi, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.05.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.gh, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.gg, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.gf, ptr %.sroa.05.sroa.8.0..sroa_idx, align 8
  %.sroa.05.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.ge, ptr %.sroa.05.sroa.9.0..sroa_idx, align 8
  %.sroa.05.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.05.sroa.11.0..sroa_idx, align 8
  %.sroa.05.sroa.13.sroa.4.0..sroa.05.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.f, ptr %.sroa.05.sroa.13.sroa.4.0..sroa.05.sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.13.sroa.5.0..sroa.05.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 2, ptr %.sroa.05.sroa.13.sroa.5.0..sroa.05.sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.13.sroa.7.0..sroa.05.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 0, ptr %.sroa.05.sroa.13.sroa.7.0..sroa.05.sroa.13.0..sroa_idx.sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 %.sroa.4.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.gj, align 8
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.019.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.019.sroa.6.sroa.4.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.019.sroa.6.sroa.4.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.019.sroa.6.sroa.5.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.sroa.6.sroa.5.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !7426, !noalias !7427, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !7426, !noalias !7427, !noundef !4 ; 2 uses
  %i.b = mul i64 %.val.i.i, -1065810590584100411
  %i.c = add i64 %i.b, %.val1.i.i
  %i.d = mul i64 %i.c, -1065810590584100411       ; 2 uses
  %i.e = tail call noundef i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 26) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7428, !noalias !7429, !noundef !4
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = tail call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i1 noundef zeroext true) #36, !noalias !7430 ; 0 uses
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !7431, !noalias !7432, !nonnull !4, !noundef !4 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.k, align 8, !alias.scope !7431, !noalias !7432, !noundef !4 ; 4 uses
  %i.l = lshr i64 %i.e, 57
  %i.m = trunc nuw nsw i64 %i.l to i8             ; 3 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i
  %.pn.i.i = phi i64 [ %i.e, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.ap, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.p = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.ao, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !7433 ; 3 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.o
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.s, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.0.017.i.i, %i.u
  %i.w = and i64 %i.v, %.val5.i
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [144 x i8], ptr %.val.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -144
  %.val2.i.i = load i64, ptr %i.z, align 8, !noalias !7434, !noundef !4
  %i.aa = getelementptr i8, ptr %i.y, i64 -136
  %.val3.i.i = load i64, ptr %i.aa, align 8, !noalias !7434
  %i.ab = icmp eq i64 %.val.i.i, %.val2.i.i
  %i.ac = icmp eq i64 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2j_11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit, label %bb.d, !prof !12

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 0
  br i1 %.not12.i.i, label %bb.e, label %.thread.i.i, !prof !12

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.01.029.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.01.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.e
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.0.017.i.i, %i.ai
  %i.ak = and i64 %i.aj, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ak, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ao = add i64 %i.p, 16                        ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !7430, !noundef !4 ; 2 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !7430
  %i.at = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.au, 0
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aw
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !7435
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ax = phi i8 [ %.pre, %bb.h ], [ %i.ar, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aw, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7436)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.az = and i8 %i.ax, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = and i64 %i.bb, %.val5.i
  store i8 %i.m, ptr %i.ay, align 1, !noalias !7435
  %i.bd = getelementptr i8, ptr %.val.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store i8 %i.m, ptr %i.be, align 1, !noalias !7435
  %i.bf = load <2 x i64>, ptr %i.f, align 8, !alias.scope !7436, !noalias !7437
  %i.bg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ba, i64 0
  %i.bh = sub <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.f, align 8, !alias.scope !7436, !noalias !7437
  %i.bi = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bj = getelementptr inbounds [144 x i8], ptr %.val.i, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(144) %1, i64 144, i1 false), !noalias !7436
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2j_11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2j_11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs5EcwQX7phGK_5uu_ls.exit: ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs5EcwQX7phGK_5uu_ls8PathDataE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7440)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7440
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7440
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 304) #37, !noalias !7440
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !7440, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !7440, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7440
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7440, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7440
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7440
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7440
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8grow_oneCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7443)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7443
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7443
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24) #37, !noalias !7443
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !7443, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !7443, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7443
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7443, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7443
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7443
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7443
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs5EcwQX7phGK_5uu_ls5dired12BytePositionE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7446)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7446
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7446
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16) #37, !noalias !7446
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !7446, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !7446, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7446
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7446, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7446
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7446
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7446
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs5EcwQX7phGK_5uu_ls6output9EntryInfoE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7449)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7449
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7449
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 264) #37, !noalias !7449
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !7449, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs5EcwQX7phGK_5uu_ls6colors18parse_funky_string:bb.a

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.sroa.0.088 = phi i64 [ %.sroa.0.088.be, %.preheader.backedge ], [ %3, %bb.a ] ; 13 uses
  %.sroa.052.087 = phi i8 [ %.sroa.052.087.be, %.preheader.backedge ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.088
  %i.n = load i8, ptr %i.m, align 1, !noundef !4  ; 9 uses
  switch i8 %.sroa.052.087, label %default.unreachable86 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.j
  ]

bb.h:                                             ; preds = %.preheader
  switch i8 %i.n, label %bb.k [
    i8 58, label %.sink.split
    i8 0, label %.sink.split
    i8 61, label %bb.l
    i8 92, label %bb.c
    i8 94, label %bb.b
  ]

bb.i:                                             ; preds = %.preheader
  switch i8 %i.n, label %bb.m [
    i8 0, label %.loopexit
    i8 120, label %switch.lookup
    i8 88, label %switch.lookup
  ]

bb.j:                                             ; preds = %.preheader
  %i.o = icmp ugt i8 %i.n, 63
  br i1 %i.o, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.l, %bb.h
  %i.p = add nuw nsw i64 %.sroa.0.088, 1
  br label %bb.d

bb.l:                                             ; preds = %bb.h
  br i1 %4, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %switch.lookup, %bb.h, %bb.h, %bb.d, %bb.l, %bb.a
  %.sroa.0.088.lcssa95.sink = phi i64 [ %3, %bb.a ], [ %i.b, %switch.lookup ], [ %.sroa.0.088, %bb.h ], [ %.sroa.0.1.jt0, %bb.d ], [ %.sroa.0.088, %bb.h ], [ %.sroa.0.088, %bb.l ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.088.lcssa95.sink, ptr %i.q, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.b, %bb.i, %bb.c, %.sink.split
  %.sink = phi i64 [ -2, %.sink.split ], [ -1, %bb.c ], [ -1, %bb.i ], [ -1, %bb.b ], [ -1, %bb.p ], [ -1, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.i
  %i.r = and i8 %i.n, -8
  %or.cond = icmp eq i8 %i.r, 48
  br i1 %or.cond, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = add nuw nsw i64 %.sroa.0.088, 1
  br label %bb.d

bb.o:                                             ; preds = %bb.j
  %.old10 = icmp eq i8 %i.n, 63
  br i1 %.old10, label %bb.g, label %.loopexit

bb.p:                                             ; preds = %bb.j
  %i.t = icmp ult i8 %i.n, 127
  br i1 %i.t, label %bb.g, label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -16777216, 33620992) i32 @_RNvNtCs5EcwQX7phGK_5uu_ls6config24match_quoting_style_name(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #14 {
bb.a:
  switch i64 %1, label %bb.l [
    i64 7, label %bb.b
    i64 5, label %bb.d
    i64 12, label %bb.e
    i64 19, label %bb.g
    i64 1, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1702127980
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1818325605
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = zext i1 %2 to i32
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 1
  %i.l = xor i32 %i.k, 1818585203
  %i.m = getelementptr i8, ptr %0, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.o, 108
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.u = load i64, ptr %0, align 1
  %i.v = xor i64 %i.u, 7809573172535453811
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 1
  %i.y = zext i32 %i.x to i64
  %i.z = xor i64 %i.y, 1937334647
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %0, align 1
  %i.af = xor i64 %i.ae, 8315102230707791987
  %i.ag = getelementptr i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = xor i64 %i.ai, 1701863779
  %i.ak = or i64 %i.af, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ao = load i128, ptr %0, align 1
  %i.ap = xor i128 %i.ao, 158740870549519463201204942662078392435
  %i.aq = getelementptr i8, ptr %0, i64 3
  %i.ar = load i128, ptr %i.aq, align 1
  %i.as = xor i128 %i.ar, 153491464290572794179395928486361001068
  %i.at = or i128 %i.ap, %i.as
  %i.au = icmp ne i128 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.l

bb.h:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %0, align 1
  %i.ax = icmp eq i8 %lhsc, 99
  br i1 %i.ax, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ay = load i32, ptr %0, align 1
  %i.az = xor i32 %i.ay, 1633907557
  %i.ba = getelementptr i8, ptr %0, i64 4
  %i.bb = load i16, ptr %i.ba, align 1
  %i.bc = zext i16 %i.bb to i32
  %i.bd = xor i32 %i.bc, 25968
  %i.be = or i32 %i.az, %i.bd
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load i32, ptr %0, align 1
  %i.bj = xor i32 %i.bi, 1633906540
  %i.bk = getelementptr i8, ptr %0, i64 4
  %i.bl = load i16, ptr %i.bk, align 1
  %i.bm = zext i16 %i.bl to i32
  %i.bn = xor i32 %i.bm, 25964
  %i.bo = or i32 %i.bj, %i.bn
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.bs = load i32, ptr %0, align 1
  %i.bt = xor i32 %i.bs, 1668246627
  %i.bu = getelementptr i8, ptr %0, i64 3
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 %i.bv, 1701601635
  %i.bx = or i32 %i.bt, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.k, %bb.a, %bb.f, %bb.j, %bb.m
  %.sroa.0.0.insert.insert = phi i32 [ %i.cb, %bb.m ], [ -16777216, %bb.j ], [ -16777216, %bb.f ], [ -16777216, %bb.g ], [ -16777216, %bb.k ], [ -16777216, %bb.a ], [ -16777216, %bb.d ], [ -16777216, %bb.h ]
  ret i32 %.sroa.0.0.insert.insert

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.n
  %.sroa.18.0 = phi i32 [ 33554435, %bb.c ], [ %i.cd, %bb.n ], [ 3, %bb.j ], [ 33554434, %bb.h ], [ 33554434, %bb.i ], [ 16777218, %bb.k ]
  %.sroa.13.0 = phi i32 [ %i.j, %bb.c ], [ %.sroa.13.1, %bb.n ], [ 0, %bb.j ], [ 2, %bb.h ], [ 0, %bb.i ], [ 2, %bb.k ]
  %.sroa.022.1.insert.ext = shl nuw nsw i32 %.sroa.13.0, 8
  %i.cb = or i32 %.sroa.18.0, %.sroa.022.1.insert.ext
  br label %bb.l

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.13.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.g ]
  %.sroa.0.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.g ]
  %i.cc = select i1 %2, i32 33619968, i32 33554432
  %i.cd = or disjoint i32 %i.cc, %.sroa.0.1
  br label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls7display12locale_quote(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 23 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  %i.e = alloca [1 x i8], align 1                 ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 20 uses
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features4i18n18get_ctype_encoding() #37
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = add i64 %2, 2                            ; 5 uses
  %.not.i = icmp slt i64 %i.j, 0
  br i1 %.not.i, label %bb.h, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread101, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8888
  %i.l = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8888 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = add i64 %2, 6                            ; 6 uses
  %.not.i60 = icmp slt i64 %i.n, 0
  br i1 %.not.i60, label %bb.q, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit62.thread130, label %bb.g

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit62.thread130: ; preds = %bb.f
  store i64 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx134, align 8
  %.sroa.5.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx135, align 8
  br label %bb.r

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8889
  %i.p = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8889 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.q, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit62

bb.h:                                             ; preds = %bb.b, %bb.d
  %.sroa.488.0.ph = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.488.0.ph, i64 %i.j) #39
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.d
  store i64 %i.j, ptr %i.a, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %i.l, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.s = icmp samesign eq i64 %2, 0               ; 2 uses
  br i1 %3, label %bb.i, label %.thread179

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread101: ; preds = %bb.c
  store i64 0, ptr %i.a, align 8
  %.sroa.452.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.452.0..sroa_idx105, align 8
  %.sroa.553.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.553.0..sroa_idx106, align 8
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #37
  %.pre166 = load ptr, ptr %.sroa.452.0..sroa_idx105, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  br i1 %3, label %.thread195, label %.thread179.thread

.thread179.thread:                                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread101
  store i8 39, ptr %.pre166, align 1, !noalias !8890
  store i64 1, ptr %.sroa.553.0..sroa_idx106, align 8, !alias.scope !8890
  br label %.lr.ph.split.preheader

.thread195:                                       ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread101
  store i8 34, ptr %.pre166, align 1, !noalias !8891
  store i64 1, ptr %.sroa.553.0..sroa_idx106, align 8, !alias.scope !8891
  br label %.lr.ph.split.us.preheader

bb.i:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8891)
  store i8 34, ptr %i.l, align 1, !noalias !8891
  store i64 1, ptr %.sroa.553.0..sroa_idx, align 8, !alias.scope !8891
  br i1 %i.s, label %._crit_edge.thread202, label %.lr.ph.split.us.preheader

.thread179:                                       ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8890)
  store i8 39, ptr %i.l, align 1, !noalias !8890
  store i64 1, ptr %.sroa.553.0..sroa_idx, align 8, !alias.scope !8890
  br i1 %i.s, label %._crit_edge.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread179, %.thread179.thread
  %.sroa.553.0..sroa_idx113182189 = phi ptr [ %.sroa.553.0..sroa_idx, %.thread179 ], [ %.sroa.553.0..sroa_idx106, %.thread179.thread ] ; 7 uses
  %.sroa.452.0..sroa_idx110184188 = phi ptr [ %.sroa.452.0..sroa_idx, %.thread179 ], [ %.sroa.452.0..sroa_idx105, %.thread179.thread ] ; 3 uses
  %i.u = phi ptr [ %i.r, %.thread179 ], [ %i.t, %.thread179.thread ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.i, %.thread195
  %i.v = phi ptr [ %i.r, %bb.i ], [ %i.t, %.thread195 ]
  %.sroa.452.0..sroa_idx110184 = phi ptr [ %.sroa.452.0..sroa_idx, %bb.i ], [ %.sroa.452.0..sroa_idx105, %.thread195 ] ; 3 uses
  %.sroa.553.0..sroa_idx113182 = phi ptr [ %.sroa.553.0..sroa_idx, %bb.i ], [ %.sroa.553.0..sroa_idx106, %.thread195 ] ; 7 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit.us
  %.sroa.010.0150.us = phi ptr [ %i.w, %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit.us ], [ %1, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.0150.us, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.010.0150.us, align 1, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8892)
  switch i8 %i.x, label %bb.l [
    i8 34, label %bb.k
    i8 92, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !8893)
  %i.y = load i64, ptr %.sroa.553.0..sroa_idx113182, align 8, !alias.scope !8894, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.a, align 8, !range !5, !alias.scope !8894, !noundef !4
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ult i64 %i.aa, 2
  br i1 %i.ab, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i5.i.us, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit6.i.us, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i5.i.us: ; preds = %bb.j
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.y, i64 noundef 2, i64 noundef 1, i64 noundef 1) #37
  %i.ac = load i64, ptr %.sroa.553.0..sroa_idx113182, align 8, !alias.scope !8895, !noundef !4
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit6.i.us

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit6.i.us: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i5.i.us, %bb.j
  %.sink9.i.us = phi i64 [ %i.ac, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i5.i.us ], [ %i.y, %bb.j ] ; 3 uses
  %i.ad = icmp sgt i64 %.sink9.i.us, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %.sroa.452.0..sroa_idx110184, align 8, !alias.scope !8895, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink9.i.us
  store i16 23644, ptr %i.af, align 1, !noalias !8895
  %i.ag = add nuw i64 %.sink9.i.us, 2
  store i64 %i.ag, ptr %.sroa.553.0..sroa_idx113182, align 8, !alias.scope !8895
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit.us

bb.k:                                             ; preds = %.lr.ph.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !8896)
  %i.ah = load i64, ptr %.sroa.553.0..sroa_idx113182, align 8, !alias.scope !8897, !noundef !4 ; 3 uses
  %i.ai = load i64, ptr %i.a, align 8, !range !5, !alias.scope !8897, !noundef !4
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i2.i.us, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit3.i.us, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i2.i.us: ; preds = %bb.k
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i64 noundef 2, i64 noundef 1, i64 noundef 1) #37
  %i.al = load i64, ptr %.sroa.553.0..sroa_idx113182, align 8, !alias.scope !8898, !noundef !4
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit3.i.us

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit3.i.us: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i2.i.us, %bb.k
  %.sink8.i.us = phi i64 [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i2.i.us ], [ %i.ah, %bb.k ] ; 3 uses
  %i.am = icmp sgt i64 %.sink8.i.us, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %.sroa.452.0..sroa_idx110184, align 8, !alias.scope !8898, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink8.i.us
  store i16 8796, ptr %i.ao, align 1, !noalias !8898
  %i.ap = add nuw i64 %.sink8.i.us, 2
  store i64 %i.ap, ptr %.sroa.553.0..sroa_idx113182, align 8, !alias.scope !8898
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit.us

bb.l:                                             ; preds = %.lr.ph.split.us
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls7display17push_basic_escape(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i8 noundef %i.x) #37
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit.us

_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit.us: ; preds = %bb.l, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit3.i.us, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit6.i.us
  %i.aq = icmp eq ptr %i.w, %i.v
  br i1 %i.aq, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit
  %.sroa.010.0150 = phi ptr [ %i.ar, %_RNvNtCs5EcwQX7phGK_5uu_ls7display16push_locale_byte.exit ], [ %1, %.lr.ph.split.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.0150, i64 1 ; 2 uses
  %i.as = load i8, ptr %.sroa.010.0150, align 1, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8892)
  switch i8 %i.as, label %bb.o [
    i8 39, label %bb.m
    i8 92, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.split
end_hunk_1
