Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.09?download=true
inline.NumInlined: 4098
inline.NumDeleted: 1980
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_RNvNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines21extraneous_whitespace21extraneous_whitespace:bb.a
    i8 38, label %bb.q
    i8 39, label %bb.s
  ]

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %.pn114, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  ret void

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.bu, %bb.l ], [ %i.bv, %bb.m ] ; 24 uses
  switch i8 %i.br, label %.backedge.backedge [
    i8 20, label %bb.aa
    i8 21, label %.thread
    i8 22, label %bb.v
    i8 23, label %bb.w
    i8 24, label %bb.ab
    i8 25, label %bb.x
    i8 26, label %bb.y
    i8 38, label %bb.z
    i8 39, label %.thread144
  ]

.backedge.backedge:                               ; preds = %bb.k, %.thread, %bb.bw, %bb.ab, %bb.di, %bb.de, %.thread144, %bb.ct, %bb.cx, %bb.co, %bb.z, %bb.cj, %bb.cn, %bb.aq, %bb.au, %bb.bg, %bb.bc, %bb.bv, %bb.bm, %bb.cf, %bb.cb, %bb.ad, %bb.ax, %bb.bh, %bb.cz, %bb.ah
  %.be = phi ptr [ %i.bp, %bb.ah ], [ %i.bp, %bb.cz ], [ %i.ds, %bb.bh ], [ %i.ds, %bb.ax ], [ %i.bp, %bb.ad ], [ %i.er, %bb.cb ], [ %i.er, %bb.cf ], [ %i.ds, %bb.bm ], [ %i.ds, %bb.bv ], [ %i.ds, %bb.bc ], [ %i.ds, %bb.bg ], [ %i.bp, %bb.au ], [ %i.bp, %bb.aq ], [ %i.bp, %bb.cn ], [ %i.bp, %bb.cj ], [ %i.bp, %bb.z ], [ %i.bp, %bb.co ], [ %i.bp, %bb.cx ], [ %i.bp, %bb.ct ], [ %i.bp, %.thread144 ], [ %i.bp, %bb.de ], [ %i.bp, %bb.di ], [ %i.bp, %bb.ab ], [ %i.er, %bb.bw ], [ %i.bp, %.thread ], [ %i.bp, %bb.k ]
  %.be196 = phi ptr [ %i.bl, %bb.ah ], [ %i.bl, %bb.cz ], [ %i.bp, %bb.bh ], [ %i.bp, %bb.ax ], [ %i.bl, %bb.ad ], [ %i.es, %bb.cb ], [ %i.es, %bb.cf ], [ %i.bp, %bb.bm ], [ %i.bp, %bb.bv ], [ %i.bp, %bb.bc ], [ %i.bp, %bb.bg ], [ %i.bl, %bb.au ], [ %i.bl, %bb.aq ], [ %i.bl, %bb.cn ], [ %i.bl, %bb.cj ], [ %i.bl, %bb.z ], [ %i.bl, %bb.co ], [ %i.bl, %bb.cx ], [ %i.bl, %bb.ct ], [ %i.bl, %.thread144 ], [ %i.bl, %bb.de ], [ %i.bl, %bb.di ], [ %i.bl, %bb.ab ], [ %i.es, %bb.bw ], [ %i.bl, %.thread ], [ %i.bl, %bb.k ]
  %.be197 = phi i1 [ false, %bb.ah ], [ false, %bb.cz ], [ true, %bb.bh ], [ true, %bb.ax ], [ false, %bb.ad ], [ true, %bb.cb ], [ true, %bb.cf ], [ true, %bb.bm ], [ true, %bb.bv ], [ true, %bb.bc ], [ true, %bb.bg ], [ false, %bb.au ], [ false, %bb.aq ], [ false, %bb.cn ], [ false, %bb.cj ], [ false, %bb.z ], [ false, %bb.co ], [ false, %bb.cx ], [ false, %bb.ct ], [ false, %.thread144 ], [ false, %bb.de ], [ false, %bb.di ], [ false, %bb.ab ], [ true, %bb.bw ], [ false, %.thread ], [ false, %bb.k ]
  %.sroa.051.0.be = phi i8 [ 35, %bb.ah ], [ %i.br, %bb.cz ], [ %i.br, %bb.bh ], [ %i.br, %bb.ax ], [ %i.br, %bb.ad ], [ %i.br, %bb.cb ], [ %i.br, %bb.cf ], [ %i.br, %bb.bm ], [ %i.br, %bb.bv ], [ %i.br, %bb.bc ], [ %i.br, %bb.bg ], [ %i.br, %bb.au ], [ %i.br, %bb.aq ], [ %i.br, %bb.cn ], [ %i.br, %bb.cj ], [ 38, %bb.z ], [ %i.br, %bb.co ], [ %i.br, %bb.cx ], [ %i.br, %bb.ct ], [ 39, %.thread144 ], [ %i.br, %bb.de ], [ %i.br, %bb.di ], [ %i.br, %bb.ab ], [ %i.br, %bb.bw ], [ %i.br, %.thread ], [ %i.br, %bb.k ]
  %.sroa.0.0.be = phi i32 [ %.sroa.0.1, %bb.ah ], [ %.sroa.0.1141, %bb.cz ], [ %.sroa.0.1, %bb.bh ], [ %.sroa.0.1, %bb.ax ], [ %.sroa.0.1, %bb.ad ], [ %.sroa.0.1, %bb.cb ], [ %.sroa.0.1, %bb.cf ], [ %.sroa.0.1, %bb.bm ], [ %.sroa.0.1, %bb.bv ], [ %.sroa.0.1, %bb.bc ], [ %.sroa.0.1, %bb.bg ], [ %.sroa.0.1, %bb.au ], [ %.sroa.0.1, %bb.aq ], [ %.sroa.0.1, %bb.cn ], [ %.sroa.0.1, %bb.cj ], [ %.sroa.0.1154, %bb.z ], [ %.sroa.0.1150, %bb.co ], [ %.sroa.0.1150, %bb.cx ], [ %.sroa.0.1150, %bb.ct ], [ %.sroa.0.1147, %.thread144 ], [ %.sroa.0.1141, %bb.de ], [ %.sroa.0.1141, %bb.di ], [ %.sroa.0.1, %bb.ab ], [ %.sroa.0.1, %bb.bw ], [ %.sroa.0.1141, %.thread ], [ %.sroa.0.1, %bb.k ]
  br label %.backedge

bb.l:                                             ; preds = %bb.g, %bb.g
  %i.bu = add i32 %.sroa.0.0, 1
  br label %bb.k

bb.m:                                             ; preds = %bb.g, %bb.g
  %i.bv = call i32 @llvm.usub.sat.i32(i32 %.sroa.0.0, i32 1)
  br label %bb.k

bb.n:                                             ; preds = %bb.g
  %i.bw = load i64, ptr %i.ai, align 8, !alias.scope !7213, !noundef !4 ; 3 uses
  %i.bx = load i64, ptr %i.ag, align 8, !range !110, !alias.scope !7213, !noundef !4
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.o, label %.thread148

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread148 unwind label %.loopexit

.thread148:                                       ; preds = %bb.n, %bb.o
  %i.bz = load ptr, ptr %i.ah, align 8, !alias.scope !7213, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw
  store i8 22, ptr %i.ca, align 1
  %i.cb = add i64 %i.bw, 1
  store i64 %i.cb, ptr %i.ai, align 8, !alias.scope !7213
  br label %bb.aa

bb.p:                                             ; preds = %bb.g
  %i.cc = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.thread, label %bb.t

bb.q:                                             ; preds = %bb.g
  %i.ce = load i64, ptr %i.ai, align 8, !alias.scope !7216, !noundef !4 ; 3 uses
  %i.cf = load i64, ptr %i.ag, align 8, !range !110, !alias.scope !7216, !noundef !4
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %.thread152

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread152 unwind label %.loopexit

.thread152:                                       ; preds = %bb.q, %bb.r
  %i.ch = load ptr, ptr %i.ah, align 8, !alias.scope !7216, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce
  store i8 38, ptr %i.ci, align 1
  %i.cj = add i64 %i.ce, 1
  store i64 %i.cj, ptr %i.ai, align 8, !alias.scope !7216
  br label %bb.z

bb.s:                                             ; preds = %bb.g
  %i.ck = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.thread144, label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.cm = add i64 %i.cc, -1                       ; 2 uses
  store i64 %i.cm, ptr %i.ai, align 8
  %i.cn = load i64, ptr %i.ag, align 8, !range !110, !noundef !4
  %i.co = icmp ult i64 %i.cm, %i.cn
  call void @llvm.assume(i1 %i.co)
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.cp = add i64 %i.ck, -1                       ; 2 uses
  store i64 %i.cp, ptr %i.ai, align 8
  %i.cq = load i64, ptr %i.ag, align 8, !range !110, !noundef !4
  %i.cr = icmp ult i64 %i.cp, %i.cq
  call void @llvm.assume(i1 %i.cr)
  br label %.thread144

bb.v:                                             ; preds = %bb.k
  br label %bb.aa

bb.w:                                             ; preds = %bb.k
  br label %.thread

bb.x:                                             ; preds = %bb.k
  br label %bb.ab

bb.y:                                             ; preds = %bb.k
  br label %bb.ab

bb.z:                                             ; preds = %.thread152, %bb.k
  %.sroa.0.1154 = phi i32 [ %.sroa.0.0, %.thread152 ], [ %.sroa.0.1, %bb.k ] ; 2 uses
  %i.cs = icmp eq i32 %.sroa.0.1154, 0
  br i1 %i.cs, label %bb.aa, label %.backedge.backedge

.thread144:                                       ; preds = %bb.u, %bb.s, %bb.k
  %.sroa.0.1147 = phi i32 [ %.sroa.0.1, %bb.k ], [ %.sroa.0.0, %bb.s ], [ %.sroa.0.0, %bb.u ] ; 2 uses
  %i.ct = icmp eq i32 %.sroa.0.1147, 0
  br i1 %i.ct, label %.thread, label %.backedge.backedge

bb.aa:                                            ; preds = %.thread148, %bb.v, %bb.k, %bb.z
  %.sroa.0.1150 = phi i32 [ 0, %bb.z ], [ %.sroa.0.1, %bb.k ], [ %.sroa.0.0, %.thread148 ], [ %.sroa.0.1, %bb.v ] ; 3 uses
  %.sroa.035.0 = phi i32 [ 123, %bb.z ], [ 40, %bb.k ], [ 91, %.thread148 ], [ 91, %bb.v ]
  %i.cu = invoke { i8, i32 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine19trailing_whitespace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.019.0)
          to label %bb.co unwind label %.loopexit ; 2 uses

.thread:                                          ; preds = %bb.t, %bb.p, %bb.w, %bb.k, %.thread144
  %.sroa.0.1141 = phi i32 [ 0, %.thread144 ], [ %.sroa.0.1, %bb.k ], [ %.sroa.0.1, %bb.w ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.t ] ; 4 uses
  %.sroa.037.0 = phi i32 [ 125, %.thread144 ], [ 41, %bb.k ], [ 93, %bb.w ], [ 93, %bb.p ], [ 93, %bb.t ]
  %i.cv = icmp eq i8 %.sroa.051.0, 25
  br i1 %i.cv, label %.backedge.backedge, label %bb.cy

bb.ab:                                            ; preds = %bb.k, %bb.y, %bb.x
  %i.cw = phi i1 [ false, %bb.y ], [ false, %bb.x ], [ true, %bb.k ]
  %.sroa.18.2 = phi i32 [ 59, %bb.y ], [ 44, %bb.x ], [ 58, %bb.k ]
  %i.cx = icmp eq i8 %.sroa.051.0, 25
  br i1 %i.cx, label %.backedge.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = invoke { i8, i32 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine18leading_whitespace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.019.0)
          to label %bb.ad unwind label %.loopexit ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cz = extractvalue { i8, i32 } %i.cy, 0       ; 4 uses
  %i.da = extractvalue { i8, i32 } %i.cy, 1       ; 11 uses
  %i.db = icmp eq i8 %i.cz, 0
  br i1 %i.db, label %.backedge.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.cw, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %.not93 = icmp eq i64 %i.dc, 0
  br i1 %.not93, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !range !6614, !noundef !4
  %i.dh = icmp eq i8 %i.dg, 22
  br i1 %i.dh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.not94 = icmp ne i32 %.sroa.0.1, 0
  %i.di = icmp eq i8 %.sroa.051.0, 35
  %or.cond = and i1 %i.di, %.not94
  br i1 %or.cond, label %.backedge.backedge, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dj = icmp eq i8 %.sroa.051.0, 24
  br i1 %i.dj, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ae, %bb.ah
  %i.dk = load i32, ptr %.sroa.019.0, align 4, !noundef !4 ; 4 uses
  %i.dl = sub i32 %i.dk, %i.da                    ; 2 uses
  %.not95 = icmp ugt i32 %i.da, %i.dk
  br i1 %.not95, label %.invoke, label %bb.cg, !prof !15

bb.ak:                                            ; preds = %bb.ai
  %i.dm = icmp eq ptr %i.bp, %i.am
  br i1 %i.dm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread, label %bb.aw

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread: ; preds = %bb.ak
  store i64 0, ptr %.sroa.6, align 8, !alias.scope !7219, !noalias !7222
  br label %.cont

bb.al:                                            ; preds = %bb.ai
  %i.dn = load i32, ptr %.sroa.019.0, align 4, !noundef !4 ; 4 uses
  %i.do = sub i32 %i.dn, %i.da                    ; 2 uses
  %.not108 = icmp ugt i32 %i.da, %i.dn
  br i1 %.not108, label %.invoke, label %bb.am, !prof !15

.invoke:                                          ; preds = %bb.da, %bb.cp, %bb.aj, %.cont127, %bb.bi, %bb.ay, %bb.al
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @321, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #41
          to label %.cont193 unwind label %.loopexit.split-lp

.cont193:                                         ; preds = %.invoke
  unreachable

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace27WhitespaceBeforePunctuationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, ptr noundef nonnull align 8 %1, i32 noundef 58, i32 noundef %i.do, i32 noundef %i.dn)
          to label %bb.ao unwind label %.loopexit

bb.an:                                            ; preds = %bb.bp
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dp = load i16, ptr %i.ay, align 8, !range !6544, !noundef !4
  %.not109 = icmp eq i16 %i.dp, -1
  br i1 %.not109, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %i.do, ptr %i.az, align 8
  store i32 %i.dn, ptr %i.ba, align 4
  store ptr null, ptr %i.u, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.backedge.backedge

bb.ar:                                            ; preds = %bb.as, %bb.ap
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.w) #40
          to label %bb.b unwind label %bb.av

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.au unwind label %.loopexit

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.backedge.backedge

bb.av:                                            ; preds = %bb.df, %bb.cu, %bb.ck, %bb.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit, %bb.bd, %bb.ar, %bb.b
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.aw:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 8 uses
  %i.dt = ptrtoint ptr %i.bp to i64
  store i64 %i.dt, ptr %.sroa.6, align 8, !alias.scope !7219, !noalias !7222
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.dv = load i8, ptr %i.du, align 4, !range !6614, !noundef !4
  switch i8 %i.dv, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit123 [
    i8 23, label %bb.ax
    i8 25, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.dw = and i8 %i.cz, -2
  %switch = icmp eq i8 %i.dw, 2
  br i1 %switch, label %bb.ay, label %.backedge.backedge

bb.ay:                                            ; preds = %bb.ax
  %i.dx = load i32, ptr %.sroa.019.0, align 4, !noundef !4 ; 4 uses
  %i.dy = sub i32 %i.dx, %i.da                    ; 2 uses
  %.not98 = icmp ugt i32 %i.da, %i.dx
  br i1 %.not98, label %.invoke, label %bb.az, !prof !15

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace27WhitespaceBeforePunctuationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noundef nonnull align 8 %1, i32 noundef 58, i32 noundef %i.dy, i32 noundef %i.dx)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.dz = load i16, ptr %i.an, align 8, !range !6544, !noundef !4
  %.not99 = icmp eq i16 %i.dz, -1
  br i1 %.not99, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 %i.dy, ptr %i.ao, align 8
  store i32 %i.dx, ptr %i.ap, align 4
  store ptr null, ptr %i.q, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.backedge.backedge

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.s) #40
          to label %bb.b unwind label %bb.av

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.r)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.s)
          to label %bb.bg unwind label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.backedge.backedge

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit123: ; preds = %bb.aw
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ec = load i8, ptr %i.eb, align 4, !range !6614, !noundef !4
  switch i8 %i.ec, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126 [
    i8 12, label %bb.bh
    i8 14, label %bb.bh
  ]

bb.bh:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit123, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit123
  %i.ed = and i8 %i.cz, -2
  %switch117 = icmp eq i8 %i.ed, 2
  br i1 %switch117, label %bb.bi, label %.backedge.backedge

bb.bi:                                            ; preds = %bb.bh
  %i.ee = load i32, ptr %.sroa.019.0, align 4, !noundef !4 ; 4 uses
  %i.ef = sub i32 %i.ee, %i.da                    ; 3 uses
  %.not101 = icmp ugt i32 %i.da, %i.ee
  br i1 %.not101, label %.invoke, label %bb.bj, !prof !15

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace27WhitespaceBeforePunctuationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noundef nonnull align 8 %1, i32 noundef 58, i32 noundef %i.ef, i32 noundef %i.ee)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  %i.eg = load i16, ptr %i.aq, align 8, !range !6544, !noundef !4
  %.not102 = icmp eq i16 %i.eg, -1
  br i1 %.not102, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %i.ef, ptr %i.ar, align 8
  store i32 %i.ee, ptr %i.as, align 4
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bo unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.backedge.backedge

bb.bn:                                            ; preds = %bb.br
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit

bb.bo:                                            ; preds = %bb.bl
  %i.eh = load i64, ptr %i.a, align 8, !range !36, !noundef !4
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = load i64, ptr %i.at, align 8, !range !37, !noundef !4 ; 3 uses
  br i1 %i.ei, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.ek = load i64, ptr %i.au, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ej, i64 %i.ek) #41
          to label %bb.an unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bo
  %i.el = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.em = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.el, align 1
  store i64 %i.ej, ptr %i.j, align 8
  store ptr %i.el, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.663.0..sroa_idx, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit9insertion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %i.ef)
          to label %bb.br unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix10safe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.bs unwind label %bb.bn

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.bu unwind label %bb.bt

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit.split-lp, %bb.bn, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.en, %bb.bt ], [ %lpad.thr_comm.split-lp, %bb.bn ], [ %lpad.loopexit168, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit ], [ %lpad.loopexit.split-lp169, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.o) #40
          to label %bb.b unwind label %bb.av

bb.bt:                                            ; preds = %bb.bs
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.o)
          to label %bb.bv unwind label %.loopexit

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.backedge.backedge

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit: ; preds = %bb.bq, %bb.bl
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.loopexit.split-lp: ; preds = %bb.bp
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit123
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ep = load i8, ptr %i.eo, align 4, !range !6614, !noalias !7224, !noundef !4
  %i.eq = icmp eq i8 %i.ep, 24
  br i1 %i.eq, label %.else, label %.cont

.else:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126
  br label %.cont

.cont:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126, %.else
  %i.er = phi ptr [ %i.ds, %.else ], [ %i.am, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread ], [ %i.ds, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126 ] ; 3 uses
  %i.es = phi ptr [ %i.bp, %.else ], [ null, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread ], [ %i.bp, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126 ] ; 3 uses
  %.not105167 = phi i1 [ false, %.else ], [ true, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread ], [ true, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126 ]
  %.sroa.02.0.i166 = phi ptr [ %.sroa.6, %.else ], [ null, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread ], [ null, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126 ]
  %i.et = phi ptr [ %i.bp, %.else ], [ %.sroa.019.0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126.thread ], [ %.sroa.019.0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2N_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBX_.exit126 ]
  %i.eu = invoke { i8, i32 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine19trailing_whitespace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.et)
          to label %bb.bw unwind label %.loopexit ; 2 uses

bb.bw:                                            ; preds = %.cont
  %i.ev = extractvalue { i8, i32 } %i.eu, 0
  %i.ew = extractvalue { i8, i32 } %i.eu, 1
  %i.ex = icmp ne i8 %i.ev, %i.cz
  %i.ey = icmp ne i32 %i.ew, %i.da
  %or.cond10 = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond10, label %bb.bx, label %.backedge.backedge

bb.bx:                                            ; preds = %bb.bw
  br i1 %.not105167, label %.cont127, label %.else129

.else129:                                         ; preds = %bb.bx
  %.else.val130 = load ptr, ptr %.sroa.02.0.i166, align 8, !nonnull !4, !align !1117, !noundef !4
  br label %.cont127

.cont127:                                         ; preds = %bb.bx, %.else129
  %i.ez = phi ptr [ %.sroa.019.0, %bb.bx ], [ %.else.val130, %.else129 ]
  %i.fa = load i32, ptr %i.ez, align 4, !noundef !4 ; 4 uses
  %i.fb = sub i32 %i.fa, %i.da                    ; 2 uses
  %.not106 = icmp ugt i32 %i.da, %i.fa
  br i1 %.not106, label %.invoke, label %bb.by, !prof !15

bb.by:                                            ; preds = %.cont127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace27WhitespaceBeforePunctuationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull align 8 %1, i32 noundef 58, i32 noundef %i.fb, i32 noundef %i.fa)
          to label %bb.bz unwind label %.loopexit

bb.bz:                                            ; preds = %bb.by
  %i.fc = load i16, ptr %i.av, align 8, !range !6544, !noundef !4
  %.not107 = icmp eq i16 %i.fc, -1
  br i1 %.not107, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.fb, ptr %i.aw, align 8
  store i32 %i.fa, ptr %i.ax, align 4
  store ptr null, ptr %i.f, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.cd unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge.backedge

bb.cc:                                            ; preds = %bb.cd, %bb.ca
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #40
          to label %bb.b unwind label %bb.av

bb.cd:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.ce unwind label %bb.cc

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h)
          to label %bb.cf unwind label %.loopexit

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge.backedge

bb.cg:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace27WhitespaceBeforePunctuationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.18.2, i32 noundef %i.dl, i32 noundef %i.dk)
          to label %bb.ch unwind label %.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.fe = load i16, ptr %i.bb, align 8, !range !6544, !noundef !4
  %.not96 = icmp eq i16 %i.fe, -1
  br i1 %.not96, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dl, ptr %i.bc, align 8
  store i32 %i.dk, ptr %i.bd, align 4
  store ptr null, ptr %i.b, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.cl unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

bb.ck:                                            ; preds = %bb.cl, %bb.ci
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d) #40
          to label %bb.b unwind label %bb.av

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d)
          to label %bb.cn unwind label %.loopexit

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

bb.co:                                            ; preds = %bb.aa
  %i.fg = extractvalue { i8, i32 } %i.cu, 0
  %i.fh = icmp eq i8 %i.fg, 0
  br i1 %i.fh, label %.backedge.backedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fi = extractvalue { i8, i32 } %i.cu, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !noundef !4 ; 4 uses
  %i.fl = add i32 %i.fk, %i.fi                    ; 3 uses
  %.not112 = icmp ugt i32 %i.fk, %i.fl
  br i1 %.not112, label %.invoke, label %bb.cq, !prof !15

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace26WhitespaceAfterOpenBracketEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.af, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.035.0, i32 noundef %i.fk, i32 noundef %i.fl)
          to label %bb.cr unwind label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.fm = load i16, ptr %i.bh, align 8, !range !6544, !noundef !4
  %.not113 = icmp eq i16 %i.fm, -1
  br i1 %.not113, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i32 %i.fk, ptr %i.bi, align 8
  store i32 %i.fl, ptr %i.bj, align 4
  store ptr null, ptr %i.ac, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.cv unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.backedge.backedge

bb.cu:                                            ; preds = %bb.cv, %bb.cs
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #40
          to label %bb.b unwind label %bb.av

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad)
          to label %bb.cw unwind label %bb.cu

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.cx unwind label %.loopexit

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.backedge.backedge

bb.cy:                                            ; preds = %.thread
  %i.fo = invoke { i8, i32 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine18leading_whitespace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.019.0)
          to label %bb.cz unwind label %.loopexit ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %i.fp = extractvalue { i8, i32 } %i.fo, 0
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %.backedge.backedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.fr = extractvalue { i8, i32 } %i.fo, 1       ; 2 uses
  %i.fs = load i32, ptr %.sroa.019.0, align 4, !noundef !4 ; 4 uses
  %i.ft = sub i32 %i.fs, %i.fr                    ; 2 uses
  %.not110 = icmp ugt i32 %i.fr, %i.fs
  br i1 %.not110, label %.invoke, label %bb.db, !prof !15

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtNtBa_5rules11pycodestyle5rules13logical_lines21extraneous_whitespace28WhitespaceBeforeCloseBracketEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.037.0, i32 noundef %i.ft, i32 noundef %i.fs)
          to label %bb.dc unwind label %.loopexit

bb.dc:                                            ; preds = %bb.db
  %i.fu = load i16, ptr %i.be, align 8, !range !6544, !noundef !4
  %.not111 = icmp eq i16 %i.fu, -1
  br i1 %.not111, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %i.ft, ptr %i.bf, align 8
  store i32 %i.fs, ptr %i.bg, align 4
  store ptr null, ptr %i.y, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.dg unwind label %bb.df

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.backedge.backedge

bb.df:                                            ; preds = %bb.dg, %bb.dd
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.aa) #40
          to label %bb.b unwind label %bb.av

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.z)
          to label %bb.dh unwind label %bb.df

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.aa)
          to label %bb.di unwind label %.loopexit

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines34missing_whitespace_around_operator34missing_whitespace_around_operator(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [12 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.x = tail call { ptr, i64 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  call void @_RINvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB6_15DefinitionState11from_tokensRSNtB6_16LogicalLineTokenEBe_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.w, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.y, i64 noundef %i.z)
  %i.aa = tail call { ptr, i64 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %.idx = mul nuw nsw i64 %i.ac, 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 14 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %.split.us, label %.lr.ph804

bb.b:                                             ; preds = %.lr.ph804
  %i.af = icmp eq ptr %i.ah, %i.ad
  br i1 %i.af, label %.split.us, label %.lr.ph804

.lr.ph804:                                        ; preds = %bb.a, %bb.b
  %i.ag = phi ptr [ %i.ah, %bb.b ], [ %i.ab, %bb.a ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i8, ptr %i.ai, align 4, !range !6614, !alias.scope !7227, !noalias !7230, !noundef !4 ; 4 uses
  %i.ak = add nsw i8 %i.aj, -12
  %switch.i.i.i.i = icmp ult i8 %i.ak, 5
  br i1 %switch.i.i.i.i, label %bb.b, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit: ; preds = %.lr.ph804
  %switch.selectcmp.case1 = icmp eq i8 %i.aj, 20
  %switch.selectcmp.case2 = icmp eq i8 %i.aj, 89
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.al = zext i1 %switch.selectcmp to i32
  %i.am = icmp eq i8 %i.aj, 5
  %i.an = zext i1 %i.am to i32
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 11 uses
  %.sroa.0.0.i.promoted396 = load i32, ptr %.sroa.0.0.i, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.promoted = load i32, ptr %i.ao, align 4
  %.pre = load i32, ptr %i.w, align 4, !range !7156
  %.fr397 = freeze i32 %.pre                      ; 2 uses
  %i.ba = icmp eq i32 %.fr397, 3
  %i.bb = icmp ne i32 %.fr397, 3
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit
  %i.bc = phi i32 [ %.promoted, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.be, %.outer.backedge ] ; 68 uses
  %i.bd = phi i32 [ %.sroa.0.0.i.promoted396, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.be832, %.outer.backedge ] ; 38 uses
  %.sroa.22.0.ph = phi ptr [ %i.ah, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.sroa.22.0.ph.be, %.outer.backedge ] ; 16 uses
  %.sroa.14.0.ph = phi ptr [ undef, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.sroa.14.0.ph.be, %.outer.backedge ]
  %.sroa.0.0.ph = phi i1 [ false, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.sroa.0.0.ph.be, %.outer.backedge ] ; 4 uses
  %.sroa.011.0.ph = phi i32 [ %i.an, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.sroa.011.0.ph.be, %.outer.backedge ] ; 68 uses
  %.sroa.07.0.ph = phi i32 [ %i.al, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.sroa.07.0.ph.be, %.outer.backedge ] ; 12 uses
  %.sroa.02.0.ph = phi ptr [ %i.ag, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB34_4find5checkRB1w_NCNvNtB1y_34missing_whitespace_around_operator34missing_whitespace_around_operator0E0INtNtNtBb_3ops12control_flow11ControlFlowB48_EEB1G_.exit ], [ %.sroa.02.0.ph.be, %.outer.backedge ] ; 3 uses
  %.sroa.14.0.ph.fr = freeze ptr %.sroa.14.0.ph   ; 56 uses
  %.not57 = icmp eq ptr %.sroa.14.0.ph.fr, null   ; 2 uses
  br i1 %i.ba, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer
  br i1 %.not57, label %.outer.split.us.split.us, label %.outer.split.us.split.preheader

.outer.split.us.split.preheader:                  ; preds = %.outer.split.us
  br i1 %.sroa.0.0.ph, label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel, label %bb.c

bb.c:                                             ; preds = %.outer.split.us.split.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.ph) ]
  %i.be = icmp eq ptr %.sroa.22.0.ph, %i.ad
  br i1 %i.be, label %.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.22.0.ph, i64 12
  br label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel

_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel: ; preds = %bb.d, %.outer.split.us.split.preheader
  %.sroa.22.1.us.peel = phi ptr [ %i.bf, %bb.d ], [ %.sroa.22.0.ph, %.outer.split.us.split.preheader ] ; 9 uses
  %.sroa.014.0.us.peel = phi ptr [ %.sroa.22.0.ph, %bb.d ], [ %.sroa.14.0.ph.fr, %.outer.split.us.split.preheader ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.peel, i64 8
  %i.bh = load i8, ptr %i.bg, align 4, !range !6614, !noundef !4 ; 4 uses
  switch i8 %i.bh, label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.thread.loopexit [
    i8 12, label %.outer.split.us.split.peel.next
    i8 14, label %.outer.split.us.split.peel.next
    i8 13, label %.outer.split.us.split.peel.next
    i8 15, label %.outer.split.us.split.peel.next
    i8 16, label %.outer.split.us.split.peel.next
    i8 5, label %.split214.us
    i8 7, label %.split220.us
    i8 20, label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.thread100
    i8 21, label %.split226.us
    i8 89, label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.thread100
  ]

.outer.split.us.split.peel.next:                  ; preds = %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel, %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel, %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel, %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel, %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.peel
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.1.us.peel) ]
  %i.bi = icmp eq ptr %.sroa.22.1.us.peel, %i.ad
  br i1 %i.bi, label %.split.us, label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us

.outer.split.us.split.us:                         ; preds = %.outer.split.us
  br i1 %.sroa.0.0.ph, label %.split.us, label %.lr.ph390.preheader

.lr.ph390.preheader:                              ; preds = %.outer.split.us.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.ph) ]
  %i.bj = icmp eq ptr %.sroa.22.0.ph, %i.ad
  br i1 %i.bj, label %.split.us, label %_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.us

_RNvMsb_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_15DefinitionState16visit_token_kind.exit.us.us: ; preds = %.lr.ph390.preheader, %.lr.ph390
  %.sroa.22.0.us.us389810 = phi ptr [ %i.bk, %.lr.ph390 ], [ %.sroa.22.0.ph, %.lr.ph390.preheader ] ; 8 uses
end_hunk_0
