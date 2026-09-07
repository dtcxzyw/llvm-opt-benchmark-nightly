Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_literal-307a1f0c9a06c048.ruff_python_literal.9b149e7bebd214cb-cgu.00?download=true
inline.NumInlined: 122
inline.NumDeleted: 50
begin_hunk_0_@_RNvMs6_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSpec5parse:bb.a

.body:                                            ; preds = %bb.am, %bb.ap, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %i.fi, %bb.am ], [ %i.fp, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #14
          to label %common.resume unwind label %bb.cw

_RNvMNtCsdjunURa2XPj_19ruff_python_literal6formatNtB2_16FormatConversion5parse.exit: ; preds = %bb.ah, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdjunURa2XPj_19ruff_python_literal.exit9.i, %bb.ae, %bb.ab
  %.sroa.0.2.i.ph.sink.i = phi i8 [ %switch.load, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdjunURa2XPj_19ruff_python_literal.exit9.i ], [ -1, %bb.ah ], [ -1, %bb.ae ], [ -1, %bb.ab ]
  %.sroa.0.1.sink.i = phi ptr [ %.sroa.0.1.i161, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdjunURa2XPj_19ruff_python_literal.exit9.i ], [ %1, %bb.ah ], [ %1, %bb.ae ], [ %1, %bb.ab ] ; 8 uses
  %.sink.i = phi i64 [ %i.fb, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdjunURa2XPj_19ruff_python_literal.exit9.i ], [ %2, %bb.ah ], [ %2, %bb.ae ], [ 0, %bb.ab ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.sink.i, i64 %.sink.i
  store ptr %.sroa.0.1.sink.i, ptr %i.e, align 8, !noalias !102
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.fd, ptr %.sroa.4.0..sroa_idx.i162, align 8, !noalias !102
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !102
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 3, ptr %i.fe, align 8, !noalias !102
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjcEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeNtNtNtB1I_3str4iter11CharIndicesEE9from_iterCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %_RNvMNtCsdjunURa2XPj_19ruff_python_literal6formatNtB2_16FormatConversion5parse.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !102, !noundef !3 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 576460752303423488
  call void @llvm.assume(i1 %i.fh)
  switch i64 %i.fg, label %bb.aq [
    i64 0, label %bb.al
    i64 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ax, %bb.aw, %bb.ao, %.noexc
  %.sink21.i = phi i32 [ %i.gm, %bb.ax ], [ -1, %bb.aw ], [ -1, %bb.ao ], [ -1, %.noexc ] ; 2 uses
  %.sink19.i = phi i8 [ %i.gb, %bb.ax ], [ %i.gg, %bb.aw ], [ %i.fk, %bb.ao ], [ -1, %.noexc ] ; 2 uses
  %.sink17.i = phi ptr [ %i.gd, %bb.ax ], [ %i.gi, %bb.aw ], [ %i.fm, %bb.ao ], [ %.sroa.0.1.sink.i, %.noexc ] ; 8 uses
  %.sink.i163 = phi i64 [ %i.gf, %bb.ax ], [ %i.gk, %bb.aw ], [ %i.fo, %bb.ao ], [ %.sink.i, %.noexc ] ; 6 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjcEEECsdjunURa2XPj_19ruff_python_literal.exit.i unwind label %bb.am, !noalias !103

bb.am:                                            ; preds = %bb.al
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.an, !noalias !103

bb.an:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !103
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjcEEECsdjunURa2XPj_19ruff_python_literal.exit.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.az unwind label %bb.ak

bb.ao:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102
  call fastcc void @_RNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_11FormatAlign5parse(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.sink.i, i64 noundef %.sink.i), !noalias !103
  %i.fk = load i8, ptr %i.d, align 8, !range !104, !noalias !102, !noundef !3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !102, !nonnull !3, !noundef !3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !102, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102
  br label %bb.al

bb.ap:                                            ; preds = %bb.av
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjcEEECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.f) #14
          to label %.body unwind label %bb.ay, !noalias !103

bb.aq:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !102, !nonnull !3, !noundef !3 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !103, !noundef !3 ; 7 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i166 = icmp ult i64 %i.ft, %.sink.i
  br i1 %.not.i.i166, label %bb.as, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ar
  %i.fv = icmp eq i64 %i.ft, %.sink.i
  br i1 %i.fv, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.sink.i, i64 %i.ft
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !105, !noalias !103, !noundef !3
  %i.fy = icmp sgt i8 %i.fx, -65
  br i1 %i.fy, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.av
  unreachable

bb.au:                                            ; preds = %bb.as, %.split.i.i, %bb.aq
  %i.fz = sub nuw i64 %.sink.i, %i.ft
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.1.sink.i, i64 %i.ft
  call fastcc void @_RNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_11FormatAlign5parse(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.fz), !noalias !103
  %i.gb = load i8, ptr %i.c, align 8, !range !104, !noalias !102, !noundef !3 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !102, !nonnull !3, !noundef !3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !102, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102
  %.not9.i = icmp eq i8 %i.gb, -1
  br i1 %.not9.i, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.as, %.split.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.sink.i, i64 noundef %.sink.i, i64 noundef %i.ft, i64 noundef %.sink.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15
          to label %bb.at unwind label %bb.ap, !noalias !103

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  call fastcc void @_RNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_11FormatAlign5parse(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.sink.i, i64 noundef %.sink.i), !noalias !103
  %i.gg = load i8, ptr %i.b, align 8, !range !104, !noalias !102, !noundef !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !102, !nonnull !3, !noundef !3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !102, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  br label %bb.al

bb.ax:                                            ; preds = %bb.au
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !range !8, !noalias !103, !noundef !3
  br label %bb.al

bb.ay:                                            ; preds = %bb.ap
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !103
  unreachable

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjcEEECsdjunURa2XPj_19ruff_python_literal.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !102
  %i.go = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 %.sink.i163 ; 2 uses
  %i.gp = icmp samesign eq i64 %.sink.i163, 0
  br i1 %i.gp, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 1 ; 2 uses
  %i.gr = load i8, ptr %.sink17.i, align 1, !alias.scope !106, !noalias !107, !noundef !3 ; 6 uses
  %i.gs = icmp sgt i8 %i.gr, -1
  br i1 %i.gs, label %bb.bb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i168

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i168: ; preds = %bb.ba
  %i.gt = and i8 %i.gr, 31
  %i.gu = zext nneg i8 %i.gt to i32               ; 3 uses
  %i.gv = icmp samesign ne i64 %.sink.i163, 1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 2 ; 2 uses
  %i.gx = load i8, ptr %i.gq, align 1, !alias.scope !106, !noalias !107, !noundef !3
  %i.gy = shl nuw nsw i32 %i.gu, 6
  %i.gz = and i8 %i.gx, 63
  %i.ha = zext nneg i8 %i.gz to i32               ; 2 uses
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %i.hc = icmp samesign ugt i8 %i.gr, -33
  br i1 %i.hc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i172, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hd = zext nneg i8 %i.gr to i32
  br label %bb.bc

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i172: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i168
  %i.he = icmp samesign ne i64 %.sink.i163, 2
  call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 3 ; 2 uses
  %i.hg = load i8, ptr %i.gw, align 1, !alias.scope !106, !noalias !107, !noundef !3
  %i.hh = shl nuw nsw i32 %i.ha, 6
  %i.hi = and i8 %i.hg, 63
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hh, %i.hj            ; 2 uses
  %i.hl = shl nuw nsw i32 %i.gu, 12
  %i.hm = or disjoint i32 %i.hk, %i.hl
  %i.hn = icmp samesign ugt i8 %i.gr, -17
  br i1 %i.hn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i, label %bb.bc

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i172
  %i.ho = icmp samesign ne i64 %.sink.i163, 3
  call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 4
  %i.hq = load i8, ptr %i.hf, align 1, !alias.scope !106, !noalias !107, !noundef !3
  %i.hr = shl nuw nsw i32 %i.gu, 18
  %i.hs = and i32 %i.hr, 1835008
  %i.ht = shl nuw nsw i32 %i.hk, 6
  %i.hu = and i8 %i.hq, 63
  %i.hv = zext nneg i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.ht, %i.hv
  %i.hx = or disjoint i32 %i.hw, %i.hs
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i172, %bb.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i168
  %.sroa.0.07.ph.i = phi ptr [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i168 ], [ %i.hf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i172 ], [ %i.hp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i ], [ %i.gq, %bb.bb ] ; 4 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.hb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i168 ], [ %i.hm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i172 ], [ %i.hx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i ], [ %i.hd, %bb.bb ] ; 2 uses
  %i.hy = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.hy)
  switch i32 %.sroa.4.0.i.ph.i, label %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293 [
    i32 45, label %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit
    i32 43, label %bb.bd
    i32 32, label %bb.be
  ]

_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293: ; preds = %bb.bc
  %3 = ptrtoint ptr %i.go to i64
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  br label %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit

bb.be:                                            ; preds = %bb.bc
  br label %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit

_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit: ; preds = %bb.bc, %bb.bd, %bb.be
  %.sroa.0.0.i169 = phi i8 [ 2, %bb.be ], [ 0, %bb.bd ], [ 1, %bb.bc ] ; 2 uses
  %i.hz = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.ia = ptrtoint ptr %.sroa.0.07.ph.i to i64
  %i.ib = sub nuw i64 %i.hz, %i.ia                ; 2 uses
  %i.ic = icmp samesign eq i64 %i.ib, 0
  br i1 %i.ic, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit, label %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge

_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge: ; preds = %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit
  %.pre = load i8, ptr %.sroa.0.07.ph.i, align 1, !alias.scope !108, !noalias !109
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293
  %i.id = phi i8 [ %i.gr, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293 ], [ %.pre, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge ] ; 6 uses
  %4 = phi i64 [ %3, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293 ], [ %i.hz, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge ] ; 2 uses
  %.sink.i171299 = phi i64 [ %.sink.i163, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293 ], [ %i.ib, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge ] ; 5 uses
  %.sroa.0.07.ph.sink.i298 = phi ptr [ %.sink17.i, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293 ], [ %.sroa.0.07.ph.i, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge ] ; 6 uses
  %.sroa.0.0.sink.i297 = phi i8 [ -1, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit.thread293 ], [ %.sroa.0.0.i169, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit._crit_edge ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.07.ph.sink.i298, i64 1 ; 2 uses
  %i.if = icmp sgt i8 %i.id, -1
  br i1 %i.if, label %bb.bg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i173

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i173: ; preds = %bb.bf
  %i.ig = and i8 %i.id, 31
  %i.ih = zext nneg i8 %i.ig to i32               ; 3 uses
  %i.ii = icmp samesign ne i64 %.sink.i171299, 1
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.07.ph.sink.i298, i64 2 ; 2 uses
  %i.ik = load i8, ptr %i.ie, align 1, !alias.scope !108, !noalias !109, !noundef !3
  %i.il = shl nuw nsw i32 %i.ih, 6
  %i.im = and i8 %i.ik, 63
  %i.in = zext nneg i8 %i.im to i32               ; 2 uses
  %i.io = or disjoint i32 %i.il, %i.in
  %i.ip = icmp samesign ugt i8 %i.id, -33
  br i1 %i.ip, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i177, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.iq = zext nneg i8 %i.id to i32
  br label %bb.bh

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i177: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i173
  %i.ir = icmp samesign ne i64 %.sink.i171299, 2
  call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.07.ph.sink.i298, i64 3 ; 2 uses
  %i.it = load i8, ptr %i.ij, align 1, !alias.scope !108, !noalias !109, !noundef !3
  %i.iu = shl nuw nsw i32 %i.in, 6
  %i.iv = and i8 %i.it, 63
  %i.iw = zext nneg i8 %i.iv to i32
  %i.ix = or disjoint i32 %i.iu, %i.iw            ; 2 uses
  %i.iy = shl nuw nsw i32 %i.ih, 12
  %i.iz = or disjoint i32 %i.ix, %i.iy
  %i.ja = icmp samesign ugt i8 %i.id, -17
  br i1 %i.ja, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i178, label %bb.bh

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i178: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i177
  %i.jb = icmp samesign ne i64 %.sink.i171299, 3
  call void @llvm.assume(i1 %i.jb)
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.ph.sink.i298, i64 4
  %i.jd = load i8, ptr %i.is, align 1, !alias.scope !108, !noalias !109, !noundef !3
  %i.je = shl nuw nsw i32 %i.ih, 18
  %i.jf = and i32 %i.je, 1835008
  %i.jg = shl nuw nsw i32 %i.ix, 6
  %i.jh = and i8 %i.jd, 63
  %i.ji = zext nneg i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jg, %i.ji
  %i.jk = or disjoint i32 %i.jj, %i.jf
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i178, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i177, %bb.bg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i173
  %.sroa.0.0.ph.i = phi ptr [ %i.ij, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i173 ], [ %i.is, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i177 ], [ %i.jc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i178 ], [ %i.ie, %bb.bg ] ; 4 uses
  %.sroa.4.0.i.ph.i174 = phi i32 [ %i.io, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i173 ], [ %i.iz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i177 ], [ %i.jk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i178 ], [ %i.iq, %bb.bg ] ; 2 uses
  %i.jl = icmp samesign ult i32 %.sroa.4.0.i.ph.i174, 1114112
  call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp eq i32 %.sroa.4.0.i.ph.i174, 35
  br i1 %i.jm, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306

_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306: ; preds = %bb.bh
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.ph.sink.i298, i64 %.sink.i171299
  %5 = ptrtoint ptr %i.jn to i64
  br label %bb.bi

_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit: ; preds = %bb.bh
  %i.jo = ptrtoint ptr %.sroa.0.0.ph.i to i64
  %i.jp = sub nuw i64 %4, %i.jo                   ; 2 uses
  %i.jq = icmp samesign eq i64 %i.jp, 0
  br i1 %i.jq, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge

_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge: ; preds = %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit
  %.pre419 = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !110, !noalias !111
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306
  %i.jr = phi i8 [ %i.id, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306 ], [ %.pre419, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge ] ; 5 uses
  %6 = phi i64 [ %5, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306 ], [ %4, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge ]
  %.sink.i176314 = phi i64 [ %.sink.i171299, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306 ], [ %i.jp, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge ] ; 4 uses
  %.sroa.0.0.ph.sink.i313 = phi ptr [ %.sroa.0.07.ph.sink.i298, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306 ], [ %.sroa.0.0.ph.i, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge ] ; 5 uses
  %.sink14.i312 = phi i8 [ 0, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit.thread306 ], [ 1, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit._crit_edge ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i313, i64 1 ; 2 uses
  %i.jt = icmp sgt i8 %i.jr, -1
  br i1 %i.jt, label %bb.bj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i179

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i179: ; preds = %bb.bi
  %i.ju = and i8 %i.jr, 31
  %i.jv = zext nneg i8 %i.ju to i32               ; 3 uses
  %i.jw = icmp samesign ne i64 %.sink.i176314, 1
  call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i313, i64 2 ; 2 uses
  %i.jy = load i8, ptr %i.js, align 1, !alias.scope !110, !noalias !111, !noundef !3
  %i.jz = shl nuw nsw i32 %i.jv, 6
  %i.ka = and i8 %i.jy, 63
  %i.kb = zext nneg i8 %i.ka to i32               ; 2 uses
  %i.kc = or disjoint i32 %i.jz, %i.kb
  %i.kd = icmp samesign ugt i8 %i.jr, -33
  br i1 %i.kd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i186, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ke = zext nneg i8 %i.jr to i32
  br label %bb.bk

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i186: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i179
  %i.kf = icmp samesign ne i64 %.sink.i176314, 2
  call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i313, i64 3 ; 2 uses
  %i.kh = load i8, ptr %i.jx, align 1, !alias.scope !110, !noalias !111, !noundef !3
  %i.ki = shl nuw nsw i32 %i.kb, 6
  %i.kj = and i8 %i.kh, 63
  %i.kk = zext nneg i8 %i.kj to i32
  %i.kl = or disjoint i32 %i.ki, %i.kk            ; 2 uses
  %i.km = shl nuw nsw i32 %i.jv, 12
  %i.kn = or disjoint i32 %i.kl, %i.km
  %i.ko = icmp samesign ugt i8 %i.jr, -17
  br i1 %i.ko, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i187, label %bb.bk

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i187: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i186
  %i.kp = icmp samesign ne i64 %.sink.i176314, 3
  call void @llvm.assume(i1 %i.kp)
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i313, i64 4
  %i.kr = load i8, ptr %i.kg, align 1, !alias.scope !110, !noalias !111, !noundef !3
  %i.ks = shl nuw nsw i32 %i.jv, 18
  %i.kt = and i32 %i.ks, 1835008
  %i.ku = shl nuw nsw i32 %i.kl, 6
  %i.kv = and i8 %i.kr, 63
  %i.kw = zext nneg i8 %i.kv to i32
  %i.kx = or disjoint i32 %i.ku, %i.kw
  %i.ky = or disjoint i32 %i.kx, %i.kt
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i187, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i186, %bb.bj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i179
  %.sroa.0.0.ph.i180 = phi ptr [ %i.jx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i179 ], [ %i.kg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i186 ], [ %i.kq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i187 ], [ %i.js, %bb.bj ] ; 2 uses
  %.sroa.4.0.i.ph.i181 = phi i32 [ %i.kc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i179 ], [ %i.kn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i186 ], [ %i.ky, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i187 ], [ %i.ke, %bb.bj ] ; 2 uses
  %i.kz = icmp samesign ult i32 %.sroa.4.0.i.ph.i181, 1114112
  call void @llvm.assume(i1 %i.kz)
  %i.la = icmp eq i32 %.sroa.4.0.i.ph.i181, 48
  br i1 %i.la, label %bb.bl, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit

bb.bl:                                            ; preds = %bb.bk
  %i.lb = ptrtoint ptr %.sroa.0.0.ph.i180 to i64
  %i.lc = sub nuw i64 %6, %i.lb
  br label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit

_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit: ; preds = %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit, %bb.az, %bb.bl, %bb.bk, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit
  %.sink14.i305 = phi i8 [ %.sink14.i312, %bb.bl ], [ 1, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit ], [ %.sink14.i312, %bb.bk ], [ 0, %bb.az ], [ 0, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit ]
  %.sroa.0.0.sink.i292304 = phi i8 [ %.sroa.0.0.sink.i297, %bb.bl ], [ %.sroa.0.0.sink.i297, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit ], [ %.sroa.0.0.sink.i297, %bb.bk ], [ -1, %bb.az ], [ %.sroa.0.0.i169, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit ]
  %.sink14.i183 = phi i1 [ true, %bb.bl ], [ false, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit ], [ false, %bb.bk ], [ false, %bb.az ], [ false, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit ]
  %.sroa.0.0.ph.sink.i184 = phi ptr [ %.sroa.0.0.ph.i180, %bb.bl ], [ %.sroa.0.0.ph.i, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit ], [ %.sroa.0.0.ph.sink.i313, %bb.bk ], [ %.sink17.i, %bb.az ], [ %.sroa.0.07.ph.i, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit ]
  %.sink.i185 = phi i64 [ %i.lc, %bb.bl ], [ 0, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format20parse_alternate_form.exit ], [ %.sink.i176314, %bb.bk ], [ 0, %bb.az ], [ 0, %_RNvMs2_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSign5parse.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RNvNtCsdjunURa2XPj_19ruff_python_literal6format12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.ph.sink.i184, i64 noundef %.sink.i185)
          to label %bb.bm unwind label %bb.ak

bb.bm:                                            ; preds = %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format10parse_zero.exit
  %i.ld = load i64, ptr %i.j, align 8, !range !4, !noundef !3 ; 2 uses
  %i.le = icmp eq i64 %i.ld, 2
  %i.lf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.085.0.copyload = load i64, ptr %i.lf, align 8 ; 2 uses
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.486.0.copyload = load ptr, ptr %.sroa.486.0..sroa_idx, align 8 ; 8 uses
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.587.0.copyload = load i64, ptr %.sroa.587.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.le, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.085.0.copyload, ptr %i.lg, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.486.0.copyload, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.587.0.copyload, ptr %.sroa.590.0..sroa_idx, align 8
  br label %bb.ct

bb.bo:                                            ; preds = %bb.bm
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.486.0.copyload, i64 %.sroa.587.0.copyload ; 2 uses
  %i.li = icmp samesign eq i64 %.sroa.587.0.copyload, 0
  br i1 %i.li, label %.thread373, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.486.0.copyload, i64 1 ; 2 uses
  %i.lk = load i8, ptr %.sroa.486.0.copyload, align 1, !alias.scope !112, !noalias !113, !noundef !3 ; 6 uses
  %i.ll = icmp sgt i8 %i.lk, -1
  br i1 %i.ll, label %bb.bq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i188

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i188: ; preds = %bb.bp
  %i.lm = and i8 %i.lk, 31
  %i.ln = zext nneg i8 %i.lm to i32               ; 3 uses
  %i.lo = icmp samesign ne i64 %.sroa.587.0.copyload, 1
  call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.486.0.copyload, i64 2 ; 2 uses
  %i.lq = load i8, ptr %i.lj, align 1, !alias.scope !112, !noalias !113, !noundef !3
  %i.lr = shl nuw nsw i32 %i.ln, 6
  %i.ls = and i8 %i.lq, 63
  %i.lt = zext nneg i8 %i.ls to i32               ; 2 uses
  %i.lu = or disjoint i32 %i.lr, %i.lt
  %i.lv = icmp samesign ugt i8 %i.lk, -33
  br i1 %i.lv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i195, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lw = zext nneg i8 %i.lk to i32
  br label %bb.br

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i195: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i188
  %i.lx = icmp samesign ne i64 %.sroa.587.0.copyload, 2
  call void @llvm.assume(i1 %i.lx)
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.486.0.copyload, i64 3 ; 2 uses
  %i.lz = load i8, ptr %i.lp, align 1, !alias.scope !112, !noalias !113, !noundef !3
  %i.ma = shl nuw nsw i32 %i.lt, 6
  %i.mb = and i8 %i.lz, 63
  %i.mc = zext nneg i8 %i.mb to i32
  %i.md = or disjoint i32 %i.ma, %i.mc            ; 2 uses
  %i.me = shl nuw nsw i32 %i.ln, 12
  %i.mf = or disjoint i32 %i.md, %i.me
  %i.mg = icmp samesign ugt i8 %i.lk, -17
  br i1 %i.mg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i196, label %bb.br

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i196: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i195
  %i.mh = icmp samesign ne i64 %.sroa.587.0.copyload, 3
  call void @llvm.assume(i1 %i.mh)
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.486.0.copyload, i64 4
  %i.mj = load i8, ptr %i.ly, align 1, !alias.scope !112, !noalias !113, !noundef !3
  %i.mk = shl nuw nsw i32 %i.ln, 18
  %i.ml = and i32 %i.mk, 1835008
  %i.mm = shl nuw nsw i32 %i.md, 6
  %i.mn = and i8 %i.mj, 63
  %i.mo = zext nneg i8 %i.mn to i32
  %i.mp = or disjoint i32 %i.mm, %i.mo
  %i.mq = or disjoint i32 %i.mp, %i.ml
  br label %bb.br

bb.br:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i196, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i195, %bb.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i188
  %.sroa.0.0.ph.i189 = phi ptr [ %i.lp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i188 ], [ %i.ly, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i195 ], [ %i.mi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i196 ], [ %i.lj, %bb.bq ] ; 4 uses
  %.sroa.4.0.i.ph.i190 = phi i32 [ %i.lu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i188 ], [ %i.mf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i195 ], [ %i.mq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i196 ], [ %i.lw, %bb.bq ] ; 2 uses
  %i.mr = icmp samesign ult i32 %.sroa.4.0.i.ph.i190, 1114112
  call void @llvm.assume(i1 %i.mr)
  switch i32 %.sroa.4.0.i.ph.i190, label %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit.thread320 [
    i32 95, label %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit
    i32 44, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  br label %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit

_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit: ; preds = %bb.br, %bb.bs
  %.sink17.i192 = phi i8 [ 0, %bb.bs ], [ 1, %bb.br ] ; 2 uses
  %i.ms = ptrtoint ptr %i.lh to i64
  %i.mt = ptrtoint ptr %.sroa.0.0.ph.i189 to i64
  %i.mu = sub nuw i64 %i.ms, %i.mt                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.mv = icmp samesign eq i64 %i.mu, 0
  br i1 %i.mv, label %.thread373, label %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge

_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge: ; preds = %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i189, i64 %i.mu
  %.pre420 = load i8, ptr %.sroa.0.0.ph.i189, align 1, !alias.scope !114, !noalias !115
  br label %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit.thread320

_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit.thread320: ; preds = %bb.br, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge
  %i.mx = phi i8 [ %.pre420, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge ], [ %i.lk, %bb.br ] ; 5 uses
  %i.my = phi ptr [ %i.mw, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge ], [ %i.lh, %bb.br ]
  %.sink.i194326 = phi i64 [ %i.mu, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge ], [ %.sroa.587.0.copyload, %bb.br ] ; 4 uses
  %.sroa.0.0.ph.sink.i193325 = phi ptr [ %.sroa.0.0.ph.i189, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge ], [ %.sroa.486.0.copyload, %bb.br ] ; 6 uses
  %.sink17.i192324 = phi i8 [ %.sink17.i192, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit._crit_edge ], [ 2, %bb.br ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i193325, i64 1 ; 2 uses
  %i.na = icmp sgt i8 %i.mx, -1
  br i1 %i.na, label %bb.bt, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i197

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i197: ; preds = %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit.thread320
  %i.nb = and i8 %i.mx, 31
  %i.nc = zext nneg i8 %i.nb to i32               ; 3 uses
  %i.nd = icmp samesign ne i64 %.sink.i194326, 1
  call void @llvm.assume(i1 %i.nd)
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i193325, i64 2 ; 2 uses
  %i.nf = load i8, ptr %i.mz, align 1, !alias.scope !114, !noalias !115, !noundef !3
  %i.ng = shl nuw nsw i32 %i.nc, 6
  %i.nh = and i8 %i.nf, 63
  %i.ni = zext nneg i8 %i.nh to i32               ; 2 uses
  %i.nj = or disjoint i32 %i.ng, %i.ni
  %i.nk = icmp samesign ugt i8 %i.mx, -33
  br i1 %i.nk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i202, label %bb.bu

bb.bt:                                            ; preds = %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit.thread320
  %i.nl = zext nneg i8 %i.mx to i32
  br label %bb.bu

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i202: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i197
  %i.nm = icmp samesign ne i64 %.sink.i194326, 2
  call void @llvm.assume(i1 %i.nm)
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i193325, i64 3 ; 2 uses
  %i.no = load i8, ptr %i.ne, align 1, !alias.scope !114, !noalias !115, !noundef !3
  %i.np = shl nuw nsw i32 %i.ni, 6
  %i.nq = and i8 %i.no, 63
  %i.nr = zext nneg i8 %i.nq to i32
  %i.ns = or disjoint i32 %i.np, %i.nr            ; 2 uses
  %i.nt = shl nuw nsw i32 %i.nc, 12
  %i.nu = or disjoint i32 %i.ns, %i.nt
  %i.nv = icmp samesign ugt i8 %i.mx, -17
  br i1 %i.nv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i203, label %bb.bu

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i203: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i202
  %i.nw = icmp samesign ne i64 %.sink.i194326, 3
  call void @llvm.assume(i1 %i.nw)
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.sink.i193325, i64 4
  %i.ny = load i8, ptr %i.nn, align 1, !alias.scope !114, !noalias !115, !noundef !3
  %i.nz = shl nuw nsw i32 %i.nc, 18
  %i.oa = and i32 %i.nz, 1835008
  %i.ob = shl nuw nsw i32 %i.ns, 6
  %i.oc = and i8 %i.ny, 63
  %i.od = zext nneg i8 %i.oc to i32
  %i.oe = or disjoint i32 %i.ob, %i.od
  %i.of = or disjoint i32 %i.oe, %i.oa
  br label %bb.bu

bb.bu:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i203, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i202, %bb.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i197
  %.sroa.0.035.ph.i = phi ptr [ %i.ne, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i197 ], [ %i.nn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i202 ], [ %i.nx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i203 ], [ %i.mz, %bb.bt ] ; 2 uses
  %.sroa.4.0.i.ph.i198 = phi i32 [ %i.nj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i197 ], [ %i.nu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i202 ], [ %i.of, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i203 ], [ %i.nl, %bb.bt ] ; 2 uses
  %i.og = icmp samesign ult i32 %.sroa.4.0.i.ph.i198, 1114112
  call void @llvm.assume(i1 %i.og)
  %i.oh = icmp eq i32 %.sroa.4.0.i.ph.i198, 46
  br i1 %i.oh, label %bb.bv, label %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit.thread349

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  %i.oi = ptrtoint ptr %i.my to i64
  %i.oj = ptrtoint ptr %.sroa.0.035.ph.i to i64
  %i.ok = sub nuw i64 %i.oi, %i.oj
  invoke fastcc void @_RNvNtCsdjunURa2XPj_19ruff_python_literal6format12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.035.ph.i, i64 noundef %i.ok)
          to label %.noexc204 unwind label %bb.ak

.noexc204:                                        ; preds = %bb.bv
  %i.ol = load i64, ptr %i.a, align 8, !range !4, !noalias !116, !noundef !3
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.022.0.copyload.i = load i64, ptr %i.om, align 8, !noalias !116 ; 4 uses
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.423.0.copyload.i = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !116 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.524.0.copyload.i = load i64, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !116 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116
  switch i64 %i.ol, label %bb.bw [
    i64 2, label %bb.bx
end_hunk_0
