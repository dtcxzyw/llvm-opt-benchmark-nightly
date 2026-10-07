Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_commas5rules15trailing_commas15trailing_commas:bb.a

bb.bt:                                            ; preds = %.loopexit.split-lp197, %.loopexit196
  %lpad.phi200 = phi { ptr, i32 } [ %lpad.loopexit198, %.loopexit196 ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp197 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.t) #34
          to label %.body unwind label %bb.aw, !noalias !3986

bb.bu:                                            ; preds = %bb.bs, %.split7.i.i.i, %bb.bp
  %i.gl = getelementptr inbounds nuw i8, ptr %.val23.i, i64 %i.fz
  %i.gm = sub nuw nsw i64 %i.ga, %i.fz
  store ptr %i.gl, ptr %i.s, align 8, !noalias !3986
  store i64 %i.gm, ptr %i.au, align 8, !noalias !3986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3986
  store ptr %i.s, ptr %i.o, align 8, !noalias !3986
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !3986
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @691, ptr noundef nonnull %i.o)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit196, !noalias !3986

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3986
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, i32 noundef %.sroa.0.0.ph, i32 noundef %.sroa.4.0.ph)
          to label %bb.bv unwind label %.loopexit196, !noalias !3986

bb.bv:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.bw unwind label %.loopexit196, !noalias !3986

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3986
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.r)
          to label %bb.bx unwind label %.loopexit196, !noalias !3986

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3986
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.t)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3986
  br label %bb.by

bb.by:                                            ; preds = %.noexc70, %bb.be, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit.i, %.critedge.i, %.noexc60, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gn = icmp eq i8 %.sroa.13.1.i474, 7
  %.sroa.044.0.in.v = select i1 %i.gn, i8 7, i8 5
  %.sroa.044.0.in = icmp eq i8 %.sroa.1280.0.ph122134471, %.sroa.044.0.in.v
  br i1 %.sroa.044.0.in, label %bb.bz, label %.outer.backedge

bb.bz:                                            ; preds = %bb.by
  %i.go = load i64, ptr %i.aj, align 8, !noundef !5 ; 3 uses
  %i.gp = icmp ult i64 %i.go, 1152921504606846976
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp samesign ult i64 %i.go, 2
  br i1 %i.gq, label %.outer.backedge, label %bb.ca

.outer.backedge:                                  ; preds = %bb.bz, %bb.ca, %bb.by
  br label %.outer

bb.ca:                                            ; preds = %bb.bz
  %i.gr = add nsw i64 %i.go, -1                   ; 2 uses
  store i64 %i.gr, ptr %i.aj, align 8
  %i.gs = load i64, ptr %i.z, align 8, !range !12, !noundef !5
  %i.gt = icmp samesign ult i64 %i.gr, %i.gs
  call void @llvm.assume(i1 %i.gt)
  br label %.outer.backedge

bb.cb:                                            ; preds = %.body
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes19check_string_quotes(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 4) %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [4 x i8], align 4                 ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [48 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [40 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 11 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [64 x i8], align 8               ; 11 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 12 uses
  %i.ap = alloca [16 x i8], align 8               ; 3 uses
  store i64 %1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !noundef !5
  %i.at = and i32 %i.as, 2097200
  %or.cond = icmp eq i32 %i.at, 0
  br i1 %or.cond, label %bb.b, label %bb.ex

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10expressionNtB5_10StringLike5parts(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtCskLngH8kgpZI_15ruff_python_ast10expression18StringLikePartIterNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes19check_string_quotes0EE9from_iterB4o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.au = load i32, ptr %i.ar, align 8, !noundef !5
  %i.av = and i32 %i.au, 524288
  %i.aw = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 10 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 2 uses
  br i1 %i.aw, label %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any.exit, label %bb.c

_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any.exit: ; preds = %bb.b
  %i.bb = and i64 %i.ba, 412316860416
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %bb.db, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bc = and i64 %i.ba, 549755813888
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.db, label %bb.da

.thread.i:                                        ; preds = %.body.i, %.loopexit.split-lp183.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.d ], [ %.pn38.pn.i, %.body.i ], [ %lpad.phi186.i, %.loopexit.split-lp183.i ] ; 2 uses
  br i1 %i.aw, label %bb.ez, label %common.resume

bb.d:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEEEB3l_.exit56.i, %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.e:                                             ; preds = %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !4096, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2392 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !4096, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4096
  %.idx404.i = shl nuw nsw i64 %i.bi, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx404.i ; 2 uses
  store ptr %i.bg, ptr %i.ak, align 8, !noalias !4096
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !noalias !4096
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.bn, ptr %i.bq, align 8, !noalias !4096
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB39_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCNvB14_7strings0EE9from_iterB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ak)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4096
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !4096, !nonnull !5, !noundef !5 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !4096, !noundef !5 ; 4 uses
  %.idx.i = mul nuw nsw i64 %i.bu, 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4097)
  %.not.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i, label %.loopexit181.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.bw = load i8, ptr %i.bl, align 8, !range !15, !alias.scope !4097, !noalias !4098
  %.fr25.i.i = freeze i8 %i.bw
  %i.bx = trunc i8 %.fr25.i.i to i1
  br i1 %i.bx, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.backedge.us.i.i
  %i.by = phi ptr [ %i.bz, %.backedge.us.i.i ], [ %i.bs, %.lr.ph.i.i ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %i.cb = load i8, ptr %i.ca, align 4, !range !15, !alias.scope !4099, !noalias !4100, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.backedge.us.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !range !45, !alias.scope !4099, !noalias !4100, !noundef !5
  %i.cf = icmp eq i32 %i.ce, 39
  br i1 %i.cf, label %.backedge.us.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !4099, !noalias !4100, !nonnull !5, !noundef !5 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !4099, !noalias !4100, !noundef !5 ; 6 uses
  %i.ck = add i64 %i.cj, -1                       ; 4 uses
  %or.cond4.i.us.i.i = icmp ugt i64 %i.cj, 1
  br i1 %or.cond4.i.us.i.i, label %bb.h, label %.split.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !4101, !noalias !4102, !noundef !5
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %bb.i, label %.split.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !4101, !noalias !4102, !noundef !5
  %i.cq = icmp sgt i8 %i.cp, -65
  br i1 %i.cq, label %.split7.i.us.i.i, label %.split.i.i.i.i

.split7.i.us.i.i:                                 ; preds = %bb.i
  %i.cr = add i64 %i.cj, -2                       ; 4 uses
  %i.cs = icmp samesign ult i64 %i.cr, 16
  br i1 %i.cs, label %.preheader.i.i.i.us.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.sink.split.i.us.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.sink.split.i.us.i.i: ; preds = %.split7.i.us.i.i
  %i.ct = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 39, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.cr)
          to label %.noexc.i unwind label %.loopexit182.i

.noexc.i:                                         ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.sink.split.i.us.i.i
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %.loopexit181.i, label %.backedge.us.i.i

.preheader.i.i.i.us.i.i:                          ; preds = %.split7.i.us.i.i
  %.not.i.i.i.us.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i.us.i.i, label %.backedge.us.i.i, label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %.preheader.i.i.i.us.i.i, %bb.j
  %.sroa.01.05.i.i.i.us.i.i = phi i64 [ %i.cz, %bb.j ], [ 0, %.preheader.i.i.i.us.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.01.05.i.i.i.us.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !4103, !noalias !4102, !noundef !5
  %i.cy = icmp eq i8 %i.cx, 39
  br i1 %i.cy, label %.loopexit181.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.cz = add nuw nsw i64 %.sroa.01.05.i.i.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.us.i.i = icmp eq i64 %i.cz, %i.cr
  br i1 %exitcond.not.i.i.i.us.i.i, label %.backedge.us.i.i, label %.lr.ph.i.i.i.us.i.i

.backedge.us.i.i:                                 ; preds = %bb.j, %.preheader.i.i.i.us.i.i, %.noexc.i, %bb.f, %.lr.ph.split.us.i.i
  %.not27.i.i = icmp eq ptr %i.bz, %i.bv
  br i1 %.not27.i.i, label %.loopexit181.i, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.da = phi ptr [ %i.db, %.backedge.i.i ], [ %i.bs, %.lr.ph.i.i ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %i.dd = load i8, ptr %i.dc, align 4, !range !15, !alias.scope !4099, !noalias !4100, !noundef !5
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.backedge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !range !45, !alias.scope !4099, !noalias !4100, !noundef !5
  %i.dh = icmp eq i32 %i.dg, 34
  br i1 %i.dh, label %.backedge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !4099, !noalias !4100, !nonnull !5, !noundef !5 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !4099, !noalias !4100, !noundef !5 ; 6 uses
  %i.dm = add i64 %i.dl, -1                       ; 4 uses
  %or.cond4.i.i.i = icmp ugt i64 %i.dl, 1
  br i1 %or.cond4.i.i.i, label %bb.m, label %.split.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !4101, !noalias !4102, !noundef !5
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %bb.n, label %.split.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !4101, !noalias !4102, !noundef !5
  %i.ds = icmp sgt i8 %i.dr, -65
  br i1 %i.ds, label %.split.i.i.i, label %.split.i.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.dt = add i64 %i.dl, -2                       ; 4 uses
  %i.du = icmp samesign ult i64 %i.dt, 16
  br i1 %i.du, label %.preheader.i.i9.i.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.sink.split.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g
  %.us-phi.i.i = phi ptr [ %i.ch, %bb.i ], [ %i.ch, %bb.g ], [ %i.ch, %bb.h ], [ %i.dj, %bb.l ], [ %i.dj, %bb.m ], [ %i.dj, %bb.n ]
  %.us-phi20.i.i = phi i64 [ %i.cj, %bb.i ], [ %i.cj, %bb.g ], [ %i.cj, %bb.h ], [ %i.dl, %bb.l ], [ %i.dl, %bb.m ], [ %i.dl, %bb.n ]
  %.us-phi21.i.i = phi i64 [ %i.ck, %bb.i ], [ %i.ck, %bb.g ], [ %i.ck, %bb.h ], [ %i.dm, %bb.l ], [ %i.dm, %bb.m ], [ %i.dm, %bb.n ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.us-phi.i.i, i64 noundef %.us-phi20.i.i, i64 noundef 1, i64 noundef %.us-phi21.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #35
          to label %.noexc51.i unwind label %.loopexit.split-lp183.loopexit.split-lp.i

.noexc51.i:                                       ; preds = %.split.i.i.i.i
  unreachable

.preheader.i.i9.i.i.i:                            ; preds = %.split.i.i.i
  %.not.i.i10.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i10.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.preheader.i.i9.i.i.i, %bb.o
  %.sroa.01.05.i.i12.i.i.i = phi i64 [ %i.dy, %bb.o ], [ 0, %.preheader.i.i9.i.i.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.01.05.i.i12.i.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !4104, !noalias !4102, !noundef !5
  %i.dx = icmp eq i8 %i.dw, 34
  br i1 %i.dx, label %.loopexit181.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i11.i.i.i
  %i.dy = add nuw nsw i64 %.sroa.01.05.i.i12.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i13.i.i.i = icmp eq i64 %i.dy, %i.dt
  br i1 %exitcond.not.i.i13.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i11.i.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.sink.split.i.i.i: ; preds = %.split.i.i.i
  %i.dz = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 34, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef range(i64 0, -9223372036854775808) %i.dt)
          to label %.noexc52.i unwind label %.loopexit.split-lp183.loopexit.i

.noexc52.i:                                       ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.sink.split.i.i.i
  %i.ea = extractvalue { i64, i64 } %i.dz, 0
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %.loopexit181.i, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.o, %.noexc52.i, %.preheader.i.i9.i.i.i, %bb.k, %.lr.ph.split.i.i
  %.not26.i.i = icmp eq ptr %i.db, %i.bv
  br i1 %.not26.i.i, label %.loopexit181.i, label %.lr.ph.split.i.i

.loopexit181.i:                                   ; preds = %.backedge.i.i, %.noexc52.i, %.lr.ph.i.i11.i.i.i, %.backedge.us.i.i, %.noexc.i, %.lr.ph.i.i.i.us.i.i, %.noexc
  %i.ec = phi i1 [ true, %.lr.ph.i.i11.i.i.i ], [ true, %.lr.ph.i.i.i.us.i.i ], [ false, %.noexc ], [ false, %.backedge.us.i.i ], [ true, %.noexc.i ], [ false, %.backedge.i.i ], [ true, %.noexc52.i ]
  %.sroa.0107.0.copyload.i = load i64, ptr %i.al, align 8, !noalias !4096
  %i.ed = icmp ult i64 %i.bu, 230584300921369396
  call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bu
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !4096
  store ptr %i.bg, ptr %i.aj, align 8, !noalias !4096
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.bo, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4096
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.bs, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !4096
  %.sroa.4.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx105.i, align 8, !noalias !4096
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.0107.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4096
  %.sroa.6106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  store ptr %i.ee, ptr %.sroa.6106.0..sroa_idx.i, align 8, !noalias !4096
  %i.ef = icmp eq i64 %i.bi, 0
  br i1 %i.ef, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEEEB3l_.exit56.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit181.i
  %i.eg = getelementptr i8, ptr %i.bn, i64 8      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 2393
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 13 uses
  br label %bb.p

bb.p:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.ew = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.lh, %.backedge.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4105)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ex, ptr %i.aj, align 8, !alias.scope !4106, !noalias !4107
  call void @llvm.experimental.noalias.scope.decl(metadata !4108)
  %i.ey = load ptr, ptr %.sroa.6106.0..sroa_idx.i, align 8, !alias.scope !4109, !noalias !4110, !nonnull !5, !noundef !5
  %i.ez = load ptr, ptr %.sroa.4.0..sroa_idx105.i, align 8, !alias.scope !4109, !noalias !4110, !nonnull !5, !noundef !5 ; 8 uses
  %i.fa = icmp eq ptr %i.ez, %i.ey
  br i1 %i.fa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEEEB3l_.exit56.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i: ; preds = %bb.p
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store ptr %i.fb, ptr %.sroa.4.0..sroa_idx105.i, align 8, !alias.scope !4109, !noalias !4110
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %.sroa.5.0.copyload8.i.i = load i32, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !noalias !4111 ; 2 uses
  %.not6.i.i = icmp eq i32 %.sroa.5.0.copyload8.i.i, -1
  br i1 %.not6.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEEEB3l_.exit56.i, label %bb.q

.body.i:                                          ; preds = %bb.cj, %bb.ce, %bb.ap, %.loopexit.split-lp.i, %.loopexit.i
  %.pn38.pn.i = phi { ptr, i32 } [ %.pn38.i, %bb.cj ], [ %.pn.i, %bb.ap ], [ %lpad.phi175.i, %bb.ce ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i)
          to label %.thread.i unwind label %bb.bh

.loopexit.i:                                      ; preds = %bb.cx, %bb.cf, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.be, %bb.al, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes32text_starts_at_consecutive_quote.exit.thread.i, %bb.ak, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.q:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i
  %.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  %.sroa.7.0.copyload10.i.i = load i32, ptr %.sroa.7.0..sroa_idx9.i.i, align 4, !noalias !4111
  %.sroa.6111.sroa.0.0.copyload.i = load ptr, ptr %i.ez, align 8, !noalias !4105 ; 4 uses
  %.sroa.6111.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.6111.sroa.6.0.copyload.i = load i64, ptr %.sroa.6111.sroa.6.0..sroa_idx.i, align 8, !noalias !4105 ; 10 uses
  %.sroa.6111.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %.sroa.6111.sroa.7.0.copyload.i = load ptr, ptr %.sroa.6111.sroa.7.0..sroa_idx.i, align 8, !noalias !4105 ; 12 uses
  %.sroa.6111.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.sroa.6111.sroa.8.0.copyload.i = load i64, ptr %.sroa.6111.sroa.8.0..sroa_idx.i, align 8, !noalias !4105 ; 13 uses
  %i.fc = trunc i32 %.sroa.7.0.copyload10.i.i to i1
  br i1 %i.fc, label %bb.s, label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEEEB3l_.exit56.i: ; preds = %.backedge.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i, %bb.p, %.loopexit181.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes7strings.exit unwind label %bb.d

bb.r:                                             ; preds = %bb.q
  %i.fd = load i8, ptr %i.bl, align 8, !range !15, !noundef !5
  %i.fe = trunc nuw i8 %i.fd to i1                ; 5 uses
  %..i = select i1 %i.fe, i32 39, i32 34          ; 4 uses
  %.not34.i = icmp eq i32 %.sroa.5.0.copyload8.i.i, %..i
  %brmerge.i = or i1 %i.ec, %.not34.i
  br i1 %brmerge.i, label %.backedge.i, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ff = load ptr, ptr %i.ax, align 8, !noalias !4096, !nonnull !5, !align !6, !noundef !5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !5
  %i.fi = and i64 %i.fh, 274877906944
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.backedge.i, label %bb.bm

bb.t:                                             ; preds = %bb.r
  %i.fk = load ptr, ptr %i.ax, align 8, !noalias !4096, !nonnull !5, !align !6, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !5
  %i.fn = and i64 %i.fm, 137438953472
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.backedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6111.sroa.7.0.copyload.i) ]
  %i.fp = icmp eq i64 %.sroa.6111.sroa.8.0.copyload.i, 2
  br i1 %i.fp, label %bb.v, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB5_6Trivia14has_empty_text.exit.thread135.i

bb.v:                                             ; preds = %bb.u
  %i.fq = load i16, ptr %.sroa.6111.sroa.7.0.copyload.i, align 1
end_hunk_0
