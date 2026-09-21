Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.07?download=true
inline.NumInlined: 5011
inline.NumDeleted: 2021
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort6format18format_single_line:bb.a
  %i.ig = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5292, !noundef !5 ; 3 uses
  %i.ih = icmp sgt i64 %i.ig, -1
  call void @llvm.assume(i1 %i.ih)
  %.not.i156 = icmp eq i64 %i.cw, 0
  br i1 %.not.i156, label %bb.bf, label %bb.ay

bb.ay:                                            ; preds = %.noexc158
  %i.ii = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !5292, !nonnull !5, !noundef !5
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 1 %i.cu, i64 %i.cw, i1 false)
  %.pre.i157 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5292
  br label %bb.bf

bb.az:                                            ; preds = %bb.aw, %.noexc154
  %i.ik = phi i64 [ %.pre.i153, %bb.aw ], [ %i.ic, %.noexc154 ]
  %i.il = add i64 %i.ik, %i.cw
  store i64 %i.il, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5291
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 4)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.im = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5293, !noundef !5 ; 2 uses
  %i.in = icmp sgt i64 %i.im, -1
  call void @llvm.assume(i1 %i.in)
  %i.io = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !5293, !nonnull !5, !noundef !5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i32 544432416, ptr %i.ip, align 1
  %.pre.i160 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5293
  %i.iq = add i64 %.pre.i160, 4
  store i64 %i.iq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5293
  %i.ir = load i64, ptr %i.ct, align 8, !noundef !5 ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ir)
          to label %.noexc165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc165:                                        ; preds = %bb.ba
  %i.is = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5294, !noundef !5 ; 3 uses
  %i.it = icmp sgt i64 %i.is, -1
  call void @llvm.assume(i1 %i.it)
  %.not.i163 = icmp eq i64 %i.ir, 0
  br i1 %.not.i163, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.noexc165
  %i.iu = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !5294, !nonnull !5, !noundef !5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iv, ptr nonnull readonly align 1 %i.cs, i64 %i.ir, i1 false)
  %.pre.i164 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5294
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc165
  %i.iw = phi i64 [ %.pre.i164, %bb.bb ], [ %i.is, %.noexc165 ]
  %i.ix = add i64 %i.iw, %i.ir
  store i64 %i.ix, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5294
  invoke void @_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder7add_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cw)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.iy = load <2 x i64>, ptr %i.h, align 16
  %i.iz = add <2 x i64> %i.iy, splat (i64 4)
  store <2 x i64> %i.iz, ptr %i.h, align 16
  invoke void @_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder7add_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %7, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ir)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.be:                                            ; preds = %bb.bd, %bb.bg
  %i.ja = icmp ult i64 %.sroa.7.0204, %i.co
  br i1 %i.ja, label %bb.bh, label %bb.bi

bb.bf:                                            ; preds = %bb.ay, %.noexc158
  %i.jb = phi i64 [ %.pre.i157, %bb.ay ], [ %i.ig, %.noexc158 ]
  %i.jc = add i64 %i.jb, %i.cw
  store i64 %i.jc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  invoke void @_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder7add_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %7, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cw)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.be

bb.bh:                                            ; preds = %bb.be
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 2)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bi:                                            ; preds = %bb.be, %bb.bj
  %i.jd = icmp eq ptr %i.cp, %i.cm
  br i1 %i.jd, label %._crit_edge208, label %bb.r

bb.bj:                                            ; preds = %bb.bh
  %i.je = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5295, !noundef !5 ; 2 uses
  %i.jf = icmp sgt i64 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !5295, !nonnull !5, !noundef !5
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.je
  store i16 8236, ptr %i.jh, align 1
  %.pre.i167 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5295
  %i.ji = add i64 %.pre.i167, 2
  store i64 %i.ji, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5295
  %i.jj = load <2 x i64>, ptr %7, align 8
  %i.jk = add <2 x i64> %i.jj, splat (i64 2)
  store <2 x i64> %i.jk, ptr %7, align 8
  br label %bb.bi

bb.bk:                                            ; preds = %.thread, %.loopexit.split-lp
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread175:                                       ; preds = %bb.at, %.thread
  %.pn173 = phi { ptr, i32 } [ %.pn174, %.thread ], [ %i.ia, %bb.at ]
  resume { ptr, i32 } %.pn173

.thread:                                          ; preds = %.thread178.loopexit, %.thread178.loopexit.split-lp, %.loopexit.split-lp
  %.pn174 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.loopexit201, %.thread178.loopexit ], [ %lpad.loopexit.split-lp, %.thread178.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #37
          to label %.thread175 unwind label %bb.bk
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15find_file_opens(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %2, i1 noundef zeroext %3, i8 noundef %4, i8 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [2 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = zext i1 %3 to i8
  store i8 %i.d, ptr %i.c, align 1
  store i8 %4, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %5, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %i.i
  store ptr %i.g, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2G_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvB12_15find_file_opens0EE9from_iterB18_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(472) %3, i1 noundef zeroext %4, i8 noundef range(i8 0, 4) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, ptr noundef nonnull %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %switch = icmp samesign ult i8 %5, 2
  %i.b = xor i1 %switch, %4
  br i1 %i.b, label %.loopexit54, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %5, label %bb.f [
    i8 1, label %bb.e
    i8 3, label %bb.e
  ]

.loopexit54:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i41, %bb.a, %.loopexit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1a_5scopeNtB27_5Scope7get_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8find_map5checkB16_RNtB18_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0INtNtNtBc_3ops12control_flow11ControlFlowB3R_EEB4g_.exit, %bb.f, %bb.g, %bb.e, %bb.r
  store i64 2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit54
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.loopexit54
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.t

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.f, label %.loopexit54

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !align !9, !noundef !5 ; 6 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.j, align 8, !range !26, !noundef !5
  %i.l = icmp eq i32 %i.k, 28
  br i1 %i.l, label %bb.h, label %.loopexit54

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.p = load i32, ptr %i.o, align 8, !range !31, !noundef !5
  %i.q = add i32 %i.p, -1
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = icmp ugt i64 %i.n, %i.r
  br i1 %i.s, label %bb.i, label %.invoke

.loopexit55:                                      ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.m
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.i
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit55
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit55 ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %6) #37
          to label %common.resume unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 23
  %i.x = load i8, ptr %i.w, align 1, !range !20, !alias.scope !5328, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5328, !noundef !5
  %i.aa = and i64 %i.z, 72057594037927935
  %i.ab = icmp ult i8 %i.x, -48
  %i.ac = zext i8 %i.x to i64
  %i.ad = add nsw i64 %i.ac, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 16)
  %.sroa.0.0.i = select i1 %i.ab, i64 %spec.store.select.i, i64 %i.aa
  %i.ae = icmp ugt i8 %i.x, -49
  %i.af = load ptr, ptr %i.t, align 8, !alias.scope !5328
  %.sroa.01.0.i = select i1 %i.ae, ptr %i.af, ptr %i.t
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.v, i64 %i.r
  %i.ah = invoke { ptr, i32 } @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB2_5Scope7get_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0      ; 4 uses
  %i.aj = extractvalue { ptr, i32 } %i.ah, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5329)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !5329, !noalias !5330 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !5329, !noalias !5330, !nonnull !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdRNtB1i_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0B2B_.exit.i, %bb.j
  %i.at = phi i32 [ %i.bx, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdRNtB1i_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0B2B_.exit.i ], [ %i.aj, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5331
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.at, ptr %i.a, align 4, !noalias !5331
  %i.au = load i64, ptr %i.ak, align 8, !alias.scope !5332, !noalias !5333, !noundef !5
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !5334)
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  %i.ax = lshr i64 %i.aw, 57
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = load i64, ptr %i.an, align 8, !alias.scope !5336, !noalias !5337, !noundef !5 ; 2 uses
  %i.ba = load ptr, ptr %i.al, align 8, !alias.scope !5336, !noalias !5337, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = insertelement <16 x i8> poison, i8 %i.ay, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.noexc
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bt, %bb.p ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.aw, %.noexc ], [ %i.bu, %bb.p ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.az ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.bd, align 1, !noalias !5338 ; 2 uses
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.bc
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.bs, %bb.o ], [ %i.bf, %bb.n ] ; 3 uses
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bh
  %i.bj = and i64 %i.bi, %i.az
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtB2_10EquivalentBq_E10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bm)
          to label %.noexc25 unwind label %.loopexit55

.noexc25:                                         ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bn, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.o, !prof !7

._crit_edge.i.i.i.i.i:                            ; preds = %bb.o, %bb.n
  %i.bo = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i, !prof !8

bb.o:                                             ; preds = %.noexc25
  %i.br = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.bs = and i16 %i.br, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bt = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.bu = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bt
  br label %bb.n

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.noexc25
  %i.bv = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !range !31, !noalias !5331, !noundef !5
  br label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i

_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.l
  %i.bx = phi i32 [ 0, %bb.l ], [ %i.bw, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5331
  %i.by = add i32 %i.at, -1
  %i.bz = zext i32 %i.by to i64                   ; 3 uses
  %i.ca = icmp ugt i64 %i.ap, %i.bz
  br i1 %i.ca, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdRNtB1i_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0B2B_.exit.i, label %.invoke

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdRNtB1i_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0B2B_.exit.i: ; preds = %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %i.bz ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %9 = load i64, ptr %i.cc, align 8, !noalias !5339
  %10 = load i64, ptr %i.as, align 8, !noalias !5339
  %.not152 = icmp eq i64 %9, %10
  br i1 %.not152, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1a_5scopeNtB27_5Scope7get_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8find_map5checkB16_RNtB18_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0INtNtNtBc_3ops12control_flow11ControlFlowB3R_EEB4g_.exit, label %bb.k

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1a_5scopeNtB27_5Scope7get_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8find_map5checkB16_RNtB18_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0INtNtNtBc_3ops12control_flow11ControlFlowB3R_EEB4g_.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdRNtB1i_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0B2B_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cg, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 3 uses
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.loopexit54, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1a_5scopeNtB27_5Scope7get_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8find_map5checkB16_RNtB18_7BindingNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_open0E0INtNtNtBc_3ops12control_flow11ControlFlowB3R_EEB4g_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !5340, !noundef !5 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.co = load ptr, ptr %i.cl, align 8, !nonnull !5 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i, %.lr.ph.i
  %i.cp = phi ptr [ %i.ce, %.lr.ph.i ], [ %i.cq, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 4 uses
  %.val9.i = load i32, ptr %i.cp, align 4, !range !31, !noalias !5340, !noundef !5
  %i.cr = add i32 %.val9.i, -1
  %i.cs = zext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp ugt i64 %i.ck, %i.cs
  br i1 %i.ct, label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i, label %.invoke

_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i: ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  %i.cv = load i32, ptr %i.cu, align 4, !range !31, !alias.scope !5341, !noalias !5340, !noundef !5 ; 2 uses
  %i.cw = load i32, ptr %i.cm, align 8, !range !31, !noalias !5342, !noundef !5
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i: ; preds = %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !5341, !noalias !5340, !noundef !5
  %i.da = load i32, ptr %i.cn, align 8, !noalias !5342, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_17ResolvedReferenceENCINvNtB2P_3map12map_try_foldBJ_B49_uB3u_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvB1T_4find5checkB49_QNCB5g_s0_0E0E0E0B3u_EB5o_.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i
  %i.db = icmp eq ptr %i.cq, %i.ch
  br i1 %i.db, label %.loopexit54, label %bb.q

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5331
  br label %.loopexit54

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_17ResolvedReferenceENCINvNtB2P_3map12map_try_foldBJ_B49_uB3u_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvB1T_4find5checkB49_QNCB5g_s0_0E0E0E0B3u_EB5o_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i
  %i.dc = icmp eq ptr %i.cq, %i.ch
  br i1 %i.dc, label %.loopexit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_17ResolvedReferenceENCINvNtB2P_3map12map_try_foldBJ_B49_uB3u_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvB1T_4find5checkB49_QNCB5g_s0_0E0E0E0B3u_EB5o_.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i37
  %i.dd = phi ptr [ %i.de, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i37 ], [ %i.cq, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_17ResolvedReferenceENCINvNtB2P_3map12map_try_foldBJ_B49_uB3u_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvB1T_4find5checkB49_QNCB5g_s0_0E0E0E0B3u_EB5o_.exit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %.val9.i35 = load i32, ptr %i.dd, align 4, !range !31, !noalias !5343, !noundef !5
  %i.df = add i32 %.val9.i35, -1
  %i.dg = zext i32 %i.df to i64                   ; 3 uses
  %i.dh = icmp ugt i64 %i.ck, %i.dg
  br i1 %i.dh, label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i36, label %.invoke

.invoke:                                          ; preds = %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i, %bb.q, %.lr.ph.i31, %bb.h
  %i.di = phi i64 [ %i.cs, %bb.q ], [ %i.dg, %.lr.ph.i31 ], [ %i.r, %bb.h ], [ %i.bz, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i ]
  %i.dj = phi i64 [ %i.ck, %bb.q ], [ %i.ck, %.lr.ph.i31 ], [ %i.n, %bb.h ], [ %i.ap, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i ]
  %i.dk = phi ptr [ @32, %bb.q ], [ @32, %.lr.ph.i31 ], [ @160, %bb.h ], [ @31, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNCNvMNtB1c_5scopeNtB29_5Scope7get_all0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread9.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i36: ; preds = %.lr.ph.i31
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.dg ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !range !31, !alias.scope !5344, !noalias !5343, !noundef !5
  %i.dn = icmp eq i32 %i.dm, %i.cv
  br i1 %i.dn, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i41, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i37

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i41: ; preds = %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i36
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !alias.scope !5344, !noalias !5343, !noundef !5
  %.not.i.i.i.i42 = icmp ult i32 %i.dp, %i.da
  br i1 %.not.i.i.i.i42, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i37, label %.loopexit54

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i37: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens0_0INtB7_5FnMutTRRNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference17ResolvedReferenceEE8call_mutBY_.exit.i.i.i.i41, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0B9_.exit.i.i.i36
  %i.dq = icmp eq ptr %i.de, %i.ch
  br i1 %i.dq, label %.loopexit, label %.lr.ph.i31

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIduINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_17ResolvedReferenceENCINvNtB6_3map12map_try_foldB13_B2S_uB2d_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2S_QNCB40_s0_0E0E0E0B48_.exit.i37, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_17ResolvedReferenceENCINvNtB2P_3map12map_try_foldBJ_B49_uB3u_NCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers17resolve_file_opens_0NCINvNvB1T_4find5checkB49_QNCB5g_s0_0E0E0E0B3u_EB5o_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ds = load i32, ptr %i.dr, align 4, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.du = load i32, ptr %i.dt, align 4, !noundef !5
  %.not110 = icmp ugt i32 %i.du, %i.ds
  br i1 %.not110, label %.loopexit54, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  store i64 %7, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %8, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cu, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %5, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit
  ret void

bb.u:                                             ; preds = %.loopexit.split-lp
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers19match_open_keywords(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 76861433640456466) %2, i1 noundef zeroext %3, i8 noundef %4, i8 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8
  %.idx = mul nuw nsw i64 %2, 120
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp eq i8 %4, 3                         ; 2 uses
  %i.g = icmp ult i8 %4, 3                        ; 2 uses
  %i.h = icmp ult i8 %5, 10
  %spec.select = select i1 %i.f, i1 %i.h, i1 %i.g
  %i.i = icmp ult i8 %5, 13
  %spec.select23 = select i1 %i.f, i1 %i.i, i1 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15match_open_mode.exit
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.bv, %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15match_open_mode.exit ] ; 10 uses
  %.sroa.0.037 = phi ptr [ %1, %.lr.ph ], [ %i.k, %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15match_open_mode.exit ] ; 10 uses
  %.sroa.04.036 = phi i8 [ -1, %.lr.ph ], [ %.sroa.04.1, %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15match_open_mode.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 120 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 95
  %i.m = load i8, ptr %i.l, align 1, !range !16, !noundef !5 ; 4 uses
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.g

._crit_edge:                                      ; preds = %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15match_open_mode.exit, %bb.a
  %.sroa.04.0.lcssa = phi i8 [ -1, %bb.a ], [ %.sroa.04.1, %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers15match_open_mode.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.04.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.b, %bb.v, %bb.u, %bb.q, %bb.p, %bb.o, %bb.t, %bb.r, %bb.n, %bb.g, %bb.h, %bb.k, %bb.l
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.y

bb.f:                                             ; preds = %bb.x, %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 88
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5351, !noundef !5
  %i.t = and i64 %i.s, 72057594037927935
end_hunk_0
